<?php

namespace App\Http\Controllers;

use App\Models\Item;
use App\Models\Testimonial;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index() {
        $items = Item::all();
        $testimonials = Testimonial::all();
        return view('dashboard.index', compact('items', 'testimonials'));
    }
}
