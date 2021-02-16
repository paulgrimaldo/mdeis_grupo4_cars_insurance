<?php

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::resource('vehicle_models', 'VehicleModelController');
Route::resource('vehicle_makes', 'VehicleMakeController');
Route::get('report', 'ReportController@index');
Route::post('report/quotation', 'ReportController@quotation');
Route::post('report/policy', 'ReportController@policy');
Route::post('report/quotation_unconfirmed', 'ReportController@quotation_unconfirmed');
Route::post('report/policy_expire', 'ReportController@policy_expire');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
