load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_binary", "nodejs_test")

nodejs_binary(
    name = "helloWorld",
    data = [
        ":srcs",
        "//resources:json_resources",
    ],
    entry_point = "helloworld/node/index.js",
    node_modules = "@node_modules",
    install_source_map_support = False,
)

filegroup(
    name = "srcs",
    srcs = glob(
        [
            "*.js",
        ],
    ),
)

nodejs_test(
    name = "helloWorldTest",
    data = [
        ":srcs",
        "//resources:json_resources",
    ],
    entry_point = "helloworld/node/test.js",
    node_modules = "@node_modules",
    install_source_map_support = False,
)