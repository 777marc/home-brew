<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Beer;

class BeersController extends Controller
{
    public function index(Request $request)
    {
        $beers = Beer::all();
        return view('dashboard')->withBeers($beers);
    }
}