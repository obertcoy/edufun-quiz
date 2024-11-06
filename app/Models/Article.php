<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Article extends Model
{
    use HasFactory;

    //
    public function writer()
    {
        return $this->belongsTo(Writer::class);
    }

    public function article_category()
    {
        return $this->belongsTo(ArticleCategory::class);
    }
}
