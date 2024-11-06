@extends('layouts.main-layout')

@section('content')
    <div class="min-vh-100 d-flex flex-column p-5 gap-5" style="margin-top: 10vh">

        <h2>{{ $article->article_category->category_name }}</h2>

        <div class="d-flex flex-column gap-2">
            <img src={{$article->image_path}} class="object-fit-cover rounded-4 w-100" alt="" style="height: 40vh">
            <span>{{ $article->created_at->format('d F Y') }} | by: {{ $article->writer->name }}</span>
        </div>


        <p>{{$article->body}}</p>

    </div>
@endsection
