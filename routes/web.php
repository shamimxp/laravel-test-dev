<?php

use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});
// old
//Route::get('/products', [ProductController::class, 'index']);
//Route::post('/products/{id}/stock', [ProductController::class, 'updateStock']);
//Route::get('/search', [ProductController::class, 'search']);

//update
Route::middleware(['auth'])->group(function () {
    Route::prefix('products')->name('products.')->group(function () {
        Route::get('/', [ProductController::class, 'index'])->name('index');
        Route::patch('/{product}/stock', [ProductController::class, 'updateStock'])
            ->name('updateStock');
        Route::get('/search', [ProductController::class, 'search'])->name('search');
        Route::get('/export/products', [ProductController::class, 'exportProducts'])->name('export');
    });
});
