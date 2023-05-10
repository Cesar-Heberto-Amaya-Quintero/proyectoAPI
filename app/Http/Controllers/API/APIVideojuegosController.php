<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Videojuego;

class APIVideojuegosController extends Controller
{
    public function index(){
        $videojuegos = Videojuego::all();
        
        return $videojuegos;
    }
}
