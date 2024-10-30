<?php

namespace App\Http\Controllers;

use App\Models\PurchaseOrder;
use App\Models\OrderItem;
use App\Models\Supplier;
use App\Models\Item;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\PurchaseOrderExport;

class PurchaseOrderController extends Controller
{
    public function create()
    {
        $suppliers = Supplier::where('status', 'active')->get();
        // dd($suppliers);
        $items = Item::all();
        return view('purchase_orders.create', compact('suppliers', 'items'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'supplier_id' => 'required|exists:suppliers,id',
            'items' => 'required|array',
            'items.*.item_id' => 'required|exists:items,id',
            'items.*.order_qty' => 'required|integer|min:1',
            'items.*.discount' => 'nullable|numeric|min:0',
        ]);

        \DB::transaction(function () use ($request) {
            $purchaseOrder = PurchaseOrder::create([
                'supplier_id' => $request->supplier_id,
                'order_date' => $request->order_date,
                'item_total' => 0,
                'discount' => 0,
                'net_amount' => 0,
            ]);

            $itemTotal = 0;
            $totalDiscount = 0;

            foreach ($request->items as $itemData) {
                $item = Item::find($itemData['item_id']);
                $orderQty = $itemData['order_qty'];
                $discount = $itemData['discount'] ?? 0;

                $itemAmount = $orderQty * $item->unit_price;
                $netAmount = $itemAmount - $discount;

                OrderItem::create([
                    'purchase_order_id' => $purchaseOrder->id,
                    'item_id' => $item->id,
                    'order_qty' => $orderQty,
                    'unit_price' => $item->unit_price,
                    'item_amount' => $itemAmount,
                    'discount' => $discount,
                    'net_amount' => $netAmount,
                ]);

                $itemTotal += $itemAmount;
                $totalDiscount += $discount;
            }

            $purchaseOrder->update([
                'item_total' => $itemTotal,
                'discount' => $totalDiscount,
                'net_amount' => $itemTotal - $totalDiscount,
            ]);
        });

        return redirect()->route('purchase_orders.index')->with('success', 'Purchase Order created successfully.');
    }

    public function index()
    {
        $purchaseOrders = PurchaseOrder::with('supplier')->get();
        return view('purchase_orders.index', compact('purchaseOrders'));
    }

    public function export($id)
    {
        return Excel::download(new PurchaseOrderExport($id), 'purchase_order_' . $id . '.xlsx');
    }

    public function show($id)
    {
        $purchaseOrder = PurchaseOrder::with(['supplier', 'items.item'])->findOrFail($id);
        return view('purchase_orders.show', compact('purchaseOrder'));
    }
}