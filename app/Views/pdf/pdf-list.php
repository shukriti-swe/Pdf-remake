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
                        <li class="breadcrumb-item active" aria-current="page">PDF</li>
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
                    <h3> Issued Insurance
                       <?php 
                         
                         $role_id = session()->get('user_type');
                   
                         if($role_id!=1){
                       ?>
                       <a href="<?php echo base_url(); ?>/admin/pdf/add" class="btn btn-primary float-end">Issue Insurance</a>
                       <?php }?>
                    
                    </h3>
                    <hr>
                </div>
                <div class="card-body">
					
                    <div class="append-paid mb-2"></div>
					
					<?php if(session()->get('user_type') != 2):?>
                    	<button type="button" class="btn btn-primary" id="submitPaid">Set Paid</button>
					<?php endif;?>

                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped mb-0">
                            <thead class="thead-dark">
                                <tr>
                                    <th></th>
                                    <th>Added By</th>
                                    <th>Policy Holder</th>
                                    <th>Policy Number</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
								foreach ($results as $result) : ?>
                                    <tr>
                                        <td><input type="checkbox" name="set_paid_item[]" class="btn_check_list" value="<?= $result['id']; ?>"></td>
                                        <td><?= $result['first_name'].' '.$result['last_name']; ?></td>
                                        <td><?= $result['policy_holder'] ?></td>
                                        <td>
                                            <?php if($result['template_id'] == 2){ 
                                                $health_explode = explode('/', $result['policy_number']);
                                                echo $health_explode[0].$health_explode[1];
                                            } else { ?>
                                                <?= $result['policy_number']; ?>
                                            <?php } ?>
                                        </td>
                                        
                                        <td><?= date('d/m/Y', strtotime($result['created_at'])) ?></td>
                                         <td>
                                            <a 
                                            <?php if($result['template_id']==1){ ?>
                                            href="<?php echo base_url().'/hayah_simple_life/'.$result['pdf_name'];?>"
                                            <?php } else if($result['template_id']==2){?>
                                            href="<?php echo base_url().'/AIG_insurance/'.$result['pdf_name'];?>"
                                            <?php } else if($result['template_id']==3){?>
                                            href="<?php echo base_url().'/Takaful_emarat/'.$result['pdf_name'];?>"
                                            <?php }?>
                                            class="btn btn-primary" download>Download
                                          </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
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


        $('#submitPaid').click(function(){
            // alert('hello rafi');
            var paidItem = [];
            $('.btn_check_list').each(function() {
                if ($(this).is(":checked")) {
                    // $('.append-paid').html('<button type="button" class="btn btn-primary" id="submitPaid">Set Paid</button>');
                    paidItem.push($(this).val());
                }
            })
            console.log(paidItem);

            $.ajax({
                type: "POST",
                url: "<?= base_url() ?>/admin/pdf/paid/item",
                data: {
                    'paid_item': paidItem,
                },
                dataType: 'JSON',
                success: function(data) {
                    if(data.error){
                        $('.append-paid').html('<span class="btn btn-danger">'+data.error+'</span>');
                    }else{
                        $('.append-paid').html('');
                        window.location.reload()
                    }
                },
            });
        });

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