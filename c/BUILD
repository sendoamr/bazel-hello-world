cc_binary(
  name = "helloWorld",
  srcs = ["main.cc"],
  linkstatic = 0,
  data = ["//resources:json_resources"],
)



cc_test(
    name = "helloWorldTest",
    srcs = ["main-test.cc"],
    copts = ["-Iexternal/gtest/include"],
    deps = [
        "@gtest//:main",
    ],
)
