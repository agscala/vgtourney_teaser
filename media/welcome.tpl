<div class="row">
	<div id="sell on stuff" class="eightcol">
		<h1>Sign up to VGTourney!</h1>
	</div>

	<div id="signup-wrapper" class="fourcol last">
		<h2>Reserve your handle:</h2>
		<form action="/reserve" method="POST">
			<div>
				<label for="input-tag">tag</label>
				<input type="text" id="input-tag" name="tag" />
			</div>

			<div>
				<label for="input-handle">handle</label>
				<input type="text" id="input-handle" name="handle" value="{{ handle or '' }}" />
				<p id="handle-error">{{ handle_error or "" }}</p>
			</div>

			<div>
				<label for="input-email">email</label>
				<input type="text" id="input-email" name="email" value="{{ email or '' }}" />
				<p id="email-error">{{ email_error or "" }}</p>
			</div>

			<input type="submit" id="reservation-submit" value="Reserve" disabled />
		</form>
	</div>
</div>

%rebase media/base title="Reserve Your Handle"


