<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\KeranjangController;
use App\Http\Controllers\TransaksiController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Route;
use App\Models\Barang;
use Illuminate\Http\Client\Response as ClientResponse;
use Illuminate\Support\Facades\Storage;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::apiResource('/user', UserController::class);


// Route::post('/create', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::get('/search', [BarangController::class, 'search']);
Route::get('/logout', [AuthController::class, 'logout']);
Route::get('/user', [UserController::class, 'index']);
Route::get('/barang', [BarangController::class, 'index']);
// Route::post('/barang', [BarangController::class, 'store']);
Route::middleware('auth:sanctum')->post('/barang', [BarangController::class, 'store']);
Route::middleware('auth:sanctum')->get('/barang/my', [BarangController::class, 'search_user']);
// User Related Query


Route::middleware('auth:sanctum')->get('/keranjang', [KeranjangController::class, 'index']);

Route::middleware('auth:sanctum')->get('/transaksi', [TransaksiController::class, 'index']);


// Auth Related Route

Route::middleware('auth:sanctum')->post('/bayar', [TransaksiController::class, 'store']);

// Special Route

Route::get('/images/{filename}', function ($filename) {
    $path = storage_path() . '/app/public/images/' . $filename;
    // dd($path);
    if (!File::exists($path)) abort(404);

    $file = File::get($path);
    $type = File::mimeType($path);

    // $response = Response::make($file, 200);
    // $response->header("Content-Type", $type);

    return response($file, 200, [
        "Content-Type" => $type,
    ]);
});


// Testing Route

Route::get('/testing', function (Request $request) {

    //     dd();
    $files = Storage::allFiles('public/images/shops');
    foreach ($files as $f) {
        echo (basename($f));
    }
});
