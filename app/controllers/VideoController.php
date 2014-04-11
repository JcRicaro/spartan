<?php

class VideoController extends \BaseController {

	function videos()
	{
		return View::make('videos.video')->with('data', Video::all());
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return View::make('videos.list')->with('data', Video::all());
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('videos.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$video = new Video;
		$video->title = Input::get('title');
		$video->description = Input::get('description');
		$video->VidID = Input::get('VidID');

		if($video->save())
		{
			return Redirect::to('dashboard/video');
		}
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		return View::make('videos.edit')->with('data', Video::find($id));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$video = Video::find($id);

		$video->title = Input::get('title');
		$video->description = Input::get('description');
		$video->VidID = Input::get('VidID');

		if($video->save())
		{
			return Redirect::to('dashboard/video');
		}


	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$video = Video::find($id);

		if($video->delete())
		{
			return Redirect::to('dashboard/video');
		}
	}

}