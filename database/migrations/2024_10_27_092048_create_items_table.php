<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('items', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('item_no')->autoIncrement();
            $table->string('item_name');
            $table->string('inventory_location');
            $table->string('brand');
            $table->string('category');
            $table->string('supplier');
            $table->string('stock_unit');
            $table->string('unit_price');
            // $table->string('image');
            // $table->string('supplier_no');
            $table->enum('status', ['enabled', 'disabled'])->default('enabled');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('items');
    }
};
