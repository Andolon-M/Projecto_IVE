<?php
// routes/queries.php

use App\Models\Resource;
use App\Models\User;
use App\Models\DataUser;
use laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;

// Validaciones para los videos de la vista "descubrir"**************************************************
// Consulta para obtener el video más nuevo
function getNewestVideo() {
    $tipo = "Servicio Dominical";
    return Resource::where('tipo', $tipo)
        ->orderBy('id', 'desc')
        ->first();
}
// Consulta para obtener los videos más antiguos
function getOlderVideos() {
    $tipo = "Servicio Dominical";
    return Resource::where('tipo', $tipo)
        ->orderBy('id', 'desc')
        ->take(5)
        ->get();
}

function getAllUsers() {
    $users = DataUser::all();
    return $users;
}

