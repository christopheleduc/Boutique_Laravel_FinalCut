    @include('header_01')
<body>
    @include('nav_bar')
    @include('admin_nav_bar')
    <main role="main" >
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">@yield('MetaTitle') Historique </h1>
                <p class="lead text-muted">Historique de vos commandes.<br> Sélectionnez une commande pour afficher le détail !!!</p>
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
