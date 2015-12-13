import PackageDescription

let package = Package(
    name: "Hello",
    dependencies: [
        .Package(url: "https://github.com/kylef/Curassow.git", majorVersion: 0, minor: 1),
//        .Package(url: "https://github.com/jensravens/interstellar.git", majorVersion: 1),
    ]
)
