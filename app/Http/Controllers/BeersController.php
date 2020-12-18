<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Beer;

class BeersController extends Controller
{
    public function index(Request $request)
    {
        $beers = Beer::orderBy('brew_date', 'desc')->paginate(5);
        return view('dashboard')->withBeers($beers);
    }

    public function show(Request $request, $id)
    {
        $beer = Beer::where('id', $id)->first();
        return view('beers.beer')->withBeer($beer);
    }
}
