<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\SettingModel;
use App\Models\TemplateModel;
use SebastianBergmann\Template\Template;

class SettingController extends BaseController
{
    public function settingPolicyEdit($template=null,$id=null)
    {   
        $setting = new SettingModel();
        $templateModel = new TemplateModel();
        $data['alltemplate'] = $templateModel->findAll();
        
        if($template == ''){
            $template = 1;
        }

        // $data['editSetting'] = $setting->find($template);
        $data['editSetting'] = $setting->where('template_id',$template)->first();


        $data['uri'] = $this->request->uri->getSegments();

        if ($this->request->getMethod() == 'post') {

            $info = $this->request->getVar();
            
			if($info['template_id'] == 1){
                $setting->where('template_id',$template)
                        ->set($info)
                        ->update();

            }else if($info['template_id'] == 2){
                $templateOne['template_id'] = $info['template_id'];
                $templateOne['insurance_plan'] = $info['insurance_plan'];
                $templateOne['co_pay'] = $info['co_pay'];
                $templateOne['email'] = $info['email'];
                $templateOne['health_policy'] = $info['health_policy_one'].'/'.$info['health_policy_two'];
                
                $setting->where('template_id',$template)
                        ->set($templateOne)
                        ->update();

            }else if($info['template_id'] == 3){
                // echo "<pre>";print_r($info);die();

                $setting->where('template_id',$template)
                        ->set($info)
                        ->update();

                // echo $this->db->getLastQuery(); die();
            }

            return redirect()->to(base_url('/admin/setting/policy/edit/'.$id))->with('success', 'Setting Update Successfully');

        }
        
        return view('settings/setting-edit', $data);
    }
	
	public function settingTemplateEdit($templateId=null)
    {
        $templateModel = new TemplateModel();
        $data['alltemplate'] = $templateModel->findAll();
        $data['uri'] = $this->request->uri->getSegments();
		
        if($templateId !=''){
            $data['template_id'] = $templateId;
        }else{
            $isChecked = $templateModel->where('is_checked',1)->first();
            $data['template_id'] = $isChecked['id'];
        }

        // $data['editTemplate'] = $templateModel->where('is_checked',1)->first();

        if ($this->request->getMethod() == 'post') {

            $info = $this->request->getVar();
            // echo "<pre>"; print_r($info); die();
            $templateModel->find($info['template_id']);
            $data['is_checked'] = 0;
            $templateModel->where('is_checked',1)->set($data)->update();

            $templateModel->update($info['template_id'], ['is_checked' => 1]);
            // echo $this->db->getLastQuery(); die();

            return redirect()->to(base_url('/admin/setting/template/edit/'.$info['template_id']))->with('success', 'Temporary Enabaling Template Update Successfully');

        }
        
        return view('settings/template-edit', $data);
    }


}
