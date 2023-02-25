<?= $this->extend('layout/home') ?>

<?= $this->section('content') ?>

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Dashboard</h3>
                <p class="text-subtitle text-muted"></p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>/admin/home">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Setting Edit</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="page-content">
    <div class="container">
        <div class="col-12">
            <div class="card">

                <?php if(session()->getFlashdata('success')) : ?>
                    <span class="badge bg-success p-3"><?= session()->getFlashdata('success'); ?></span>
                <?php endif; ?>
                <div class="card-header">
                    <h5>Temporary Enabaling Template</h5>
                    <hr>
                </div>

                <form action="<?php echo base_url('/admin/setting/template/edit/'); ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="mb-4 row">
                            <label for="" class="label-control col-md-4">Choose Template</label>
                            <div class="col-md-8">

                                <select name="template_id" id="templateId" class="form-control">
                                    <?php foreach ($alltemplate as $template) : ?>
                                        <option value="<?= $template['id']; ?>"
                                        <?= $template['id'] == $template_id ? 'selected' : '' ?>><?= $template['template_name']; ?></option>
                                    <?php endforeach; ?>
                                </select>

                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('template_id');
                                } ?></small>

                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="mb-4">
                            <button type="submit" class="btn btn-lg btn-primary w-100">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection() ?>