<nav class="navbar navbar-expand-lg bg-body-tertiary shadow py-4 fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">
        <a class="navbar-brand" href={{ route('home') }}>Logo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav d-flex ms-auto gap-3">
                <li class="nav-item">
                    <a class="nav-link active {{ request()->routeIs('home') ? 'text-info' : '' }}" aria-current="page" href={{ route('home') }}>Home</a>
                </li>
                <li class="nav-item dropdown {{ request()->routeIs('category*') ? 'text-info' : '' }}">
                    <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        @foreach ($article_categories as $category)
                            <li><a class="dropdown-item"
                                    href={{ route('category', ['category_id' => $category->id]) }}>{{ $category->category_name }}</a>
                        </li>
                        @endforeach
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link active {{ request()->routeIs('writers') ? 'text-info' : '' }}" aria-current="page" href="{{ route('writers') }}">Writers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active {{ request()->routeIs('about-us') ? 'text-info' : '' }}" aria-current="page" href={{ route('about-us') }}>About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active {{ request()->routeIs('popular') ? 'text-info' : '' }}" aria-current="page" href={{ route('popular') }}>Popular</a>
                </li>
            </ul>


        </div>
    </div>
</nav>
