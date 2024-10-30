<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\PurchaseOrderController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('dashboard');

   
    
});
 Route::resource('suppliers', SupplierController::class);
 Route::post('/suppliers/{id}', [SupplierController::class, 'update'])->name('suppliers.update');
 Route::resource('items', ItemController::class);
 Route::post('/items/{id}', [ItemController::class, 'update'])->name('items.update');

 Route::get('/admin-template', function () {
    return view('pro-admin.index');

   
    
});
// use App\Http\Controllers\SupplierController;

Route::post('suppliers/{id}/update-status', [SupplierController::class, 'updateStatus'])->name('suppliers.updatestatus');


Route::post('/updatestatus/{id}', [ItemController::class, 'updatestatus'])->name('items.updatestatus');

Route::resource('purchase_orders', PurchaseOrderController::class);
Route::get('purchase_orders/{id}/export', [PurchaseOrderController::class, 'export'])->name('purchase_orders.export');

