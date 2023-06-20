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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230620165651")
	],
	targets: [
		.target(name: "GXCoreModule_SD_NotificationsWrapper",
				dependencies: [
					"GXCoreModule_SD_Notifications",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Notifications",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Notifications-1.0.0-beta.20230620165651.xcframework.zip",
			checksum: "4a4d538f9f4da94161830bdff9b6de4ef2269c878204eb459f5c2527e57ca777"
		)
	]
)