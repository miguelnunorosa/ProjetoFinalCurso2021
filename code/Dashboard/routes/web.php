<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers;

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

Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard');
*/


Route::group(['middleware' => 'web'], function(){
    Auth::routes();
    
    Route::get('/', function () { return view('auth.login'); });
    Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard');
});



/*
Route::group(['middleware' => 'web'], function(){
    Auth::routes();

        Route::get('/', function () { return view('auth.login'); });
        Route::get('/dashboard', function () { return view('dashboard'); });
        Route::get('/aboutSystem', function(){ return view('aboutSystem.index'); });


    Route::get('/users', [UsersController::class, 'index'])->name('users.index');
    Route::get('/users', [UsersController::class, 'showUserProfile'])->name('users.showUserProfile');
    Route::post('/users', [UsersController::class, 'store'])->name('users.store');
});*/
