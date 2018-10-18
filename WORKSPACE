workspace(name = "helloworld")

git_repository(
    name = "bazel_skylib",
    remote = "https://github.com/bazelbuild/bazel-skylib.git",
    tag = "0.1.0",  # change this to use a different release
)

git_repository(
    name = "build_bazel_rules_nodejs",
    remote = "https://github.com/bazelbuild/rules_nodejs.git",
    tag = "0.11.3", # check for the latest tag when you install
)


load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories", "yarn_install")

yarn_install(
    name = "node_modules",
    package_json = "//node:package.json",
    yarn_lock = "//node:yarn.lock",
)

node_repositories(package_json = ["//node:package.json"])

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "io_bazel_rules_go",
    urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.16.0/rules_go-0.16.0.tar.gz"],
    sha256 = "ee5fe78fe417c685ecb77a0a725dc9f6040ae5beb44a0ba4ddb55453aad23a8a",
)
http_archive(
    name = "bazel_gazelle",
    urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.15.0/bazel-gazelle-0.15.0.tar.gz"],
    sha256 = "6e875ab4b6bf64a38c352887760f21203ab054676d9c1b274963907e0768740d",
)
load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")
go_rules_dependencies()
go_register_toolchains()
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
gazelle_dependencies()