@extends('layouts.main-layout')

@section('content')
    <div style="margin-top: 15vh">

        <h1 class="ms-5 mb-5">Our Writers:</h1>

        <div class="row text-center g-5">
            @foreach ($writers as $writer)
                <div class="col-md-4">
                    @include('components.writer-block', ['writer' => $writer])
                </div>
            @endforeach
        </div>
    </div>
@endsection
