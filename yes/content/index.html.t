<% include header.html.t %>

<h1>Yes</h1>

<p>My Program</p>
<form action = "/custom" method = "POST">
	<p><input type="text" name="text1"/></p>
	<p><input type="text" name="text2"/></p>
	<p><input type="text" name="text3"/></p>
	<p><a href = "/index"><input type="submit"/></a></p>
</form>
<% include footer.html.t %>