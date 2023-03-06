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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard',[App\Http\Controllers\UserController::class, 'dashboard'])->name('dashboard');

Route::post('/dashboard/andrychow/import',[App\Http\Controllers\XMLController::class, 'readXML'])->name('readXML.import');

Route::get('/dashboard/andrychow',[App\Http\Controllers\UserController::class, 'dashboardAndrychow'])->name('andrychow');

Route::get('/main',[App\Http\Controllers\UserController::class, 'index'])->name('main');

Route::get('/upload-plan',[App\Http\Controllers\UserController::class, 'uploadPlan'])->name('upload-plan');

Route::post('/upload-plan/import',[App\Http\Controllers\IlawaController::class, 'store'])->name('upload-plan.import');

Route::get('/upload-plan/load',[App\Http\Controllers\IlawaController::class, 'load'])->name('upload-plan.load');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

