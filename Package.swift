// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "CGMath",
	platforms: [
		.iOS(.v9),
		.macOS(.v10_15),
		.tvOS(.v9),
		.watchOS(.v4)
	],
	products: [
		.library(name: "CGMath", targets: ["CGMath"])
	],
	targets: [
		.target(name: "CGMath", path: "CGMath")
	]
)
