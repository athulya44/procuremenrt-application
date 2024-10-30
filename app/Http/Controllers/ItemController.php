<?php

namespace App\Http\Controllers;
use App\Models\Supplier;
use App\Models\Item;
use App\Models\Itemimage;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ItemController extends Controller
{
    public function index()
    {
        $items = Item::all();
        return view('item.index', compact('items'));
    }

    public function create()
   
    {
        $supplier=Supplier::all();
        return view('item.create',compact('supplier'));
    }

    public function store(Request $request)
    {
        // $request->validate([
        //     'name' => 'required|string|max:255',
        //     'description' => 'nullable|string',
        // ]);

        $item = Item::create([
            'item_name' => $request->item_name,
            'inventory_location' => $request->inventory_location,
            'brand' => $request->brand,
            'category' => $request->category,
           
            'supplier_id' => $request->supplier, 
            'stock_unit' => $request->stock_unit,
            'unit_price' => $request->unit_price,
        ]);
    
        // Step 2: Check if images are uploaded
       
        if ($request->hasFile('image')) {
            foreach ($request->file('image') as $image) {
                // Step 3: Store each image
                $imagePath = $image->store('images', 'public'); // Store in the public/images directory
    
                // Step 4: Save image path and item_id in ItemImage table
                Itemimage::create([
                    'item_id' => $item->id,
                    'image' => $imagePath,
                ]);
            }
        }
        return redirect()->route('items.index')->with('success', 'Item created successfully.');
    }

    public function show($id)
    {
        $item=Item::where('id',$id)->first();
        $supplier=Supplier::all();
        $itemimage=Itemimage::where('item_id',$id)->get();
        return view('item.show', compact('item','itemimage','supplier'));
    }

    public function edit($id)
    {
        $item=Item::where('id',$id)->first();
        $supplier=Supplier::all();
        $itemimage=Itemimage::where('item_id',$id)->get();
        return view('item.edit', compact('item','itemimage','supplier'));
    }

    public function update(Request $request, $id)
{
    // Step 1: Find the existing item by ID
    $item = Item::findOrFail($id);
    
    // Step 2: Update the item's details
    $item->update([
        'item_name' => $request->item_name,
        'inventory_location' => $request->inventory_location,
        'brand' => $request->brand,
        'category' => $request->category,
        'supplier_id' => $request->supplier,
        'stock_unit' => $request->stock_unit,
        'unit_price' => $request->unit_price,
    ]);

    // Step 3: Handle image uploads
    if ($request->hasFile('image')) {
        foreach ($request->file('image') as $index => $image) {
            // Check if this is a new image or an old image ID is provided
            if (isset($request->old_image_id[$index])) {
                // Update the existing image record
                $itemImage = Itemimage::find($request->old_image_id[$index]);
                if ($itemImage) {
                    // Delete old image file if it exists
                    if (Storage::exists('public/' . $itemImage->image)) {
                        Storage::delete('public/' . $itemImage->image);
                    }
                    // Store new image
                    $imagePath = $image->store('images', 'public');
                    $itemImage->update(['image' => $imagePath]);
                }
            } else {
                // Store new image if no old image ID is provided
                $imagePath = $image->store('images', 'public');
                Itemimage::create([
                    'item_id' => $item->id,
                    'image' => $imagePath,
                ]);
            }
        }
    }

    return redirect()->route('items.index')->with('success', 'Item updated successfully.');
}

    public function destroy(Item $Item)
    {
       $Item->delete();
        return redirect()->route('items.index')->with('success', 'Item deleted successfully.');
    }

    public function updatestatus(Request $request, $id){
        $item = Item::findorfail($id);
        $item->status=$request->status;
        $item->save();
        return redirect()->route('items.index')->with('success', 'Status updated successfully.');
    }
}
