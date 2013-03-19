<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>		<html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>		<html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>VGTourney {{ " | " + title }}</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- CSS concatenated and minified via ant build script-->
	<link rel="stylesheet" href="media/css/styles.css">
	<link rel="stylesheet" href="media/css/viewport_style.css">
	<link rel="stylesheet" href="media/css/1140.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="media/css/welcome.css">
	<!-- end CSS-->

	<script src="media/js/libs/modernizr-2.0.6.min.js"></script>
	<script type="text/javascript" src="media/js/css3-mediaqueries.js"></script>
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
	<script>window.jQuery || document.write('<script src="media/js/libs/jquery-1.6.2.min.js"><\/script>')</script>


	<!-- scripts concatenated and minified via ant build script-->
	<script defer src="media/js/plugins.js"></script>
	<script defer src="media/js/script.js"></script>
	<!-- end scripts-->


	<script> // Change UA-XXXXX-X to be your site's ID
		window._gaq = [['_setAccount','UAXXXXXXXX1'],['_trackPageview'],['_trackPageLoadTime']];
		Modernizr.load({
			load: ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
		});
	</script>


	<!--[if lt IE 7 ]>
		<script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
		<script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
	<![endif]-->
	
</body>
</html>
