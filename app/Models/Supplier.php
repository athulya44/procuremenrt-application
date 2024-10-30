<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    protected $fillable = [
        'supplier_name',
        'address',
        'status',
        'country',
        'mobile_no',
        'email',
        'tax_no',
    ];

    
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($supplier) {
            
            $lastSupplier = Supplier::latest('id')->first();
            $nextNumber = $lastSupplier ? intval(substr($lastSupplier->supplier_no, 4)) + 1 : 1;
            
           
            $supplier->supplier_no = 'SUP ' . str_pad($nextNumber, 2, '0', STR_PAD_LEFT);
        });
    }
}
