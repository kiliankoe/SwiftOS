import PackageDescription

let package = Package(
	name: "Example",
	dependencies: [
		.Package(url: "git@github.com:kylef/Curassow.git", majorVersion: 0, minor: 1),
	]
)
