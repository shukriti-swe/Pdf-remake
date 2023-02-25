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
                        <li class="breadcrumb-item active" aria-current="page">User</li>
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
				<?php if(session()->getFlashdata('suspend_success')) : ?>
                    <span class="badge bg-success p-2"><?= session()->getFlashdata('suspend_success'); ?></span>
                <?php endif; ?>
				<?php if(session()->getFlashdata('user_limit')) : ?>
                    <span class="badge bg-danger p-2"><?= session()->getFlashdata('user_limit'); ?></span>
                <?php endif; ?>
                <div class="card-header">
                    <h3>All User Information <a href="<?php echo base_url(); ?>/admin/user/add" class="btn btn-primary float-end">Add User</a></h3>
                    <hr>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped table-bordered table-hover text-center">
                            <thead class="thead-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
									<th>EID Number</th>
                                    <th>Role</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; foreach ($results as $result) : ?>
                                    <tr>
                                        <td><?= $i; ?></td>
                                        <td><?= $result['first_name'].' '.$result['last_name']; ?></td>
                                        <td><?= $result['email']; ?></td>
										<td><?= $result['eid_number']; ?></td>
                                        <td><?= $result['role_name']; ?></td>
                                        <td>
											<?php if($result['role_id'] != 1): ?>
												<?php if ($result['suspend'] == 2) { ?>
													<a href="<?= base_url() ?>/admin/user/unsuspend/<?=$result['id']?>" id="unsuspend" class="btn btn-success" title="Unuspend">
														Unsuspend
														<!-- <i class="bi bi-person-square"></i> -->
													</a>
													<?php } else { ?>
													<a href="<?= base_url() ?>/admin/user/suspend/<?=$result['id']?>" id="suspend" class="btn btn-warning" title="Suspend">
														Suspend
														<!-- <i class="bi bi-person-square"></i> -->
													</a>
												<?php } ?>
											<?php endif; ?>
                                            <a href="<?= base_url() ?>/admin/user/view/<?= $result['id']; ?>" class="btn btn-primary">View</a>
                                            <a href="<?= base_url() ?>/admin/user/edit/<?= $result['id']; ?>" class="btn btn-info">Edit</a>
                                            <a href="<?= base_url() ?>/admin/user/delete/<?= $result['id']; ?>" class="btn btn-danger" id="delete">Delete</a>
                                        </td>
                                    </tr>
                                <?php $i++; endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script>
    $(function (){

        //delete sweetalert
        $(document).on('click', '#delete', function(e) {
            e.preventDefault();
            var Id = $(this).attr('href');

            swal({
                title: "Are you sure?",
                text: "You want to delete!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    swal("Successfully deleted!", {
                        icon: "success",
                    });
                    window.location.href = Id;
                } else {
                    swal("safe!");
                }
            });
        });
    });
</script>

<?= $this->endSection() ?>