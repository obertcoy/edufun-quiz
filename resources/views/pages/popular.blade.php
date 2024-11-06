@extends('layouts.main-layout')


@section('content')
    <div class="min-vh-100 d-flex flex-column p-5 gap-5" style="margin-top: 10vh">

        <h2>Popular</h2>


        <div class="d-flex flex-column gap-4 p-5 align-items-center">

            @foreach ($articles as $article)
                @include('components.article-card', ['article' => $article])
            @endforeach

        </div>


        {{ $articles->links() }}


    </div>
@endsection
