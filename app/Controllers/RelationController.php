<?php

namespace App\Controllers;

use App\Models\RelationModel;
use App\Models\TemplateModel;

class RelationController extends BaseController
{
    public function index()
    {
        $data['uri'] = $this->request->uri->getSegments();

        $builder = $this->db->table('relations');
        $builder->select('relations.*,templates.template_name,');
        $builder->join('templates', 'relations.template_id = templates.id');
        $query = $builder->get();
        $results = $query->getResultArray();

        // echo $this->db->getLastQuery();
        // echo "<pre>"; print_r($results); die();

        $data['results'] = $results;

        return view('relation/relation-list', $data);
    }

    public function add()
    {
		//die('gggg');
        $relationModel = new RelationModel();
        $templateModel = new TemplateModel();
        $data['allrelation'] = $relationModel->findAll();
        $data['alltemplate'] = $templateModel->findAll();
        $data['uri'] = $this->request->uri->getSegments();

        if ($this->request->getMethod() == 'post') {
            if (!$this->validate('relationadd')) {
                $data['validation'] = $this->validator;
            } else {
                $info = $this->request->getVar();
				//echo "<pre>"; print_r($info); die();
				
                $relationModel->insert($info);
                return redirect()->to(base_url('/admin/relation'));
            }
        }

        return view('relation/relation-add', $data);
    }

    public function view($id)
    {
        $relation = new RelationModel();
        $viewRelation = $relation->where(['id' => $id])->first();

        return view('relation/relation-view', [
            'viewRelation' => $viewRelation
        ]);
    }

    public function edit($id)
    {
        $relation = new RelationModel();
        $templateModel = new TemplateModel();
        $data['alltemplate'] = $templateModel->findAll();
        $data['editrelation'] = $relation->find($id);

        $data['uri'] = $this->request->uri->getSegments();
        // echo "<pre>"; print_r($data); die();

        if ($this->request->getMethod() == 'post') {

            if (!$this->validate('relationedit')) {
                $data['validation'] = $this->validator;
            } else {
                $info = $this->request->getVar();
                $relation->update($id, $info);
            }
            return redirect()->to(base_url('/admin/relation'));
        }

        return view('relation/relation-edit', $data);
    }

    public function delete($id)
    {
        $relation = new RelationModel();
        $relation->delete($id);

        return redirect()->to(base_url('/admin/relation'));
    }
}
