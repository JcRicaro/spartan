<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/




Route::group(array('prefix' => 'dashboard', 'before' => 'auth'), function(){
	Route::get('/', function() {
		return 'test';
	});

	Route::get('page',array('uses'=>'Pagecontroller@all'));
	
	Route::get('page/new',array('uses'=> 'PageController@create'));
	Route::post('page/new',array('uses'=> 'PageController@save'));

	Route::get('page/edit/{id}', array('uses'=> 'Pagecontroller@edit'));
	Route::post('page/edit/{id}', array('uses'=> 'Pagecontroller@update'));

	Route::get('page/delete/{id}', array('uses'=> 'Pagecontroller@delete'));	

	Route::get('page/recover', array('uses'=> 'Pagecontroller@recover'));	

	//Route::resource('user', 'UserController');	

	Route::get('gallery', array('uses'=> 'GalleryController@show'));
	Route::post('gallery', array('uses'=> 'GalleryController@photo'));


	Route::resource('video', 'VideoController');
	Route::get('video/delete/{id}', array('uses'=> 'VideoController@destroy'));

	Route::get('logout', array('uses' => 'LoginController@logout'));

	Route::get('newsletter', array('uses' => 'SubscriberController@write'));
	Route::post('newsletter', array('uses' => 'SubscriberController@send'));


});

Route::post('login', array('uses' => 'LoginController@login'));



Route::get('/', function() {
	return View::make('dashboard.home')->with('data', Page::where('slug', '/')->first());
});

Route::post('subscribe', array('uses' => 'SubscriberController@subscribe'));

Route::get('gallery', array('uses'=> 'GalleryController@photos'));

Route::get('videos', array('uses'=> 'VideoController@videos'));

Route::get('{slug}', array('uses' => 'PageController@show'));



