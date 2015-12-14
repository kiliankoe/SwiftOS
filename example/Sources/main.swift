import Curassow
import Inquiline
import Glibc // https://bugs.swift.org/browse/SR-92

serve { request in
        switch request.path {
        case "/":
                return Response(.Ok, contentType: "text/plain", body: "root")
        case "/hello":
                return Response(.Ok, contentType: "text/plain", body: "Hello World!")
        default:
                return Response(.Ok, contentType: "text/plain", body: "none of the above")
        }
}
