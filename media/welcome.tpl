<div class="section" id="hero-banner-wrapper">
	<img id="logo-top" src="/media/img/logo_light.png" />
	<div id="hero-banner">
		<div class="row section-header">
			<h1>The Next Generation Of Competitive Gaming.</h1>
		</div>

		<div class="row">
			<div id="hero-sell" class="sevencol">
				<h1>Sign up to VGTourney!</h1>
			</div>

			<div class="flip fivecol last">
				<div id="signup-wrapper" class="card">
					<div class="face front">
						<div class="signup-inner">
							<h2 id="signup-header">Reserve your handle on VGT</h2>
							<form action="/reserve" method="POST">
								<table>
									<tr>
										<td>
											<input type="text" id="input-tag" name="tag" maxlength="4" placeholder="TAG" />
										</td>
										<td>
											<input type="text" id="input-handle" name="handle" placeholder="handle" value="{{ handle or '' }}" />
											<p id="handle-error">{{ handle_error or "" }}</p>
										</td>
									</tr>
									<tr>
										<td></td>
										<td>
											<input type="text" id="input-email" name="email" placeholder="email" value="{{ email or '' }}" />
											<p id="email-error">{{ email_error or "" }}</p>
										</td>
									</tr>
								</table>

								<div id="award-notice">
									<img src="/media/img/award.png" />
									earn the alpha badge →
								</div>

								<input type="button" id="reservation-submit" value="RESERVE" disabled />
							</form>
						</div>
					</div>

					<div class="face back">
						BACK
					</div>
				</div>
			</div>
			<div class="clear"> </div>
		</div>
	</div>
</div>

<!--
<div class="section">
	<div class="row section-header">
		<div class="sixcol">
			<h1>ELO Ratings & Awards.</h1>
		</div>
		<div class="sixcol last">
			<h1>A list of every match you played ever.</h1>
		</div>
	</div>
</div>

<div class="section" id="brackets-pane">
	<div class="row section-header">
		<h1>Anyone can run a tournament</h1>
	</div>

	<div class="row">
		<div class="sixcol">
			<h1>ELO Ratings</h1>
		</div>
		<div class="sixcol last">
			<h1>A list of every match you played ever.</h1>
		</div>
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
-->

%rebase media/base title="Reserve Your Handle"


