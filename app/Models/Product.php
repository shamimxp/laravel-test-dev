<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name',
        'description',
        'price',
        'stock',
        'category_id'
    ];
    public function scopeExpensive($query)
    {
        return $query->where('price', '>', 100)
            ->orderBy('price', 'desc');
    }

    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
}
