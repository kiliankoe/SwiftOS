#if os(Linux)
import Glibc // https://bugs.swift.org/browse/SR-92
#else
import Darwin
#endif

import Curassow
import Inquiline

serve { request in
    return Response(.Ok, contentType: "text/html", body: "<html><h1>\(request.path)</h1></html>")
}
