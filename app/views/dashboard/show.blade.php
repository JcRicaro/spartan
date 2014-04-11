@extends('layouts.new')

@section('content')
<h1>{{ $data->title }}</h1>

{{ $data->content }}

@stop





@section('heropicture')
{{ HTML::image($data->hero) }}
@stop

