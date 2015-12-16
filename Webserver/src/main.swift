#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif
import HTTP
import Epoch
import CHTTPParser
import CLibvenice

struct ServerResponder: ResponderType {
    func respond(request: Request) -> Response {
	let path = request.uri.path!
	let text = path.splitBy("/").last!
        // do something based on the Request
        return Response(status: .OK, body: "<html><head><meta charset=\"utf-8\"></head><h1>\(text)</h1></html>")
    }
}

let responder = ServerResponder()
let server = Server(port: 8080, responder: responder)
server.start()
