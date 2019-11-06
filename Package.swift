// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "CGMath",
	platforms: [
		.iOS(.v8),
	],
	products: [
		.library(name: "CGMath", targets: ["CGMath"])
	],
	targets: [
		.target(name: "CGMath")
	]
)