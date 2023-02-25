<?php
    $session = session();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Admin Dashboard</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/bootstrap.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/vendors/iconly/bold.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/vendors/simple-datatables/style.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/app.css">
    <link rel="shortcut icon" href="<?php echo base_url(); ?>/assets/images/favicon.svg" type="image/x-icon">

    <script src="<?php echo base_url(); ?>/assets/js/jquery-3.6.0.min.js"></script>
</head>
	
	<style>
		.sidebar-wrapper .sidebar-header img {
			height: 7.2rem;
		}
	</style>


<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="">
                        <div class="logo text-center">
                            <?php if ($session->get('user_image') != '') { ?>
                                <img src="<?= base_url(); ?>/uploads/<?= $session->get('user_image'); ?>">
                            <?php } else { ?>
                                <img src="<?= base_url(); ?>/uploads/empty_image.jpg">
                            <?php } ?>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <h5 class="text-center">
                        <a href="">
                            <i class="bi bi-record-fill pt-2" style="font-size: 14px;color: green;"></i>
                            Hello <?php echo $session->get('full_name'); ?>
                            <p class="fs-6"><?php echo $session->get('user_eid'); ?></p>
                        </a>
                    </h5>
                    <ul class="menu">
                        <li class="sidebar-title">Menu</li>
                        <?php if(Session()->get('user_type') == 1) : ?>
                            <li <?php if ($uri[1] == 'home') {
                                    echo 'class="sidebar-item active"';
                                } ?> class="sidebar-item">
                                <a href="<?php echo base_url(); ?>/admin/home" class='sidebar-link'>
                                    <i class="bi bi-grid-fill"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>
                            <li <?php if ($uri[1] == 'user') {
                                    echo 'class="sidebar-item active"';
                                } ?> class="sidebar-item">
                                <a href="<?php echo base_url(); ?>/admin/user" class='sidebar-link'>
                                    <i class="bi bi-stack"></i>
                                    <span>User</span>
                                </a>
                            </li>
                            <li <?php if ($uri[1] == 'relation') {
                                    echo 'class="sidebar-item active"';
                                } ?> class="sidebar-item">
                                <a href="<?php echo base_url(); ?>/admin/relation" class='sidebar-link'>
                                    <i class="bi bi-stack"></i>
                                    <span>Relations</span>
                                </a>
                            </li>
							<li <?php if ($uri[1] == 'settings') {
									echo 'class="sidebar-item active"';
								} ?> class="sidebar-item  has-sub">
								<a href="#" class="sidebar-link">
									<i class="bi bi-stack"></i>
									<span>Settings</span>
								</a>
								<ul class="submenu">
									<li class="submenu-item">
										<a href="<?php echo base_url(); ?>/admin/setting/policy/edit">Policy Number</a>
									</li>
									<li class="submenu-item">
										<a href="<?php echo base_url(); ?>/admin/setting/template/edit">Temporary Enabaling Template</a>
									</li>
								</ul>
							</li>
                        <?php endif; ?>
                        <li <?php if ($uri[1] == 'pdf') {
                                echo 'class="sidebar-item active"';
                            } ?> class="sidebar-item">
                            <a href="<?php echo base_url(); ?>/admin/pdf/list" class='sidebar-link'>
                                <i class="bi bi-stack"></i>
                                <span>PDF List</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="<?php echo base_url(); ?>/admin/logout" class='sidebar-link'>
                                <i class="bi bi-person-badge-fill"></i>
                                <span>Logout</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <?= $this->renderSection('content') ?>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <!--<div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a href="http://ahmadsaugi.com">A. Saugi</a></p>
                    </div>-->
                </div>
            </footer>
        </div>
    </div>

    <script src="<?php echo base_url(); ?>/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="<?php echo base_url(); ?>/assets/vendors/simple-datatables/simple-datatables.js"></script>
    <script src="<?php echo base_url(); ?>/assets/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo base_url(); ?>/assets/js/main.js"></script>

    <script>
        // Simple Datatable
        var chk_datatable = $('#datatable').length;
        if(chk_datatable > 0){
            let table1 = document.querySelector('#datatable');
            let dataTable = new simpleDatatables.DataTable(table1);
        }
        
    </script>

</body>

</html>