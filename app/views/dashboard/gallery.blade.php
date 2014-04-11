@extends ('layouts.new')

@section ('content')

	<div class="row-fluid">
		<ul class="ace-thumbnails">
			@foreach($data as $photo)
			<li>
				<a href="{{ URL::to('uploads/original/' . $photo->filename) }}" data-rel="colorbox">
					<img src="{{ URL::to('uploads/regular/' . $photo->filename) }}">
				</a>
			</li>
			@endforeach
		</ul>
	</div>

@stop

@section('styles')
	{{ HTML::style('assets/css/colorbox.css') }}

@stop

@section('scripts')
	{{ HTML::script('assets/js/jquery-2.0.3.min.js') }}
	{{ HTML::script('assets/js/jquery.colorbox-min.js') }}

	<script type="text/javascript">
	jQuery(function($) {

	var colorbox_params = {
		reposition:true,
		scalePhotos:true,
		scrolling:false,
		previous:'<i class="icon-arrow-left"></i>',
		next:'<i class="icon-arrow-right"></i>',
		close:'&times;',
		current:'{current} of {total}',
		maxWidth:'100%',
		maxHeight:'100%',
		onOpen:function(){
			document.body.style.overflow = 'hidden';
		},
		onClosed:function(){
			document.body.style.overflow = 'auto';
		},
		onComplete:function(){
			$.colorbox.resize();
		}
	};

	$('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
	$("#cboxLoadingGraphic").append("<i class='icon-spinner orange'></i>");//

			});

	</script>

	@stop