@extends('layouts.dashboard')

@section('content')

	<div class="row-fluid">
		<ul class="ace-thumbnails">
			@foreach($data as $photo)
			<li>
				<a href="{{ URL::to('uploads/original/' . $photo->filename) }}" data-rel="colorbox">
					<img src="{{ URL::to('uploads/thumbnail/' . $photo->filename) }}">
				</a>
			</li>
			@endforeach
		</ul>
	</div>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>

	<div id="dropzone">
		<form action="{{ URL::to('dashboard/gallery') }}" class="dropzone">
			<div class="fallback">
				<input name="file" type="file" multiple="" />
			</div>
		</form>
	</div>

@stop

@section('styles')
	{{ HTML::style('assets/css/dropzone.css') }}
	{{ HTML::style('assets/css/colorbox.css') }}
@stop

@section('scripts')
	{{ HTML::script('assets/js/dropzone.min.js') }}
	{{ HTML::script('assets/js/jquery.colorbox-min.js') }}

	<script type="text/javascript">
		jQuery(function($) {


			try {
		  $(".dropzone").dropzone({
		    paramName: "file", // The name that will be used to transfer the file
		    maxFilesize: 0.5, // MB
		  
			addRemoveLinks : true,
			dictDefaultMessage :
			'<span class="bigger-50 bolder"><i class="icon-caret-right red"></i> Drop files</span> to upload \
			 <br /> \
			<i class="upload-icon icon-cloud-upload blue icon-3x"></i>'
		,
			dictResponseError: 'Ersror while uploading file!',
			
			//change the previewTemplate to use Bootstrap progress bars
			previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-details\">\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n    <div class=\"dz-size\" data-dz-size></div>\n    <img data-dz-thumbnail />\n  </div>\n  <div class=\"progress progress-small progress-striped active\"><div class=\"progress-bar progress-bar-success\" data-dz-uploadprogress></div></div>\n  <div class=\"dz-success-mark\"><span></span></div>\n  <div class=\"dz-error-mark\"><span></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n</div>"
		  });
		} catch(e) {
		  alert('Dropzone.js does not support older browsers!');
		}

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