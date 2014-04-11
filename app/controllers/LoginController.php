<?php

class LoginController extends BaseController {

	function login()
	{
		try
		{
				$credentials = array(
		        'email'    => Input::get('email'),
		        'password' => Input::get('password'),
		    );

	    	// Try to authenticate the user
	    	$user = Sentry::authenticate($credentials, Input::get('remember'));

	    	return Redirect::to(Input::get('url'));
	    }
	    catch (Cartalyst\Sentry\Users\LoginRequiredException $e)
		{
		    return Redirect::to(Input::get('url'))->with('error', 'Login field is required');
		}
		catch (Cartalyst\Sentry\Users\PasswordRequiredException $e)
		{
		   	return Redirect::to(Input::get('url'))->with('error', 'Password field is required');
		}
		catch (Cartalyst\Sentry\Users\WrongPasswordException $e)
		{
		   	return Redirect::to(Input::get('url'))->with('error', 'wrong password, try again.');
		}
		catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
		{
		    return Redirect::to(Input::get('url'))->with('error', 'User was not found.');
		}
		catch (Cartalyst\Sentry\Users\UserNotActivatedException $e)
		{
		   	return Redirect::to(Input::get('url'))->with('error', 'User is not activated');
		}

		// The following is only required if throttle is enabled

	}

	function logout()
	{
		Sentry::logout();
		return Redirect::to('/');
	}

}