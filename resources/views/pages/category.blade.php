@extends('layouts.main-layout')


@section('content')

<div class="min-vh-100 d-flex flex-column p-5 gap-5" style="margin-top: 10vh">
        {{-- {{dd($articles_by_category)}} --}}

        <h2>{{ $articles_by_category->category_name }}</h2>


        <div class="d-flex flex-column gap-4 p-5 align-items-center">

            @foreach ($articles_by_category->articles as $article)
                @include('components.article-card', ['article' => $article])
            @endforeach

        </div>


    </div>
@endsection
