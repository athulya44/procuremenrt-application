@extends('pro-admin.index')
@section('content')
<div class="container">
    <h2>Purchase Orders</h2>
    <a href="{{ route('purchase_orders.create') }}" class="btn btn-primary">Create New Purchase Order</a>
    <table class="table table-striped mt-3">
        <thead>
            <tr>
                <th>Order No</th>
                <th>Order Date</th>
                <th>Supplier</th>
                <th>Item Total</th>
                <th>Discount</th>
                <th>Net Amount</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($purchaseOrders as $order)
                <tr>
                    <td>{{ $order->order_no }}</td>
                    <td>{{ $order->order_date }}</td>
                    <td>{{ $order->supplier->name }}</td>
                    <td>{{ $order->item_total }}</td>
                    <td>{{ $order->discount }}</td>
                    <td>{{ $order->net_amount }}</td>
                    <td>
                        <a href="{{ route('purchase_orders.show', $order->id) }}" class="btn btn-info">View</a>
                        <!-- <a href="{{ route('purchase_orders.export', $order->id) }}" class="btn btn-success">Export</a> -->
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
