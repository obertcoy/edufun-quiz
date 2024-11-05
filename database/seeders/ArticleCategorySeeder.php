<?php

namespace Database\Seeders;

use App\Models\ArticleCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ArticleCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        ArticleCategory::create([
            'category_name' => 'Interactive Multimedia',
        ]);
        ArticleCategory::create([
            'category_name' => 'Software Engineering',
        ]);
    }
}
