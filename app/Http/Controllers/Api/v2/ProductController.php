<?php

namespace App\Http\Controllers\Api\v2;

use App\Http\Controllers\Controller;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        return Product::all()->map(function ($product) {
            return [
                'product_name' => $product->name, // Changed key
                'price' => $product->price,
                'in_stock' => $product->stock > 0 // New field
            ];
        });
    }

}
