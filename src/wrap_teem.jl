# This script is not an active part of the package.
# It uses Clang.jl package to parse nrrd headers and generate
# Julia wrapper for nrrd API 

#To run the script, set teempath and run as usual.
#To make our results, we also:
# 1. Replace FILE with Cvoid.
# 2. Remove all undefed constants in headers.

using Clang
#using Clang.Deprecated.wrap_c

const teempath = "/usr/local/include/teem/"

const LIBTEEM_INCLUDE = joinpath(@__DIR__, "..", teempath) |> normpath

const LIBTEEM_HEADERS = [joinpath(LIBTEEM_INCLUDE, header) for header in readdir(LIBTEEM_INCLUDE) if endswith(header, ".h")]

function wrap_cursor(name :: AbstractString, cursor)
    #println(name, cursor)
    return(!(typeof(cursor) == CLVarDecl))
end

function header_wrapped(a,b)
    test = (occursin("pull.h", a) || occursin("meet.h", b))
    (a==b) && !test
end

wc = init(;
          headers = LIBTEEM_HEADERS,
          output_file = joinpath(@__DIR__, "libteem_api.jl"),
          common_file = joinpath(@__DIR__, "libteem_common.jl"),
          clang_includes = vcat(LIBTEEM_INCLUDE, CLANG_INCLUDE),
          clang_args = ["-I", joinpath(LIBTEEM_INCLUDE, "..")],
          header_wrapped = header_wrapped,
          header_library = x->"libteem",
          clang_diagnostics = false,
          )


run(wc)

