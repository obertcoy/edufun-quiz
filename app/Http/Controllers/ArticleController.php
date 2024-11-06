<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\ArticleCategory;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Article $article)
    {
        //

        $article = $article->load("article_category");

        return view('pages.details.article', compact('article'));
    }

    public function show_by_category(string $category_id)
    {
        //

        $articles_by_category = ArticleCategory::with('articles')->find($category_id);


        return view('pages.category', compact('articles_by_category'));
    }

    public function show_popular()
    {

        $articles = Article::orderby('title', 'asc')->paginate(3);

    return view('pages.popular', compact('articles'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Article $article)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Article $article)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Article $article)
    {
        //
    }
}
