
/*
 * MyCustomHandler.eq
 * This is a sample template for a Sympathy request handler.
 * Edit to suit your needs.
 */

public class MySecondHandler : HTTPRequestHandler
{
	String value;
	String temp;
	String temp2;
	String temp3;
	public MySecondHandler() {
		value = "NYAA!";
	}

	public void get(HTTPRequest req) {
		req.send_response(HTTPResponse.for_html_string("<% include header.html.t %><form action'/url/path/here' method = 'POST'><p>meow</p><p><input type='text' name='text1'/></p><p><input type='text' name='text2'/></p><p><input type='text' name='text3'/></p><p><input type='submit'/></p></form><% include footer.html.t %>"));
	}
	public void post(HTTPRequest req) {
		HashTable postparams = req.get_post_parameters();
		value = req.get_body_string();
		if(postparams != null) {
			temp = postparams.get_string("text1");
			temp2 = postparams.get_string("text2");
			temp3 = postparams.get_string("text3");
			value = temp.append(" ".append(temp2.append(" ".append(temp3))));

		};
		req.send_response(HTTPResponse.for_html_string("<% include header.html.t %><form action'/url/path/here' method = 'GET'><p>%s</p><p><input type='submit'/></p></form><% include footer.html.t %>".printf().add(value).to_string()));
	}	
}

