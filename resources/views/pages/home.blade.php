@extends('layouts.main-layout')

@section('content')
    <div class="min-vh-100 d-flex flex-column">


        <div class="d-flex" style="height: 70vh">

            <img src={{ asset('assets/home/background.avif') }} class="object-fit-cover w-100 h-100" alt="">
        </div>

        <div class="d-flex flex-column bg-body gap-4 p-5 align-items-center">

            @foreach ($latest_articles as $article)

                @include('components.article-card', ['article' => $article])
                
            @endforeach

        </div>


    </div>
@endsection
