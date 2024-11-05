<?php

namespace Database\Seeders;

use App\Models\Article;
use App\Models\ArticleModel;
use App\Models\Writer;
use App\Models\WriterModel;
use Database\Factories\ArticleFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        $writers = Writer::all();

        # 1 -> Interactive Multimedia
        # 2 -> Software Engineering

        $articles = [
            [
                'title' => 'Understanding Human and Computer Interaction',
                'body' => 'This article explores the principles of human-computer interaction...',
                'image_path' => 'images/hci.jpg',
                'article_category_id' => 1
            ],
            [
                'title' => 'Design Patterns in Software Engineering',
                'body' => 'This article discusses various design patterns and their applications...',
                'image_path' => 'images/design_patterns.jpg',
                'article_category_id' => 2
            ],
        ];

        foreach($articles as $article){

            if($article['article_category_id'] == 1){
                $writerForCategory = $writers->filter(function ($writer){
                    return in_array($writer->job, ['Multimedia Designer', 'Interactive Media Developer']);
                });

                echo '1 ' . $writerForCategory->count() . '<br/>';

                Article::factory()->create([
                    'title' => $article['title'],
                    'body' => $article['body'],
                    'image_path' => $article['image_path'],
                    'article_category_id' => $article['article_category_id'],
                    'writer_id' => $writerForCategory->random()->id,
                ]);

            } else if($article['article_category_id'] == 2){
                $writerForCategory = $writers->filter(function ($writer){
                    return in_array($writer->job, ['Senior Software Engineer', 'Full Stack Developer']);
                });

                echo '2 ' . $writerForCategory->count() . '<br/>';


                Article::factory()->create([
                    'title' => $article['title'],
                    'body' => $article['body'],
                    'image_path' => $article['image_path'],
                    'article_category_id' => $article['article_category_id'],
                    'writer_id' => $writerForCategory->random()->id,
                ]);
            }

        }
    }
}
