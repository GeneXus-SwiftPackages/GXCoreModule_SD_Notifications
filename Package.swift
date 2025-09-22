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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.41")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Notifications-3.2.0-beta.41.xcframework.zip",
			checksum: "02f1bd47d12d313f1b18a970603d3c981432a16fdc6c3fdbb4c41325f26ad836"
		)
	]
)