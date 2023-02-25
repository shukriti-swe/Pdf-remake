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
                        <li class="breadcrumb-item active" aria-current="page">Relation</li>
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
                    <h3>All Relations Information <a href="<?php echo base_url(); ?>/admin/relation/add" class="btn btn-primary float-end">Add Relations</a></h3>
                    <hr>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped table-bordered table-hover text-center">
                            <thead class="thead-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Template Name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1; foreach ($results as $result) : ?>
                                    <tr>
                                        <td><?= $i; ?></td>
                                        <td>
                                            <?php if($result['relation_ar'] !='') {?>
                                                <?= $result['name'].' - '.$result['relation_ar']; ?>
                                            <?php }else{ ?>
                                                <?= $result['name']; ?>
                                            <?php } ?>
                                        </td>
                                        <td><?= $result['template_name']; ?></td>
                                        <td>
                                            <a href="<?= base_url() ?>/admin/relation/view/<?= $result['id']; ?>" class="btn btn-primary">View</a>
                                            <a href="<?= base_url() ?>/admin/relation/edit/<?= $result['id']; ?>" class="btn btn-info">Edit</a>
                                            <a href="<?= base_url() ?>/admin/relation/delete/<?= $result['id']; ?>" class="btn btn-danger" id="delete">Delete</a>
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