<?php

namespace App\Exports;

use App\Models\PurchaseOrder;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PurchaseOrderExport implements FromCollection, WithHeadings
{
    protected $purchaseOrderId;

    public function __construct($purchaseOrderId)
    {
        $this->purchase_order_id = $purchaseOrderId;
    }

    public function collection()
    {
        $purchaseOrder = PurchaseOrder::with('items.item')->find($this->purchaseOrderId);
        $data = collect();

        foreach ($purchaseOrder->items as $item) {
            $data->push([
                'Order No' => $purchaseOrder->order_no,
                'Order Date' => $purchaseOrder->order_date,
                'Supplier' => $purchaseOrder->supplier->name,
                'Item No' => $item->item->id,
                'Item Name' => $item->item->name,
                'Stock Unit' => $item->item->stock_unit,
                'Unit Price' => $item->unit_price,
                'Order Qty' => $item->order_qty,
                'Item Amount' => $item->item_amount,
                'Discount' => $item->discount,
                'Net Amount' => $item->net_amount,
            ]);
        }

        return $data;
    }

    public function headings(): array
    {
        return [
            'Order No',
            'Order Date',
            'Supplier',
            'Item No',
            'Item Name',
            'Stock Unit',
            'Unit Price',
            'Order Qty',
            'Item Amount',
            'Discount',
            'Net Amount',
        ];
    }
}
?>