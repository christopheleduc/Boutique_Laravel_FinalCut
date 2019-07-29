    @include('header_01')
<body>
    @include('nav_bar')
    @include('admin_nav_bar')

<main role="main" >

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">Notre Boutique Illot</h1>
            <p class="lead text-muted">Notre équipe de super Hackers est heureuse de vous accueuillir.<br> N'hésitez pas à nous contacter si vous avez des suggestions.</p>
            <p>
                <a href="/products" class="btn btn-primary my-2">Parcourir le catalogue</a>
                <a href="/home" class="btn btn-secondary my-2">Créer un compte / s'identifier</a>
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
                @yield('contact')
            </div>
        </div>
    </div>

</main>
    @include('footer_01')
