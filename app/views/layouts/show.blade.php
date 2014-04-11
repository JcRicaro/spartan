@extends('layouts.master')

@section('content')
<h1>{{ $data->title }}</h1>

{{ $data->content }}

@stop