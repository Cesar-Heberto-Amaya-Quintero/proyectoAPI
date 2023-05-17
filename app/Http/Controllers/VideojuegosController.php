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

    public function create(){
        return view("crear-videojuego");
    }

    public function store(Request $request){

        $nuevoVideojuego = new Videojuego();
        $nuevoVideojuego->nombre = $request->input('nombre');
        $nuevoVideojuego->genero = $request->input('genero');
        $nuevoVideojuego->fecha_salida = $request->input('fecha_salida');
        $nuevoVideojuego->descripcion = $request->input('descripcion');
        $nuevoVideojuego->personajes = $request->input('personajes');
        $nuevoVideojuego->consolas = $request->input('consolas');
        $nuevoVideojuego->jugadores = $request->input('jugadores');

        if($request->hasFile('imagen')){
            $path = $request->file('imagen')->store('public/imagenes');
            $nuevoVideojuego->imagen = $request->file('imagen')->hashName();
        }

        $nuevoVideojuego->save();

        return redirect()->route('videojuegos.index');
    }

    public function edit($id) {
        $videojuego = Videojuego::find($id);
        
        $argumentos['videojuego'] = $videojuego;
        return view('editar-videojuego', $argumentos);
    }

    public function update(Request $request, $id) {
        $videojuego = Videojuego::find($id);
        if($videojuego) {

            $videojuego->nombre = $request->input('nombre');
            $videojuego->genero = $request->input('genero');
            $videojuego->fecha_salida = $request->input('fecha_salida');
            $videojuego->descripcion = $request->input('descripcion');
            $videojuego->personajes = $request->input('personajes');
            $videojuego->consolas = $request->input('consolas');
            $videojuego->jugadores = $request->input('jugadores');

            if($request->hasFile('imagen')){
                $path = $request->file('imagen')->store('public/imagenes');
                $videojuego->imagen = $request->file('imagen')->hashName();
            }
            $videojuego->save();

            return redirect()->route('videojuegos.edit', $id);
        }

        
    }
}
