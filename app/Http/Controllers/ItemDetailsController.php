<?php

namespace App\Http\Controllers;

use App\Models\Item;
use Illuminate\Http\Request;

class ItemDetailsController extends Controller
{

    public function allItem()
    {
        $items = Item::all();
        return view('dashboard.item-details', compact('items'));
    }

    public function detailItem($id)
    {
        if (Item::where('id', $id)->exists()) {
            $items = Item::where('id', $id)->get();
            return view('dashboard.item-details', compact('items'));
        } else {
            return redirect('/')->with('id', 'íd doesnt exists');
        }
    }
}
