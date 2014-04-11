<?php

class Pagecontroller extends BaseController {

	function show($slug)
	{
		return View::make('dashboard.show')->with('data', Page::where('slug', $slug)->first());
	}


	function all()
	{
		return View::make('dashboard.list')->with('pages', Page::all());
	}


	function create()
	{
		return View::make('dashboard.create');
	}

	function save()
	{
		$validator = Validator::make(array(
			'title' => Input::get('title'),
			'slug' => Input::get('slug')
			), array(
			'title' => 'required',
			'slug' => 'required|unique:pages'
			));


		if($validator->fails())
		{
			// rediract sa same page, with the error mesages
			return Redirect::to('dashboard/page/new')
				->withErrors($validator)
				->withInput();
		}

		else
		{

			$page = new Page;

			$page->title = Input::get('title');
			$page->slug = Input::get('slug');
			$page->content = Input::get('content');
			$page->hero = Input::get('hero');

			if($page->save())
			{
				//Redirect sa next page
				return Redirect::to('dashboard/page');
			}
			else
			{
			//Mag error
			}

		}
	}


	function update($id)
	{
		$validator = Validator::make(array(
			'title' => Input::get('title'),
			'slug' => Input::get('slug')
			), array(
			'title' => 'required',
			'slug' => 'required'
			));


		if($validator->fails())
		{
			// rediract sa same page, with the error mesages
			return Redirect::to('dashboard/page/new')
				->withErrors($validator)
				->withInput();
		}

		else
		{

			if($validator->fails())
			{
			// rediract sa same page, with the error mesages
			return Redirect::to('dashboard/page/new')
				->withErrors($validator)
				->withInput();
			}

			$page = Page::find($id);

			$page->title = Input::get('title');
			$page->slug = Input::get('slug');
			$page->content = Input::get('content');
			$page->hero = Input::get('hero');

			if($page->save())
			{
			//Redirect sa next page
				return Redirect::to('dashboard/page');
			}
			else
			{
			//Mag error
			}
		}
	}

	function edit($pageId)
	{
		return View::make('dashboard.edit')->with('page', Page::find($pageId));
	}

	function delete($id)
	{
		$page = Page::withTrashed()->find($id);

		if($page->trashed())
		{
			$page->forceDelete();
			
			return Redirect::to('dashboard/page/recover');	
			
		}
		else
		{
			if($page->delete())
			{
				return Redirect::to('dashboard/page');		
			}
		}
	}

	function recover()
	{
		return View::make('dashboard.list')->with('pages', Page::onlyTrashed()->get());
	}

}
