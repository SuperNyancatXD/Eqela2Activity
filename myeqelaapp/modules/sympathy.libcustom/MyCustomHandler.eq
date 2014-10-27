
/*
 * MyCustomHandler.eq
 * This is a sample template for a Sympathy request handler.
 * Edit to suit your needs.
 */

public class MyCustomHandler : HTTPRequestHandler
{
	int counter = 0;
	int timer = 0;
	String value;
	public void get(HTTPRequest req) {
		var str = "too good to be true : %d(reload to increment)".printf().add(counter++).to_string();
		req.send_response(HTTPResponse.for_text_string(str));
	}
		public void post(HTTPRequest req) {
		value = req.get_body_string();
		req.send_response(HTTPResponse.for_text_string("OK"));
	}	
}
