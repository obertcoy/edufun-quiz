<?php

namespace Database\Factories;

use App\Models\Writer;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Writer>rit
 */
class WriterFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

     protected $model = Writer::class;

    public function definition(): array
    {
        return [
            //
            'name' => $this->faker->name(),
            'job' => $this->faker->randomElement(['Multimedia Designer', 'Interactive Media Developer', 'Senior Software Engineer', 'Full Stack Developer']),
            'image_path' => $this->faker->randomElement(['/assets/seed/writers/1.png', '/assets/seed/writers/2.png', '/assets/seed/writers/3.png', '/assets/seed/writers/4.png',])
        ];
    }
}
