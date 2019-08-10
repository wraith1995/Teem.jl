__precompile__()
module Teem

import Libdl

#include deps:
const depsfile = joinpath(dirname(dirname(@__FILE__)),"deps","deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("Nrrd is not properly installed. Please run Pkg.build(\"Nrrd\")")
end

using CEnum
include("ctypes.jl")
export Ctm, Ctime_t, Cclock_t
include("libteem_common.jl")
include("libteem_api.jl")



end # module
