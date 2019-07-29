    @include('header_01')
<body>
    @include('nav_bar')
    @include('admin_nav_bar')

<main role="main" >

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">Notre Boutique Illot</h1>
            <p class="lead text-muted">Bienvenue sur notre super site Boutique en ligne.<br> Nous esperons vous procurer une experience agéable.</p>
            <p>
                <a href="#" class="btn btn-primary my-2">Parcourir le catalogue</a>
                <a href="#" class="btn btn-secondary my-2">Créer un compte</a>
            </p>

            <p>
                <h2>@yield('content')</h2>
            </p>
        </div>
    </section>

</main>

<main role="main" class="container">

    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                @yield('show_products')
            </div>
        </div>
    </div>

</main>
    @include('footer_01')
