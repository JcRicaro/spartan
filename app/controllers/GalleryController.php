<?php

class GalleryController extends BaseController {


	function show()
	{
		return View::make('dashboard.images')->with('data', Photo::all());
	}

	function photos()
	{
		return View::make('dashboard.gallery')->with('data', Photo::all());
	}

		function photo()
	{
		if(Input::hasFile('file'))
		{
			

			$file = Input::file('file');
			$filename = str_random(40) . '.' . $file->getClientOriginalExtension();
			$uploadpath = public_path('uploads/original');

			$file->move($uploadpath, $filename);

			$image = Image::make(public_path('uploads/original/' . $filename));

			if($image->width > $image->height)
			{
				$image->resize(null, 120, true)->resizeCanvas(190, 120, 'center')->save(public_path('uploads/regular/' . $filename));	
				Image::make(public_path('uploads/original/' . $filename))->resize(null, 190, true)->resizeCanvas(150, 150, 'center')->save(public_path('uploads/thumbnail/' . $filename));
			}
			else
			{
				$image->resize(190, null, true)->resizeCanvas(190, 120, 'center')->save(public_path('uploads/regular/' . $filename));	
				Image::make(public_path('uploads/original/' . $filename))->resize(190, null, true)->resizeCanvas(150, 150, 'center')->save(public_path('uploads/thumbnail/' . $filename));
			}
			
			$photo 					= new Photo;
			$photo->filename 		= $filename;

			if($photo->save())
			{
				Session::flash('info', 'Photo has been uploaded!');
				return Response::json(array('status' => true));
			}
			else
			{
				return Response::json(array('status' => 1));
			}
		}
		else
		{
			return Response::json(array('status' => 2));
		}
	}



}