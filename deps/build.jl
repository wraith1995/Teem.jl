using BinaryProvider

const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))


products = Product[
    LibraryProduct(prefix, "libteem", :libteem)
]


bin = "https://github.com/wraith1995/TeemBuiler.jl/releases/download/v0.0"

download_info = Dict(
    Linux(:x86_64, :glibc) => ("$bin/teem.v0.0.0.x86_64-linux-gnu.tar.gz", "f87a38744074a7cc2b92bd7aa3242679b06c81a987f648c4ba51104877a75278")
)


if any(!satisfied(p; verbose=verbose) for p in products)
    try
        # Download and install binaries
        url, tarball_hash = choose_download(download_info)
        install(url, tarball_hash; prefix=prefix, force=true, verbose=true)
    catch e
        if typeof(e) <: ArgumentError
            error("Your platform $(Sys.MACHINE) is not supported by this package!")
        else
            rethrow(e)
        end
    end

    # Finally, write out a deps.jl file
    write_deps_file(joinpath(@__DIR__, "deps.jl"), products)
end
