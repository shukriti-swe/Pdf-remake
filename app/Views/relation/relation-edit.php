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
                        <li class="breadcrumb-item active" aria-current="page">Relations Add</li>
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
                    <h3>Edit Relations Information <a href="<?php echo base_url(); ?>/admin/relation/" class="btn btn-primary float-end">All Relations</a></h3>
                    <hr>
                </div>
                <form action="<?php echo base_url('/admin/relation/edit/'.$editrelation['id']); ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body">
                        <div class="mb-4 row">
                            <label for="relation_en" class="label-control col-md-4">Relation Name English</label>
                            <div class="col-md-8">
                                <input type="text" name="name" id="relationEn" class="form-control" value="<?= $editrelation['name'] ?>" autocomplete="off">
                                <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('name');
                                } ?>
                                </small>
								<div class="relation_error"></div>
                            </div>
                        </div>
                        <div class="mb-4 row relation_ar">
                            <label for="relation_ar" class="label-control col-md-4">Relation Name Arabic</label>
                            <div class="col-md-8">
                                <input type="text" name="relation_ar" class="form-control" value="<?= ($editrelation['relation_ar'] != '' ? $editrelation['relation_ar'] : '') ?>"
                                >
                            </div>
                        </div>
                        
                        <input type="hidden" name="template_id" value="<?= $editrelation['template_id']; ?>">

                        <div class="mb-4 row">
                            <label for="" class="label-control col-md-4">Choose Template</label>
                            <div class="col-md-8">
                                <select name="template_id" class="form-control" disabled>
                                    <option value="">Choose template</option>
                                    <?php foreach ($alltemplate as $template) : ?>
                                        <option value="<?= $template['id']; ?>" <?php if($template['id']==$editrelation['template_id']){echo "selected";}?>><?= $template['template_name']; ?></option>
                                    <?php endforeach; ?>
                                </select>
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

<script>
    $(function(){

        var template_check='<?= $editrelation['template_id']; ?>';
        // console.log(template_check);

        if(template_check != 1){
            $('.relation_ar').addClass('d-none');
        }else{
            $('.relation_ar').removeClass('d-none');
        }
		
		$('#relationEn').keyup(function(e){
            if($(this).val().charAt(0) == ' '){
                $(this).val('');
                $('.relation_error').html('<small class="text-danger">First character should not be spaces!</small>');
            }
            var key = e.keyCode;
            if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                var string = $(this).val().replace(/\d+/g, '');
                $(this).val(string);
                $('.relation_error').html('<small class="text-danger">You should enter only character not number!</small>');
            }
            if($(this).val().length >= 55){
                $('.relation_error').html('<small class="text-danger">Sponsor name should be max 55 character!</small>');
            }
        });

        $('#template').on("click",function(){
            if($(this).val() != 1){
                $('.relation_ar').addClass('d-none');
            }else{
                $('.relation_ar').removeClass('d-none');
            }
        });

    });
</script>

<?= $this->endSection() ?>