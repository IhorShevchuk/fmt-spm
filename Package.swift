// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "fmt",
    platforms: [
        .macOS(.v11),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "fmt",
            targets: ["fmt"])
    ],
    targets: [
        .target(name: "fmt",
                path: "fmt",
                exclude: [
                    // module library is not needed for swift package
                    "src/fmt.cc"
                ],
                sources: [
                    "src"
                ],
                publicHeadersPath: "include"
               )
    ],
    cxxLanguageStandard: .cxx20
)
