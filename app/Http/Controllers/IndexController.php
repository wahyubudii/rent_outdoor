<?php

namespace App\Http\Controllers;

use App\Models\Item;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index() {
        $items = Item::all();
        return view('dashboard.index', compact('items'));
    }
}
