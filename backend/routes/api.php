<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Barang;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::apiResource('/user', UserController::class);


Route::post('/create', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::get('/search', [BarangController::class, 'search']);

Route::get('/barang', [BarangController::class, 'index']);
// Route::post('/barang', [BarangController::class, 'store']);
Route::middleware('auth:sanctum')->post('/barang', [BarangController::class, 'store']);
Route::middleware('auth:sanctum')->get('/barang/my', [BarangController::class, 'search_user']);
// User Related Query





// Auth Related Route
