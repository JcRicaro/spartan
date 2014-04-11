@extends('layouts.dashboard')

@section('content')

	<form action="{{ URL('dashboard/page/new')}}" method="post" class="savePage">
		

		<label>Title</label>&nbsp;&nbsp;&nbsp;
		<input type="text" name="title" value="{{ Input::old('title') }}" id="name" size="40">
		{{ $errors->first('title') }}
		<br>
		<br>
		<label>Link</label>&nbsp;&nbsp;&nbsp;
		<input type="text" name="slug" value="{{ Input::old('slug') }}" id="slug" size="40">
		{{ $errors->first('slug') }}
		<br>
		<br>
		<label>Hero</label>&nbsp;
		<input type="text" name="hero" value="{{ Input::old('hero') }}" value="{{ Input::old('hero') }}" size="40">&nbsp;(directory)
		{{ $errors->first('slug') }}
		<br>
		<br>
		<label>Content</label>
		<br>
		<div class="wysiwyg-editor" id="editor1"></div>
		<input type="hidden" name="content" id="content">
		<br>
		<button type="submit">Save page content</button>

	</form>

@stop

@section('scripts')



{{ HTML::script('assets/js/bootstrap-wysiwyg.min.js') }}
{{ HTML::script('assets/js/jquery.hotkeys.min.js') }}


<script type="text/javascript">
	jQuery(function($){

		function showErrorAlert (reason, detail) {
		var msg='';
		if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
		else {
			console.log("error uploading file", reason, detail);
		}
		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
		 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
	}


	$(".savePage").on('submit', function() {
		$("#content").val($("#editor1").html());
	});


		$('#editor1').ace_wysiwyg({
		toolbar:
		[
			'font',
			null,
			'fontSize',
			null,
			{name:'bold', className:'btn-info'},
			{name:'italic', className:'btn-info'},
			{name:'strikethrough', className:'btn-info'},
			{name:'underline', className:'btn-info'},
			null,
			{name:'insertunorderedlist', className:'btn-success'},
			{name:'insertorderedlist', className:'btn-success'},
			{name:'outdent', className:'btn-purple'},
			{name:'indent', className:'btn-purple'},
			null,
			{name:'justifyleft', className:'btn-primary'},
			{name:'justifycenter', className:'btn-primary'},
			{name:'justifyright', className:'btn-primary'},
			{name:'justifyfull', className:'btn-inverse'},
			null,
			{name:'createLink', className:'btn-pink'},
			{name:'unlink', className:'btn-pink'},
			null,
			{name:'insertImage', className:'btn-success'},
			null,
			'foreColor',
			null,
			{name:'undo', className:'btn-grey'},
			{name:'redo', className:'btn-grey'}
		],
		'wysiwyg': {
			fileUploadError: showErrorAlert
		}
	}).prev().addClass('wysiwyg-style2');

	
		function convertToSlug(Text)
                {
                    return Text
                        .toLowerCase()
                        .replace(/ /g,'-')
                        .replace(/[^\w-]+/g,'')
                        ;
                }
 
                $("#name").keyup(function() {
                        $("#slug").val(convertToSlug($("#name").val()));
                });


	});




</script>

@stop