
/*
 * MyCustomHandler.eq
 * This is a sample template for a Sympathy request handler.
 * Edit to suit your needs.
 */

public class MyCustomHandler : HTTPRequestHandler
{
	String temp;
	String value;
	public MyCustomHandler() {
		value = "";
	}
	
	public void post(HTTPRequest req) {
		HashTable postparams = req.get_post_parameters();
		value = req.get_body_string();
		if(postparams != null) {
			value = postparams.get_string("text1");
			value = value.append(postparams.get_string("text2")).append(postparams.get_string("text3"));
		}
		get(req);
	}
	public void get(HTTPRequest req) {
			req.send_response(HTTPResponse.for_html_string("<form action = '/index'><p>%s</p><p><input type='submit' text = 'Back'></p></form>".printf().add(value).to_string()));
	}
}
