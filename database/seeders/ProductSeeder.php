<?php


namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();
        $categories = \App\Models\Category::pluck('id')->toArray();

        $products = [];

        for ($i = 0; $i < 100; $i++) {
            $name = $faker->unique()->words($faker->numberBetween(1, 5), true);

            $products[] = [
                'name' => ucfirst($name),
                'description' => ucfirst($name),
                'price' => $faker->randomFloat(2, 1, 1000),
                'stock' => $faker->numberBetween(0, 1000),
                'category_id' => $faker->randomElement($categories),
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        // Insert in chunks to avoid memory issues
        foreach (array_chunk($products, 100) as $chunk) {
            \App\Models\Product::insert($chunk);
        }
    }
}
