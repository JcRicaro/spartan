
<html>
<head>
	<title></title>
	{{ HTML::style('assets/css/style.css') }}

</head>
<body>

	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

	<div class="logo">
		<div class="container">
			<div class="logopic">
				<img src="{{ URL::to('assets/images/logopic.png') }}" alt="">
			</div>
		</div>
	</div>

	<div class="header">
		<div class="container">
			<div class="navigation">

					<ul id="menu">
						<li><a href="{{ URL::to('/') }}">HOME</a></li>
						<li><a href="{{ URL::to('about-us') }}">ABOUT</a></li>
						<li><a href="#">LEARN ABOUT MEMBERSHIP</a>
							<ul class="submenu">
								<li><a href="{{ URL::to('membership-benefits') }}">Membership Benefits</a></li>
								<li><a href="{{ URL::to('membership-payment') }}">Membership Payment</a></li>
							</ul>
						</li>
						<li><a href="#">FITNESS GUIDE</a>
							<ul class="submenu">
								<li><a href="{{ URL::to('healthy-eating') }}">Healthy Eating</a></li>
								<li><a href="{{ URL::to('workout-plans') }}">Workout Plans</a></li>
							</ul>
						<li><a href="#">EXERCISE LIBRARY</a>
							<ul class="submenu">
								<li><a href="{{ URL::to('videos') }}">By Videos</a></li>

							</ul>
						<li><a href="#">GALLERY</a>
							<ul class="submenu">
								<li><a href="{{ URL::to('gallery') }}">Images</a></li>
							</ul>
						<li><a href="{{ URL::to('services-offered') }}">SERVICES OFFERED</a></li>

					</ul>
			</div>
		</div>
	</div>


<div class="hero">
		<div class="container">
			<article class="welcome">
				<div class="text">

					Let's build an empire of Spartans!!<br>
					God's strength + determination +<br>
					discipline = Progress and Development<br>

					<br>
					Always hit a prayer before hitting the gym,<br>
					ask for strength to the Omnipowerful.<br>
					Spartans do pray.<br><br>

					<b>SpartaFIT!</b>
			
				</div>
				<div class="photo">
					<img src="{{ URL::to('assets/images/maliit.jpg') }}" alt="">
				</div>
			</article>
		</div>
	</div>


	<div class="content">
		<div class="container">
			<div class="text">
				@yield('content')

			</div>
		</div>
	</div>

				<div class="fb">
					<center><div class="fb-like-box" data-href="https://www.facebook.com/HOSFC" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>&nbsp;&nbsp;
					<div class="fb-comments" data-href="{{ Request::url() }}" data-numposts="5" data-colorscheme="light"></div></center>
				</div>
<br>

	<div class="newsletter">
		<div class="container">
			@if(Session::get('info'))
			{{ Session::get('info') }}
			@else
			<form action="{{ URL::to('subscribe') }}" method="post">
				<input type="hidden" value="{{ Request::url() }}" name="url">
				Get fitness tips, healthy recipes and exercise suggestions by signing up for our monthly newsletter: &nbsp;<input name="email" placeholder="E-mail"> 		<button type="submit">Subscribe!</button>
			</form>
			@endif
		</div>
	</div>

	<div class="footer">
		<div class="container">
			&copy; Spartan Fitness Center  2014  &bull;  Quirino Highway Quezon City, PH &nbsp;| &nbsp;Glory to God!
		</div>
	</div>

	<script type="text/javascript">
	
	</script>
</body>
</html>