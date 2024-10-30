@extends('pro-admin.index')

@section('content')
<div class="container">
    <h2>Create Purchase Order</h2>
    <form action="{{ route('purchase_orders.store') }}" method="POST" id="purchaseOrderForm">
        @csrf
        <div class="form-group">
            <label for="order_date">Order Date</label>
            <input type="date" name="order_date" id="order_date" class="form-control" required value="{{ date('Y-m-d') }}">
        </div>
        
        <div class="form-group">
            <label for="supplier_id">Supplier Name</label>
            <select name="supplier_id" id="supplier_id" class="form-control" required>
                <option value="">Select Supplier</option>
                @foreach ($suppliers as $supplier)
                    <option value="{{ $supplier->id }}">{{ $supplier->supplier_name }}</option>
                @endforeach
            </select>
        </div>

        <h4>Items</h4>
        <div id="item-list">
            <div class="item-row">
                <div class="form-group">
                    <label for="item_id">Item Name</label>
                    <select name="items[0][item_id]" class="form-control item_id" required>
                        <option value="">Select Item</option>
                        @foreach ($items as $item)
                            <option value="{{ $item->id }}">{{ $item->item_name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="order_qty">Order Qty</label>
                    <input type="number" name="items[0][order_qty]" class="form-control order_qty" required min="1">
                </div>
                <div class="form-group">
                    <label for="discount">Discount</label>
                    <input type="number" name="items[0][discount]" class="form-control discount" value="0" min="0">
                </div>
                <button type="button" class="btn btn-danger remove-item">Remove</button>
            </div>
        </div>
        <button type="button" class="btn btn-primary" id="add-item">Add Item</button>

        <button type="submit" class="btn btn-success">Create Purchase Order</button>
    </form>
</div>

<script>
    document.getElementById('add-item').addEventListener('click', function() {
        const itemList = document.getElementById('item-list');
        const itemIndex = itemList.getElementsByClassName('item-row').length;

        const itemRow = document.createElement('div');
        itemRow.className = 'item-row';
        itemRow.innerHTML = `
            <div class="form-group">
                <label for="item_id">Item Name</label>
                <select name="items[${itemIndex}][item_id]" class="form-control item_id" required>
                    <option value="">Select Item</option>
                    @foreach ($items as $item)
                        <option value="{{ $item->id }}">{{ $item->item_name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="order_qty">Order Qty</label>
                <input type="number" name="items[${itemIndex}][order_qty]" class="form-control order_qty" required min="1">
            </div>
            <div class="form-group">
                <label for="discount">Discount</label>
                <input type="number" name="items[${itemIndex}][discount]" class="form-control discount" value="0" min="0">
            </div>
            <button type="button" class="btn btn-danger remove-item">Remove</button>
        `;
        itemList.appendChild(itemRow);

        itemRow.querySelector('.remove-item').addEventListener('click', function() {
            itemRow.remove();
        });
    });

    document.querySelectorAll('.remove-item').forEach(function(button) {
        button.addEventListener('click', function() {
            button.closest('.item-row').remove();
        });
    });
</script>
@endsection
