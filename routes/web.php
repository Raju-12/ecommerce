<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('layout');
});*/

//***********frontend********
Route::get('/','HomeController@index');

/************ Show category wise product here************/
Route::get('/product_by_category/{category_id}','HomeController@show_product_by_category');

Route::get('/product_by_manufacture/{manufacture_id}','HomeController@show_product_by_manufacture');
Route::get('/view_product/{product_id}','HomeController@product_details_by_id');
/*Cart Route are here***********/
Route::post('/add-to-cart','CartController@add_to_cart');
Route::get('/show-cart','CartController@show_cart');
Route::get('/delete-to-cart/{id}','CartController@delete_to_cart');
Route::post('/update-cart','CartController@update_cart');

/* checkout Controller are here********/

Route::get('/login-check','CheckoutController@login_check');
Route::post('/customer-registration','CheckoutController@customer_registration');
Route::get('/checkout','CheckoutController@checkout');
Route::post('/save-shipping-details','CheckoutController@save_shipping_details');
Route::get('/manage-order','CheckoutController@manage_order');
Route::get('/view-order/{order_id}','CheckoutController@view_order');

/*Customer login and logout route*/
Route::post('/customer-login','CheckoutController@customer_login');
Route::get('/customer-logout','CheckoutController@customer_logout');

Route::get('/payment','CheckoutController@payment');
Route::post('/order-place','CheckoutController@order_place');


//*************Backend**************

Route::get('/admin','AdminController@index');
Route::get('/dashboard','SuperAdminController@index');
Route::post('/admin-dashboard','AdminController@dashboard');
Route::get('/logout','SuperAdminController@logout');

//////category related routes

Route::get('/add-category','CategoryController@index');
Route::get('/all-category','CategoryController@all_category');
Route::post('/save-category','CategoryController@save_category');

Route::get('/unactive-category/{category_id}','CategoryController@unactive_category');
Route::get('/edit-category/{category_id}','CategoryController@edit_category');
Route::get('/active-category/{category_id}','CategoryController@active_category');



Route::post('/update-category/{category_id}','CategoryController@update_category');

Route::get('/delete-category/{category_id}','CategoryController@delete_category');

//manufacture or brands route are here

Route::get('/add-manufacture','ManufactureController@index');

Route::post('/save-manufacture','ManufactureController@save_manufacture');

Route::get('/all-manufacture','ManufactureController@all_manufacture');

Route::get('/delete-manufacture/{manufacture_id}','ManufactureController@delete_manufacture');

Route::get('/unactive-manufacture/{manufacture_id}','ManufactureController@unactive_manufacture');

Route::get('/active-manufacture/{manufacture_id}','ManufactureController@active_manufacture');
Route::get('/edit-manufacture/{manufacture_id}','ManufactureController@edit_manufacture');

Route::post('/update-manufacture/{manufacture_id}','ManufactureController@update_manufacture');


//product route are here

Route::get('/add-product','ProductController@index');
Route::post('/save-product','ProductController@save_product');
Route::get('/all-product','ProductController@all_product');
Route::get('/unactive-product/{product_id}','ProductController@unactive_product');
Route::get('/active-product/{product_id}','ProductController@active_product');
Route::get('/delete-product/{product_id}','ProductController@delete_product');
Route::get('/edit-product/{product_id}','ProductController@edit_product');
Route::post('/update-product/{product_id}','ProductController@update_product');

//Slider route are here

Route::get('/add-slider','SliderController@index');
Route::post('/save-slider','SliderController@save_slider');
Route::get('/all-slider','SliderController@all_slider');
Route::get('/unactive-slider/{slider_id}','SliderController@unactive_slider');
Route::get('/active-slider/{slider_id}','SliderController@active_slider');
Route::get('/delete-slider/{slider_id}','SliderController@delete_slider');