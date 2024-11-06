import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/sass/app.scss',
                'resources/js/app.js',
                'public/bootstrap/bootstrap-4.5.0-dist/css/bootstrap.css'
            ],
            refresh: true,
        }),
    ],
});
