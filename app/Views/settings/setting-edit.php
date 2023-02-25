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
                    <h5>Edit Information</h5>
                    <hr>
                </div>

                <form action="<?php echo base_url('/admin/setting/policy/edit/'.$editSetting['id']); ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="mb-4 row">
                            <label for="" class="label-control col-md-4">Choose Template</label>
                            <div class="col-md-8">
                                <select name="template_id" id="templateId" class="form-control">
                                    <?php foreach ($alltemplate as $template) : ?>
                                        <option value="<?= $template['id']; ?>"
                                        <?= $editSetting['template_id'] == $template['id'] ? 'selected' : '' ?>><?= $template['template_name']; ?></option>
                                    <?php endforeach; ?>
                                </select>

                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('template_id');
                                } ?></small>
                            </div>
                        </div>
                        <?php if($editSetting['template_id'] == 1): ?>
                            <div class="mb-4 row">
                                <label for="insurancePolicy" class="label-control col-md-4">Insurance Policy Starting Number:</label>
                                <div class="col-md-8">
                                    <input type="text" name="insurance_policy" id="insurancePolicy" class="form-control" value="<?= $editSetting['insurance_policy'] ?>">
                                </div>
                            </div>
                            <div class="mb-4 row">
                                <label for="businessCode" class="label-control col-md-4">Business Code:</label>
                                <div class="col-md-8">
                                    <input type="text" name="business_code" id="businessCode" class="form-control" value="<?= $editSetting['business_code'] ?>">
                                </div>
                            </div>
							<div class="mb-4 row">
                                <label for="address" class="label-control col-md-4">Address:</label>
                                <div class="col-md-8">
                                    <textarea name="address" id="address" class="form-control"><?= $editSetting['address'] ?></textarea>
                                </div>
                            </div>
                        <?php endif; ?>
                        <?php if($editSetting['template_id'] == 2): ?>
                            <div class="mb-4 row">
                                <label for="healthPolicy" class="label-control col-md-4">Health Policy Starting Number:</label>
                                <div class="col-md-8">
                                    <div class="row">
                                        <?php
                                            $health_explode = explode('/', $editSetting['health_policy']);
                                        ?>
                                        <div class="col-md-4">
                                            <input type="text" name="health_policy_one" id="healthPolicy" class="form-control" value="<?= $health_explode[0]; ?>">
                                        </div>
                                        <div class="col-md-4">
                                            <input type="text" name="health_policy_two" id="healthPolicy" class="form-control" value="<?= $health_explode[1]; ?>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-4 row">
                                <label for="insurancePlan" class="label-control col-md-4">Insurance Plan:</label>
                                <div class="col-md-8">
                                    <input type="text" name="insurance_plan" id="insurancePlan" class="form-control" value="<?= $editSetting['insurance_plan'] ?>">
                                </div>
                            </div>
                            <div class="mb-4 row">
                                <label for="coPay" class="label-control col-md-4">Co Pay:</label>
                                <div class="col-md-8">
                                    <input type="text" name="co_pay" id="coPay" class="form-control" value="<?= $editSetting['co_pay'] ?>">
                                </div>
                            </div>
                            <div class="mb-4 row">
                                <label for="email" class="label-control col-md-4">Email:</label>
                                <div class="col-md-8">
                                    <input type="text" name="email" id="email" class="form-control" value="<?= $editSetting['email'] ?>">
                                </div>
                            </div>
                        <?php endif; ?>
                        <?php if($editSetting['template_id'] == 3): ?>
                            <div class="mb-4 row">
                                <label for="refNo" class="label-control col-md-4">Reference No Starting Number:</label>
                                <div class="col-md-8">
                                    <input type="text" name="ref_no" id="refNo" class="form-control" value="<?= $editSetting['ref_no'] ?>">
                                </div>
                            </div>
                        <?php endif; ?>
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

<script>
    $('#templateId').on('change', function() {
        var templateId = $(this).val();
        window.location.href = "<?= base_url() ?>/admin/setting/policy/edit/"+templateId;
    });

</script>

<?= $this->endSection() ?>