<div class="section" id="hero-banner-wrapper">
	<div class="row section-header">
		<h1>The Next Generation Of Competitive Gaming.</h1>
	</div>

	<div class="row">
		<div id="hero-sell" class="sixcol">
			<h1>Sign up to VGTourney!</h1>
		</div>

		<div id="signup-wrapper" class="fivecol last">
			<h2 id="signup-header">Reserve your handle:</h2>
			<form action="/reserve" method="POST">
				<div>
					<input type="text" id="input-tag" name="tag" placeholder="tag" />
					<input type="text" id="input-handle" name="handle" placeholder="handle" value="{{ handle or '' }}" />
					<p id="handle-error">{{ handle_error or "" }}</p>
				</div>

				<div>
					<input type="text" id="input-email" name="email" placeholder="email" value="{{ email or '' }}" />
					<p id="email-error">{{ email_error or "" }}</p>
				</div>

				<input type="submit" id="reservation-submit" value="Reserve" disabled />
			</form>
		</div>
	</div>
</div>

<div class="section">
	<div class="row section-header">
		<h1>The Next Generation Of Competitive Gaming.</h1>
	</div>
</div>

<div class="section" id="brackets-pane">
	<div class="row section-header">
		<h1>The Next Generation Of Competitive Gaming.</h1>
	</div>
</div>

<div class="section">
	<div class="row section-header">
		<h1>The Next Generation Of Competitive Gaming.</h1>
	</div>
</div>

<div class="section" id="pane-with-wallpaper3">
	<div class="row section-header">
		<h1>The Next Generation Of Competitive Gaming.</h1>
	</div>
</div>

<div class="section">
	<div class="row section-header">
		<h1>The Next Generation Of Competitive Gaming.</h1>
	</div>
</div>

%rebase media/base title="Reserve Your Handle"


