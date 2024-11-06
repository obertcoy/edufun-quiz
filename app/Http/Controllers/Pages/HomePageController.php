<?php

namespace App\Http\Controllers\Pages;

use Illuminate\Http\Request;
use App\Models\ArticleCategory;
use App\Models\Article;
use App\Http\Controllers\Controller;


class HomePageController extends Controller
{
    //
    public function __invoke(){

        $article_categories = ArticleCategory::all();
        $latest_articles = Article::latest()->limit(3)->with('writer')->get();

        return view('pages.home', compact('article_categories', 'latest_articles'));
    }
}
