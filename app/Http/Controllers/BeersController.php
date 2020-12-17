<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Beer;

class BeersController extends Controller
{
    public function index(Request $request)
    {
        $beers = Beer::orderBy('brew_date', 'desc')->get();
        return view('dashboard')->withBeers($beers);
    }
}
