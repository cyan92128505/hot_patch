import Kitura

let router = Router()
router.all("/public", middleware: StaticFileServer())
router.get("/") { request, response, next in
    response.send("Hello world!")
    next()
}


Kitura.addHTTPServer(onPort: 8080, with: router)
print("server on")
Kitura.run()
