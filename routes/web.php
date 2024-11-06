<?php

namespace App\Http\Controllers\Pages;

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', HomePageController::class)->name('home');
Route::get('/details/article/{article}', [ArticleController::class, 'show'])->name('details.article');
Route::get('/writers', [WriterController::class, 'index'])->name('writers');
Route::get('/details/writer-articles/{id}', [WriterController::class, 'show'])->name('details.writer-articles');
Route::get('/about-us', AboutUsPageController::class)->name('about-us');
