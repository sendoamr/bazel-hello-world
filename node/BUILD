load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_binary")

nodejs_binary(
    name = "helloWorld",
    data = [
        ":srcs",
    ],
    entry_point = "helloworld/node/index.js",
    node_modules = "@node_modules",
    install_source_map_support = False,
)

filegroup(
    name = "srcs",
    srcs = glob(
        [
            "index.js",
        ],
    ),
)