<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>		<html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>		<html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Alef' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="/media/img/ico.png">

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>VGTourney {{ " | " + title }}</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- CSS concatenated and minified via ant build script-->
	<link rel="stylesheet" href="media/css/normalize.css" />
  	<link rel="stylesheet" href="media/css/foundation.min.css" />
	<link rel="stylesheet" href="media/css/welcome.css">
	<link rel="stylesheet" href="media/css/accessibility_foundicons.css">
	<link rel="stylesheet" href="media/css/accessibility_foundicons_ie7.css">
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
	<!-- end CSS-->

	<script src="media/js/libs/vendor/custom.modernizr.js"></script>
</head>

<body>

	<div>
		<header>
		</header>

		<div id="main" role="main">
		%include
		</div>

		<footer>
		</footer>
	</div> <!--! end of #container -->


	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


	<!-- scripts concatenated and minified via ant build script-->
	<script defer src="media/js/plugins.js"></script>
	<script defer src="media/js/bindWithDelay.plugin.js"></script>
	<script defer src="media/js/script.js"></script>
	<!-- end scripts-->

	<script>
	document.write('<script src=' +
	('__proto__' in {} ? 'media/js/libs/vendor/zepto' : 'media/js/libs/vendor/jquery') +
	'.js><\/script>')
	</script>

	<script src="media/js/libs/foundation/foundation.js"></script>
	<script src="media/js/libs/foundation/foundation.alerts.js"></script>
	<script src="media/js/libs/foundation/foundation.clearing.js"></script>
	<script src="media/js/libs/foundation/foundation.cookie.js"></script>
	<script src="media/js/libs/foundation/foundation.dropdown.js"></script>
	<script src="media/js/libs/foundation/foundation.forms.js"></script>
	<script src="media/js/libs/foundation/foundation.joyride.js"></script>
	<script src="media/js/libs/foundation/foundation.magellan.js"></script>
	<script src="media/js/libs/foundation/foundation.orbit.js"></script>
	<script src="media/js/libs/foundation/foundation.placeholder.js"></script>
	<script src="media/js/libs/foundation/foundation.reveal.js"></script>
	<script src="media/js/libs/foundation/foundation.section.js"></script>
	<script src="media/js/libs/foundation/foundation.tooltips.js"></script>
	<script src="media/js/libs/foundation/foundation.topbar.js"></script>
	<script src="media/js/libs/foundation/foundation.interchange.js"></script>
	<script>
		$(document).foundation();
	</script>

	<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-41551038-1', 'vgtourney.com');
	ga('send', 'pageview');

	</script>

</body>
</html>
