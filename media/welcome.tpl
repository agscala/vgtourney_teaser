<div class="header-gradient">
	<div class="row">
		<div class="small-4 small-centered columns">
			<img id="logo-top" src="/media/img/logo_light.png" />
		</div>
	</div>

	<div class="row header-section">
		<div>

			<div class="large-6 columns">
				<div>
					<div id="top-section-header">A revolution in competitive gaming.</div>
				</div>

				<div id="hero-sell">
					Tournaments powered by VGTourney lets players build their gamer identity with stat tracking and match history while giving enhanced tools to organizers to streamline running leagues and events.
				</div>
			</div>

			<div class="flip large-6 columns">
				<div class="card">
					<div class="face front">
						<div class="signup-inner">
							<form action="/reserve" method="POST">
								<div class="row collapse">
									<div class="small-3 columns">
										<input type="text" id="input-tag" maxlength="5" placeholder="TAG" />
									</div>

									<div class="small-7 large-8 columns">
										<input type="text" id="input-handle" placeholder="handle" />
										<small id="handle-status"></small>
									</div>

									<div class="small-2 large-1 columns">
										<span id="handle-icon-container" class="postfix inline"><i id="handle-icon" class="foundicon-asl icon-large"></i></span>
									</div>
								</div>


								<div class="row collapse">
									<div class="small-10 large-11 columns">
										<input type="password" id="input-password" minlength="6" placeholder="password" />
										<small></small>
									</div>

									<div class="small-2 large-1 columns">
										<span class="postfix inline"><i class="foundicon-key icon-large"></i></span>
									</div>

								</div>

								<div class="row collapse">
									<div class="small-10 large-11 columns">
										<input type="email" id="input-email" pattern="[^ @]*@[^ @]*" placeholder="email" />
										<small></small>
									</div>

									<div class="small-2 large-1 columns">
										<span class="postfix inline"><i class="icon-envelope-alt"></i></span>
									</div>
								</div>

								<div class="row">
									<div class="small-7 small-offset-3 columns">
										<input type="button" id="reservation-submit" value="Reserve your handle!" />
									</div>
								</div>

							</form>

							<div id="award-notice">
								<img src="/media/img/award.png" />
								Earn the alpha badge when you reserve your handle
							</div>
						</div>
						

					</div>

		<!-- 			<div class="face back">
						<div id="form-success">
							<div id="success-username">
								<span id="success-tag">VGT</span>
								<span id="success-handle">Scala</span>
							</div>

							<p>Great.  We'll save that handle just for you.</p>

							<p id="success-award">
								<img src="/media/img/award.png" />
								Expect an email soon to claim your alpha badge.
							</p>
						</div>
					</div>
		 -->

				</div>
			</div>

			<div class="clear"></div>


		</div>
	</div>
</div>

<!-- Three-up Content Blocks -->

<div class="row escher">
	<div class="large-4 columns">
		<img src="/media/img/brackets.png" />

		<h4>Comprehensive History</h4>

		<p>Every match played, tournaments participated in, and leagues you're apart of, all in one place.</p>
	</div>

	<div class="large-4 columns">
		<img src="/media/img/experience_breakdown.png" />
		<h4>Stats &amp; Awards</h4>

		<p>Earn experience for playing in tournaments. Earn even more for kicking ass</p>
	</div>

	<div class="large-4 columns">
		<img src="/media/img/submit_match.png" />
		<h4>Looking for a Place to Play?</h4>

		<p>Search for leagues in your area or create your own. Our tools make player and tournament management a breeze.</p>
	</div>
</div>

<!-- Call to Action Panel -->
<div class="row escher">
	<div class="large-12 columns">
		<div class="panel">
			<h4>Get in touch!</h4>

			<div class="row">
				<div class="large-9 columns">
					<p>Follow us on Twitter or contact us directly</p>
					<a href="#" data-dropdown="drop1" class="button dropdown">Dropdown Button</a><br>

					<ul id="drop1" class="f-dropdown">
						<li><a href="#">This is a link</a></li>
						<li><a href="#">This is another</a></li>
						<li><a href="#">Yet another</a></li>
					</ul>


					<select id="feedback-topic" class="button dropdown">
						<option value="" disabled selected>Contact us</option>
						<option value="Organizer feature suggestion">Feature idea for tournament organizers</option>
						<option value="Player feature suggestion">Feature idea for players</option>
						<option value="Problem with page">Problem with this page</option>
						<option value="Kudos">Give us kudos</option>
						<option value="Other">Something else?</option>
					</select>
				</div>

				<div class="flip large-3 columns">
					<div id="feedback-card-wrapper">
						<div id="feedback-card" class="card">
							<div class="face front">
								<div>
									

									
										
								</div>

								<form id="feedback-form" action="/feedback" method="POST">
									<div><input type="email" id="feedback-email" placeholder="Your email (optional)" /></div>
									<div><textarea id="feedback-message">What's on your mind?</textarea></div>
									<input type="button" id="feedback-submit" value="Submit" disabled />
								</form>
							</div>

							<div class="face back">
								<p id="feedback-thanks">
									Thanks for letting us know!
								</p>
							</div>

						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
</div>

  <!-- Footer -->

<footer class="row">
	<div class="large-12 columns">
		<hr />

		<div class="row">
			<div class="large-6 columns">
				<p>&copy; Copyright no one at all. Go to town.</p>
			</div>

			<div class="large-6 columns">
				<ul class="inline-list right">
					<li><a href="#">Link 1</a></li>
					<li><a href="#">Link 2</a></li>
					<li><a href="#">Link 3</a></li>
					<li><a href="#">Link 4</a></li>
				</ul>
			</div>
		</div>

	</div>
</footer>

<!--
<div class="container">
	<div class="row">
		<div id="hero-banner-wrapper">
			<img id="logo-top" src="/media/img/logo_light.png" />
		</div>
	</div>

	<div id="teaser-content" class="row">

		<div id="hero-sell" class="sevencol">
			<p class="section-header">
				The Next Generation Of Competitive Gaming.
			</p>

			<p>
				Tournaments powered by VGTourney lets players build their gamer identity with stat tracking and match history while giving enhanced tools to organizers to streamline running leagues and events.
			</p>

			<div id="award-notice">
				<img src="/media/img/award.png" />
				Earn the alpha badge when you reserve your handle
			</div>
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
										<input type="text" id="input-tag" name="tag" maxlength="5" placeholder="TAG" />
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
								<tr>
									<td></td>
									<td>
										<input type="button" id="reservation-submit" value="RESERVE" disabled />
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>

				<div class="face back">
					<div id="form-success">
						<div id="success-username">
							<span id="success-tag">VGT</span>
							<span id="success-handle">Scala</span>
						</div>
						<p>
							Great.  We'll save that handle just for you.
						</p>
						<p id="success-award">
							<img src="/media/img/award.png" />
							Expect an email soon to claim your alpha badge.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="hero-banner">
	<div class="row">

		<div class="clear"> </div>
	</div>

</div>

<div class="section" id="brackets-pane">
	<div class="row">
		<div class="sixcol", style="text-align:left;">
			<img src="/media/img/brackets.png" />
		</div>
		<div class="sixcol last">
			<p class="section-header">Comprehensive History</p>
			<p class="section-body">Every match played, tournaments participated in, and leagues you're apart of, all in one place.</p>
		</div>
	</div>
</div>

<div class="section" id="experience-pane">
	<div class="row">
		<div class="sixcol">
			<p class="section-header">Stats &amp; Awards</p>
			<p class="section-body">Earn experience for playing in tournaments. Earn even more for kicking ass</p>
		</div>
		<div class="sixcol last">
			<img src="/media/img/experience_breakdown.png" />
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="section" id="run-tournament-pane">
	<div class="row">
		<div class="sixcol">
			<img src="/media/img/submit_match.png" />
		</div>
		<div class="sixcol last">
			<p class="section-header">Looking for a Place to Play?</p>
			<p class="section-body">Search for leagues in your area or create your own. Our tools make player and tournament management a breeze.</p>
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="section" id="contact-us-pane">
	<div class="row">
		<div class="sixcol">
			<p class="section-header"> Contact us
			<p class="section-body"> Have a feature idea, problem, or just want to give us kudos? Let us know!
		</div>
		<div class="flip sixcol last">
			<div id="feedback-card-wrapper">
				<div id="feedback-card" class="card">
					<div class="face front">
						<div>
							<select id="feedback-topic">
								<option value="" disabled selected>What do you have to say?</option>
								<option value="Organizer feature suggestion">Feature idea for tournament organizers</option>
								<option value="Player feature suggestion">Feature idea for players</option>
								<option value="Problem with page">Problem with this page</option>
								<option value="Kudos">Give us kudos</option>
								<option value="Other">Something else?</option>
							</select>
						</div>

						<form id="feedback-form" action="/feedback" method="POST">
							<div><input type="email" id="feedback-email" placeholder="Your email (optional)" /></div>
							<div><textarea id="feedback-message">What's on your mind?</textarea></div>
							<input type="button" id="feedback-submit" value="Submit" disabled />
						</form>
					</div>

					<div class="face back">
						<p id="feedback-thanks">
							Thanks for letting us know!
						</p>
					</div>
				</div>
			</div>
		</div>
</div>

%rebase media/base title="Reserve Your Handle"


 -->