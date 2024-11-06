<?php

namespace Database\Seeders;

use App\Models\Article;
use App\Models\ArticleModel;
use App\Models\Writer;
use App\Models\WriterModel;
use Database\Factories\ArticleFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        $faker = Faker::create('id_ID');

        $writers = Writer::all();

        # 1 -> Interactive Multimedia
        # 2 -> Software Engineering

        $articles = [
            [
                'title' => 'Understanding Human and Computer Interaction',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/1.png',
                'article_category_id' => 1
            ],
            [
                'title' => 'Design Patterns in Software Engineering',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/3.jpeg',
                'article_category_id' => 2
            ],
            [
                'title' => 'Human and Computer Interaction',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/1.png',
                'article_category_id' => 1
            ],
            [
                'title' => 'User Experience',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/2.jpeg',
                'article_category_id' => 1
            ],
            [
                'title' => 'User Experience for Digital Immersive Technology',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/2.jpeg',
                'article_category_id' => 1
            ],
            [
                'title' => 'Pattern Software Design',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/3.jpeg',
                'article_category_id' => 2
            ],
            [
                'title' => 'Agile Software Development',
                'body' => fake()->paragraphs(3, true),
                'image_path' => 'assets/seed/articles/4.jpeg',
                'article_category_id' => 2
            ],
            [
                'title' => 'Code Reengineering',
                'body' => $faker->paragraphs(3, true),
                'image_path' => '/assets/seed/articles/4.jpeg',
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
