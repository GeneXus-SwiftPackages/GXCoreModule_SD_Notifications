// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Notifications",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Notifications",
			targets: ["GXCoreModule_SD_NotificationsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-rc.9")
	],
	targets: [
		.target(name: "GXCoreModule_SD_NotificationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Notifications",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Notifications",
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_SD_Notifications-3.2.0-rc.9.xcframework.zip",
			checksum: "fd7017b8d4dea9524afa9b0b2f9f5a4c8941e4cac952f6a8b2c7aeff8b79ee57"
		)
	]
)