<?php

use App\Http\Controllers\BooksController;
use App\Http\Controllers\UsersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});



Route::post('/users/login', [UsersController::class, 'login']);

Route::get('/books', [BooksController::class, 'index']);

Route::get('/books/available', [BooksController::class, 'availableBooks']);


Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::get('/users/authenticated', [UsersController::class, 'authenticated']);

    Route::get('/users/current', [UsersController::class, 'currentUser']);

    Route::post('/users/current/logout', [UsersController::class, 'logout']);

    Route::get('/users/current/books', [UsersController::class, 'books']);

    Route::post('/users/current/books/buy', [UsersController::class, 'buyBook']);

    Route::post('/users/current/books/remove', [UsersController::class, 'removeBook']);
});
