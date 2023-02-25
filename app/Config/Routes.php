<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);
/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */


// We get a performance increase by specifying the default
// route since we don't have to scan directories.

// $routes->add('login', 'Home::Adminlogin', ['as' => 'login']);
$routes->add('login', 'Home::index', ['as' => '/']);

$routes->group('admin', ['filter' => 'is_admin'], function ($routes) {
    $routes->get('home', 'Home::dashboard', ['as' => 'home']);

    $routes->get('relation', 'RelationController::index', ['as' => 'relation']);
    $routes->add('relation/add', 'RelationController::add', ['as' => 'add']);
    $routes->get('relation/view/(:any)', 'RelationController::view/$1', ['as' => 'relation-view']);
    $routes->add('relation/edit/(:any)', 'RelationController::edit/$1', ['as' => 'relation-edit']);
    $routes->get('relation/delete/(:any)', 'RelationController::delete/$1', ['as' => 'relation-delete']);

    $routes->get('user', 'UserController::userList', ['as' => 'user']);
    $routes->add('user/add', 'UserController::userAdd', ['as' => 'user-add']);
    $routes->get('user/view/(:any)', 'UserController::userView/$1', ['as' => 'user-view']);
    $routes->add('user/edit/(:any)', 'UserController::userEdit/$1', ['as' => 'user-edit']);
    $routes->get('user/delete/(:any)', 'UserController::userDelete/$1', ['as' => 'user-delete']);
	
	$routes->get('user/suspend/(:any)', 'UserController::userSuspend/$1', ['as' => 'user-suspend']);
    $routes->get('user/unsuspend/(:any)', 'UserController::userUnsuspend/$1', ['as' => 'user-unsuspend']);

    $routes->get('pdf/list/(:any)', 'PdfController::pdfList/$1');
    $routes->get('pdf/delete/(:any)', 'PdfController::pdfDelete/$1', ['as' => 'pdf-delete']);
    $routes->get('pdf/view/(:any)', 'PdfController::pdfView/$1', ['as' => 'pdf-view']);

    $routes->post('pdf/paid/item', 'PdfController::pdfPaidItem');

    $routes->add('setting/policy/edit/', 'SettingController::settingPolicyEdit');
    $routes->add('setting/policy/edit/(:any)', 'SettingController::settingPolicyEdit/$1');
	
	$routes->add('setting/template/edit', 'SettingController::settingTemplateEdit');
    $routes->add('setting/template/edit/(:any)', 'SettingController::settingTemplateEdit/$1');


});

$routes->group('admin', ['filter' => 'auth'], function ($routes) {
    $routes->get('pdf/list', 'PdfController::pdfList');
    $routes->add('pdf/add', 'PdfController::pdfAdd', ['as' => 'pdf-add']);
    $routes->get('logout', 'Home::Adminlogout', ['as' => 'logout']);
});

$routes->post('chk_sponsor', 'PdfController::chkSponsor');
$routes->post('add_sponsor', 'PdfController::addSponsor');


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
