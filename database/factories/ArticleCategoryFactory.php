<?php

namespace Database\Factories;

use App\Models\ArticleCategory;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ArticleCategory>
 */
class ArticleCategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = ArticleCategory::class;

    public function definition(): array
    {
        return [
            //
            'category_name' => $this->faker->randomElement([
                'Interactive Multimedia',
                'Software Engineering'
            ])
        ];
    }
}
