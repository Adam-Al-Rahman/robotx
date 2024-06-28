load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])
licenses(["notice"])
exports_files(["LICENSE"])

cc_library(
    name = "torch",
    srcs = select({
        "@platforms//os:linux": glob(["lib/lib*.so*"], exclude = ["lib/libtorch_python.so", "lib/libnnapi_backend.so"]),
        "@platforms//os:macos": glob(["lib/lib*.dylib"]),
        "@platforms//os:windows": glob([
            "lib/caffe2*.dll",
            "lib/torch*.dll",
            "lib/c10*.dll",
        ]),
        "//conditions:default": glob(["lib/lib*.so*"], exclude = ["lib/libtorch_python.so", "lib/libnnapi_backend.so"]),
    }),
    deps = select({
        "@platforms//os:macos": ["@mklml_repo_darwin//:mklml"],
        "//conditions:default": [],
    }),
    hdrs = glob([
        "include/ATen/**",
        "include/c10/**",
        "include/caffe2/**",
        "include/torch/**",
        "include/torch/csrc/**",
        "include/torch/csrc/jit/**",
        "include/torch/csrc/api/include/**",
    ]),
    includes = [
        "include",
        "include/torch/csrc/api/include",
    ],
)
