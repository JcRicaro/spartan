@extends('layouts.dashboard')

@section('content')

<a class='btn btn-primary' href="{{ URL::to('dashboard/video/create') }}">New Video</a>

<hr>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>
				Title
			</th>
			<th>
				Content
			</th>
			<th class="col-xs-1"></th>
		</tr>
	</thead>
	<tbody>

@foreach($data as $video)
	<tr>
		<td>
			{{ $video->title }}
		</td>
		<td>

			{{ str_limit($video->description, $limit = 25, $end = '...') }}

		</td>
		<td>
			<i class="icon-pencil green bigger-130"></i> <a href="{{ URL::to('dashboard/video/' . $video->id . '/edit') }}">  Edit</a><br>
			<i class="icon-larger icon-trash bigger-130"></i> <a href="{{ URL::to('dashboard/video/delete/' . $video->id) }}"> Delete </a>
		</td>
	</tr>
@endforeach
	</tbody>
	</table>

@stop
