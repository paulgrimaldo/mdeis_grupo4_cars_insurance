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
Route::get('/policies/{policy}', 'PolicyController@viewDetail')->name('policies.view');
Route::get('/policies/{policy}/sign', 'PolicyController@viewSign')->name('policies.signing');
Route::post('/policies/{policy}/sign', 'PolicyController@sign')->name('policies.signing.store');
Route::group(['prefix' => 'admin'], function () {
    Route::get('/policies/create-policy', 'PolicyController@createPolicy')->name('policies.create.policy');
    Route::post('/policies/create-policy', 'PolicyController@storePolicy')->name('policies.policy.store');
    Route::get('report', 'ReportController@index')->name('reports.index');
    Route::post('report/quotation', 'ReportController@quotation')->name('reports.quotation');
    Route::post('report/policy', 'ReportController@policy')->name('reports.policies');
    Route::post('report/quotation_unconfirmed', 'ReportController@quotation_unconfirmed')->name('reports.unconfirmed');
    Route::post('report/policy_expire', 'ReportController@policy_expire')->name('reports.expired');
    Voyager::routes();
});
