<?php

namespace App\View\Components;

use App\Models\ArticleCategory;
use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class navbar extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        $article_categories = ArticleCategory::all();


        return view('components.navbar', compact('article_categories'));
    }
}
