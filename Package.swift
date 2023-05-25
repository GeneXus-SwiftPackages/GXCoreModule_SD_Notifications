// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Notifications",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Notifications",
			targets: ["GXCoreModule_SD_NotificationsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta")
	],
	targets: [
		.target(name: "GXCoreModule_SD_NotificationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Notifications",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.tvOS, .iOS, .watchOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Notifications",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Notifications-1.0.0-beta+20230525135158.xcframework.zip",
			checksum: "d117440dfc71f8132963b8885d0b86695753e21f72a47119577577dec26736ab"
		)
	]
)