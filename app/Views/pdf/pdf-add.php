<?= $this->extend('layout/home') ?>

<?= $this->section('content') ?>

<style>
    h1 {
        color: green;
        text-align: center;
    } 
    .modal .modal-content {
        padding: 20px 20px 20px 20px;
        -webkit-animation-name: modal-animation;
        -webkit-animation-duration: 0.5s;
        animation-name: modal-animation;
        animation-duration: 0.5s;
    }
    @-webkit-keyframes modal-animation {
        from {
            top: -100px;
            opacity: 0;
        }
        to {
            top: 0px;
            opacity: 1;
        }
    }
    @keyframes modal-animation {
        from {
            top: -100px;
            opacity: 0;
        }
        to {
            top: 0px;
            opacity: 1;
        }
    }
</style>

<?php $template_id = session()->get('template_id');?>
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
                        <li class="breadcrumb-item active" aria-current="page">Issue Insurance</li>
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
                    <h5>Issued Insurance <a href="<?php echo base_url(); ?>/admin/pdf/list" class="btn btn-primary float-end">Issue Insurance</a></h5>
                    <hr>
                </div>
                <!-- =========   Step 1 ========= -->
                <form id="pdfFromSubmit" method="post" action="<?php echo base_url('/admin/pdf/add'); ?>" enctype="multipart/form-data">     
                    <div class="container">
                        <!-- New Code Start-->
                        <div class="row align-items-start">
                            <div class="col-md-3 col-sm-4" style="display:flex;gap:10px;">
                                <div class="nav flex-column nav-pills me-3" style="min-width: 200px;" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                                    <button class="nav-link active" id="client-info-tab" data-bs-toggle="pill" data-bs-target="#client-info" type="button" role="tab" aria-controls="client-info" aria-selected="true" style="display:none">Step 1</button>

                                    <button class="nav-link" id="assign-fb-groups-tab" data-bs-toggle="pill" data-bs-target="#assign-fb-groups" type="button" role="tab" aria-controls="assign-fb-groups" aria-selected="false" style="display:none">Step 2</button>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-8">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="tab-pane fade show active" id="client-info" role="tabpanel" aria-labelledby="client-info-tab">
                                        <div class="row">
                                            <div class="col-12 col-lg-12 col-xl-12 ">
                                            <div id="clientInfo">
                                            <br>
                                                <h4 class="text-primary" style="text-align:center;">Sponsor Info بيانات الكفيل</h4>
                                                <div id="client_form" class="row">

                                                    <div class="error_show"></div>
                                                    <div class="email_validite_message"></div>

                                                    <div class="col-12 mb-2" id="chk_sponsor_type">
                                                        <label class="form-label">Choose Sponsor Type اختار نوع الكفيل</label>
                                                        <select class="form-control" id="sponsor_type" name="sponsor_type">
                                                            <option value="">-- Select One--</option>
                                                            <option value="1">Normal - كفيل عادي</option>
                                                            <option value="2">Golden Visa - كفيل اقامة ذهبية</option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <br>
                                                    <div class="col-12 mb-2" id="chk_sponsor_info" style="display:none;">
                                                        <br>
                                                        <label class="form-label">Sponsor Mobile Number رقم موبايل الكفيل </label>
                                                        <input type="text" class="form-control" name="sponsor_mobile" placeholder="Sponsor Mobile No" id="sponsor_mobile_no" maxlength="10">
                                                        <p id="mobile_no_error" style="color:red"></p>
                                                    </div>

                                                    <?php if($template_id == 1){ ?>
                                                        <div class="col-12 mb-2" id="template_one_add_sponsor_info" style="display:none;">
                                                            <label class="form-label">Sponsor Name اسم الكفيل</label>
                                                            
                                                            <div class="col-md-12">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" name="sn_first_box" placeholder="Sponsor First Name" id="add_sn_first_box" maxlength="29" autocomplete="off" onkeydown="return /[a-z ]/i.test(event.key)">
                                                                        <span class="text-danger" id="sn_first_box_error"></span>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" name="sn_second_box" placeholder="Sponsor Last Name" id="add_sn_second_box" maxlength="29" autocomplete="off" onkeydown="return /[a-z ]/i.test(event.key)">
                                                                        <span class="text-danger" id="sn_second_box_error"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                        </div>
                                                    <?php } else { ?>

                                                        <div class="col-12 mb-2" id="add_sponsor_info" style="display:none;">
                                                            <label class="form-label">Sponsor Name اسم الكفيل</label>
                                                            <input type="text" class="form-control" name="sponsor_name" placeholder="Sponsor Name" id="add_sponsor_name" autocomplete="off" onkeydown="return /[a-z ]/i.test(event.key)"

                                                            <?= ($template_id == 2 ? 'maxlength="27"':'') ?>
                                                            <?= ($template_id == 3 ? 'maxlength="32"':'') ?>

                                                            >
                                                            <p id="sponsor_name_error" style="color:red"></p>
                                                        </div>

                                                    <?php } ?>

                                                    <div class="mt-2 col-12 text-center">
                                                        <br>
                                                        <button type="button" style="display:none;" class="btn btn-primary" id="add_sponsor">Next</button>
                                                        <button type="button" class="btn btn-primary btnNext" id="clientInfoNextBtn">Next</button>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="assign-fb-groups" role="tabpanel" aria-labelledby="assign-fb-groups-tab">
                                        <div class="row">
                                            <div class="col-12 col-lg-12 col-xl-12 ">
                                            <div id="facebookgroup">
                                                <div id="facebook_groups" class="row">
                                                    <div class="card-body">
                                                        <div class="card-title">
                                                            <h4>Personal Details البيانات الشخصية</h4>
                                                            <hr>
                                                        </div>

                                                        <div class="mb-4 row">
                                                            <label class="form-label col-md-4">Sponsor Name اسم الكفيل</label>
                                                            <div class="col-md-8">
                                                                <div class="row append_sponsor_name"></div>
                                                            </div>
                                                        </div>
                                                       
                                                        <div class="mb-4 row">
                                                            <label for="policyHolder" class="label-control col-md-4">Name of Sponsored Person: اسم الشخص المكفول</label>
                                                            <div class="col-md-8">
                                                                <input type="text" name="sponsored_person" id="policyHolder" class="form-control" placeholder="Please enter sponsored person name" autocomplete="off" onkeydown="return /[a-z ]/i.test(event.key)"
                                                                
                                                                <?= ($template_id == 1 ? 'maxlength="55"':'') ?>
                                                                <?= ($template_id == 2 ? 'maxlength="29"':'') ?>
                                                                <?= ($template_id == 3 ? 'maxlength="32"':'') ?>
                                                                
                                                                >
                                                                <p id="sponsor_person_name_error" style="color:red"></p>
                                                                <div class="policy_error"></div>
                                                            </div>
                                                        </div>
                                                        <div class="mb-4 row">
                                                            <label for="birthDate" class="label-control col-md-4">Date of birth: تاريخ ميلاد المكفول</label>
                                                            <div class="col-md-8">
                                                                <input type="text" name="birth_date" id="birthDate" class="form-control" placeholder="dd/mm/yy" maxlength="10" autocomplete="off">
                                                                <span class="text-danger">Field must be dd/mm/yy formet</span>
                                                                <div class="birth_error"></div>
                                                            </div>
                                                        </div>
                                                    <?php if($template_id == 2){?>
                                                        <div class="mb-4 row">
                                                            <label for="birthDate" class="label-control col-md-4">Passport Number</label>
                                                            <div class="col-md-8">
                                                                <input type="text" name="passport_number" id="passportNumber" class="form-control" placeholder="Passport number">

                                                                <div class="passport_error"></div>
                                                            </div>
                                                        </div>
                                                    <?php } ?>
                                                    
                                                    <?php if($template_id == 3){?>
                                                        <div class="mb-4 row">
                                                            <label for="birthDate" class="label-control col-md-4">Beneficiary UID number</label>
                                                            <div class="col-md-8">
                                                                <input type="number" name="uid_number" id="uidNumber" class="form-control" placeholder="Beneficiary UID number">
                                                                
                                                                <div class="uid_error"></div>
                                                            </div>
                                                        </div>
                                                    <?php } ?>

                                                        <div class="benefeciary_div">
                                                            <div class="card-title">
                                                                <h4>Benefeciary Details بيانات الكفيل</h4>
                                                                <hr>
                                                            </div>
                                                            <div class="mb-4 row">
                                                                <label for="" class="label-control col-md-4">Select Relation: ما هي علاقة الكفيل بالمكفول</label>
                                                                <div class="col-md-8">
                                                                    <select name="relation_id" id="relation" class="form-control">
                                                                        <option value="">Select Relation</option>
                                                                        <?php foreach ($relations as $relation) : ?>
                                                                            <?php
                                                                            $value = $relation['relation_ar'] != '' ? $relation['name'].' - '.$relation['relation_ar'] : $relation['name']; 
                                                                            ?>

                                                                            <option value="<?= $value; ?>"><?= $value; ?></option>
                                                                        <?php endforeach; ?>
                                                                    </select>
                                                                    <div class="relation_error"></div>
                                                                </div>
                                                            </div>
                                                            <div class="mb-4 row">
                                                                <div class="col-md-6">
                                                                    <input type="hidden" class="form-control" id="selectName" name="select_name">
                                                                    <input type="hidden" class="form-control" id="mobileNumber" name="mobile_number">
                                                                    <input type="hidden" class="form-control" id="sponsorType" name="check_sponsor_type">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card-title">
                                                            <!-- <h4>Choose Template</h4> -->
                                                            <hr>
                                                            <div class="col-md-8">
                                                                <input type="hidden" name="template_id" value="<?=$template_id?>">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 text-center d-flex mt-2">
                                                        <div class="cl_add_group"></div>
                                                    </div>
                                                    <div class="col-12 text-center d-flex mt-2 mb-5">
                                                        <div class="ms-auto">
                                                        <textarea name="group" class="d-none" id="groupData"></textarea>

                                                        <!-- <button type="button" class="btn btn-primary btnPrevious">Previous</button> -->
                                                        <button type="submit" class="btn btn-lg btn-primary w-100" id="pdfSubmitBtn">Submit</button>
                                                        </div>
                                                    </div>

                                                </div>

                                                </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div id="pdfGeneratingModel" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" data-bs-keyboard="false" data-bs-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content text-center">
            <div class="appendImage text-center"></div>
            <span class="text-danger mb-2">Please wait while your insurance is being issued! <br> الرجاء الانتظار ريثما يتم اصدار التامين الخاص بك!</span>
        </div>
    </div>
</div>

<script type="text/javascript">
	
	$(function(){
		
		$('#add_sponsor_name').keyup(function(e){
            var key = e.keyCode;

            if($(this).val().charAt(0) == ' '){
                $(this).val('');
                $('#sponsor_name_error').text('First character should not be spaces!');
            }

            if($(this).val().length >= 27){
                $('#sponsor_name_error').text('Sponsor name should be max 27 character'); 
            }

        });

        $('#policyHolder').keyup(function(e){
            if($(this).val().charAt(0) == ' '){
                $(this).val('');
                $('#sponsor_person_name_error').text('First character should not be spaces!');
            }
            if($(this).val().length >= 55){
                $('#sponsor_person_name_error').text('Sponsor name should be max 55 character'); 
            }
        });

        var separator = "/";
        $("#birthDate").keyup(function(e) {

            var textSoFar = $(this).val();
            if (e.keyCode != 191) {
                if (e.keyCode != 8) {
                    
                    if (textSoFar.length == 2 || textSoFar.length == 5) {
                        $(this).val(textSoFar + separator);
                    } else if (e.keyCode == 86 && textSoFar.length == 8) {
                        //to handle copy & paste of 8 digit
                        $(this).val(
                        textSoFar.substr(0, 2) +
                            separator +
                            textSoFar.substr(2, 2) +
                            separator +
                            textSoFar.substr(4, 4)
                        );
                    }
                } else {
                //backspace would skip the slashes and just remove the numbers
                if (textSoFar.length == 5) {
                    $(this).val(textSoFar.substring(0, 4));
                    } else if (textSoFar.length == 2) {
                        $(this).val(textSoFar.substring(0, 1));
                    }
                }
            } else {
                $(this).val(textSoFar.substring(0, textSoFar.length - 1));
            }

        });

        $('#birthDate').keydown(function(e){
            if (e.shiftKey || e.ctrlKey || e.altKey) {
                e.preventDefault();
            }
        });
        
		$('#sponsor_mobile_no').keyup(function(){
            var sponsor_mobile_no = $('#sponsor_mobile_no').val();
            var sponsor_type = $('#sponsor_type').val();
            if(sponsor_mobile_no != ''){
                var mobile_first_char = sponsor_mobile_no.charAt(0);
                var mobile_total_char = sponsor_mobile_no.length;
                
                if(mobile_first_char != 0 &&  mobile_total_char !=10){
                    var mobile_error = 'First character shoule be start with 0 and total digit 10';
                    $('#mobile_no_error').text(mobile_error);

                }else if(mobile_first_char == 0 &&  mobile_total_char !=10){
                    var mobile_error = 'Mobile number total digit must be 10';
                    $('#mobile_no_error').text(mobile_error);

                }else if(mobile_first_char != 0 &&  mobile_total_char ==10){
                    var mobile_error = 'First character shoule be start with 0 ';
                    $('#mobile_no_error').text(mobile_error);
                }
            }
        });
		
        var template_check='<?php echo session()->get('template_id');?>';
        if(template_check == 1) 
        {
            $('#add_sn_first_box').keyup(function(e){

                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    e.preventDefault();
                } else {
                    var key = e.keyCode;

                    if($(this).val().charAt(0) == ' '){
                        $(this).val('');
                        $('#sn_first_box_error').text('First character should not be spaces!');
                    }
                }

                if($(this).val().length >= 29){
                    $('#sn_first_box_error').text('Sponsor name first box should be max 29 character'); 
                }
            });
            $('#add_sn_second_box').keyup(function(e){

                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    e.preventDefault();
                } else {
                    var key = e.keyCode;

                    if($(this).val().charAt(0) == ' '){
                        $(this).val('');
                        $('#sn_second_box_error').text('First character should not be spaces!');
                    }
                }

                if($(this).val().length >= 29){
                    $('#sn_second_box_error').text('Sponsor name second box should be max 29 character'); 
                }
            });

        }
        if(template_check == 2) 
        {
            $('#policyHolder').keyup(function(){
                if($(this).val().length >= 29){
                    $('#sponsor_person_name_error').text('Sponsor name should be max 29 character'); 
                }
            });
        }
        if(template_check == 3) 
        {
            $('#policyHolder').keyup(function(){
                if($(this).val().length >= 32){
                    $('#sponsor_person_name_error').text('Sponsor name should be max 32 character'); 
                }
            });
        }


        function alignModal() {
            var modalDialog = $(this).find(".modal-dialog");
            modalDialog.css("margin-top", Math.max(0, 
            ($(window).height() - modalDialog.height()) / 2));
        }
        $(".modal").on("shown.bs.modal", alignModal);
        $(window).on("resize", function() {
            $(".modal:visible").each(alignModal);
        });
		
		function isFutureDate(idate){
            var today = new Date().getTime(),
            idate = idate.split("/");

            idate = new Date(idate[2], idate[1] - 1, idate[0]).getTime();
            // console.log(today + " " + idate);
            return (today - idate) <= 0 ? false : true;
        }
        
        $('#pdfSubmitBtn').click(function(e){
            e.preventDefault();

            if($('#policyHolder').val() == ''){
                $('.policy_error').html('<small class="text-danger">Sponsored Person Name Is Required</small>');
            }
            if($('#birthDate').val() == ''){
                $('.birth_error').html('<small class="text-danger">Birth Date Is Required</small>');
            }else{
				var checkdate = isFutureDate($('#birthDate').val());
                if(checkdate == false){
                    $('.birth_error').html('<small class="text-danger">date should be less than today date</small>');
                }else{
                    $('.birth_error').html('');
                }
			}
            if($('#passportNumber').val() == ''){
                $('.passport_error').html('<small class="text-danger">Passport Number Is Required</small>');
            }
            if($('#uidNumber').val() == ''){
                $('.uid_error').html('<small class="text-danger">Beneficiary UID Number Is Required</small>');
            }
            if($('#relation').val() == ''){
                $('.relation_error').html('<small class="text-danger">Relation Is Required</small>');
            }

            var template_check='<?php echo session()->get('template_id');?>';
            if(template_check == 1){

                var template_validation = '';
                
                template_validation = $('#policyHolder').val() != '' && $('#birthDate').val() != '' && $('#relation').val() != '';
                
                if($('#sponsor_type').val() == 2){
                    template_validation = $('#policyHolder').val() != '' && $('#birthDate').val() != '';
                }
                
                if(template_validation){
					var checkdate = isFutureDate($('#birthDate').val());
                    if(checkdate == true){
						var imgUrl = "<?= base_url() ?>/assets/images/pdf-generating-icon.gif";
						$('.appendImage').html('<img src="'+imgUrl+'" alt="">');
						$('#pdfGeneratingModel').modal('show');
						setTimeout(function(){
							$('#pdfFromSubmit').submit();
						}, 30000);
					}
                }
            }
            if(template_check == 2){

                var template_validation = '';

                template_validation = $('#policyHolder').val() != '' 
                                        && $('#birthDate').val() != '' 
                                        && $('#passportNumber').val() != '' 
                                        && $('#relation').val() != '';
                                        
                if($('#sponsor_type').val() == 2){
                    template_validation = $('#policyHolder').val() != '' && $('#birthDate').val() != '' && $('#passportNumber').val() != '';
                }
                
                if(template_validation){
					var checkdate = isFutureDate($('#birthDate').val());
                    if(checkdate == true){
						var imgUrl = "<?= base_url() ?>/assets/images/pdf-generating-icon.gif";
						$('.appendImage').html('<img src="'+imgUrl+'" alt="">');
						$('#pdfGeneratingModel').modal('show');
						setTimeout(function(){
							$('#pdfFromSubmit').submit();
						}, 30000);
					}
                }
            }
            if(template_check == 3){

                var template_validation = '';

                template_validation = $('#policyHolder').val() != '' 
                                        && $('#birthDate').val() != '' 
                                        && $('#uidNumber').val() != '' 
                                        && $('#relation').val() != '';
                                        
                if($('#sponsor_type').val() == 2){
                    template_validation = $('#policyHolder').val() != '' && $('#birthDate').val() != '' && $('#uidNumber').val() != '';
                }
                
                if(template_validation){
					var checkdate = isFutureDate($('#birthDate').val());
                    if(checkdate == true){
						var imgUrl = "<?= base_url() ?>/assets/images/pdf-generating-icon.gif";
						$('.appendImage').html('<img src="'+imgUrl+'" alt="">');
						$('#pdfGeneratingModel').modal('show');
						setTimeout(function(){
							$('#pdfFromSubmit').submit();
						}, 30000);
					}
                }
            }
            
        });

    });
	
	$(document).ready(function(){

        $('.btnNext').click(function() {

            var sponsor_mobile_no = $('#sponsor_mobile_no').val();
            var sponsor_type = $('#sponsor_type').val();

            if(sponsor_mobile_no != '' && sponsor_type != ''){
                var mobile_first_char = sponsor_mobile_no.charAt(0);
                var mobile_total_char = sponsor_mobile_no.length;
                
                if(mobile_first_char != 0 &&  mobile_total_char !=10){
                    var mobile_error = 'First character shoule be start with 0 and total digit 10';
                    $('#mobile_no_error').text(mobile_error);

                }else if(mobile_first_char == 0 &&  mobile_total_char !=10){
                    var mobile_error = 'Mobile number total digit must be 10';
                    $('#mobile_no_error').text(mobile_error);

                }else if(mobile_first_char != 0 &&  mobile_total_char ==10){
                    var mobile_error = 'First character shoule be start with 0 ';
                    $('#mobile_no_error').text(mobile_error);

                }else if(mobile_first_char == 0 &&  mobile_total_char ==10){
                    $('#mobile_no_error').text('');
                    $.ajax({
                    url: '<?php echo base_url('chk_sponsor'); ?>',
                    data: {sponsor_mobile_no:sponsor_mobile_no,sponsor_type:sponsor_type},
                    type : 'POST',
                    dataType: 'JSON',
                    success: function(data) {
                        if(sponsor_type ==2){
                            $('.benefeciary_div').hide();
                        }
                        if(data.success==1 || data == 3){
                            if(data.sponsors != undefined && data.sponsors !=null){
                                var template_check='<?php echo session()->get('template_id');?>';
                                var sponsor_name = data.sponsors.sponsor_name;

                                if(template_check == 1){
                                    var explode_sn = sponsor_name.split(',');
                                    if(explode_sn[0] && explode_sn[1]){

                                        var html = '<div class="col-md-6"><input type="text" class="form-control" value="'+explode_sn[0]+'" readonly></div><div class="col-md-6"><input type="text" class="form-control" value="'+explode_sn[1]+'" readonly></div>';
                                        $('.append_sponsor_name').html(html);

                                    }else{
                                        var html = '<div class="col-md-12"><input type="text" class="form-control" value="'+sponsor_name+'" readonly></div>';
                                        $('.append_sponsor_name').html(html);
                                    }
                                }else{
                                    var html = '<div class="col-md-12"><input type="text" class="form-control" value="'+sponsor_name+'" readonly></div>';
                                    $('.append_sponsor_name').html(html);
                                }


                                $('#sponsorType').val(data.sponsors.type);
                                $('#mobileNumber').val(data.sponsors.mobile_number);
                                $('#selectName').val(sponsor_name);
                            }

                            if(sponsor_type ==2){
                                var html = '<div class="col-md-12"><input type="text" class="form-control" value="SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED" readonly></div>';
                                $('.append_sponsor_name').html(html);
                            }

                            $('.nav-pills > .active').next('button').trigger('click');
                            $('#assign-fb-groups-tab').addClass("active");
                            $('#client-info-tab').removeClass('active');
                            $('#chk_sponsor_info').show();
                            $('#chk_sponsor_type').hide();
                        }else if(data == 4){
                            $('.nav-pills > .active').next('button').trigger('click');
                            if(sponsor_type ==2){
                                var html = '<div class="col-md-12"><input type="text" class="form-control" value="SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED" readonly></div>';
                                $('.append_sponsor_name').html(html);
                            }
                        }else{
                            $('#chk_sponsor_info').show();
                            $('#add_sponsor_info').show();
                            $('#template_one_add_sponsor_info').show();
                            $('#clientInfoNextBtn').hide();
                            $('#add_sponsor').show();
                            $('#chk_sponsor_type').hide();
                            $('#sponsor_mobile_no').attr('readonly', true);
                        }
                    }
                });

                }

            }else{
                alert('Sponsor type and Number are required!!');
            }
         
        });

        $('.btnPrevious').click(function() {
            $('.nav-pills > .active').prev('button').trigger('click');
        });

        $('#add_sponsor').click(function(){
            var template_check='<?php echo session()->get('template_id');?>';

            var sponsor_type = $('#sponsor_type').val();
            var mobile_no = $('#sponsor_mobile_no').val();

            if(template_check == 1){
                var first_box = $('#add_sn_first_box').val();
                var second_box = $('#add_sn_second_box').val();
                if(first_box !='' && second_box !=''){

                    if(first_box.length >= 4 && second_box.length >=4){
                        var sponsor_name = first_box+','+second_box;
                    }else{
                        alert('Sponsor name first name and last name should be min 4 character');
                        return
                    }

                }else{
                    var sponsor_name = '';
                }
            }else{
                if($('#add_sponsor_name').val().length >= 4){
                    var sponsor_name = $('#add_sponsor_name').val();
                }else{
                    alert('Sponsor name should be min 4 character');
                    return
                }
            }

            if(mobile_no !='' && sponsor_name != ''){
                $.ajax({
                    url: '<?php echo base_url('add_sponsor'); ?>',
                    data: {
                        mobile_no:mobile_no,
                        sponsor_name:sponsor_name,
                        sponsor_type:sponsor_type
                    },
                    type : 'POST',
                    dataType: 'JSON',
                    success: function(data) {
                        if(data.success==1){

                            if(data.sponsor_name != undefined && data.sponsor_name !=null){

                                var template_check='<?php echo session()->get('template_id');?>';
                                var sponsor_name = data.sponsor_name;

                                if(template_check == 1){
                                    var explode_sn = sponsor_name.split(',');
                                    if(explode_sn[0] && explode_sn[1]){

                                        var html = '<div class="col-md-6"><input type="text" class="form-control" value="'+explode_sn[0]+'" readonly></div><div class="col-md-6"><input type="text" class="form-control" value="'+explode_sn[1]+'" readonly></div>';
                                        $('.append_sponsor_name').html(html);

                                    }else{
                                        var html = '<div class="col-md-12"><input type="text" class="form-control" value="'+sponsor_name+'" readonly></div>';
                                        $('.append_sponsor_name').html(html);
                                    }
                                }else{
                                    var html = '<div class="col-md-12"><input type="text" class="form-control" value="'+sponsor_name+'" readonly></div>';
                                    $('.append_sponsor_name').html(html);
                                }

                                $('#selectName').val(sponsor_name);
                            }
                            
                            if(data.mobile_number !=undefined && data.mobile_number !=null){
                                $('#mobileNumber').val(data.mobile_number);
                            }
                            if(data.sponsor_type !=undefined && data.sponsor_type !=null){
                                $('#sponsorType').val(data.sponsor_type);
                            }


                            $('.nav-pills > .active').next('button').trigger('click');
                            $('#assign-fb-groups-tab').addClass("active");
                            $('#client-info-tab').removeClass('active');

                        }
                    }
                });
            }else{
                alert('Please enter Mobile no and Sponsor Name');
            }
            

        });

        $('#sponsor_type').change(function(){
            $('#chk_sponsor_info').show();
            var type = $(this).val();
        });

    });
</script>

<?= $this->endSection() ?>