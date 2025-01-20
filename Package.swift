// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Notifications",
	platforms: [.iOS("13.0"), .watchOS("9.0"), .tvOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Notifications",
			targets: ["GXCoreModule_SD_NotificationsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-beta.8")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Notifications-3.0.0-beta.8.xcframework.zip",
			checksum: "ee839b1d43e6a23984fea41704ce0245af4d52c1d838e169e56e05b7a3225200"
		)
	]
)