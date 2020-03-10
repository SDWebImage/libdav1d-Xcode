// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libdav1d",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "libdav1d",
            targets: ["libdav1d"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "libdav1d",
            dependencies: [],
            path: ".",
            exclude: ["dav1d/src/arm", "dav1d/src/ppc", "dav1d/src/win32", "dav1d/src/x86", "dav1d/src/ext", "dav1d/include/compat"],
            sources: ["dav1d/src", "dav1d/include", "generate"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("generate"), .headerSearchPath("dav1d"), .headerSearchPath("dav1d/include"), .headerSearchPath("dav1d/include/dav1d")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
