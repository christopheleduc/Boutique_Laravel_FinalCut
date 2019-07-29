@extends('AdminLayout')

@section('content')
    @if ($errors->any())
        <div class="container">
            @foreach ($errors->all() as $error)
                <div class="alert alert-danger">
                    {{ $error }}
                </div>
            @endforeach
        </div>
    @endif

<div class="container">
    <div class="row justify-content-md-center">
        <div class="col col-lg-2">
        </div>

    <div class="alert alert-primary col-lg-10" role="alert">
    <div class="container">
    <h2 class="pagination justify-content-center">Ajouter un produit</h2>
    </div>
    <div class="container">
        <form action="{{ action('AdminController@store') }}" method="post">
            @csrf

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nouveau nom</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="name" required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Description</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="description"required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Prix (en cts)</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="price"required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Poids </label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="weight"required>
                </div>
            </div>
            {{--<ul> <input type="number" name="categories_id"required><label> - Catégorie </label></ul>--}}
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Catégorie</label>
                <div class="col-sm-10">
                    <select class="custom-select my-1 mr-sm-2" required name="categories_id">
                        @foreach($idCategorie as $id)
                            <option value="{{$id['id']}}">{{$id['name']}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Promo</label>
                <div class="col-sm-10">
                    <select class="custom-select my-1 mr-sm-2" required name="promos_id">
                    <option value="0">aucun</option>
                    @foreach($idPromo as $id)
                        <option value="{{$id['id']}}">{{$id['name']}}</option>
                    @endforeach
                </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Stock</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="stock"required>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Url de l'image</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="img">
                </div>
            </div>
            <div class="container">
                <div class="row justify-content-md-center">
                    <div class="col col-lg-2">
                    </div>
                    <div class="col col-lg-10">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Ajouter</button>
                    </div>
                    <div class="col col-lg-2">
                    </div>
                </div>
            </div>
        </form>
    </div>
    </div>

        <div class="col col-lg-2">
        </div>
    </div>
</div>
@endsection
