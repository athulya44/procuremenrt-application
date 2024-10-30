<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Itemimage extends Model
{
    use HasFactory;
    protected $table='item_images';
    protected $fillable = [
       
        'item_id',
        
        'image',
    ];

}
