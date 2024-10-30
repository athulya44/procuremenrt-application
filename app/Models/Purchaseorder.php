<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchaseorder extends Model
{

    use HasFactory;
    protected $table='purchase_orders';
    protected $fillable = [
       
        'order_no',     
        'order_date',

        'supplier_id',     
        'item_total',
        'discount',     
        'net_amount',
        
    ];
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($order) {
            
            $lastorder = Purchaseorder::latest('id')->first();
            $nextNumber = $lastorder ? intval(substr($lastorder->order_no, 4)) + 1 : 1;
            
           
            $order->order_no = 'ORDER ' . str_pad($nextNumber, 2, '0', STR_PAD_LEFT);
        });
    }

    public function supplier() {
        return $this->belongsTo(Supplier::class);
    }

    public function items() {
        return $this->hasMany(OrderItem::class, 'purchase_order_id'); // specify the foreign key here
    }
}
