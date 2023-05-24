<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VideojuegosController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/videojuegos', [VideojuegosController::class, 'index'])->name('videojuegos.index');

Route::get('/videojuegos/create', [VideojuegosController::class, 'create'])->name('videojuegos.create');

Route::post('/videojuegos/create', [VideojuegosController::class, 'store'])->name('videojuegos.store');

Route::get('/videojuegos/{id}/edit', [VideojuegosController::class, 'edit'])->name('videojuegos.edit');

Route::put('/videojuegos/{id}/edit', [VideojuegosController::class, 'update'])->name('videojuegos.update');

Route::delete('/videojuegos/{id}', [VideojuegosController::class, 'destroy'])->name('videojuegos.destroy');
