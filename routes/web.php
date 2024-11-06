<?php

namespace App\Http\Controllers\Pages;

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', HomePageController::class)->name('home');
Route::get('/details/article/{article}', [ArticleController::class, 'show'])->name('details.article');
Route::get('/details/writer-articles/{id}', [WriterController::class, 'show'])->name('details.writer-articles');
Route::get('/writers', [WriterController::class, 'index'])->name('writers');
Route::get('/about-us', AboutUsPageController::class)->name('about-us');
Route::get('/category/{category_id}', [ArticleController::class, 'show_by_category'])->name('category');
Route::get('/popular', [ArticleController::class, 'show_popular'])->name('popular');
