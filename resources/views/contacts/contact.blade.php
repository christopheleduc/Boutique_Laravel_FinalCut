@extends('layout_view_contacts')
@section('contact')
    <div class="col-md-12">
        <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
                <strong class="d-inline-block mb-2 text-primary">Profil</strong>
                <h3 class="mb-0">
                    <a class="text-dark" href="#">Story Member</a>
                </h3>
                <div class="mb-1 text-muted">{{ $contact['firstName'] }} {{ $contact['lastName'] }}</div>
                <p class="card-text mb-auto">{{ $contact['description'] }}</p>
                <a href="#">Continue reading</a>
            </div>
            <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" data-src="holder.js/100px25?theme=thumb&bg=55595c&fg=eceeef&text={{ $contact['firstName'] }}" alt="Card image cap">
                    <img class="card-img-top" src="{{ asset('images/' .  $contact['image'])}}" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">{{ $contact['name'] }}</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <a href="{{ $contact['linkedin'] }}" class="btn btn-sm btn-outline-secondary">LinkedIn</a>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Contact</button>
                            </div>
                            <small class="text-muted">{{ $contact['fonction'] }}</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
