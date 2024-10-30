@extends('pro-admin.index')

@section('content')
<div class="d" style="margin-left:26px;">
<button onclick="printPurchaseOrder()" class="btn btn-primary mb-3">Print</button>  
</div>

<div class="container" id="purchase-order">
    <h2>Purchase Order Details</h2>
    
    
    <p>Order No: {{ $purchaseOrder->order_no }}</p>
    <p>Order Date: {{ $purchaseOrder->order_date }}</p>
    <p>Supplier: {{ $purchaseOrder->supplier->name }}</p>
    <p>Item Total: {{ $purchaseOrder->item_total }}</p>
    <p>Discount: {{ $purchaseOrder->discount }}</p>
    <p>Net Amount: {{ $purchaseOrder->net_amount }}</p>
    
    
 

    <h4>Items</h4>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Item No</th>
                <th>Item Name</th>
                <th>Order Qty</th>
                <th>Unit Price</th>
                <th>Item Amount</th>
                <th>Discount</th>
                <th>Net Amount</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($purchaseOrder->items as $item)
                <tr>
                    <td>{{ $item->item->item_no }}</td>
                    <td>{{ $item->item->item_name }}</td>
                    <td>{{ $item->order_qty }}</td>
                    <td>{{ $item->unit_price }}</td>
                    <td>{{ $item->item_amount }}</td>
                    <td>{{ $item->discount }}</td>
                    <td>{{ $item->net_amount }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    </div>


<script>
    function printPurchaseOrder() {
        // Open print dialog for the current page
        window.print();
    }
</script>

<style>
    /* Hide everything except the purchase order content when printing */
    @media print {
        body * {
            visibility: hidden;
        }
        #purchase-order, #purchase-order * {
            visibility: visible;
        }
        #purchase-order {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }
        button {
            display: none;
        }
    }
</style>
@endsection
