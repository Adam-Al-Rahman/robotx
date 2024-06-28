"""Provides the repository macro to import Libtorch."""

load("//third_party:repo.bzl", "rx_http_archive")

def repo():
    """Imports Libtorch for Bazel."""

    LIBTORCH_SHA256 = "10f2fdc44e7f657f2483c948d21847316ae6b214e850744d5713affc3133f1cb"

    rx_http_archive(
        name = "libtorch",
        build_file = "//third_party/libtorch:libtorch.BUILD",
        url = "https://download.pytorch.org/libtorch/cu121/libtorch-cxx11-abi-shared-with-deps-2.3.1%2Bcu121.zip",
        strip_prefix = "libtorch",
        sha256 = LIBTORCH_SHA256,
    )

def _libtorch_impl(_ctx):
    repo()

libtorch = module_extension(
    implementation = _libtorch_impl,
)
