<?php

class SubscriberController extends BaseController {

	function subscribe()
	{

		$validator = Validator::make(array(
			'email' => Input::get('email')
			), array(
			'email' => 'required|email'
			));


		if($validator->fails())
		{
			return Redirect::to(Input::get('url'))->with('info', 'Invalid email!');
		}
		else
		{
			$subscriber = Subscriber::where('email', Input::get('email'))->first();	

			if($subscriber)
			{
				return Redirect::to(Input::get('url'))->with('info', 'THIS E-MAIL IS ALREADY SUBSCRIBED!');
			}
			else
			{
				$s = new Subscriber;
				$s->email = Input::get('email');
				$s->save();
				
				return Redirect::to(Input::get('url'))->with('info', 'YOU HAVE BEEN SUCCESSFULLY SUBSCRIBED TO OUR MONTHLY NEWSLETTER! THANK YOU!');
			}
		}
	}

	function write()
	{
		//return ka ng form
		return View::make('newsletter.create');
	}

	function send()
	{
		$subscribers = Subscriber::all();

		

		foreach($subscribers as $subscriber) 
		{
			$data = array(
				'title' => Input::get('title'),
				'content' => Input::get('content')
			);

			Mail::send('emails.message', $data, function($message) use ($subscriber)
			{
			    $message->to($subscriber->email)->subject('Spartan Fitness Center');
			});	
		}

		return Redirect::to('dashboard/newsletter');
		
	}
}