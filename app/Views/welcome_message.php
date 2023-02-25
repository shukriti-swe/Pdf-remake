<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Admin</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/pages/auth.css">
    <style>
        .captcha_img img{
            padding-top:28px;
        }
    </style>
</head>

<body>
    <div id="auth">

        <div class="row h-100">
            <div class="col-lg-5 col-12">
                <div id="auth-left">
                    <div class="auth-logo">
                        <!--<a href="index.html"><img src="assets/images/logo/logo.png" alt="Logo"></a>-->
                    </div>
                    <h1 class="auth-title">Log in.</h1>
                    <?php
                        if(session()->getFlashdata('success')){
                            echo "<h4 style='color:red;text-align:center;'>".session()->getFlashdata('success')."</h4>";
                        }
                    ?>
                    <?php
                        if(session()->getFlashdata('error')){
                            echo "<h4 style='color:red;text-align:center;'>".session()->getFlashdata('error')."</h4>";
                        }
                    ?>
                    <form action="<?php echo base_url('login'); ?>" method="POST">
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="text" name="username" class="form-control form-control-xl" placeholder="Username">
                            <div class="form-control-icon">
                                <i class="bi bi-person"></i>
                            </div>
                        </div>
                         <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('username');
                                } ?></small>
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="password" name="password" class="form-control form-control-xl" placeholder="Password">
                            <div class="form-control-icon">
                                <i class="bi bi-shield-lock"></i>
                            </div>
                        </div>
                         <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                    echo $validation->getError('password');
                                } ?></small>

                        <table>
                            <tr>
                                <td colspan="3">
                                
                                    <p class="captcha_img">Answer this math quiz : <?= $captcha_html; ?></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <?php $captcha_word = session()->get('captcha_word');?>
                                    <input type="hidden" name="ans_captcha" value="<?=$captcha_word?>">
                                    <input type="text" id="captcha" name="captcha" placeholder="answer">
                                <br>
                                    <small style="color:red;" class="text-danger"><?php if (isset($validation)) {
                                        echo $validation->getError('captcha');
                                    } ?></small>
                                </td>
                            </tr>
                        </table>

                         
                        <button class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Log in</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-7 d-none d-lg-block">
                <div id="auth-right">

                </div>
            </div>
        </div>

    </div>
</body>

</html>