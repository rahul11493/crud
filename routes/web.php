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

/*
Route::get('/', function () {
    return view('welcome');
});
*/

Route::get('/','App\Http\Controllers\UserController@index');
Route::get('/create','App\Http\Controllers\UserController@create')->name('create');
Route::post('/store','App\Http\Controllers\UserController@store')->name('store');
Route::get('/edit/{id}','App\Http\Controllers\UserController@edit')->name('edit');
Route::post('/update/{id}','App\Http\Controllers\UserController@update')->name('update');
Route::get('/destroy/{id}','App\Http\Controllers\UserController@destroy')->name('destroy');
