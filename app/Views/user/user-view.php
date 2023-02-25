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
                        <li class="breadcrumb-item active" aria-current="page">User View</li>
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
                    <h3>View User Information <a href="<?php echo base_url(); ?>/admin/user" class="btn btn-primary float-end">Show All User</a></h3>
                    <hr>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover text-center">
                            <tr>
                                <th>Name</th>
                                <th>:</th>
                                <th><?= $viewUser['first_name'].' '.$viewUser['last_name']; ?></th>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <th>:</th>
                                <th><?= $viewUser['email']; ?></th>
                            </tr>
                            <tr>
                                <th>Username</th>
                                <th>:</th>
                                <th><?= $viewUser['username']; ?></th>
                            </tr>
                            <tr>
                                <th>Role</th>
                                <th>:</th>
                                <th><?= $viewUser['role_name']; ?></th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection() ?>