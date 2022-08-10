load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
	name="greet_lib",
	url="https://github.com/EmilePapillon/bazel_tutorial/tarball/master/filename.tar.gz",
	sha256="0d92f0a739db26004166666b5045423255f6df6320ae8422155bebf1f4f1acea",
	build_file="//greet_lib:greeter.BUILD",
	strip_prefix="EmilePapillon-bazel_tutorial-252c76d"
)

http_archive(
    name = "com_google_protobuf",
    sha256 = "9b4ee22c250fe31b16f1a24d61467e40780a3fbb9b91c3b65be2a376ed913a1a",
    strip_prefix = "protobuf-3.13.0",
    url = "https://github.com/protocolbuffers/protobuf/archive/v3.13.0.tar.gz",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

http_archive(
    name = "gtest",
    url = "https://github.com/google/googletest/archive/release-1.7.0.zip",
    sha256 = "b58cb7547a28b2c718d1e38aee18a3659c9e3ff52440297e965f5edffe34b6d0",
    build_file = "gtest.BUILD",
    strip_prefix = "googletest-release-1.7.0",
)