<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    protected $fillable = [
        // 'item_no',
        'item_name',
        'inventory_location',
        'brand',
        'category',
        // 'supplier',
        'supplier_id',
        'stock_unit',
        'unit_price',
        'status'
    ];
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($supplier) {
            
            $lastSupplier = Item::latest('id')->first();
            $nextNumber = $lastSupplier ? intval(substr($lastSupplier->item_no, 4)) + 1 : 1;
            
           
            $supplier->item_no = 'ITEM ' . str_pad($nextNumber, 2, '0', STR_PAD_LEFT);
        });
    }
}
