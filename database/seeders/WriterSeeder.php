<?php

namespace Database\Seeders;

use App\Models\Writer;
use App\Models\WriterModel;
use Database\Factories\WriterFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

        # Sequence to make sure each category has the fair amount of writers
        Writer::factory()->count(4)
            ->sequence(
                ['job' => fake()->randomElement(['Multimedia Designer', 'Interactive Media Developer'])],
                ['job' => fake()->randomElement(['Senior Software Engineer', 'Full Stack Developer'])],
            )
            ->create();
    }
}
