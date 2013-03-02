<div id="new-link">
	<h2>Reserve your handle:</h2>
	<form action="/reserve" method="POST">
		<div>
			<label for="input-tag">tag</label>
			<input type="text" id="input-tag" name="tag" />
		</div>

		<div>
			<label for="input-handle">handle</label>
			<input type="text" id="input-handle" name="handle" />
			<p id="handle-error"></p>
		</div>

		<div>
			<label for="input-email">email</label>
			<input type="text" id="input-email" name="email" />
			<p id="email-error"></p>
		</div>

		<input type="submit" value="Reserve" />
	</form>
</div>

%rebase media/base title="Reserve Your Handle"


