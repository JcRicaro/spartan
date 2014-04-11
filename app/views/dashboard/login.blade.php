<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>Spartan Fitness Center</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		{{ HTML::style('assets/css/bootstrap.min.css') }}
		{{ HTML::style('assets/css/font-awesome.min.css') }}

		<!--[if IE 7]>
		  {{ HTML::style('assets/css/font-awesome-ie7.min.css') }}
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		{{ HTML::style('assets/css/ace-fonts.css') }}

		<!-- ace styles -->

		{{ HTML::style('assets/css/ace.min.css') }}
		{{ HTML::style('assets/css/ace-rtl.min.css') }}

		<!--[if lte IE 8]>
		  {{ HTML::style('assets/css/ace-ie.min.css') }}
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		{{ HTML::script('assets/js/html5shiv.js') }}
		{{ HTML::script('assets/js/respond.min.js') }}
		<![endif]-->
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
<div class="row">
	<div class="col-sm-10 col-sm-offset-1">
		<div class="login-container">
			<div class="center">
				<h1>
					<i class="icon-leaf green"></i>
					<span class="red">Spartan</span>
					<span class="white">Fitness Center</span>
				</h1>
				<h4 class="blue">&copy; Expatgroups</h4>
			</div>

			<div class="space-6"></div>

			<div class="position-relative">
				<div id="login-box" class="login-box visible widget-box no-border">
					<div class="widget-body">
						<div class="widget-main">
							<h4 class="header blue lighter bigger">
								<i class="icon-coffee green"></i>
								Please Enter Your Information
							</h4>

							<div class="space-6"></div>

							<form method="post" action="{{ URL::to('login') }}">
								<fieldset>
									<input type="hidden" value="{{ Request::url() }}" name="url">

									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="text" class="form-control" placeholder="Username" name="email" />
											<i class="icon-user"></i>
										</span>
									</label>

									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="password" class="form-control" placeholder="Password" name="password" />
											<i class="icon-lock"></i>
										</span>
									</label>

									<div class="space"></div>

									@if(Session::get('error'))
									<div class="alert alert-danger">
										{{ Session::get('error') }}
									</div>
									@endif

									<div class="clearfix">
										<label class="inline">
											<input type="checkbox" class="ace" name="remember" />
											<span class="lbl"> Remember Me</span>
										</label>

										<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
											<i class="icon-key"></i>
											Login
									r	</button>
									</div>

									<div class="space-4"></div>
								</fieldset>
							</form>
						</div><!-- /widget-main -->

						<div class="toolbar clearfix">

							
						</div>
					</div><!-- /widget-body -->
				</div><!-- /login-box -->

				<div id="forgot-box" class="forgot-box widget-box no-border">
					<div class="widget-body">
						<div class="widget-main">
							<h4 class="header red lighter bigger">
								<i class="icon-key"></i>
								Retrieve Password
							</h4>

							<div class="space-6"></div>
							<p>
								Enter your email and to receive instructions
							</p>

							<form>
								<fieldset>
									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="email" class="form-control" placeholder="Email" />
											<i class="icon-envelope"></i>
										</span>
									</label>

									<div class="clearfix">
										<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
											<i class="icon-lightbulb"></i>
											Send Me!
										</button>
									</div>
								</fieldset>
							</form>
						</div><!-- /widget-main -->

						<div class="toolbar center">
							<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
								Back to login
								<i class="icon-arrow-right"></i>
							</a>
						</div>
					</div><!-- /widget-body -->
				</div><!-- /forgot-box -->

				<div id="signup-box" class="signup-box widget-box no-border">
					<div class="widget-body">
						<div class="widget-main">
							<h4 class="header green lighter bigger">
								<i class="icon-group blue"></i>
								New User Registration
							</h4>

							<div class="space-6"></div>
							<p> Enter your details to begin: </p>

							<form action="{{ URL::to('register') }}" method="post">
								<fieldset>
									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="email" class="form-control" placeholder="Email" name="email" />
											<i class="icon-envelope"></i>
										</span>
									</label>

									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="text" class="form-control" placeholder="Company Name" name="company" />
											<i class="icon-user"></i>
										</span>
									</label>

									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="password" class="form-control" placeholder="Password" name="password" />
											<i class="icon-lock"></i>
										</span>
									</label>

									<label class="block clearfix">
										<span class="block input-icon input-icon-right">
											<input type="password" class="form-control" placeholder="Repeat password" />
											<i class="icon-retweet"></i>
										</span>
									</label>

									<label class="block">
										<input type="checkbox" class="ace" />
										<span class="lbl">
											I accept the
											<a href="#">User Agreement</a>
										</span>
									</label>

									<div class="space-24"></div>

									<div class="clearfix">
										<button type="reset" class="width-30 pull-left btn btn-sm">
											<i class="icon-refresh"></i>
											Reset
										</button>

										<button type="submit" class="width-65 pull-right btn btn-sm btn-success">
											Register
											<i class="icon-arrow-right icon-on-right"></i>
										</button>
									</div>
								</fieldset>
							</form>
						</div>

						<div class="toolbar center">
							<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
								<i class="icon-arrow-left"></i>
								Back to login
							</a>
						</div>
					</div><!-- /widget-body -->
				</div><!-- /signup-box -->
			</div><!-- /position-relative -->
		</div>
	</div><!-- /.col -->
</div><!-- /.row -->

</div>
		</div>
	</body>


	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery || document.write("<script src='{{ URL::to('assets/js/jquery-2.0.3.min.js') }}'>"+"<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='{{ URL::to('assets/js/jquery-1.10.2.min.js') }}'>"+"<"+"/script>");
		</script>
	<![endif]-->

	<script type="text/javascript">
		if("ontouchend" in document) document.write("<script src='{{ URL::to('assets/js/jquery.mobile.custom.min.js') }}'>"+"<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
	function show_box(id) {
	 jQuery('.widget-box.visible').removeClass('visible');
	 jQuery('#'+id).addClass('visible');
	}
</script>
</html>