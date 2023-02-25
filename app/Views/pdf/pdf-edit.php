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
                        <li class="breadcrumb-item active" aria-current="page">PDF Edit</li>
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
                <div class="card-header">
                    <h3>Edit PDF Information <a href="<?php echo base_url(); ?>/admin/pdf/list" class="btn btn-primary float-end">All PDF</a></h3>
                    <hr>
                </div>
                <form action="<?php echo base_url('/admin/pdf/edit/'.$editPdf['id']); ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="card-title">
                            <h4>Personal Details</h4>
                            <hr>
                        </div>
                        <div class="mb-4 row">
                            <label for="policyHolder" class="label-control col-md-4">Name of policy holder:</label>
                            <div class="col-md-8">
                                <input type="text" name="policy_holder" id="policyHolder" class="form-control" value="<?= $editPdf['policy_holder'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('policy_holder');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="insuredName" class="label-control col-md-4">Name of insured:</label>
                            <div class="col-md-8">
                                <input type="text" name="insured_name" id="insuredName" class="form-control" value="<?= $editPdf['insured_name'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('insured_name');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="birthDate" class="label-control col-md-4">Date of birth:</label>
                            <div class="col-md-8">
                                <input type="text" name="birth_date" id="birthDate" class="form-control" value="<?= $editPdf['birth_date'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('birth_date');
                                } ?>
                                </small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="policyNumber" class="label-control col-md-4">Policy Number:</label>
                            <div class="col-md-8">
                                <input type="text" name="policy_number" id="policyNumber" class="form-control" value="<?= $editPdf['policy_number'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('policy_number');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="policyIssue" class="label-control col-md-4">Date of policy issue:</label>
                            <div class="col-md-8">
                                <input type="text" name="policy_issue" id="policyIssue" class="form-control" value="<?= $editPdf['policy_issue'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('policy_issue');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="mobileNumber" class="label-control col-md-4">Mobile Number:</label>
                            <div class="col-md-8">
                                <input type="text" name="mobile_number" id="mobileNumber" class="form-control" value="<?= $editPdf['mobile_number'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('mobile_number');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="businessCode" class="label-control col-md-4">Business Code:</label>
                            <div class="col-md-8">
                                <input type="text" name="business_code" id="businessCode" class="form-control" value="<?= $editPdf['business_code'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('business_code');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="insurancePeriod" class="label-control col-md-4">Period of Insurance:</label>
                            <div class="col-md-8">
                                <input type="text" name="insurance_period" id="InsurancePeriod" class="form-control" value="<?= $editPdf['insurance_period'] ?>">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('insurance_period');
                                } ?></small>
                            </div>
                        </div>
                        <div class="card-title">
                            <h4>Benefeciary Details</h4>
                            <hr>
                        </div>
                        <div class="mb-4 row">
                            <label for="" class="label-control col-md-4">Select Name</label>
                            <div class="col-md-8">
                                <select name="relation_id" class="form-control">
                                    <option value="">Select Name</option>
                                    <?php foreach ($relations as $relation) : ?>
                                        <option value="<?= $relation['id']; ?>" <?= ($relation['id'] == $editPdf['relation_id'] ? 'selected' : '') ?>
                                        ><?= $relation['name']; ?></option>
                                    <?php endforeach; ?>
                                </select>

                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('relation_id');
                                } ?></small>
                            </div>
                        </div>
                        <div class="card-title">
                            <h4>Choose Template</h4>
                            <hr>
                            <div class="col-md-8">
                                <input type="radio" name="template_id" value="1" <?= ($editPdf['template_id'] == 1 ? 'checked' : '') ?>> Health
                                <input type="radio" name="template_id" value="2" <?= ($editPdf['template_id'] == 2 ? 'checked' : '') ?>> Insurance
                                <br>
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