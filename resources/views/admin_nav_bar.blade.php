@if( Auth::user() && Auth::user()->isAdmin === 1)
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/products">Liste des produits <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Panier</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="{{ url('orders/basket') }}">Panier</a>
                        <a class="dropdown-item" href="/historique">Historique Commandes</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Contacts</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="/contacts/Christophe">Christophe</a>
                        <a class="dropdown-item" href="/contacts/Mel">Mélanie</a>
                        <a class="dropdown-item" href="/contacts/Cedric">Cédric</a>
                        <a class="dropdown-item" href="/contacts/Eric">Eric</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Administration</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="/admin">Modif/Supp Produits</a>
                        <a class="dropdown-item" href="/admin/create">Ajout Produit</a>
                        <a class="dropdown-item" href="/admin/category">Modif/Supp Catégories</a>
                        <a class="dropdown-item" href="/admin/category/create">Ajout Catégorie</a>
                        <a class="dropdown-item" href="{{action('promoController@create')}}">Ajout Promo</a>
                        <a class="dropdown-item" href="/admin/promo">Modif/Supp Promo</a>
                        <a class="dropdown-item" href="/admin/orders">Historique Commandes</a>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
@endif
