// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "CGMath",
	platforms: [
		.iOS(.v13),
		.macCatalyst(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.macOS(.v10_15),
		.visionOS(.v1)
	],
	products: [
		.library(name: "CGMath", targets: ["CGMath"])
	],
	targets: [
		.target(name: "CGMath", path: "CGMath")
	]
)
