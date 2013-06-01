<div class="section" id="hero-banner-wrapper">
	<div class="row">
		<img id="logo-top" src="/media/img/logo_light.png" />
	</div>

	<div id="hero-banner">
		<div class="row">
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
			<div class="clear"> </div>
		</div>
	</div>
</div>

<div class="section" id="brackets-pane">
	<div class="row section-header">
		<h1>Anyone can run a tournament</h1>
	</div>

	<div class="row">
		<div class="sixcol">
			<p class="section-header">ELO Ratings</p>
			<p class="section-body">Search for leagues in your area or create your own. Our tools make player and tournament management a breeze.</p>
		</div>
		<div class="sixcol last">
		</div>
	</div>
</div>

<div class="section" id="experience-pane">
	<div class="row">
		<div class="sixcol">
			<p class="section-header">ELO Ratings &amp; Awards.</p>
			<p class="section-body">Search for leagues in your area or create your own. Our tools make player and tournament management a breeze.</p>
		</div>
		<div class="sixcol last">
			<img src="/media/img/experience_breakdown.png" />
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="section" id="run-tournament-pain">
	<div class="row">
		<div class="sixcol last">
			<img src="/media/img/submit_match.png" />
		</div>
		<div class="sixcol">
			<p class="section-header">ELO Ratings &amp; Awards.</p>
			<p class="section-body">Search for leagues in your area or create your own. Our tools make player and tournament management a breeze.</p>
		</div>
		<div class="clear"></div>
	</div>
</div>

%rebase media/base title="Reserve Your Handle"


