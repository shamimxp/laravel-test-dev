<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [];
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < 100; $i++) {
            $name = $faker->unique()->words($faker->numberBetween(1, 3), true);
            $categories[] = [
                'name' => ucfirst($name),
            ];
        }
        $chunks = array_chunk($categories, 100);

        foreach ($chunks as $chunk) {
            Category::insert($chunk);
        }
    }
}
