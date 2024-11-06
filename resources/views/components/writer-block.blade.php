<a class="d-flex flex-column gap-4 align-items-center text-decoration-none text-black" href={{route('details.writer-articles', ['id' => $writer->id])}} >

    <div class="w-50 h-50">
        <img src={{$writer->image_path}} alt="" class="rounded-5 object-fit-contain w-100 h-100">
    </div>

    <h3>{{$writer->name}}</h3>
    <h5>{{$writer->job}}</h5>
</a>
