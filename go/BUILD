load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_test")
go_binary(
    name = "helloWorld",
    srcs = ["main.go"],
    data = ["//resources:json_resources"],
)
go_test(
    name = "helloWorldTest",
    srcs = ["main_test.go"],
    data = ["//resources:json_resources"],
)