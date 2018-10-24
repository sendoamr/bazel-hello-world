java_binary(
    name = "helloWorld",
    main_class = "HelloWorld",
    srcs = ["HelloWorld.java"],
    resources = ["//resources:json_resources"]
)

java_test(
    name = "helloWorldTest",
    srcs = glob(["*.java"]),
    test_class = "HelloWorldTest",
    resources = ["//resources:json_resources"]
)