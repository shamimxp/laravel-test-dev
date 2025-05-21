<?php


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Route::get('/v1/products', [ProductController::class, 'indexV1']);
//Route::get('/v2/products', [ProductController::class, 'indexV2']);
//Route::post('/products', [ProductController::class, 'store']);


Route::prefix('v1')->group(function () {
    Route::get('/products', [\App\Http\Controllers\Api\v1\ProductController::class, 'index']);
    Route::post('/products', [\App\Http\Controllers\Api\v1\ProductController::class, 'store'])->middleware('throttle:60,1'); ;
});

Route::prefix('v2')->group(function () {
    Route::get('/products', [\App\Http\Controllers\Api\v2\ProductController::class, 'index']);
});
