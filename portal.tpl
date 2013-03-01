%for name, url in links:
<p>{{ name }}, {{ url }}</p>
%end

<form action="/link" method="POST">
	name: <input type="text" name="name"/>
	url: <input type="text" name="url"/>
	<input type="submit" value="Save"/>
</form>
