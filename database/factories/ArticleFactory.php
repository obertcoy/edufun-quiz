<?php

namespace Database\Factories;

use App\Models\Article;
use App\Models\ArticleModel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = Article::class;

    public function definition(): array
    {
        return [
            //
            'title' => $this->faker->sentence(),
            'body' => $this->faker->paragraph(),
            'article_category_id' => 1,
            'writer_id' => 1,
        ];
    }
}
