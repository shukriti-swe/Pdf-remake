<?php

namespace App\Controllers;

use App\Models\UserModel;
use App\Libraries\Mathcaptcha;
use App\Models\PdfModel;
use App\Models\TemplateModel;

class Home extends BaseController
{
    function __construct()
    {
    }
    public function index()
    {
        if ($this->session->get('isLoggedIn')) {
            return redirect()->to(base_url('/admin/home'));
        } else {

            $data['show_captcha'] = TRUE;
            $newmath = new Mathcaptcha();
            $data['captcha_html'] = $newmath->create_captcha();

            // echo 11; die();
            if ($this->request->getMethod() == 'post') {
            // echo 22; die();
                
                $user = new UserModel();
                $userEmail = $this->request->getVar('username');
                $password = SHA1($this->request->getVar('password'));
                if (!$this->validate('login')) {
                    $data['validation'] = $this->validator;
                } else {
                    $captcha = $this->request->getVar('captcha');
                    $ans_captcha = $this->request->getVar('ans_captcha');
                    // echo $captcha; die();

                    if($newmath->_check_captcha($captcha, $ans_captcha)){
                        // echo 33; die();
                        $loginCheck = $user->where(['email' => $userEmail, 'password' => $password])->first();
                        if ($loginCheck) {

                            if($loginCheck['suspend'] != 2){
                                $pdfModel = new PdfModel();
                                $TemplateModel = new TemplateModel();
                                $date = date_create(date('d-m-Y'));
                                date_sub($date,date_interval_create_from_date_string("1 days"));
                                $pre_date = date_format($date,"d-m-Y");

                                $chk_pdf = $pdfModel->where('policy_issue',$pre_date)->where('user_id',$loginCheck['id'])->first();
                                
                                $templates = $TemplateModel->findAll();
                                $total_template = count($templates);

                                if(!empty($chk_pdf)){
                                    $pre_template_id = $chk_pdf['template_id'];
                                    
                                    if($total_template==$pre_template_id){
                                        $new_template_id = 1;
                                    }else{
                                        $new_template_id = $pre_template_id+1;
                                    }
                                }else{
                                    $new_template_id = 1;
                                }

                                $user_email = $loginCheck['email'];
                                $user_pass = $loginCheck['password'];
								
								$first_name = $loginCheck['first_name'];
                                $last_name = $loginCheck['last_name'];
								
                                $user_type = $loginCheck['role_id'];
                                $user_id = $loginCheck['id'];
								$user_image = $loginCheck['picture'];
                                $user_eid = $loginCheck['eid_number'];
								
								//teporary enabaling only 2
								$teporaryTemplate = $TemplateModel->where('is_checked',1)->first();
                                if(isset($teporaryTemplate)){
								    $new_template_id = $teporaryTemplate['id'];
                                }

                                $session_data = [
                                    'username' => $user_email,
                                    'password' => $user_pass,
									'full_name' => $first_name.' '.$last_name,
                                    'user_id' => $user_id,
                                    'user_type' => $user_type,
                                    'template_id' => $new_template_id,
									'user_image' => $user_image,
                                    'user_eid' => $user_eid,
                                    'isLoggedIn' => true,
                                ];

                                $this->session->set($session_data);

                                if($user_type == 1){
                                    return redirect()->to(base_url('/admin/home'));
                                }else{
                                    return redirect()->to(base_url('/admin/pdf/list'));
                                }
                            }else{
                                return redirect()->to(base_url('/login'))->with('success', 'Your account suspended!!');
                            }
                            
                        }else {
                            return redirect()->to(base_url('/login'))->with('success', 'Sorry! emails or password are incorrect');
                        }
                    }else{
                        return redirect()->to(base_url('/login'))->with('error', 'Captcha Not Match');
                    }
                }

            }

            return view('welcome_message', $data);
        }
    }

    public function dashboard()
    {
        $user = new UserModel;
        $pdf = new PdfModel();

        $users = $user->where('role_id', 2)->findAll();
        foreach($users as $key => $user){
            $users[$key]['pdf_list'] = $pdf->where('user_id', $user['id'])->where('status', 0)->findAll();
        }
        $data['users'] = $users;
        // echo "<pre>"; print_r($users); die();
    
        $data['uri'] = $this->request->uri->getSegments();
        return view('dashboard/index', $data);
    }

    public function Adminlogout()
    {
        unset(
            $_SESSION['username'],
            $_SESSION['password'],
            $_SESSION['first_name'],
            $_SESSION['isLoggedIn']
        );

        return redirect()->to(base_url('/login'));
    }
}
