<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title></title>
  <meta name="description" content="">
  <meta name="author" content="">

  <meta name="viewport" content="width=device-width,initial-scale=1">

  <!-- CSS concatenated and minified via ant build script-->
  <link rel="stylesheet" href="media/css/style.css">
  <!-- end CSS-->

  <script src="media/js/libs/modernizr-2.0.6.min.js"></script>
</head>

<body>

  <div id="container">
    <header>

    </header>
    <div id="main" role="main">

		<div id="new-link">
			<h2>Add a new link</h2>
			<form action="/link" method="POST">
				<label for="input-name">name:</label>
				<input type="text" id="input-name" name="name" />

				<label for="input-url">url:</label>
				<input type="text" id="input-url" name="url" />

				<input type="submit" value="Save" />
			</form>
		</div>

		%for id, name, url in links:
		<div class="link-wrapper">
			<div>
				<a class="link-name" href="{{ url }}">{{ name }}</a>
			</div>
			<div>
				<a class="link-url" href="{{ url }}">{{ url }}</a>
			</div>
			<div>
				<a class="link-delete" href="/link/{{ id }}/delete">delete</a>
			</div>
		</div>
		%end

    </div>

    <footer>

    </footer>
  </div> <!--! end of #container -->


  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
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
