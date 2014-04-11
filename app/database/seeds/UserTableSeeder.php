<?php

class UserTableSeeder extends Seeder {
	function run()
	{
		DB::table('users')->delete();

		$user = Sentry::createUser(array(
	        'email'     => 'admin@email.com',
	        'password'  => '123456',
	        'activated' => true,
    	));
	}
}