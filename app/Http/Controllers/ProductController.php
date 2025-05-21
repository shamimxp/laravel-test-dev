<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
//        $products = Product::with('category')->get();
//
//        return view('products.index', [
//            'products' => $products->map(function ($product) {
//                return [
//                    'name' => $product->name,
//                    'price' => $product->price,
//                    'stock' => $product->stock,
//                    'category' => $product->category->name
//                ];
//            })
//        ]);

        $products = Product::with('category:name,id')
        ->select(['name', 'price', 'stock', 'category_id'])
            ->paginate(10);

        return view('products.index', [
            'products' => $products,
            'pagination' => $products->links()
        ]);
    }

    public function updateStock(Request $request, $id)
    {
          $request->validate([
                'quantity' => 'required|integer|min:1'
            ]);

        $product = Product::find($id);
        $product->stock -= $request->quantity;
        $product->save();

        return response()->json($product);
    }

    public function search(Request $request)
    {
        $validated = $request->validate([
            'query' => 'required|string|max:255'
        ]);

        $results = Product::where('name', 'LIKE', '%'.$validated['query'].'%')
            ->get();

        return response()->json($results);
    }
    public function exportProducts()
    {
        $headers = [
            'Content-Type' => 'text/csv',
            'Content-Disposition' => 'attachment; filename="products_'.now()->format('Y-m-d').'.csv"',
        ];

        $callback = function() {
            $file = fopen('php://output', 'w');

            // Add headers
            fputcsv($file, ['ID', 'Name', 'Price', 'Stock']);

            Product::query()
                ->orderBy('id')
                ->chunk(1000, function ($products) use ($file) {
                    foreach ($products as $product) {
                        fputcsv($file, [
                            $product->id,
                            $product->name,
                            $product->price,
                            $product->stock,
                        ]);
                    }
                });

            fclose($file);
        };

        return response()->stream($callback, 200, $headers);
    }

}
