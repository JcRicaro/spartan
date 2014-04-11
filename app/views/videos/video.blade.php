@extends('layouts.new')

@section('content')

@foreach($data as $video)
	<h1>{{ $video->title }}</h1>
	<p>{{ $video->description }}</p>
	<iframe width="560" height="315" src="//www.youtube.com/embed/{{ $video->VidID}}" frameborder="0" allowfullscreen></iframe>
@endforeach

@stop