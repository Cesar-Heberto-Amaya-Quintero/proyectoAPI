<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Videojuego;

class VideojuegosController extends Controller
{
    public function index(){
        $videojuegos = Videojuego::all();
        $argumentos['videojuegos'] = $videojuegos;

        return view('index', $argumentos);
    }
}
