<div class="d-flex flex-row gap-4 w-75" style="height: 25vh">

    {{-- {{dd($article)}} --}}

    <div class="d-flex w-25 h-100 rounded-4">

        <img src={{ $article->image_path }} alt="" class="w-100 h-100 rounded-4 object-fit-cover">
    </div>

    <div class="d-flex flex-column w-75 h-100 gap-2">

        <h4>{{ $article->title }}</h4>

        <span>{{ $article->created_at->format('d F Y') }} | by: {{ $article->writer->name }}</span>

        <p class="text-truncate w-50">{{ $article->body }}</p>

        <div class=" ms-auto mt-auto">
            <a href={{ route('details.article', ['article' => $article]) }}>

                <button type="button" class="btn btn-dark rounded-5 px-5">
                    read more...
                </button>
            </a>
        </div>

    </div>

</div>
