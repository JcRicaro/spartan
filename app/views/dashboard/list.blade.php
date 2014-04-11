@extends('layouts.dashboard')

@section('content')




<a class='btn btn-danger' href="{{ URL::to('dashboard/page/new') }}">New page</a>
<a class='btn btn-inverse' href="{{ URL::to('dashboard/page/recover')}}">Trashed</a>

<hr>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>
				Title
			</th>
			<th class="col-xs-1"></th>
		</tr>
	</thead>
	<tbody>

@foreach($pages as $page)
	<tr>
		<td>
			{{ $page->title }}
		</td>
		<td>
			<i class="icon-pencil green bigger-130"></i> <a href="{{ URL::to('dashboard/page/edit/' . $page->id) }}">  Edit</a><br>
			<i class="icon-larger icon-trash bigger-130"></i> <a href="{{ URL::to('dashboard/page/delete/' . $page->id) }}"> Delete @if($page->trashed()) Permanently@endif</a>
		</td>
	</tr>
@endforeach
	</tbody>
	</table>

@stop
