    @include('header_01')
<body>
    @include('admin_nav_bar')

<main role="main" >

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">@yield('MetaTitle') Promo</h1>
            <p class="lead text-muted">Section Administration.<br> N'hésitez pas à faire n'importe quoi!!!</p>
            {{-- <p> --}}
                {{-- <a href="#" class="btn btn-primary my-2">Parcourir le catalogue</a> --}}
                {{-- <a href="#" class="btn btn-secondary my-2">Créer un compte</a> --}}
            {{-- </p> --}}

            {{-- <p> --}}
                {{-- <h2>@yield('MetaTitle')</h2> --}}
            {{-- </p> --}}
        </div>
    </section>

</main>

<main role="main" class="container">

    {{-- <div class="container"> --}}
            {{-- @if ( Session::has('flash_message') )

                <div class="presentation alert {{ Session::get('flash_type') }}">
                    <h3>{{ Session::get('flash_message') }}</h3>
                </div>
            @endif --}}
    {{-- </div> --}}

    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                @yield('content')
            </div>
        </div>
    </div>

</main>
    @include('footer_01')
