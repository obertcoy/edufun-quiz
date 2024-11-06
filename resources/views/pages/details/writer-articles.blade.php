@extends('layouts.main-layout')

@section('content')
    <div class="min-vh-100 d-flex flex-column p-5" style="margin-top: 10vh">

        {{-- {{dd($writer_articles)}} --}}
        <div class="d-flex flex-row gap-4 align-items-center" style="height: 20vh">

            <img src="{{ $writer_articles->image_path }}" class="object-fit-cover rounded-5" alt=""
                style="width: 7rem; height: 7rem;">

            <div class="d-flex flex-column justify-content-evenly text-center gap-2">
                <h2>{{ $writer_articles->name }}</h2>
                <h4>{{ $writer_articles->job }}</h4>
            </div>
        </div>

        <div class="d-flex flex-column bg-body gap-4 p-5 align-items-center">

            @foreach ($writer_articles->articles as $article)
                @include('components.article-card', ['article' => $article])
            @endforeach

        </div>


    </div>
@endsection
