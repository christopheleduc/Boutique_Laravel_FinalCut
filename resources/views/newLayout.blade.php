    @include('header_01')
<body>
            @include('nav_bar')
            @include('admin_nav_bar')
<main role="main" >
    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">@yield('MetaTitle') Everything And All</h1>
            <p class="lead text-muted">Bienvenue sur Everything and All!<br> Nous espérons vous procurer un agréable moment.</p>
            <p>
                <a href="/products" class="btn btn-primary my-2">Parcourir le catalogue</a>
                <a href="/home" class="btn btn-secondary my-2">Créer un compte / s'identifier</a>
            </p>
            <p>
                <h2>@yield('MetaTitle')</h2>
            </p>
        </div>
    </section>
</main>

<main role="main" class="container" style="text-align:center">
    @if ( Session::has('flash_message') )
        <div class="presentation alert {{ Session::get('flash_type') }}">
            <h3>{{ Session::get('flash_message') }}</h3>
        </div>
    @endif
    {{-- <div class="container"> --}}
            {{-- @if ( Session::has('flash_message') )

                <div class="presentation alert {{ Session::get('flash_type') }}">
                    <h3>{{ Session::get('flash_message') }}</h3>
                </div>
            @endif --}}
    {{-- </div> --}}
    <div class="panel-body text-center" style="float:none">
        <p class="lead text-muted">@yield('title')<br> </p>
        <p>@yield('filters')</p>
    </div>
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                @yield('listProd')
            </div>
        </div>
        @yield('bottom')
    </div>
</main>
    @include('footer_01')
