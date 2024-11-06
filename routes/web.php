<?php

namespace App\Http\Controllers\Pages;

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', HomePageController::class)->name('home');
Route::get('/writers', [WriterController::class, 'index'])->name('writers');
Route::get('/about-us', AboutUsPageController::class)->name('about-us');

Route::prefix('details')->group(function () {
    Route::get('/article/{article}', [ArticleController::class, 'show'])->name('details.article');
    Route::get('/writer-articles/{id}', [WriterController::class, 'show'])->name('details.writer-articles');
});

Route::controller(ArticleController::class)->group(function () {

    Route::get('/category/{category_id}', 'show_by_category')->name('category');
    Route::get('/popular', 'show_popular')->name('popular');
});

