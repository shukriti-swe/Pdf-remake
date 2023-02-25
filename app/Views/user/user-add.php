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
                        <li class="breadcrumb-item active" aria-current="page">User Add</li>
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
                    <h3>Add User Information <a href="<?php echo base_url(); ?>/admin/user" class="btn btn-primary float-end">All User</a></h3>
                    <hr>
                </div>

                <form action="<?php echo base_url('/admin/user/add'); ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="mb-4 row">
                            <label for="fname" class="label-control col-md-4">First Name</label>
                            <div class="col-md-8">
                                <input type="text" name="first_name" id="fname" class="form-control">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('first_name');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="lname" class="label-control col-md-4">Last Name</label>
                            <div class="col-md-8">
                                <input type="text" name="last_name" id="lname" class="form-control">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('last_name');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="userName" class="label-control col-md-4">Username</label>
                            <div class="col-md-8">
                                <input type="text" name="username" id="userName" class="form-control">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('username');
                                } ?>
                                </small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="email" class="label-control col-md-4">Email</label>
                            <div class="col-md-8">
                                <input type="email" name="email" id="email" class="form-control">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('email');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="pass" class="label-control col-md-4">Password</label>
                            <div class="col-md-8">
                                <input type="password" name="password" id="pass" class="form-control">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('password');
                                } ?></small>
                            </div>
                        </div>
						<div class="mb-4 row">
                            <label for="email" class="label-control col-md-4">EID Number</label>
                            <div class="col-md-8">
                                <input type="text" name="eid_number" class="form-control">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('eid_number');
                                } ?></small>
                            </div>
                        </div>
                        <div class="mb-4 row">
                            <label for="picture" class="label-control col-md-4">Employee Picture</label>
                            <div class="col-md-8">
                                <input type="file" name="picture" id="picture" class="form-control">
								<p class="text-warning">Maximum allowed size width 500px, height 500px</p>
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('picture');
                                } ?></small>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="mb-4">
                            <button type="submit" class="btn btn-lg btn-primary w-100">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection() ?>