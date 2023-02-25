<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\PdfModel;
use App\Models\SettingModel;
use App\Models\RelationModel;
use App\Models\SponsorModel;
use setasign\Fpdi\Fpdi;
use setasign\Fpdi\PdfReader;

require_once(APPPATH.'Libraries/TCPDF/tcpdf.php');
require_once(APPPATH.'Libraries/tfpdf/tfpdf.php');
require_once(APPPATH.'Libraries/fpdi/src/autoload.php');

class PdfController extends BaseController
{

    public function pdfList($id=null)
    {
        $builder = $this->db->table('pdf_info');
        $builder->select('pdf_info.*,users.first_name,users.last_name');
        // $builder->join('relations', 'pdf_info.relation_id = relations.id');
		$builder->join('users', 'pdf_info.user_id = users.id');
        
        if($id != ''){
            // echo 11; die();
            $builder->where('pdf_info.user_id', $id);
        }else{
            // echo 22; die();
            if($this->session->get('user_type') == 2){
                $builder->where('pdf_info.user_id', $this->session->get('user_id'));
            }
        }
        $builder->where('pdf_info.status', 0);

        $query = $builder->get();
        $results = $query->getResultArray();

        // echo $this->db->getLastQuery();
        // echo "<pre>"; print_r($results); die();

        $uriData = $this->request->uri->getSegments();

        $data = [
            'results' => $results,
            'uri' => $uriData,
        ];
        // echo '<pre>';
        // print_r($data);die();
        return view('pdf/pdf-list', $data);
    }

    public function pdfAdd()
    {
        $relation = new RelationModel;
        $template_id = $this->session->get('template_id');
        // echo $template_id;die();
        $data['relations'] = $relation->where('template_id',$template_id)->findAll();
        $data['uri'] = $this->request->uri->getSegments();


        if ($this->request->getMethod() == 'post') {
            
            if (!$this->validate('pdfadd')) {
                $data['validation'] = $this->validator;
            } else {
                
                $pdfModel = new PdfModel();
                $settingModel = new SettingModel();
                $info = $this->request->getVar();
				
				/*==========================================================
                                sponsor table insert code start
                ============================================================*/
                if($info['check_sponsor_type'] == 1){
                    $sponsor_model = new SponsorModel;
                    $sponsorInsert['sponsor_name'] = $info['select_name'];
                    $sponsorInsert['mobile_number'] = $info['mobile_number'];
                    $sponsorInsert['type'] = $info['check_sponsor_type'];
                    $sponsorInsert['user_id'] = $this->session->get('user_id');

                    $builder = $this->db->table('sponsor_info');
                    $builder->select('*');
                    $builder->where(['mobile_number'=>$info['mobile_number'],'type'=>$info['check_sponsor_type']]);
                    $query = $builder->get();
                    $results = $query->getResultArray();

                    if(count($results) == 0){
                        $sponsor_model->insert($sponsorInsert);
                    }
                }
                /*==========================================================
                                sponsor table insert code end
                ============================================================*/

                $user_email = $this->session->get('user_email');
                
                if(isset($info['relation_id'])){
                    $relation_info = explode('-',$info['relation_id']);
                }
                
                $relation_name_ar = '';
                if(is_array($relation_info) && (count($relation_info) > 1)){

                    $relation_name_ar = $relation_info[1];
                    if(isset($relation_info[1])){
                        $relation_name_en = $relation_info[0].'/';
                    }else{
                        $relation_name_en = $relation_info[0];
                    }
                    
                }else{
                    // echo 22; die();
                    $relation_name_en = $info['relation_id'];
                }
                
                $info['birth_date'] = str_replace("/","-",$info['birth_date']);

                $datas = array(
                    'user_id' => $this->session->get('user_id'),
                    'template_id' => $info['template_id'],
                    'policy_holder' => $info['sponsored_person'],
                    'insured_name' => $info['sponsored_person'],
                    'birth_date' => $info['birth_date'],
                    'policy_issue' => date('d-m-Y'),
                    'mobile_number' => $info['sponsor_mobile'],
                );

                if($info['sponsor_type'] == 2){
                    $name11 = 'SPONSOR OF';
                    $name22 = 'INVESTORS,ENTERPRENEURS';
                    $name33 = ',SPECIALIZED';
                    $relation_name_en = 'Other Family Relationship';

                    $name44 = 'SPONSOR OF INVESTORS,ENTERPRENEURS';
                    $name55 = ',SPECIALIZED';
                    $datas['relation_id'] = $relation_name_en;
                }

                $selectName11 = '';
                $selectName22 = '';
                if($info['sponsor_type'] == 1){
                    $datas['relation_id'] = $info['relation_id'];
                    $datas['select_name'] = $info['select_name'];
                    
                    $sponsor_name = explode(',',$info['select_name']);

                    if(count($sponsor_name) > 1){
                        $selectName11 = $sponsor_name[0];
                        $selectName22 = $sponsor_name[1];
                        // echo 12; die();
                    }else{
                        $selectName11 = $sponsor_name[0];
                        // echo 25; die();
                    }
                }

                //Hayah simple policy template--------------------------
                if ($info['template_id'] == 1) {
                    $setting = $settingModel->where('template_id',1)->first();
                    
                    $datas['business_code'] = $setting['business_code'];
                    $datas['address'] = $setting['address'];

                    $max_insurance_policy = $pdfModel->selectMax('policy_number')->where('policy_status', 1)->first();
                    $count_pdf = $pdfModel->where('policy_status', 1)->findAll();
                    if (count($count_pdf) > 0) {
                        $insurance_explode = explode('/', $max_insurance_policy['policy_number']);
                        // echo "<pre>"; print_r($insurance_explode); die();

                        $setting_insurance = explode('/', $setting['insurance_policy']);
                        // echo $health_explode[1].'-'.$setting_health[1]; die();
                        //58070192-58070191
                        if($insurance_explode[1] < $setting_insurance[1]){
                            $datas['policy_number'] = $insurance_explode[0].'/'.($setting_insurance[1]+1).'/'.$insurance_explode[2];
							$policy_number = ($setting_insurance[1]+1);
                        }else{
                            $datas['policy_number'] = $insurance_explode[0].'/'.($insurance_explode[1]+1).'/'.$insurance_explode[2];
							$policy_number = ($insurance_explode[1]+1);
                        }

                    } else {
                        $insurance_explode = explode('/', $setting['insurance_policy']);
                        $datas['policy_number'] = $insurance_explode[0].'/'.($insurance_explode[1]+1).'/'.$insurance_explode[2];
						$policy_number = ($insurance_explode[1]+1);
                    }
					
					$pdf_name = 'hayah_simple_life_' . $policy_number . '.pdf';
                    $datas['pdf_name'] = $pdf_name;

                    $datas['policy_status'] = 1;

                    $mobileStr = substr($info['sponsor_mobile'], 1);
                    $mobileExtraText = '+971'.$mobileStr;

                    $date = date_create(date("Y-m-d"));
                    date_add($date, date_interval_create_from_date_string("364 days"));
                    $add_date = date_format($date, "Y-m-d");
                    $period_of_insurance = date("d/m/Y") . '  -  ' . date("d/m/Y", strtotime($add_date));
                    $datas['insurance_period'] = $period_of_insurance;

                    $pdf = new \setasign\Fpdi\Tcpdf\Fpdi();
                    $datas['date'] = date("Y-m-d");
					
					$pdf->setPrintHeader(false);
        			$pdf->setPrintFooter(false);
                    $pageCount = $pdf->setSourceFile(APPPATH . 'demo_pdf/insuranec.pdf');

                    for ($pageNo = 1; $pageNo <= $pageCount; $pageNo++) {
                        $pageId = $pdf->importPage($pageNo, PdfReader\PageBoundaries::MEDIA_BOX);
                        $pdf->addPage();

                        $pdf->useImportedPage($pageId, 0, 5, 210);

                        if ($pageNo == 1) {

                            $pdf->Ln(49);
                            $pdf->SetLeftMargin(22);
                            $pdf->SetRightMargin(22);
                            $pdf->SetFont('nimbussanl', '', 6.75);
                            $pdf->SetTextColor(42, 41, 119);
                            $pdf->Cell(0, 7, strtoupper($info['sponsored_person']), 0, 2, 'C');
                            $pdf->Cell(0, 7, strtoupper($info['sponsored_person']), 0, 2, 'C');
                            $pdf->Cell(0, 7, date("d/m/Y", strtotime($info['birth_date'])), 0, 2, 'C');
                            $pdf->Cell(0, 7, $datas['policy_number'], 0, 2, 'C');
                            $pdf->Cell(0, 7, date("d/m/Y"), 0, 2, 'C');
                            $pdf->Cell(0, 7, $setting['address'], 0, 2, 'C');
                            $pdf->Cell(0, 7, $mobileExtraText, 0, 2, 'C');
                            $pdf->Cell(0, 7, $datas['business_code'], 0, 2, 'C');
                            $pdf->Cell(0, 7, $period_of_insurance, 0, 2, 'C');


                            if($info['sponsor_type'] ==2){
                                $pdf->Ln(21);
                                $pdf->Cell(60,3,$name11,0,2,'L');
                                $pdf->Cell(60,3,$name22,0,0,'L');
                                $pdf->Cell(45,3,$relation_name_en,0,1,'C');
                                $pdf->Cell(60,3,$name33,0,0,'L');
                            }else{
                                $pdf->Ln(22);
                                $pdf->setCellPadding(0);
                                $pdf->Cell(60,4,strtoupper($selectName11),0,0,'L');

                                if($relation_name_ar !=''){
                                    $pdf->Cell(25,4,$relation_name_en,0,0,'R');
                                    $pdf->SetFont('dejavusans', '', 7);
                                    $pdf->setCellPadding(0.5);
                                    $pdf->Cell(25,4,$relation_name_ar,0,1,'L');
                                }else{
                                    $pdf->SetFont('nimbussanl', '', 6.75);
                                    $pdf->Cell(45,4,$relation_name_en,0,1,'C');
                                }

                                $pdf->setCellPadding(0);
                                $pdf->SetFont('nimbussanl', '', 6.75);
                                $pdf->Cell(60,4,strtoupper($selectName22),0,0,'L');
                            }
							
							$pdf->SetLeftMargin(-23);
							$pdf->Ln(3);
							// $pdf->Cell(105,20,$name,0,0,'C');
                        } else if ($pageNo == 2) {
                            $pdf->SetLeftMargin(48);
                            $pdf->SetFont('nimbussanl', '', 6.75);
                            $pdf->SetTextColor(42, 41, 119);
                            $pdf->Ln(100);
                            $pdf->Cell(115, 20, date("d/m/Y"), 0, 0, 'C');
                        }
                    }

                    $pdf->Output(FCPATH .'/hayah_simple_life/'.$pdf_name, 'F');

                }
                //Aig insurancce template--------------------------
                elseif ($info['template_id'] == 2) {
                    
                    $passport_number=$info['passport_number'];
                    $setting = $settingModel->where('template_id',2)->first();

                    $datas['insurance_plan'] = $setting['insurance_plan'];
                    $datas['co_pay'] = $setting['co_pay'];
                    // $datas['policy_number'] = $setting['health_policy'];

                    $mobileStr = substr($info['sponsor_mobile'], 1);
                    $mobile_number=substr($mobileStr,0,2).' '.substr($mobileStr,2);
                    $mobileExtraText = '+971 '.$mobile_number;

                    $max_health_policy = $pdfModel->selectMax('policy_number')->where('policy_status', 2)->first();
                    
                    $count_pdf = $pdfModel->where('policy_status', 2)->findAll();
                    if (count($count_pdf) > 0) {
                        $health_explode = explode('/', $max_health_policy['policy_number']);
                        // echo "<pre>"; print_r($health_explode); die();
                        $setting_health = explode('/', $setting['health_policy']);
                        // echo $health_explode[1].'-'.$setting_health[1]; die();
                        //58070192-58070191
                        if($health_explode[1] < $setting_health[1]){
                            $datas['policy_number'] = $health_explode[0].'/'.($setting_health[1]+1);
                            $policy_number = $health_explode[0].($setting_health[1]+1);
							$policy = ($setting_health[1]+1);
                        }else{
                            $datas['policy_number'] = $health_explode[0].'/'.($health_explode[1]+1);
                            $policy_number = $health_explode[0].($health_explode[1]+1);
							$policy = ($health_explode[1]+1);
                        }
                    } else {
                        $health_explode = explode('/', $setting['health_policy']);
                        // echo "<pre>"; print_r($health_explode); die();
                        $datas['policy_number'] = $health_explode[0].'/'.($health_explode[1]+1);
                        $policy_number = $health_explode[0].($health_explode[1]+1);
						$policy = ($health_explode[1]+1);
                    }
					
					$pdf_name = 'AIG_insurance_'. $policy .'.pdf';
                    $datas['pdf_name'] = $pdf_name;

                    $datas['policy_status'] = 2;

                    $pdf = new Fpdi();

                    $telephone = "";

                    $network = "Comprehensive";
                    $benefeciary = "Qayyum Zakariya Ghole";

                    $date = date_create(date('d-m-Y'));
                    date_add($date, date_interval_create_from_date_string("364 days"));
                    $add_date = date_format($date, "d-M-Y");

                    $pageCount = $pdf->setSourceFile(APPPATH . 'demo_pdf/health_insurance.pdf');
                    $pageId = $pdf->importPage(1, PdfReader\PageBoundaries::MEDIA_BOX);
                    $pdf->addPage();
				
                    $pdf->useImportedPage($pageId, 0, 5, 210);

                    $pdf->Ln(17);
                    $pdf->SetLeftMargin(59);

                    $pdf->SetFont('Arial', 'B', 8);
                    $pdf->Cell(115, 20, $setting['insurance_plan'], 0, 0, 'L');
                    $pdf->Ln(5);
                    $pdf->Cell(115, 20, $policy_number, 0, 0, 'L');
                    $pdf->Ln(4.50);
                    $pdf->SetFont('Arial', '', 7);
                    $pdf->Cell(115, 20, date('d-M-Y'), 0, 0, 'L');
                    $pdf->Ln(4.75);
                    $pdf->Cell(115, 20, date('d-M-Y'), 0, 0, 'L');
                    $pdf->Ln(4.95);
                    $pdf->Cell(115, 20, $add_date, 0, 0, 'L');
                    $pdf->Ln(4.95);
                    $pdf->Cell(115, 20, $setting['co_pay'], 0, 0, 'L');
                    $pdf->Ln(4.50);
                    $pdf->Cell(115, 20, $network, 0, 0, 'L');
                    $pdf->Ln(4.95);
                    $pdf->Cell(115, 20, '', 0, 0, 'L');
                    $pdf->Ln(7);
                    $pdf->SetLeftMargin(62);
                    $pdf->Cell(120, 20, '', 0, 0, 'L');
                    $pdf->Ln(12);

                    if($info['sponsor_type']==2){
                        $pdf->SetFont('Arial', 'B', 5);
                        $pdf->Cell(42, 2, $name44, 0, 1, 'L');
                        $pdf->Cell(42, 2, $name55, 0, 0, 'L');
                    }else{
                        $pdf->SetFont('Arial', 'B', 7);
                        $pdf->Cell(42, 4, ucwords(strtolower($selectName11)), 0, 1, 'L');
                        $pdf->Ln(-2);
                    }

                    $pdf->Ln(-46);
                    // $pdf->Ln(9);
                    $pdf->SetLeftMargin(147);
                    $pdf->SetFont('Arial', '', 7);
                    $pdf->Cell(47, 4, ucwords(strtolower($info['sponsored_person'])), 0, 2, 'L');
                    $pdf->SetFont('Arial', '', 8);
                    $pdf->Cell(47, 4, $telephone, 0, 2, 'L');
                    $pdf->Cell(47, 5, $mobileExtraText, 0, 2, 'L');
                    $pdf->Cell(47, 4, '', 0, 2, 'L');
                    $pdf->Cell(47, 5, $passport_number.' / '.date('d-M-Y', strtotime($info['birth_date'])), 0, 2, 'L');
                    $pdf->Cell(47, 4, '', 0, 2, 'L');
                    $pdf->SetTextColor(41, 128, 185);
                    $pdf->Cell(47, 6, $setting['email'], 0, 2, 'L');

                    $pdf->Ln(12);
                    $pdf->SetLeftMargin(155);
                    $pdf->SetTextColor(0, 0, 0);
                    
                    $pdf->SetFont('Arial', 'B', 8);
                    $pdf->Cell(39, 4, $relation_name_en, 0, 0, 'L');

                    $pdf->Cell(-210,20,'',0,0,'L');
                    $pdf->AddFont('RSArabic','','RSArabic.ttf',true);
                    $pdf->SetFont('RSArabic','',7);
                    $pdf->Cell(-202,20,$relation_name_ar,0,0,'L');
					
                    $pdf->Output('F', 'AIG_insurance/'.$pdf_name);
                    //$pdf->Output('F', 'health_pdf/' . $pdf_name);

                }
                //Takaful Emarat template--------------------------
                else if ($info['template_id'] == 3) {
                    $setting = $settingModel->where('template_id',3)->first();
                    
                    $datas['policy_status'] = 3;
                    $max_ref_no_policy = $pdfModel->selectMax('policy_number')->where('policy_status', 3)->first();
                    $count_pdf = $pdfModel->where('policy_status', 3)->findAll();
                    if (count($count_pdf) > 0) {
                        $ref_no_explode = explode('/', $max_ref_no_policy['policy_number']);
                        $setting_ref_no = explode('/', $setting['ref_no']);
                        if($ref_no_explode[0] < $setting_ref_no[0]){
                            $datas['policy_number'] = ($setting_ref_no[0]+1);
                        }else{
                            $datas['policy_number'] = ($ref_no_explode[0]+1);
                        }
                    } else {
                        $ref_no_explode = explode('/', $setting['ref_no']);
                        $datas['policy_number'] = ($ref_no_explode[0]+1);
                    }
					
					$pdf_name = 'Takaful_emarat_'.$datas['policy_number'].'.pdf';
                    $datas['pdf_name'] = $pdf_name;
 
                    $pdf = new Fpdi();

                    $date = date_create(date('d-m-Y'));
                    date_add($date, date_interval_create_from_date_string("364 days"));
                    $add_date = date_format($date, "d/m/Y");
                    $pageCount = $pdf->setSourceFile(APPPATH .'demo_pdf/health_insurance_certificate.pdf');
                    $pageId = $pdf->importPage(1, PdfReader\PageBoundaries::MEDIA_BOX);
                    $pdf->addPage();
                    $pdf->useImportedPage($pageId, 0, 5, 210);
                    $pdf->SetLeftMargin(29);
                    $pdf->SetRightMargin(22);
                    $pdf->AddFont('PTSerif','','PTSerif-Regular.ttf',true);
                    $pdf->SetTextColor(0, 0, 0);
                    
                    $pdf->Ln(57);
                    $pdf->SetFont('Arial', '',8.50);
                    $pdf->Cell(40, 7,'01-115-01-'.date('y').'-'.$datas['policy_number'], 0, 0, 'L');
                    
                    $pdf->SetLeftMargin(140);
                    $pdf->Ln(-6);
                    
                    $pdf->setFillColor(255,255,255);
                    $pdf->Rect(140, 62, 40, 5, 'F');
                    $pdf->Cell(40, 7,date('d/m/Y'), 0, 0, 'L');

                    $pdf->SetTextColor(0, 0, 0);
                    $pdf->SetLeftMargin(69.5);
                    $pdf->SetRightMargin(72.5);
                    $pdf->Ln(44.5);
                    $pdf->SetFont('PTSerif', '',8.50);
					
					if($info['sponsor_type'] == 2){
                        $pdf->Cell(0, 4,$name44, 0, 2, 'C');
                        $pdf->Cell(0, 3,$name55, 0, 2, 'C');
                    }else{
                        $pdf->Cell(0, 7,ucwords(strtolower($selectName11)), 0, 2, 'C');
                    }

                    $pdf->SetFont('Times','',8.88);
                    $pdf->Cell(0, 7,date("d/m/Y"), 0, 2, 'C');
                    $pdf->Ln(7.5);
                    $pdf->SetFont('PTSerif', '',8.50);
                    $pdf->Cell(0, 7,ucwords(strtolower($info['sponsored_person'])), 0, 2, 'C');
                    $pdf->SetFont('Times','',8.88);
                    $pdf->Cell(0, 7, $info['uid_number'], 0, 2, 'C');
                    $pdf->Cell(0, 7,$add_date, 0, 2, 'C');

                    $pdf->Output('F', 'Takaful_emarat/'.$pdf_name);
                }
 
                $insert=$pdfModel->insert($datas);
                if($insert){
                    
                  return redirect()->to(base_url('/admin/pdf/list'))->with('success', 'PDF generated successfully !!');
                }else{
                    echo "not ok";die();
                }
            }
        }
        return view('pdf/pdf-add', $data);
    }

    public function pdfView($id)
    {
        $builder = $this->db->table('users');
        $builder->select('users.*,user_roles.role_name');
        $builder->join('user_roles', 'users.role_id = user_roles.id');
        $builder->where('users.id', $id);
        $query = $builder->get();
        $viewUser = $query->getRowArray();

        return view('pdf/pdf-view', [
            'viewUser' => $viewUser
        ]);
    }

    public function pdfPaidItem()
    {
        $pdf = new PdfModel();
        $info = $this->request->getVar();
        $success = '';
        $error = '';
        if(isset($info['paid_item'])){
            foreach($info['paid_item'] as $id){
                $data = [
                    'status' => 1,
                ];
                $pdf->update($id, $data);
            }
            $success = "success";
        }else{
            $error = "please select item";
        }
        $result = [
            'success' => $success,
            'error' => $error,
        ];

        echo json_encode($result);
    }

    public function pdfDelete($id)
    {
        $pdf = new PdfModel();
        $pdf->delete($id);

        return redirect()->to(base_url('/admin/pdf/list'));
    }
	
	public function chkSponsor(){
        $sponsor_model = new SponsorModel;
        $mobile_no = $this->request->getVar('sponsor_mobile_no');
        $user_id = $this->session->get('user_id');
        $sponsor_type = $this->request->getVar('sponsor_type');
        // echo $sponsor_type; die();

        if($sponsor_type==2){
            $data['sponsor_name'] = 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED';
            $data['mobile_number'] = $mobile_no;
            $data['user_id'] = $this->session->get('user_id');
            $data['sponsor_relation'] = 'Other Family Relationship';
            $data['type'] = $sponsor_type;

            $builder = $this->db->table('sponsor_info');
            $builder->select('*');
            $builder->where(['mobile_number'=>$mobile_no,'sponsor_name'=>$data['sponsor_name'],'type'=>$sponsor_type]);
            $query = $builder->get();
            $results = $query->getResultArray();

            // echo "<pre>"; print_r(count($results)); die();
            if(count($results) == 0){
                $sponsor_model->insert($data);
                echo 3;
            }else{
                echo 4;
            }

        }else{
            $sponsors = $sponsor_model->where(['mobile_number'=>$mobile_no,'type'=>$sponsor_type])->first();
            // echo "<pre>"; print_r($sponsors); die();
            
            if(!empty($sponsors)){
                $result = [
                    'success' => 1,
                    'sponsors' => $sponsors,
                ];
                echo json_encode($result);
            }else{
                echo 2;
            }
        }
        
        
    }

    public function addSponsor(){

        $result = [
            'success' => 1,
            'mobile_number' => $this->request->getVar('mobile_no'),
            'sponsor_name' => $this->request->getVar('sponsor_name'),
            'sponsor_type' => $this->request->getVar('sponsor_type'),
        ];
        echo json_encode($result);

    }
}
