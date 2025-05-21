<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $guarded = [];

    protected $fillable = ['name', 'description'];
    // Circular dependency
    public function featuredProducts()
    {
        return $this->products()
            ->where('price', '>', 100)
            ->expensive(); // Uses Product's scope
    }
}
