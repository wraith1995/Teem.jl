# Automatically generated using Clang.jl


const TEEM_VERSION_MAJOR = 1
const TEEM_VERSION_MINOR = 12
const TEEM_VERSION_PATCH = 0
const TEEM_VERSION = 11200
const TEEM_VERSION_STRING = "1.12.0"
const AIR_LLONG_FMT = "%lld"
const AIR_ULLONG_FMT = "%llu"

# Skipping MacroDefinition: AIR_LLONG ( x ) x ## ll
# Skipping MacroDefinition: AIR_ULLONG ( x ) x ## ull

const AIR_PI = 3.141592653589793
const AIR_E = 2.718281828459045
const AIR_STRLEN_SMALL = 128 + 1
const AIR_STRLEN_MED = 256 + 1
const AIR_STRLEN_LARGE = 512 + 1
const AIR_STRLEN_HUGE = 1024 + 1
const AIR_RANDMT_N = 624
const AIR_TYPE_MAX = 12
const AIR_INSANE_MAX = 11
const AIR_PRIME_NUM = 1000
const AIR_NODIO_MAX = 12
const AIR_TRUE = 1
const AIR_FALSE = 0
const AIR_WHITESPACE = " \t\n\r\v\f"

# Skipping MacroDefinition: AIR_UNUSED ( x ) ( void ) ( x )
# Skipping MacroDefinition: AIR_CAST ( t , v ) ( ( t ) ( v ) )
# Skipping MacroDefinition: AIR_UINT ( x ) AIR_CAST ( unsigned int , x )
# Skipping MacroDefinition: AIR_INT ( x ) AIR_CAST ( int , x )
# Skipping MacroDefinition: AIR_VOIDP ( x ) AIR_CAST ( void * , x )
# Skipping MacroDefinition: AIR_CVOIDP ( x ) AIR_CAST ( const void * , x )
# Skipping MacroDefinition: AIR_MALLOC ( N , T ) ( T * ) ( malloc ( ( N ) * sizeof ( T ) ) )
# Skipping MacroDefinition: AIR_CALLOC ( N , T ) ( T * ) ( calloc ( ( N ) , sizeof ( T ) ) )
# Skipping MacroDefinition: AIR_ENDIAN ( airMyEndian ( ) )


# Skipping MacroDefinition: AIR_NAN ( airFloatQNaN . f )
# Skipping MacroDefinition: AIR_QNAN ( airFloatQNaN . f )
# Skipping MacroDefinition: AIR_SNAN ( airFloatSNaN . f )
# Skipping MacroDefinition: AIR_POS_INF ( airFloatPosInf . f )
# Skipping MacroDefinition: AIR_NEG_INF ( airFloatNegInf . f )
# Skipping MacroDefinition: AIR_EXISTS ( x ) ( AIR_CAST ( int , ! ( ( x ) - ( x ) ) ) )
# Skipping MacroDefinition: AIR_EXISTS_F ( x ) ( ( * ( unsigned int * ) & ( x ) & 0x7f800000 ) != 0x7f800000 )
# Skipping MacroDefinition: AIR_EXISTS_D ( x ) ( ( * ( airULLong * ) & ( x ) & AIR_ULLONG ( 0x7ff0000000000000 ) ) != AIR_ULLONG ( 0x7ff0000000000000 ) )
# Skipping MacroDefinition: AIR_ISNAN_F ( x ) ( ( ( * ( unsigned int * ) & ( x ) & 0x7f800000 ) == 0x7f800000 ) && ( * ( unsigned int * ) & ( x ) & 0x007fffff ) )
# Skipping MacroDefinition: AIR_MAX ( a , b ) ( ( a ) > ( b ) ? ( a ) : ( b ) )
# Skipping MacroDefinition: AIR_MIN ( a , b ) ( ( a ) < ( b ) ? ( a ) : ( b ) )
# Skipping MacroDefinition: AIR_ABS ( a ) ( ( a ) > 0.0f ? ( a ) : - ( a ) )
# Skipping MacroDefinition: AIR_COMPARE ( a , b ) ( ( a ) < ( b ) ? - 1 : ( ( a ) > ( b ) ? 1 : 0 ) )
# Skipping MacroDefinition: AIR_IN_OP ( a , b , c ) ( ( a ) < ( b ) && ( b ) < ( c ) )
# Skipping MacroDefinition: AIR_IN_CL ( a , b , c ) ( ( a ) <= ( b ) && ( b ) <= ( c ) )
# Skipping MacroDefinition: AIR_CLAMP ( a , b , c ) ( ( b ) < ( a ) ? ( a ) : ( ( b ) > ( c ) ? ( c ) : ( b ) ) )
# Skipping MacroDefinition: AIR_MOD ( i , N ) ( ( i ) % ( N ) >= 0 ? ( i ) % ( N ) : N + ( i ) % ( N ) )
# Skipping MacroDefinition: AIR_LERP ( w , a , b ) ( ( w ) * ( ( b ) - ( a ) ) + ( a ) )
# Skipping MacroDefinition: AIR_AFFINE ( i , x , I , o , O ) ( \
#( ( double ) ( O ) - ( o ) ) * ( ( double ) ( x ) - ( i ) ) / ( ( double ) ( I ) - ( i ) ) + ( o ) )
# Skipping MacroDefinition: AIR_DELTA ( i , x , I , o , O ) ( \
#( ( double ) ( O ) - ( o ) ) * ( ( double ) ( x ) ) / ( ( double ) ( I ) - ( i ) ) )
# Skipping MacroDefinition: AIR_ROUNDUP ( x ) ( ( int ) ( floor ( ( x ) + 0.5 ) ) )
# Skipping MacroDefinition: AIR_ROUNDDOWN ( x ) ( ( int ) ( ceil ( ( x ) - 0.5 ) ) )
# Skipping MacroDefinition: AIR_ROUNDUP_UI ( x ) ( ( unsigned int ) ( floor ( ( x ) + 0.5 ) ) )
# Skipping MacroDefinition: AIR_ROUNDDOWN_UI ( x ) ( ( unsigned int ) ( ceil ( ( x ) - 0.5 ) ) )

const airLLong = Clonglong
const airULLong = Culonglong

struct airPtrPtrUnion
    uc::Ptr{Ptr{Cuchar}}
end

struct airEnum
    name::Cstring
    M::UInt32
    str::Ptr{Cstring}
    val::Ptr{Cint}
    desc::Ptr{Cstring}
    strEqv::Ptr{Cstring}
    valEqv::Ptr{Cint}
    sense::Cint
end

struct airArray
    data::Ptr{Cvoid}
    dataP::Ptr{Ptr{Cvoid}}
    len::UInt32
    lenP::Ptr{UInt32}
    incr::UInt32
    size::UInt32
    unit::Csize_t
    noReallocWhenSmaller::Cint
    allocCB::Ptr{Cvoid}
    freeCB::Ptr{Cvoid}
    initCB::Ptr{Cvoid}
    doneCB::Ptr{Cvoid}
end

struct airHeap
    key_a::Ptr{airArray}
    data_a::Ptr{airArray}
    idx_a::Ptr{airArray}
    invidx_a::Ptr{airArray}
    key::Ptr{Cdouble}
    data::Ptr{Cvoid}
    idx::Ptr{UInt32}
    invidx::Ptr{UInt32}
end

const _airThread = Cvoid
const airThread = _airThread
const _airThreadMutex = Cvoid
const airThreadMutex = _airThreadMutex
const _airThreadCond = Cvoid
const airThreadCond = _airThreadCond

struct airThreadBarrier
    numUsers::UInt32
    numDone::UInt32
    doneMutex::Ptr{airThreadMutex}
    doneCond::Ptr{airThreadCond}
end

struct airFloat
    i::UInt32
end

struct airDouble
    i::airULLong
end

struct airRandMTState
    state::NTuple{624, UInt32}
    pNext::Ptr{UInt32}
    left::UInt32
end

@cenum airMopper::UInt32 begin
    airMopNever = 0
    airMopOnError = 1
    airMopOnOkay = 2
    airMopAlways = 3
end


struct airMop
    ptr::Ptr{Cvoid}
    mop::airMopper
    when::Cint
end

struct biffMsg
    key::Cstring
    err::Ptr{Cstring}
    errNum::UInt32
    errArr::Ptr{airArray}
end


const DYE_MAX_SPACE = 7

# Skipping MacroDefinition: DYE_VALID_SPACE ( spc ) ( AIR_IN_OP ( dyeSpaceUnknown , ( spc ) , dyeSpaceLast ) )

struct dyeColor
    val::NTuple{2, NTuple{3, Cfloat}}
    xWhite::Cfloat
    yWhite::Cfloat
    spc::NTuple{2, UInt8}
    ii::UInt8
end

const dyeConverter = Ptr{Cvoid}

const ECHO_POS_FLOAT = 0
const ECHO_LIST_OBJECT_INCR = 32
const ECHO_IMG_CHANNELS = 5
const ECHO_EPSILON = 5.0e-5
const ECHO_NEAR0 = 0.004
const ECHO_LEN_SMALL_ENOUGH = 5
const ECHO_THREAD_MAX = 512
const ECHO_JITTER_NUM = 4
const ECHO_JITTABLE_NUM = 7
const ECHO_MATTER_MAX = 4
const ECHO_MATTER_PARM_NUM = 4
const ECHO_TYPE_NUM = 12

# Skipping MacroDefinition: ECHO_OBJECT_COMMON signed char type
# Skipping MacroDefinition: ECHO_OBJECT_MATTER unsigned char matter ; echoCol_t rgba [ 4 ] ; echoCol_t mat [ ECHO_MATTER_PARM_NUM ] ; Nrrd * ntext

const echoPos_t = Cdouble
const echoCol_t = Cfloat

struct echoRTParm
    jitterType::Cint
    reuseJitter::Cint
    permuteJitter::Cint
    textureNN::Cint
    numSamples::Cint
    imgResU::Cint
    imgResV::Cint
    maxRecDepth::Cint
    renderLights::Cint
    renderBoxes::Cint
    seedRand::Cint
    sqNRI::Cint
    numThreads::Cint
    sqTol::echoPos_t
    shadow::echoCol_t
    glassC::echoCol_t
    aperture::Cfloat
    timeGamma::Cfloat
    boxOpac::Cfloat
    maxRecCol::NTuple{3, echoCol_t}
end

struct NrrdAxisInfo
    size::Csize_t
    spacing::Cdouble
    thickness::Cdouble
    min::Cdouble
    max::Cdouble
    spaceDirection::NTuple{8, Cdouble}
    center::Cint
    kind::Cint
    label::Cstring
    units::Cstring
end

struct Nrrd
    data::Ptr{Cvoid}
    type::Cint
    dim::UInt32
    axis::NTuple{16, NrrdAxisInfo}
    content::Cstring
    sampleUnits::Cstring
    space::Cint
    spaceDim::UInt32
    spaceUnits::NTuple{8, Cstring}
    spaceOrigin::NTuple{8, Cdouble}
    measurementFrame::NTuple{8, NTuple{8, Cdouble}}
    blockSize::Csize_t
    oldMin::Cdouble
    oldMax::Cdouble
    ptr::Ptr{Cvoid}
    cmt::Ptr{Cstring}
    cmtArr::Ptr{airArray}
    kvp::Ptr{Cstring}
    kvpArr::Ptr{airArray}
end

struct echoObject
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
end

struct echoScene_t
    cat::Ptr{Ptr{echoObject}}
    catArr::Ptr{airArray}
    rend::Ptr{Ptr{echoObject}}
    rendArr::Ptr{airArray}
    light::Ptr{Ptr{echoObject}}
    lightArr::Ptr{airArray}
    nrrd::Ptr{Ptr{Nrrd}}
    nrrdArr::Ptr{airArray}
    envmap::Ptr{Nrrd}
    ambi::NTuple{3, echoCol_t}
    bkgr::NTuple{3, echoCol_t}
end

struct limnCamera_t
    from::NTuple{3, Cdouble}
    at::NTuple{3, Cdouble}
    up::NTuple{3, Cdouble}
    uRange::NTuple{2, Cdouble}
    vRange::NTuple{2, Cdouble}
    fov::Cdouble
    aspect::Cdouble
    neer::Cdouble
    faar::Cdouble
    dist::Cdouble
    atRelative::Cint
    orthographic::Cint
    rightHanded::Cint
    W2V::NTuple{16, Cdouble}
    V2W::NTuple{16, Cdouble}
    U::NTuple{4, Cdouble}
    V::NTuple{4, Cdouble}
    N::NTuple{4, Cdouble}
    vspNeer::Cdouble
    vspFaar::Cdouble
    vspDist::Cdouble
end

const limnCamera = limnCamera_t

struct echoGlobalState
    verbose::Cint
    time::Cdouble
    nraw::Ptr{Nrrd}
    cam::Ptr{limnCamera}
    scene::Ptr{echoScene_t}
    parm::Ptr{echoRTParm}
    workIdx::Cint
    workMutex::Ptr{airThreadMutex}
end

struct echoThreadState
    thread::Ptr{airThread}
    gstate::Ptr{echoGlobalState}
    verbose::Cint
    threadIdx::Cint
    depth::Cint
    nperm::Ptr{Nrrd}
    njitt::Ptr{Nrrd}
    permBuff::Ptr{UInt32}
    jitt::Ptr{echoPos_t}
    chanBuff::Ptr{echoCol_t}
    rst::Ptr{airRandMTState}
    returnPtr::Ptr{Cvoid}
end

struct echoSphere
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    pos::NTuple{3, echoPos_t}
    rad::echoPos_t
end

struct echoCylinder
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    axis::Cint
end

struct echoSuperquad
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    axis::Cint
    A::echoPos_t
    B::echoPos_t
end

struct echoCube
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
end

struct echoTriangle
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    vert::NTuple{3, NTuple{3, echoPos_t}}
end

struct echoRectangle
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    origin::NTuple{3, echoPos_t}
    edge0::NTuple{3, echoPos_t}
    edge1::NTuple{3, echoPos_t}
end

struct echoTriMesh
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    meanvert::NTuple{3, echoPos_t}
    min::NTuple{3, echoPos_t}
    max::NTuple{3, echoPos_t}
    numV::Cint
    numF::Cint
    pos::Ptr{echoPos_t}
    vert::Ptr{Cint}
end

struct echoIsosurface
    type::UInt8
    matter::Cuchar
    rgba::NTuple{4, echoCol_t}
    mat::NTuple{4, echoCol_t}
    ntext::Ptr{Nrrd}
    volume::Ptr{Nrrd}
    value::Cfloat
end

struct echoAABBox
    type::UInt8
    obj::Ptr{echoObject}
    min::NTuple{3, echoPos_t}
    max::NTuple{3, echoPos_t}
end

struct echoSplit
    type::UInt8
    axis::Cint
    min0::NTuple{3, echoPos_t}
    max0::NTuple{3, echoPos_t}
    min1::NTuple{3, echoPos_t}
    max1::NTuple{3, echoPos_t}
    obj0::Ptr{echoObject}
    obj1::Ptr{echoObject}
end

struct echoList
    type::UInt8
    obj::Ptr{Ptr{echoObject}}
    objArr::Ptr{airArray}
end

struct echoInstance
    type::UInt8
    Mi::NTuple{16, echoPos_t}
    M::NTuple{16, echoPos_t}
    obj::Ptr{echoObject}
end

const echoScene = echoScene_t

struct echoRay
    from::NTuple{3, echoPos_t}
    dir::NTuple{3, echoPos_t}
    neer::echoPos_t
    faar::echoPos_t
    shadow::Cint
    transp::echoCol_t
end

struct echoIntx
    obj::Ptr{echoObject}
    t::echoPos_t
    u::echoPos_t
    v::echoPos_t
    norm::NTuple{3, echoPos_t}
    view::NTuple{3, echoPos_t}
    refl::NTuple{3, echoPos_t}
    pos::NTuple{3, echoPos_t}
    face::Cint
    boxhits::Cint
end

struct echoPtrPtrUnion
    obj::Ptr{Ptr{Ptr{echoObject}}}
end


const ELL_EPS = 1.0e-10
const ELL_QUADRATIC_ROOT_MAX = 3
const ELL_CUBIC_ROOT_MAX = 4

# Skipping MacroDefinition: ELL_SWAP2 ( a , b , t ) ( ( t ) = ( a ) , ( a ) = ( b ) , ( b ) = ( t ) )
# Skipping MacroDefinition: ELL_SWAP3 ( a , b , c , t ) ( ( t ) = ( a ) , ( a ) = ( b ) , ( b ) = ( c ) , ( c ) = ( t ) )
# Skipping MacroDefinition: ELL_SORT3 ( v0 , v1 , v2 , t ) if ( v0 > v1 ) { if ( v1 < v2 ) { if ( v0 > v2 ) { ELL_SWAP2 ( v1 , v2 , t ) ; } else { ELL_SWAP3 ( v0 , v2 , v1 , t ) ; } } } else { if ( v1 > v2 ) { if ( v0 > v2 ) { ELL_SWAP2 ( v0 , v1 , t ) ; } else { ELL_SWAP3 ( v0 , v1 , v2 , t ) ; } } else { ELL_SWAP2 ( v0 , v2 , t ) ; } }
# Skipping MacroDefinition: ELL_MAX3_IDX ( v0 , v1 , v2 ) ( v0 > v1 ? ( v1 > v2 ? 0 : ( v0 > v2 ? 0 : 2 ) ) : ( v2 > v1 ? 2 : 1 ) )
# Skipping MacroDefinition: ELL_MIN3_IDX ( v0 , v1 , v2 ) ( v0 < v1 ? ( v1 < v2 ? 0 : ( v0 < v2 ? 0 : 2 ) ) : ( v2 < v1 ? 2 : 1 ) )
# Skipping MacroDefinition: ELL_2V_EXISTS ( v ) ( AIR_EXISTS ( ( v ) [ 0 ] ) && AIR_EXISTS ( ( v ) [ 1 ] ) )
# Skipping MacroDefinition: ELL_2V_SET ( v , a , b ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) )
# Skipping MacroDefinition: ELL_2V_SET_TT ( v , TT , a , b ) ( ( v ) [ 0 ] = AIR_CAST ( TT , ( a ) ) , ( v ) [ 1 ] = AIR_CAST ( TT , ( b ) ) )
# Skipping MacroDefinition: ELL_2V_COPY ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_INCR ( v2 , v1 ) ( ( v2 ) [ 0 ] += ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( v1 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_LERP ( v3 , w , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_LERP ( ( w ) , ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) , ( v3 ) [ 1 ] = AIR_LERP ( ( w ) , ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) )
# Skipping MacroDefinition: ELL_2V_LERP_TT ( v3 , TT , w , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) ) , ( v3 ) [ 1 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) ) )
# Skipping MacroDefinition: ELL_2V_ADD2 ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_ADD3 ( v4 , v1 , v2 , v3 ) ( ( v4 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] + ( v3 ) [ 0 ] , ( v4 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] + ( v3 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_ADD4 ( v5 , v1 , v2 , v3 , v4 ) ( ( v5 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] + ( v3 ) [ 0 ] + ( v4 ) [ 0 ] , ( v5 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] + ( v3 ) [ 1 ] + ( v4 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_SUB ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] - ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] - ( v2 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_COPY_TT ( v2 , TYPE , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TYPE , ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TYPE , ( v1 ) [ 1 ] ) )
# Skipping MacroDefinition: ELL_2V_DOT ( v1 , v2 ) ( ( v1 ) [ 0 ] * ( v2 ) [ 0 ] + ( v1 ) [ 1 ] * ( v2 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_LEN ( v ) ( sqrt ( ELL_2V_DOT ( ( v ) , ( v ) ) ) )
# Skipping MacroDefinition: ELL_2V_SCALE ( v2 , a , v1 ) ( ( v2 ) [ 0 ] = ( a ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( a ) * ( v1 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_SCALE_TT ( v2 , TT , a , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( a ) * ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( a ) * ( v1 ) [ 1 ] ) )
# Skipping MacroDefinition: ELL_2V_SCALE_ADD2 ( v2 , s0 , v0 , s1 , v1 ) ( ( v2 ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_SCALE_ADD3 ( vd , s0 , v0 , s1 , v1 , s2 , v2 ) ( ( vd ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] , ( vd ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] )
# Skipping MacroDefinition: ELL_2V_NORM ( v2 , v1 , length ) ( length = ELL_2V_LEN ( v1 ) , ELL_2V_SCALE ( v2 , 1.0 / length , v1 ) )
# Skipping MacroDefinition: ELL_2V_NORM_TT ( v2 , TT , v1 , length ) ( length = AIR_CAST ( TT , ELL_2V_LEN ( v1 ) ) , ELL_2V_SCALE_TT ( v2 , TT , 1.0 / length , v1 ) )
# Skipping MacroDefinition: ELL_2V_CROSS ( v1 , v2 ) ( ( v1 ) [ 0 ] * ( v2 ) [ 1 ] - ( v1 ) [ 1 ] * ( v2 ) [ 0 ] )
# Skipping MacroDefinition: ELL_2M_DET ( m ) _ELL_2M_DET ( ( m ) [ 0 ] , ( m ) [ 1 ] , ( m ) [ 2 ] , ( m ) [ 3 ] )
# Skipping MacroDefinition: ELL_2M_INV ( m2 , m1 , det ) ( ( det ) = ELL_2M_DET ( m1 ) , ( m2 ) [ 0 ] = ( m1 ) [ 3 ] / ( det ) , ( m2 ) [ 1 ] = - ( m1 ) [ 1 ] / ( det ) , ( m2 ) [ 2 ] = - ( m1 ) [ 2 ] / ( det ) , ( m2 ) [ 3 ] = ( m1 ) [ 0 ] / ( det ) )
# Skipping MacroDefinition: ELL_2M_TRANSPOSE ( m2 , m1 ) ( ( m2 ) [ 0 ] = ( m1 ) [ 0 ] , ( m2 ) [ 1 ] = ( m1 ) [ 2 ] , ( m2 ) [ 2 ] = ( m1 ) [ 1 ] , ( m2 ) [ 3 ] = ( m1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_2M_MUL ( m3 , m1 , m2 ) ( ( m3 ) [ 0 ] = ( m1 ) [ 0 ] * ( m2 ) [ 0 ] + ( m1 ) [ 1 ] * ( m2 ) [ 2 ] , ( m3 ) [ 1 ] = ( m1 ) [ 0 ] * ( m2 ) [ 1 ] + ( m1 ) [ 1 ] * ( m2 ) [ 3 ] , ( m3 ) [ 2 ] = ( m1 ) [ 2 ] * ( m2 ) [ 0 ] + ( m1 ) [ 3 ] * ( m2 ) [ 2 ] , ( m3 ) [ 3 ] = ( m1 ) [ 2 ] * ( m2 ) [ 1 ] + ( m1 ) [ 3 ] * ( m2 ) [ 3 ] )
# Skipping MacroDefinition: ELL_2M_ROTATE_SET ( m , th ) ( ELL_2V_SET ( ( m ) + 0 , cos ( th ) , - sin ( th ) ) , ELL_2V_SET ( ( m ) + 2 , + sin ( th ) , cos ( th ) ) )
# Skipping MacroDefinition: ELL_2MV_MUL ( v2 , m , v1 ) ( ( v2 ) [ 0 ] = ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 1 ] * ( v1 ) [ 1 ] , ( v2 ) [ 1 ] = ( m ) [ 2 ] * ( v1 ) [ 0 ] + ( m ) [ 3 ] * ( v1 ) [ 1 ] )
# Skipping MacroDefinition: ELL_3V_SET ( v , a , b , c ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) , ( v ) [ 2 ] = ( c ) )
# Skipping MacroDefinition: ELL_3V_ZERO_SET ( v ) ELL_3V_SET ( v , 0 , 0 , 0 )
# Skipping MacroDefinition: ELL_3V_SET_TT ( v , TT , a , b , c ) ( ( v ) [ 0 ] = AIR_CAST ( TT , ( a ) ) , ( v ) [ 1 ] = AIR_CAST ( TT , ( b ) ) , ( v ) [ 2 ] = AIR_CAST ( TT , ( c ) ) )
# Skipping MacroDefinition: ELL_3V_GET ( a , b , c , v ) ( ( a ) = ( v ) [ 0 ] , ( b ) = ( v ) [ 1 ] , ( c ) = ( v ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_EQUAL ( a , b ) ( ( a ) [ 0 ] == ( b ) [ 0 ] && ( a ) [ 1 ] == ( b ) [ 1 ] && ( a ) [ 2 ] == ( b ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_COPY ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_COPY_TT ( v2 , TYPE , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TYPE , ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TYPE , ( v1 ) [ 1 ] ) , ( v2 ) [ 2 ] = AIR_CAST ( TYPE , ( v1 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_INCR ( v2 , v1 ) ( ( v2 ) [ 0 ] += ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( v1 ) [ 1 ] , ( v2 ) [ 2 ] += ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_LERP ( v3 , w , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_LERP ( ( w ) , ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) , ( v3 ) [ 1 ] = AIR_LERP ( ( w ) , ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) , ( v3 ) [ 2 ] = AIR_LERP ( ( w ) , ( v1 ) [ 2 ] , ( v2 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_LERP_TT ( v3 , TT , w , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) ) , ( v3 ) [ 1 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) ) , ( v3 ) [ 2 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 2 ] , ( v2 ) [ 2 ] ) ) )
# Skipping MacroDefinition: ELL_3V_ADD2 ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( v1 ) [ 2 ] + ( v2 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_ADD3 ( v4 , v1 , v2 , v3 ) ( ( v4 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] + ( v3 ) [ 0 ] , ( v4 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] + ( v3 ) [ 1 ] , ( v4 ) [ 2 ] = ( v1 ) [ 2 ] + ( v2 ) [ 2 ] + ( v3 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_ADD4 ( v5 , v1 , v2 , v3 , v4 ) ( ( v5 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] + ( v3 ) [ 0 ] + ( v4 ) [ 0 ] , ( v5 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] + ( v3 ) [ 1 ] + ( v4 ) [ 1 ] , ( v5 ) [ 2 ] = ( v1 ) [ 2 ] + ( v2 ) [ 2 ] + ( v3 ) [ 2 ] + ( v4 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SUB ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] - ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] - ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( v1 ) [ 2 ] - ( v2 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_DOT ( v1 , v2 ) ( ( v1 ) [ 0 ] * ( v2 ) [ 0 ] + ( v1 ) [ 1 ] * ( v2 ) [ 1 ] + ( v1 ) [ 2 ] * ( v2 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE ( v2 , a , v1 ) ( ( v2 ) [ 0 ] = ( a ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( a ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( a ) * ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_TT ( v2 , TT , a , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( a ) * ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( a ) * ( v1 ) [ 1 ] ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( a ) * ( v1 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_SCALE_INCR ( v2 , s0 , v0 ) ( ( v2 ) [ 0 ] += ( s0 ) * ( v0 ) [ 0 ] , ( v2 ) [ 1 ] += ( s0 ) * ( v0 ) [ 1 ] , ( v2 ) [ 2 ] += ( s0 ) * ( v0 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_INCR_TT ( v2 , TT , s0 , v0 ) ( ( v2 ) [ 0 ] += AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 0 ] ) , ( v2 ) [ 1 ] += AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 1 ] ) , ( v2 ) [ 2 ] += AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_SCALE_ADD2 ( v2 , s0 , v0 , s1 , v1 ) ( ( v2 ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_ADD2_TT ( v2 , TT , s0 , v0 , s1 , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_SCALE_INCR2 ( v2 , s0 , v0 , s1 , v1 ) ( ( v2 ) [ 0 ] += ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] += ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_ADD3 ( v3 , s0 , v0 , s1 , v1 , s2 , v2 ) ( ( v3 ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_ADD3_TT ( v3 , TT , s0 , v0 , s1 , v1 , s2 , v2 ) ( ( v3 ) [ 0 ] = AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] ) , ( v3 ) [ 1 ] = AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] ) , ( v3 ) [ 2 ] = AIR_CAST ( TT , ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_SCALE_ADD4 ( v4 , s0 , v0 , s1 , v1 , s2 , v2 , s3 , v3 ) ( ( v4 ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] + ( s3 ) * ( v3 ) [ 0 ] , ( v4 ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] + ( s3 ) * ( v3 ) [ 1 ] , ( v4 ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] + ( s3 ) * ( v3 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_ADD6 ( v6 , s0 , v0 , s1 , v1 , s2 , v2 , s3 , v3 , s4 , v4 , s5 , v5 ) ( ( v6 ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] + ( s3 ) * ( v3 ) [ 0 ] + ( s4 ) * ( v4 ) [ 0 ] + ( s5 ) * ( v5 ) [ 0 ] , ( v6 ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] + ( s3 ) * ( v3 ) [ 1 ] + ( s4 ) * ( v4 ) [ 1 ] + ( s5 ) * ( v5 ) [ 1 ] , ( v6 ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] + ( s3 ) * ( v3 ) [ 2 ] + ( s4 ) * ( v4 ) [ 2 ] + ( s5 ) * ( v5 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_SCALE_INCR3 ( v3 , s0 , v0 , s1 , v1 , s2 , v2 ) ( ( v3 ) [ 0 ] += ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] , ( v3 ) [ 1 ] += ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] , ( v3 ) [ 2 ] += ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3V_LEN ( v ) ( sqrt ( ELL_3V_DOT ( ( v ) , ( v ) ) ) )
# Skipping MacroDefinition: ELL_3V_DIST ( a , b ) sqrt ( ( ( a ) [ 0 ] - ( b ) [ 0 ] ) * ( ( a ) [ 0 ] - ( b ) [ 0 ] ) + ( ( a ) [ 1 ] - ( b ) [ 1 ] ) * ( ( a ) [ 1 ] - ( b ) [ 1 ] ) + ( ( a ) [ 2 ] - ( b ) [ 2 ] ) * ( ( a ) [ 2 ] - ( b ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_NORM ( v2 , v1 , length ) ( length = ELL_3V_LEN ( v1 ) , ELL_3V_SCALE ( v2 , 1.0 / length , v1 ) )
# Skipping MacroDefinition: ELL_3V_NORM_TT ( v2 , TT , v1 , length ) ( length = AIR_CAST ( TT , ELL_3V_LEN ( v1 ) ) , ELL_3V_SCALE_TT ( v2 , TT , 1.0 / length , v1 ) )
# Skipping MacroDefinition: ELL_3V_CROSS ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 1 ] * ( v2 ) [ 2 ] - ( v1 ) [ 2 ] * ( v2 ) [ 1 ] , ( v3 ) [ 1 ] = ( v1 ) [ 2 ] * ( v2 ) [ 0 ] - ( v1 ) [ 0 ] * ( v2 ) [ 2 ] , ( v3 ) [ 2 ] = ( v1 ) [ 0 ] * ( v2 ) [ 1 ] - ( v1 ) [ 1 ] * ( v2 ) [ 0 ] )
# Skipping MacroDefinition: ELL_3V_MIN ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_MIN ( ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) , ( v3 ) [ 1 ] = AIR_MIN ( ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) , ( v3 ) [ 2 ] = AIR_MIN ( ( v1 ) [ 2 ] , ( v2 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_MAX ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_MAX ( ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) , ( v3 ) [ 1 ] = AIR_MAX ( ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) , ( v3 ) [ 2 ] = AIR_MAX ( ( v1 ) [ 2 ] , ( v2 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_EXISTS ( v ) ( AIR_EXISTS ( ( v ) [ 0 ] ) && AIR_EXISTS ( ( v ) [ 1 ] ) && AIR_EXISTS ( ( v ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_AFFINE ( v , i , x , I , o , O ) ( ( v ) [ 0 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( o ) [ 0 ] , ( O ) [ 0 ] ) , ( v ) [ 1 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( o ) [ 1 ] , ( O ) [ 1 ] ) , ( v ) [ 2 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( o ) [ 2 ] , ( O ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_ABS ( v2 , v1 ) ( ( v2 ) [ 0 ] = AIR_ABS ( ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_ABS ( ( v1 ) [ 1 ] ) , ( v2 ) [ 2 ] = AIR_ABS ( ( v1 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3V_NAN_SET ( v ) ( ( v ) [ 0 ] = AIR_NAN , ( v ) [ 1 ] = AIR_NAN , ( v ) [ 2 ] = AIR_NAN )
# Skipping MacroDefinition: ELL_3M_EQUAL ( m1 , m2 ) ( ( m1 ) [ 0 ] == ( m2 ) [ 0 ] && ( m1 ) [ 1 ] == ( m2 ) [ 1 ] && ( m1 ) [ 2 ] == ( m2 ) [ 2 ] && ( m1 ) [ 3 ] == ( m2 ) [ 3 ] && ( m1 ) [ 4 ] == ( m2 ) [ 4 ] && ( m1 ) [ 5 ] == ( m2 ) [ 5 ] && ( m1 ) [ 6 ] == ( m2 ) [ 6 ] && ( m1 ) [ 7 ] == ( m2 ) [ 7 ] && ( m1 ) [ 8 ] == ( m2 ) [ 8 ] )
# Skipping MacroDefinition: ELL_3M_SET ( m , a , b , c , d , e , f , g , h , i ) ( ELL_3V_SET ( m + 0 * 3 , a , b , c ) , ELL_3V_SET ( m + 1 * 3 , d , e , f ) , ELL_3V_SET ( m + 2 * 3 , g , h , i ) )
# Skipping MacroDefinition: ELL_3M_SCALE ( m2 , s , m1 ) ( ELL_3V_SCALE ( ( m2 ) + 0 , ( s ) , ( m1 ) + 0 ) , ELL_3V_SCALE ( ( m2 ) + 3 , ( s ) , ( m1 ) + 3 ) , ELL_3V_SCALE ( ( m2 ) + 6 , ( s ) , ( m1 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_SCALE_INCR ( m2 , s , m1 ) ( ELL_3V_SCALE_INCR ( ( m2 ) + 0 , ( s ) , ( m1 ) + 0 ) , ELL_3V_SCALE_INCR ( ( m2 ) + 3 , ( s ) , ( m1 ) + 3 ) , ELL_3V_SCALE_INCR ( ( m2 ) + 6 , ( s ) , ( m1 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_SCALE_ADD2 ( m2 , s0 , m0 , s1 , m1 ) ( ELL_3V_SCALE_ADD2 ( ( m2 ) + 0 , ( s0 ) , ( m0 ) + 0 , ( s1 ) , ( m1 ) + 0 ) , ELL_3V_SCALE_ADD2 ( ( m2 ) + 3 , ( s0 ) , ( m0 ) + 3 , ( s1 ) , ( m1 ) + 3 ) , ELL_3V_SCALE_ADD2 ( ( m2 ) + 6 , ( s0 ) , ( m0 ) + 6 , ( s1 ) , ( m1 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_LERP ( m3 , w , m1 , m2 ) ( ELL_3V_LERP ( ( m3 ) + 0 , ( w ) , ( m1 ) + 0 , ( m2 ) + 0 ) , ELL_3V_LERP ( ( m3 ) + 3 , ( w ) , ( m1 ) + 3 , ( m2 ) + 3 ) , ELL_3V_LERP ( ( m3 ) + 6 , ( w ) , ( m1 ) + 6 , ( m2 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_ADD2 ( m3 , m1 , m2 ) ( ( m3 ) [ 0 ] = ( m1 ) [ 0 ] + ( m2 ) [ 0 ] , ( m3 ) [ 1 ] = ( m1 ) [ 1 ] + ( m2 ) [ 1 ] , ( m3 ) [ 2 ] = ( m1 ) [ 2 ] + ( m2 ) [ 2 ] , ( m3 ) [ 3 ] = ( m1 ) [ 3 ] + ( m2 ) [ 3 ] , ( m3 ) [ 4 ] = ( m1 ) [ 4 ] + ( m2 ) [ 4 ] , ( m3 ) [ 5 ] = ( m1 ) [ 5 ] + ( m2 ) [ 5 ] , ( m3 ) [ 6 ] = ( m1 ) [ 6 ] + ( m2 ) [ 6 ] , ( m3 ) [ 7 ] = ( m1 ) [ 7 ] + ( m2 ) [ 7 ] , ( m3 ) [ 8 ] = ( m1 ) [ 8 ] + ( m2 ) [ 8 ] )
# Skipping MacroDefinition: ELL_3M_SUB ( m3 , m1 , m2 ) ( ( m3 ) [ 0 ] = ( m1 ) [ 0 ] - ( m2 ) [ 0 ] , ( m3 ) [ 1 ] = ( m1 ) [ 1 ] - ( m2 ) [ 1 ] , ( m3 ) [ 2 ] = ( m1 ) [ 2 ] - ( m2 ) [ 2 ] , ( m3 ) [ 3 ] = ( m1 ) [ 3 ] - ( m2 ) [ 3 ] , ( m3 ) [ 4 ] = ( m1 ) [ 4 ] - ( m2 ) [ 4 ] , ( m3 ) [ 5 ] = ( m1 ) [ 5 ] - ( m2 ) [ 5 ] , ( m3 ) [ 6 ] = ( m1 ) [ 6 ] - ( m2 ) [ 6 ] , ( m3 ) [ 7 ] = ( m1 ) [ 7 ] - ( m2 ) [ 7 ] , ( m3 ) [ 8 ] = ( m1 ) [ 8 ] - ( m2 ) [ 8 ] )
# Skipping MacroDefinition: ELL_3M_SCALE_ADD3 ( m3 , s0 , m0 , s1 , m1 , s2 , m2 ) ( ELL_3V_SCALE_ADD3 ( ( m3 ) + 0 , ( s0 ) , ( m0 ) + 0 , ( s1 ) , ( m1 ) + 0 , ( s2 ) , ( m2 ) + 0 ) , ELL_3V_SCALE_ADD3 ( ( m3 ) + 3 , ( s0 ) , ( m0 ) + 3 , ( s1 ) , ( m1 ) + 3 , ( s2 ) , ( m2 ) + 3 ) , ELL_3V_SCALE_ADD3 ( ( m3 ) + 6 , ( s0 ) , ( m0 ) + 6 , ( s1 ) , ( m1 ) + 6 , ( s2 ) , ( m2 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_COPY ( m2 , m1 ) ( ELL_3V_COPY ( ( m2 ) + 0 , ( m1 ) + 0 ) , ELL_3V_COPY ( ( m2 ) + 3 , ( m1 ) + 3 ) , ELL_3V_COPY ( ( m2 ) + 6 , ( m1 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_COPY_TT ( m2 , TYPE , m1 ) ( ELL_3V_COPY_TT ( ( m2 ) + 0 , TYPE , ( m1 ) + 0 ) , ELL_3V_COPY_TT ( ( m2 ) + 3 , TYPE , ( m1 ) + 3 ) , ELL_3V_COPY_TT ( ( m2 ) + 6 , TYPE , ( m1 ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_IDENTITY_SET ( m ) ( ELL_3V_SET ( ( m ) + 0 , 1 , 0 , 0 ) , ELL_3V_SET ( ( m ) + 3 , 0 , 1 , 0 ) , ELL_3V_SET ( ( m ) + 6 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_3M_EXISTS ( m ) ( ELL_3V_EXISTS ( ( m ) + 0 ) && ELL_3V_EXISTS ( ( m ) + 3 ) && ELL_3V_EXISTS ( ( m ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_ZERO_SET ( m ) ( ELL_3V_SET ( ( m ) + 0 , 0 , 0 , 0 ) , ELL_3V_SET ( ( m ) + 3 , 0 , 0 , 0 ) , ELL_3V_SET ( ( m ) + 6 , 0 , 0 , 0 ) )
# Skipping MacroDefinition: ELL_3M_NAN_SET ( m ) ( ELL_3V_NAN_SET ( ( m ) + 0 ) , ELL_3V_NAN_SET ( ( m ) + 3 ) , ELL_3V_NAN_SET ( ( m ) + 6 ) )
# Skipping MacroDefinition: ELL_3M_DIAG_SET ( m , a , b , c ) ( ( m ) [ 0 ] = ( a ) , ( m ) [ 4 ] = ( b ) , ( m ) [ 8 ] = ( c ) )
# Skipping MacroDefinition: ELL_3M_TRANSPOSE ( m2 , m1 ) ( ( m2 ) [ 0 ] = ( m1 ) [ 0 ] , ( m2 ) [ 1 ] = ( m1 ) [ 3 ] , ( m2 ) [ 2 ] = ( m1 ) [ 6 ] , ( m2 ) [ 3 ] = ( m1 ) [ 1 ] , ( m2 ) [ 4 ] = ( m1 ) [ 4 ] , ( m2 ) [ 5 ] = ( m1 ) [ 7 ] , ( m2 ) [ 6 ] = ( m1 ) [ 2 ] , ( m2 ) [ 7 ] = ( m1 ) [ 5 ] , ( m2 ) [ 8 ] = ( m1 ) [ 8 ] )
# Skipping MacroDefinition: ELL_3M_TRANSPOSE_IP ( m , t ) ( ELL_SWAP2 ( ( m ) [ 1 ] , ( m ) [ 3 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 2 ] , ( m ) [ 6 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 5 ] , ( m ) [ 7 ] , ( t ) ) )
# Skipping MacroDefinition: ELL_3M_TRACE ( m ) ( ( m ) [ 0 ] + ( m ) [ 4 ] + ( m ) [ 8 ] )
# Skipping MacroDefinition: ELL_3M_FROB ( m ) ( sqrt ( ELL_3V_DOT ( ( m ) + 0 , ( m ) + 0 ) + ELL_3V_DOT ( ( m ) + 3 , ( m ) + 3 ) + ELL_3V_DOT ( ( m ) + 6 , ( m ) + 6 ) ) )
# Skipping MacroDefinition: ELL_3M_DET ( m ) _ELL_3M_DET ( ( m ) [ 0 ] , ( m ) [ 1 ] , ( m ) [ 2 ] , ( m ) [ 3 ] , ( m ) [ 4 ] , ( m ) [ 5 ] , ( m ) [ 6 ] , ( m ) [ 7 ] , ( m ) [ 8 ] )
# Skipping MacroDefinition: ELL_3MV_COL0_GET ( v , m ) ( ELL_3V_SET ( ( v ) , ( m ) [ 0 ] , ( m ) [ 3 ] , ( m ) [ 6 ] ) )
# Skipping MacroDefinition: ELL_3MV_COL1_GET ( v , m ) ( ELL_3V_SET ( ( v ) , ( m ) [ 1 ] , ( m ) [ 4 ] , ( m ) [ 7 ] ) )
# Skipping MacroDefinition: ELL_3MV_COL2_GET ( v , m ) ( ELL_3V_SET ( ( v ) , ( m ) [ 2 ] , ( m ) [ 5 ] , ( m ) [ 8 ] ) )
# Skipping MacroDefinition: ELL_3MV_ROW0_GET ( v , m ) ( ELL_3V_SET ( ( v ) , ( m ) [ 0 ] , ( m ) [ 1 ] , ( m ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3MV_ROW1_GET ( v , m ) ( ELL_3V_SET ( ( v ) , ( m ) [ 3 ] , ( m ) [ 4 ] , ( m ) [ 5 ] ) )
# Skipping MacroDefinition: ELL_3MV_ROW2_GET ( v , m ) ( ELL_3V_SET ( ( v ) , ( m ) [ 6 ] , ( m ) [ 7 ] , ( m ) [ 8 ] ) )
# Skipping MacroDefinition: ELL_3MV_COL0_SET ( m , v ) ( ELL_3V_GET ( ( m ) [ 0 ] , ( m ) [ 3 ] , ( m ) [ 6 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_3MV_COL1_SET ( m , v ) ( ELL_3V_GET ( ( m ) [ 1 ] , ( m ) [ 4 ] , ( m ) [ 7 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_3MV_COL2_SET ( m , v ) ( ELL_3V_GET ( ( m ) [ 2 ] , ( m ) [ 5 ] , ( m ) [ 8 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_3MV_ROW0_SET ( m , v ) ( ELL_3V_GET ( ( m ) [ 0 ] , ( m ) [ 1 ] , ( m ) [ 2 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_3MV_ROW1_SET ( m , v ) ( ELL_3V_GET ( ( m ) [ 3 ] , ( m ) [ 4 ] , ( m ) [ 5 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_3MV_ROW2_SET ( m , v ) ( ELL_3V_GET ( ( m ) [ 6 ] , ( m ) [ 7 ] , ( m ) [ 8 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_3MV_OUTER ( m , v1 , v2 ) ( ELL_3V_SCALE ( ( m ) + 0 , ( v1 ) [ 0 ] , ( v2 ) ) , ELL_3V_SCALE ( ( m ) + 3 , ( v1 ) [ 1 ] , ( v2 ) ) , ELL_3V_SCALE ( ( m ) + 6 , ( v1 ) [ 2 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_3MV_OUTER_TT ( m , T , v1 , v2 ) ( ELL_3V_SCALE_TT ( ( m ) + 0 , T , ( v1 ) [ 0 ] , ( v2 ) ) , ELL_3V_SCALE_TT ( ( m ) + 3 , T , ( v1 ) [ 1 ] , ( v2 ) ) , ELL_3V_SCALE_TT ( ( m ) + 6 , T , ( v1 ) [ 2 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_3MV_OUTER_INCR ( m , v1 , v2 ) ( ELL_3V_SCALE_INCR ( ( m ) + 0 , ( v1 ) [ 0 ] , ( v2 ) ) , ELL_3V_SCALE_INCR ( ( m ) + 3 , ( v1 ) [ 1 ] , ( v2 ) ) , ELL_3V_SCALE_INCR ( ( m ) + 6 , ( v1 ) [ 2 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_3MV_SCALE_OUTER_INCR ( m , s , v1 , v2 ) ( ELL_3V_SCALE_INCR ( ( m ) + 0 , ( s ) * ( v1 ) [ 0 ] , ( v2 ) ) , ELL_3V_SCALE_INCR ( ( m ) + 3 , ( s ) * ( v1 ) [ 1 ] , ( v2 ) ) , ELL_3V_SCALE_INCR ( ( m ) + 6 , ( s ) * ( v1 ) [ 2 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_3MV_MUL ( v2 , m , v1 ) ( ( v2 ) [ 0 ] = ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 1 ] * ( v1 ) [ 1 ] + ( m ) [ 2 ] * ( v1 ) [ 2 ] , ( v2 ) [ 1 ] = ( m ) [ 3 ] * ( v1 ) [ 0 ] + ( m ) [ 4 ] * ( v1 ) [ 1 ] + ( m ) [ 5 ] * ( v1 ) [ 2 ] , ( v2 ) [ 2 ] = ( m ) [ 6 ] * ( v1 ) [ 0 ] + ( m ) [ 7 ] * ( v1 ) [ 1 ] + ( m ) [ 8 ] * ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3MV_CONTR ( m , v ) ( ( m ) [ 0 ] * ( v ) [ 0 ] * ( v ) [ 0 ] + ( m ) [ 1 ] * ( v ) [ 1 ] * ( v ) [ 0 ] + ( m ) [ 2 ] * ( v ) [ 2 ] * ( v ) [ 0 ] + ( m ) [ 3 ] * ( v ) [ 0 ] * ( v ) [ 1 ] + ( m ) [ 4 ] * ( v ) [ 1 ] * ( v ) [ 1 ] + ( m ) [ 5 ] * ( v ) [ 2 ] * ( v ) [ 1 ] + ( m ) [ 6 ] * ( v ) [ 0 ] * ( v ) [ 2 ] + ( m ) [ 7 ] * ( v ) [ 1 ] * ( v ) [ 2 ] + ( m ) [ 8 ] * ( v ) [ 2 ] * ( v ) [ 2 ] )
# Skipping MacroDefinition: ELL_3MV_CONTR2 ( u , m , v ) ( ( m ) [ 0 ] * ( v ) [ 0 ] * ( u ) [ 0 ] + ( m ) [ 1 ] * ( v ) [ 1 ] * ( u ) [ 0 ] + ( m ) [ 2 ] * ( v ) [ 2 ] * ( u ) [ 0 ] + ( m ) [ 3 ] * ( v ) [ 0 ] * ( u ) [ 1 ] + ( m ) [ 4 ] * ( v ) [ 1 ] * ( u ) [ 1 ] + ( m ) [ 5 ] * ( v ) [ 2 ] * ( u ) [ 1 ] + ( m ) [ 6 ] * ( v ) [ 0 ] * ( u ) [ 2 ] + ( m ) [ 7 ] * ( v ) [ 1 ] * ( u ) [ 2 ] + ( m ) [ 8 ] * ( v ) [ 2 ] * ( u ) [ 2 ] )
# Skipping MacroDefinition: ELL_3MV_MUL_TT ( v2 , TT , m , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 1 ] * ( v1 ) [ 1 ] + ( m ) [ 2 ] * ( v1 ) [ 2 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( m ) [ 3 ] * ( v1 ) [ 0 ] + ( m ) [ 4 ] * ( v1 ) [ 1 ] + ( m ) [ 5 ] * ( v1 ) [ 2 ] ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( m ) [ 6 ] * ( v1 ) [ 0 ] + ( m ) [ 7 ] * ( v1 ) [ 1 ] + ( m ) [ 8 ] * ( v1 ) [ 2 ] ) )
# Skipping MacroDefinition: ELL_3MV_TMUL ( v2 , m , v1 ) ( ( v2 ) [ 0 ] = ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 3 ] * ( v1 ) [ 1 ] + ( m ) [ 6 ] * ( v1 ) [ 2 ] , ( v2 ) [ 1 ] = ( m ) [ 1 ] * ( v1 ) [ 0 ] + ( m ) [ 4 ] * ( v1 ) [ 1 ] + ( m ) [ 7 ] * ( v1 ) [ 2 ] , ( v2 ) [ 2 ] = ( m ) [ 2 ] * ( v1 ) [ 0 ] + ( m ) [ 5 ] * ( v1 ) [ 1 ] + ( m ) [ 8 ] * ( v1 ) [ 2 ] )
# Skipping MacroDefinition: ELL_3M_MUL ( m3 , m1 , m2 ) ( ( m3 ) [ 0 ] = ( m1 ) [ 0 ] * ( m2 ) [ 0 ] + ( m1 ) [ 1 ] * ( m2 ) [ 3 ] + ( m1 ) [ 2 ] * ( m2 ) [ 6 ] , ( m3 ) [ 1 ] = ( m1 ) [ 0 ] * ( m2 ) [ 1 ] + ( m1 ) [ 1 ] * ( m2 ) [ 4 ] + ( m1 ) [ 2 ] * ( m2 ) [ 7 ] , ( m3 ) [ 2 ] = ( m1 ) [ 0 ] * ( m2 ) [ 2 ] + ( m1 ) [ 1 ] * ( m2 ) [ 5 ] + ( m1 ) [ 2 ] * ( m2 ) [ 8 ] , ( m3 ) [ 3 ] = ( m1 ) [ 3 ] * ( m2 ) [ 0 ] + ( m1 ) [ 4 ] * ( m2 ) [ 3 ] + ( m1 ) [ 5 ] * ( m2 ) [ 6 ] , ( m3 ) [ 4 ] = ( m1 ) [ 3 ] * ( m2 ) [ 1 ] + ( m1 ) [ 4 ] * ( m2 ) [ 4 ] + ( m1 ) [ 5 ] * ( m2 ) [ 7 ] , ( m3 ) [ 5 ] = ( m1 ) [ 3 ] * ( m2 ) [ 2 ] + ( m1 ) [ 4 ] * ( m2 ) [ 5 ] + ( m1 ) [ 5 ] * ( m2 ) [ 8 ] , ( m3 ) [ 6 ] = ( m1 ) [ 6 ] * ( m2 ) [ 0 ] + ( m1 ) [ 7 ] * ( m2 ) [ 3 ] + ( m1 ) [ 8 ] * ( m2 ) [ 6 ] , ( m3 ) [ 7 ] = ( m1 ) [ 6 ] * ( m2 ) [ 1 ] + ( m1 ) [ 7 ] * ( m2 ) [ 4 ] + ( m1 ) [ 8 ] * ( m2 ) [ 7 ] , ( m3 ) [ 8 ] = ( m1 ) [ 6 ] * ( m2 ) [ 2 ] + ( m1 ) [ 7 ] * ( m2 ) [ 5 ] + ( m1 ) [ 8 ] * ( m2 ) [ 8 ] )
# Skipping MacroDefinition: ELL_3M_MUL_TT ( m3 , TT , m1 , m2 ) ( ( m3 ) [ 0 ] = AIR_CAST ( TT , ( m1 ) [ 0 ] * ( m2 ) [ 0 ] + ( m1 ) [ 1 ] * ( m2 ) [ 3 ] + ( m1 ) [ 2 ] * ( m2 ) [ 6 ] ) , ( m3 ) [ 1 ] = AIR_CAST ( TT , ( m1 ) [ 0 ] * ( m2 ) [ 1 ] + ( m1 ) [ 1 ] * ( m2 ) [ 4 ] + ( m1 ) [ 2 ] * ( m2 ) [ 7 ] ) , ( m3 ) [ 2 ] = AIR_CAST ( TT , ( m1 ) [ 0 ] * ( m2 ) [ 2 ] + ( m1 ) [ 1 ] * ( m2 ) [ 5 ] + ( m1 ) [ 2 ] * ( m2 ) [ 8 ] ) , ( m3 ) [ 3 ] = AIR_CAST ( TT , ( m1 ) [ 3 ] * ( m2 ) [ 0 ] + ( m1 ) [ 4 ] * ( m2 ) [ 3 ] + ( m1 ) [ 5 ] * ( m2 ) [ 6 ] ) , ( m3 ) [ 4 ] = AIR_CAST ( TT , ( m1 ) [ 3 ] * ( m2 ) [ 1 ] + ( m1 ) [ 4 ] * ( m2 ) [ 4 ] + ( m1 ) [ 5 ] * ( m2 ) [ 7 ] ) , ( m3 ) [ 5 ] = AIR_CAST ( TT , ( m1 ) [ 3 ] * ( m2 ) [ 2 ] + ( m1 ) [ 4 ] * ( m2 ) [ 5 ] + ( m1 ) [ 5 ] * ( m2 ) [ 8 ] ) , ( m3 ) [ 6 ] = AIR_CAST ( TT , ( m1 ) [ 6 ] * ( m2 ) [ 0 ] + ( m1 ) [ 7 ] * ( m2 ) [ 3 ] + ( m1 ) [ 8 ] * ( m2 ) [ 6 ] ) , ( m3 ) [ 7 ] = AIR_CAST ( TT , ( m1 ) [ 6 ] * ( m2 ) [ 1 ] + ( m1 ) [ 7 ] * ( m2 ) [ 4 ] + ( m1 ) [ 8 ] * ( m2 ) [ 7 ] ) , ( m3 ) [ 8 ] = AIR_CAST ( TT , ( m1 ) [ 6 ] * ( m2 ) [ 2 ] + ( m1 ) [ 7 ] * ( m2 ) [ 5 ] + ( m1 ) [ 8 ] * ( m2 ) [ 8 ] ) )
# Skipping MacroDefinition: ELL_3M_INV ( m2 , m1 , det ) ( ( det ) = ELL_3M_DET ( m1 ) , ( m2 ) [ 0 ] = _ELL_2M_DET ( ( m1 ) [ 4 ] , ( m1 ) [ 5 ] , ( m1 ) [ 7 ] , ( m1 ) [ 8 ] ) / ( det ) , ( m2 ) [ 1 ] = - _ELL_2M_DET ( ( m1 ) [ 1 ] , ( m1 ) [ 2 ] , ( m1 ) [ 7 ] , ( m1 ) [ 8 ] ) / ( det ) , ( m2 ) [ 2 ] = _ELL_2M_DET ( ( m1 ) [ 1 ] , ( m1 ) [ 2 ] , ( m1 ) [ 4 ] , ( m1 ) [ 5 ] ) / ( det ) , ( m2 ) [ 3 ] = - _ELL_2M_DET ( ( m1 ) [ 3 ] , ( m1 ) [ 5 ] , ( m1 ) [ 6 ] , ( m1 ) [ 8 ] ) / ( det ) , ( m2 ) [ 4 ] = _ELL_2M_DET ( ( m1 ) [ 0 ] , ( m1 ) [ 2 ] , ( m1 ) [ 6 ] , ( m1 ) [ 8 ] ) / ( det ) , ( m2 ) [ 5 ] = - _ELL_2M_DET ( ( m1 ) [ 0 ] , ( m1 ) [ 2 ] , ( m1 ) [ 3 ] , ( m1 ) [ 5 ] ) / ( det ) , ( m2 ) [ 6 ] = _ELL_2M_DET ( ( m1 ) [ 3 ] , ( m1 ) [ 4 ] , ( m1 ) [ 6 ] , ( m1 ) [ 7 ] ) / ( det ) , ( m2 ) [ 7 ] = - _ELL_2M_DET ( ( m1 ) [ 0 ] , ( m1 ) [ 1 ] , ( m1 ) [ 6 ] , ( m1 ) [ 7 ] ) / ( det ) , ( m2 ) [ 8 ] = _ELL_2M_DET ( ( m1 ) [ 0 ] , ( m1 ) [ 1 ] , ( m1 ) [ 3 ] , ( m1 ) [ 4 ] ) / ( det ) )
# Skipping MacroDefinition: ELL_3M_SCALE_SET ( m , x , y , z ) ( ELL_3V_SET ( ( m ) + 0 , ( x ) , 0 , 0 ) , ELL_3V_SET ( ( m ) + 3 , 0 , ( y ) , 0 ) , ELL_3V_SET ( ( m ) + 6 , 0 , 0 , ( z ) ) )
# Skipping MacroDefinition: ELL_3M_ROTATE_X_SET ( m , th ) ( ELL_3V_SET ( ( m ) + 0 , 1 , 0 , 0 ) , ELL_3V_SET ( ( m ) + 3 , 0 , cos ( th ) , - sin ( th ) ) , ELL_3V_SET ( ( m ) + 6 , 0 , + sin ( th ) , cos ( th ) ) )
# Skipping MacroDefinition: ELL_3M_ROTATE_Y_SET ( m , th ) ( ELL_3V_SET ( ( m ) + 0 , cos ( th ) , 0 , + sin ( th ) ) , ELL_3V_SET ( ( m ) + 3 , 0 , 1 , 0 ) , ELL_3V_SET ( ( m ) + 6 , - sin ( th ) , 0 , cos ( th ) ) )
# Skipping MacroDefinition: ELL_3M_ROTATE_Z_SET ( m , th ) ( ELL_3V_SET ( ( m ) + 0 , cos ( th ) , - sin ( th ) , 0 ) , ELL_3V_SET ( ( m ) + 3 , + sin ( th ) , cos ( th ) , 0 ) , ELL_3V_SET ( ( m ) + 6 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4V_SET ( v , a , b , c , d ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) , ( v ) [ 2 ] = ( c ) , ( v ) [ 3 ] = ( d ) )
# Skipping MacroDefinition: ELL_4V_ZERO_SET ( v ) ELL_4V_SET ( v , 0 , 0 , 0 , 0 )
# Skipping MacroDefinition: ELL_4V_NAN_SET ( v ) ( ( v ) [ 0 ] = AIR_NAN , ( v ) [ 1 ] = AIR_NAN , ( v ) [ 2 ] = AIR_NAN , ( v ) [ 3 ] = AIR_NAN )
# Skipping MacroDefinition: ELL_4V_SET_TT ( v , TT , a , b , c , d ) ( ( v ) [ 0 ] = AIR_CAST ( TT , ( a ) ) , ( v ) [ 1 ] = AIR_CAST ( TT , ( b ) ) , ( v ) [ 2 ] = AIR_CAST ( TT , ( c ) ) , ( v ) [ 3 ] = AIR_CAST ( TT , ( d ) ) )
# Skipping MacroDefinition: ELL_4V_GET ( a , b , c , d , v ) ( ( a ) = ( v ) [ 0 ] , ( b ) = ( v ) [ 1 ] , ( c ) = ( v ) [ 2 ] , ( d ) = ( v ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_EQUAL ( a , b ) ( ( a ) [ 0 ] == ( b ) [ 0 ] && ( a ) [ 1 ] == ( b ) [ 1 ] && ( a ) [ 2 ] == ( b ) [ 2 ] && ( a ) [ 3 ] == ( b ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_COPY ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( v1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_COPY_TT ( v2 , TT , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( v1 ) [ 0 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( v1 ) [ 1 ] ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( v1 ) [ 2 ] ) , ( v2 ) [ 3 ] = AIR_CAST ( TT , ( v1 ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_4V_INCR ( v2 , v1 ) ( ( v2 ) [ 0 ] += ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( v1 ) [ 1 ] , ( v2 ) [ 2 ] += ( v1 ) [ 2 ] , ( v2 ) [ 3 ] += ( v1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_ADD2 ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] + ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] + ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( v1 ) [ 2 ] + ( v2 ) [ 2 ] , ( v3 ) [ 3 ] = ( v1 ) [ 3 ] + ( v2 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_ADD3 ( v3 , v0 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v0 ) [ 0 ] + ( v1 ) [ 0 ] + ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v0 ) [ 1 ] + ( v1 ) [ 1 ] + ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( v0 ) [ 2 ] + ( v1 ) [ 2 ] + ( v2 ) [ 2 ] , ( v3 ) [ 3 ] = ( v0 ) [ 3 ] + ( v1 ) [ 3 ] + ( v2 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_SUB ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] - ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] - ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( v1 ) [ 2 ] - ( v2 ) [ 2 ] , ( v3 ) [ 3 ] = ( v1 ) [ 3 ] - ( v2 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_DOT ( v1 , v2 ) ( ( v1 ) [ 0 ] * ( v2 ) [ 0 ] + ( v1 ) [ 1 ] * ( v2 ) [ 1 ] + ( v1 ) [ 2 ] * ( v2 ) [ 2 ] + ( v1 ) [ 3 ] * ( v2 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_SCALE ( v2 , a , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] * a , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] * a , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] * a , ( v2 ) [ 3 ] = ( v1 ) [ 3 ] * a )
# Skipping MacroDefinition: ELL_4V_SCALE_TT ( v2 , TT , a , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( v1 ) [ 0 ] * ( a ) ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( v1 ) [ 1 ] * ( a ) ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( v1 ) [ 2 ] * ( a ) ) , ( v2 ) [ 3 ] = AIR_CAST ( TT , ( v1 ) [ 3 ] * ( a ) ) )
# Skipping MacroDefinition: ELL_4V_SCALE_ADD2 ( v2 , s0 , v0 , s1 , v1 ) ( ( v2 ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( s0 ) * ( v0 ) [ 3 ] + ( s1 ) * ( v1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_SCALE_ADD3 ( v , s0 , v0 , s1 , v1 , s2 , v2 ) ( ( v ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] , ( v ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] , ( v ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] , ( v ) [ 3 ] = ( s0 ) * ( v0 ) [ 3 ] + ( s1 ) * ( v1 ) [ 3 ] + ( s2 ) * ( v2 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_SCALE_ADD4 ( v , s0 , v0 , s1 , v1 , s2 , v2 , s3 , v3 ) ( ( v ) [ 0 ] = ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] + ( s2 ) * ( v2 ) [ 0 ] + ( s3 ) * ( v3 ) [ 0 ] , ( v ) [ 1 ] = ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] + ( s2 ) * ( v2 ) [ 1 ] + ( s3 ) * ( v3 ) [ 1 ] , ( v ) [ 2 ] = ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] + ( s2 ) * ( v2 ) [ 2 ] + ( s3 ) * ( v3 ) [ 2 ] , ( v ) [ 3 ] = ( s0 ) * ( v0 ) [ 3 ] + ( s1 ) * ( v1 ) [ 3 ] + ( s2 ) * ( v2 ) [ 3 ] + ( s3 ) * ( v3 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_SCALE_INCR ( v2 , s0 , v0 ) ( ( v2 ) [ 0 ] += ( s0 ) * ( v0 ) [ 0 ] , ( v2 ) [ 1 ] += ( s0 ) * ( v0 ) [ 1 ] , ( v2 ) [ 2 ] += ( s0 ) * ( v0 ) [ 2 ] , ( v2 ) [ 3 ] += ( s0 ) * ( v0 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4V_LEN ( v ) ( sqrt ( ELL_4V_DOT ( ( v ) , ( v ) ) ) )
# Skipping MacroDefinition: ELL_4V_NORM ( v2 , v1 , length ) ( length = ELL_4V_LEN ( v1 ) , ELL_4V_SCALE ( v2 , 1.0 / length , v1 ) )
# Skipping MacroDefinition: ELL_4V_NORM_TT ( v2 , TT , v1 , length ) ( length = AIR_CAST ( TT , ELL_4V_LEN ( v1 ) ) , ELL_4V_SCALE_TT ( v2 , TT , 1.0 / length , v1 ) )
# Skipping MacroDefinition: ELL_4V_LERP ( v3 , w , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_LERP ( ( w ) , ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) , ( v3 ) [ 1 ] = AIR_LERP ( ( w ) , ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) , ( v3 ) [ 2 ] = AIR_LERP ( ( w ) , ( v1 ) [ 2 ] , ( v2 ) [ 2 ] ) , ( v3 ) [ 3 ] = AIR_LERP ( ( w ) , ( v1 ) [ 3 ] , ( v2 ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_4V_LERP_TT ( v3 , TT , w , v1 , v2 ) ( ( v3 ) [ 0 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 0 ] , ( v2 ) [ 0 ] ) ) , ( v3 ) [ 1 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 1 ] , ( v2 ) [ 1 ] ) ) , ( v3 ) [ 2 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 2 ] , ( v2 ) [ 2 ] ) ) , ( v3 ) [ 3 ] = AIR_CAST ( TT , AIR_LERP ( ( w ) , ( v1 ) [ 3 ] , ( v2 ) [ 3 ] ) ) )
# Skipping MacroDefinition: ELL_4V_EXISTS ( v ) ( AIR_EXISTS ( ( v ) [ 0 ] ) && AIR_EXISTS ( ( v ) [ 1 ] ) && AIR_EXISTS ( ( v ) [ 2 ] ) && AIR_EXISTS ( ( v ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_4M_EQUAL ( m1 , m2 ) ( ( m1 ) [ 0 ] == ( m2 ) [ 0 ] && ( m1 ) [ 1 ] == ( m2 ) [ 1 ] && ( m1 ) [ 2 ] == ( m2 ) [ 2 ] && ( m1 ) [ 3 ] == ( m2 ) [ 3 ] && ( m1 ) [ 4 ] == ( m2 ) [ 4 ] && ( m1 ) [ 5 ] == ( m2 ) [ 5 ] && ( m1 ) [ 6 ] == ( m2 ) [ 6 ] && ( m1 ) [ 7 ] == ( m2 ) [ 7 ] && ( m1 ) [ 8 ] == ( m2 ) [ 8 ] && ( m1 ) [ 9 ] == ( m2 ) [ 9 ] && ( m1 ) [ 10 ] == ( m2 ) [ 10 ] && ( m1 ) [ 11 ] == ( m2 ) [ 11 ] && ( m1 ) [ 12 ] == ( m2 ) [ 12 ] && ( m1 ) [ 13 ] == ( m2 ) [ 13 ] && ( m1 ) [ 14 ] == ( m2 ) [ 14 ] && ( m1 ) [ 15 ] == ( m2 ) [ 15 ] )
# Skipping MacroDefinition: ELL_4M_SET ( X , a , b , c , d , e , f , g , h , i , j , k , l , m , n , o , p ) ( ELL_4V_SET ( X + 0 * 4 , a , b , c , d ) , ELL_4V_SET ( X + 1 * 4 , e , f , g , h ) , ELL_4V_SET ( X + 2 * 4 , i , j , k , l ) , ELL_4V_SET ( X + 3 * 4 , m , n , o , p ) )
# Skipping MacroDefinition: ELL_4M_ADD2 ( m3 , m1 , m2 ) ( ELL_4V_ADD2 ( ( m3 ) + 0 , ( m1 ) + 0 , ( m2 ) + 0 ) , ELL_4V_ADD2 ( ( m3 ) + 4 , ( m1 ) + 4 , ( m2 ) + 4 ) , ELL_4V_ADD2 ( ( m3 ) + 8 , ( m1 ) + 8 , ( m2 ) + 8 ) , ELL_4V_ADD2 ( ( m3 ) + 12 , ( m1 ) + 12 , ( m2 ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_SUB ( m3 , m1 , m2 ) ( ELL_4V_SUB ( ( m3 ) + 0 , ( m1 ) + 0 , ( m2 ) + 0 ) , ELL_4V_SUB ( ( m3 ) + 4 , ( m1 ) + 4 , ( m2 ) + 4 ) , ELL_4V_SUB ( ( m3 ) + 8 , ( m1 ) + 8 , ( m2 ) + 8 ) , ELL_4V_SUB ( ( m3 ) + 12 , ( m1 ) + 12 , ( m2 ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_SCALE ( m2 , a , m1 ) ( ELL_4V_SCALE ( ( m2 ) + 0 , ( a ) , ( m1 ) + 0 ) , ELL_4V_SCALE ( ( m2 ) + 4 , ( a ) , ( m1 ) + 4 ) , ELL_4V_SCALE ( ( m2 ) + 8 , ( a ) , ( m1 ) + 8 ) , ELL_4V_SCALE ( ( m2 ) + 12 , ( a ) , ( m1 ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_COPY ( m2 , m1 ) ( ELL_4V_COPY ( ( m2 ) + 0 , ( m1 ) + 0 ) , ELL_4V_COPY ( ( m2 ) + 4 , ( m1 ) + 4 ) , ELL_4V_COPY ( ( m2 ) + 8 , ( m1 ) + 8 ) , ELL_4V_COPY ( ( m2 ) + 12 , ( m1 ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_COPY_TT ( m2 , TT , m1 ) ( ELL_4V_COPY_TT ( ( m2 ) + 0 , TT , ( m1 ) + 0 ) , ELL_4V_COPY_TT ( ( m2 ) + 4 , TT , ( m1 ) + 4 ) , ELL_4V_COPY_TT ( ( m2 ) + 8 , TT , ( m1 ) + 8 ) , ELL_4V_COPY_TT ( ( m2 ) + 12 , TT , ( m1 ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_TRANSPOSE ( m2 , m1 ) ( ( m2 ) [ 0 ] = ( m1 ) [ 0 ] , ( m2 ) [ 1 ] = ( m1 ) [ 4 ] , ( m2 ) [ 2 ] = ( m1 ) [ 8 ] , ( m2 ) [ 3 ] = ( m1 ) [ 12 ] , ( m2 ) [ 4 ] = ( m1 ) [ 1 ] , ( m2 ) [ 5 ] = ( m1 ) [ 5 ] , ( m2 ) [ 6 ] = ( m1 ) [ 9 ] , ( m2 ) [ 7 ] = ( m1 ) [ 13 ] , ( m2 ) [ 8 ] = ( m1 ) [ 2 ] , ( m2 ) [ 9 ] = ( m1 ) [ 6 ] , ( m2 ) [ 10 ] = ( m1 ) [ 10 ] , ( m2 ) [ 11 ] = ( m1 ) [ 14 ] , ( m2 ) [ 12 ] = ( m1 ) [ 3 ] , ( m2 ) [ 13 ] = ( m1 ) [ 7 ] , ( m2 ) [ 14 ] = ( m1 ) [ 11 ] , ( m2 ) [ 15 ] = ( m1 ) [ 15 ] )
# Skipping MacroDefinition: ELL_4M_TRANSPOSE_TT ( m2 , TT , m1 ) ( ( m2 ) [ 0 ] = AIR_CAST ( TT , ( m1 ) [ 0 ] ) , ( m2 ) [ 1 ] = AIR_CAST ( TT , ( m1 ) [ 4 ] ) , ( m2 ) [ 2 ] = AIR_CAST ( TT , ( m1 ) [ 8 ] ) , ( m2 ) [ 3 ] = AIR_CAST ( TT , ( m1 ) [ 12 ] ) , ( m2 ) [ 4 ] = AIR_CAST ( TT , ( m1 ) [ 1 ] ) , ( m2 ) [ 5 ] = AIR_CAST ( TT , ( m1 ) [ 5 ] ) , ( m2 ) [ 6 ] = AIR_CAST ( TT , ( m1 ) [ 9 ] ) , ( m2 ) [ 7 ] = AIR_CAST ( TT , ( m1 ) [ 13 ] ) , ( m2 ) [ 8 ] = AIR_CAST ( TT , ( m1 ) [ 2 ] ) , ( m2 ) [ 9 ] = AIR_CAST ( TT , ( m1 ) [ 6 ] ) , ( m2 ) [ 10 ] = AIR_CAST ( TT , ( m1 ) [ 10 ] ) , ( m2 ) [ 11 ] = AIR_CAST ( TT , ( m1 ) [ 14 ] ) , ( m2 ) [ 12 ] = AIR_CAST ( TT , ( m1 ) [ 3 ] ) , ( m2 ) [ 13 ] = AIR_CAST ( TT , ( m1 ) [ 7 ] ) , ( m2 ) [ 14 ] = AIR_CAST ( TT , ( m1 ) [ 11 ] ) , ( m2 ) [ 15 ] = AIR_CAST ( TT , ( m1 ) [ 15 ] ) )
# Skipping MacroDefinition: ELL_4M_TRANSPOSE_IP ( m , t ) ( ELL_SWAP2 ( ( m ) [ 1 ] , ( m ) [ 4 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 2 ] , ( m ) [ 8 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 3 ] , ( m ) [ 12 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 6 ] , ( m ) [ 9 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 7 ] , ( m ) [ 13 ] , ( t ) ) , ELL_SWAP2 ( ( m ) [ 11 ] , ( m ) [ 14 ] , ( t ) ) )
# Skipping MacroDefinition: ELL_4MV_ROW0_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 0 ] , ( m ) [ 1 ] , ( m ) [ 2 ] , ( m ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_4MV_ROW1_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 4 ] , ( m ) [ 5 ] , ( m ) [ 6 ] , ( m ) [ 7 ] ) )
# Skipping MacroDefinition: ELL_4MV_ROW2_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 8 ] , ( m ) [ 9 ] , ( m ) [ 10 ] , ( m ) [ 11 ] ) )
# Skipping MacroDefinition: ELL_4MV_ROW3_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 12 ] , ( m ) [ 13 ] , ( m ) [ 14 ] , ( m ) [ 15 ] ) )
# Skipping MacroDefinition: ELL_4MV_COL0_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 0 ] , ( m ) [ 4 ] , ( m ) [ 8 ] , ( m ) [ 12 ] ) )
# Skipping MacroDefinition: ELL_4MV_COL1_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 1 ] , ( m ) [ 5 ] , ( m ) [ 9 ] , ( m ) [ 13 ] ) )
# Skipping MacroDefinition: ELL_4MV_COL2_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 2 ] , ( m ) [ 6 ] , ( m ) [ 10 ] , ( m ) [ 14 ] ) )
# Skipping MacroDefinition: ELL_4MV_COL3_GET ( v , m ) ( ELL_4V_SET ( ( v ) , ( m ) [ 3 ] , ( m ) [ 7 ] , ( m ) [ 11 ] , ( m ) [ 15 ] ) )
# Skipping MacroDefinition: ELL_4MV_ROW0_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 0 ] , ( m ) [ 1 ] , ( m ) [ 2 ] , ( m ) [ 3 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_ROW1_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 4 ] , ( m ) [ 5 ] , ( m ) [ 6 ] , ( m ) [ 7 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_ROW2_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 8 ] , ( m ) [ 9 ] , ( m ) [ 10 ] , ( m ) [ 11 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_ROW3_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 12 ] , ( m ) [ 13 ] , ( m ) [ 14 ] , ( m ) [ 15 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_COL0_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 0 ] , ( m ) [ 4 ] , ( m ) [ 8 ] , ( m ) [ 12 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_COL1_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 1 ] , ( m ) [ 5 ] , ( m ) [ 9 ] , ( m ) [ 13 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_COL2_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 2 ] , ( m ) [ 6 ] , ( m ) [ 10 ] , ( m ) [ 14 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_COL3_SET ( m , v ) ( ELL_4V_GET ( ( m ) [ 3 ] , ( m ) [ 7 ] , ( m ) [ 11 ] , ( m ) [ 15 ] , ( v ) ) )
# Skipping MacroDefinition: ELL_4MV_MUL ( v2 , m , v1 ) ( ( v2 ) [ 0 ] = ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 1 ] * ( v1 ) [ 1 ] + ( m ) [ 2 ] * ( v1 ) [ 2 ] + ( m ) [ 3 ] * ( v1 ) [ 3 ] , ( v2 ) [ 1 ] = ( m ) [ 4 ] * ( v1 ) [ 0 ] + ( m ) [ 5 ] * ( v1 ) [ 1 ] + ( m ) [ 6 ] * ( v1 ) [ 2 ] + ( m ) [ 7 ] * ( v1 ) [ 3 ] , ( v2 ) [ 2 ] = ( m ) [ 8 ] * ( v1 ) [ 0 ] + ( m ) [ 9 ] * ( v1 ) [ 1 ] + ( m ) [ 10 ] * ( v1 ) [ 2 ] + ( m ) [ 11 ] * ( v1 ) [ 3 ] , ( v2 ) [ 3 ] = ( m ) [ 12 ] * ( v1 ) [ 0 ] + ( m ) [ 13 ] * ( v1 ) [ 1 ] + ( m ) [ 14 ] * ( v1 ) [ 2 ] + ( m ) [ 15 ] * ( v1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4MV_MUL_TT ( v2 , TT , m , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 1 ] * ( v1 ) [ 1 ] + ( m ) [ 2 ] * ( v1 ) [ 2 ] + ( m ) [ 3 ] * ( v1 ) [ 3 ] ) ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( ( m ) [ 4 ] * ( v1 ) [ 0 ] + ( m ) [ 5 ] * ( v1 ) [ 1 ] + ( m ) [ 6 ] * ( v1 ) [ 2 ] + ( m ) [ 7 ] * ( v1 ) [ 3 ] ) ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( ( m ) [ 8 ] * ( v1 ) [ 0 ] + ( m ) [ 9 ] * ( v1 ) [ 1 ] + ( m ) [ 10 ] * ( v1 ) [ 2 ] + ( m ) [ 11 ] * ( v1 ) [ 3 ] ) ) , ( v2 ) [ 3 ] = AIR_CAST ( TT , ( ( m ) [ 12 ] * ( v1 ) [ 0 ] + ( m ) [ 13 ] * ( v1 ) [ 1 ] + ( m ) [ 14 ] * ( v1 ) [ 2 ] + ( m ) [ 15 ] * ( v1 ) [ 3 ] ) ) )
# Skipping MacroDefinition: ELL_4MV_TMUL ( v2 , m , v1 ) ( ( v2 ) [ 0 ] = ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 4 ] * ( v1 ) [ 1 ] + ( m ) [ 8 ] * ( v1 ) [ 2 ] + ( m ) [ 12 ] * ( v1 ) [ 3 ] , ( v2 ) [ 1 ] = ( m ) [ 1 ] * ( v1 ) [ 0 ] + ( m ) [ 5 ] * ( v1 ) [ 1 ] + ( m ) [ 9 ] * ( v1 ) [ 2 ] + ( m ) [ 13 ] * ( v1 ) [ 3 ] , ( v2 ) [ 2 ] = ( m ) [ 2 ] * ( v1 ) [ 0 ] + ( m ) [ 6 ] * ( v1 ) [ 1 ] + ( m ) [ 10 ] * ( v1 ) [ 2 ] + ( m ) [ 14 ] * ( v1 ) [ 3 ] , ( v2 ) [ 3 ] = ( m ) [ 3 ] * ( v1 ) [ 0 ] + ( m ) [ 7 ] * ( v1 ) [ 1 ] + ( m ) [ 11 ] * ( v1 ) [ 2 ] + ( m ) [ 15 ] * ( v1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_34V_HOMOG ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] / ( v1 ) [ 3 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] / ( v1 ) [ 3 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] / ( v1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_4M3V_HOMOG_MUL ( v2 , m , v1 , tv ) ( ( tv ) [ 0 ] = ( m ) [ 0 ] * ( v1 ) [ 0 ] + ( m ) [ 1 ] * ( v1 ) [ 1 ] + ( m ) [ 2 ] * ( v1 ) [ 2 ] + ( m ) [ 3 ] , ( tv ) [ 1 ] = ( m ) [ 4 ] * ( v1 ) [ 0 ] + ( m ) [ 5 ] * ( v1 ) [ 1 ] + ( m ) [ 6 ] * ( v1 ) [ 2 ] + ( m ) [ 7 ] , ( tv ) [ 2 ] = ( m ) [ 8 ] * ( v1 ) [ 0 ] + ( m ) [ 9 ] * ( v1 ) [ 1 ] + ( m ) [ 10 ] * ( v1 ) [ 2 ] + ( m ) [ 11 ] , ( tv ) [ 3 ] = ( m ) [ 12 ] * ( v1 ) [ 0 ] + ( m ) [ 13 ] * ( v1 ) [ 1 ] + ( m ) [ 14 ] * ( v1 ) [ 2 ] + ( m ) [ 15 ] ) ; ELL_34V_HOMOG ( v2 , tv )
# Skipping MacroDefinition: ELL_34V_HOMOG_TT ( v2 , TT , v1 ) ( ( v2 ) [ 0 ] = AIR_CAST ( TT , ( v1 ) [ 0 ] / ( v1 ) [ 3 ] ) , ( v2 ) [ 1 ] = AIR_CAST ( TT , ( v1 ) [ 1 ] / ( v1 ) [ 3 ] ) , ( v2 ) [ 2 ] = AIR_CAST ( TT , ( v1 ) [ 2 ] / ( v1 ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_4V_HOMOG ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] / ( v1 ) [ 3 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] / ( v1 ) [ 3 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] / ( v1 ) [ 3 ] , ( v2 ) [ 3 ] = 1.0 )
# Skipping MacroDefinition: ELL_4M_COLS_SET ( m , a , b , c , d ) ( ELL_4V_SET ( ( m ) + 0 , ( a ) [ 0 ] , ( b ) [ 0 ] , ( c ) [ 0 ] , ( d ) [ 0 ] ) , ELL_4V_SET ( ( m ) + 4 , ( a ) [ 1 ] , ( b ) [ 1 ] , ( c ) [ 1 ] , ( d ) [ 1 ] ) , ELL_4V_SET ( ( m ) + 8 , ( a ) [ 2 ] , ( b ) [ 2 ] , ( c ) [ 2 ] , ( d ) [ 2 ] ) , ELL_4V_SET ( ( m ) + 12 , ( a ) [ 3 ] , ( b ) [ 3 ] , ( c ) [ 3 ] , ( d ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_4M_ROWS_SET ( m , a , b , c , d ) ( ELL_4V_COPY ( ( m ) + 0 , a ) , ELL_4V_COPY ( ( m ) + 4 , b ) , ELL_4V_COPY ( ( m ) + 8 , c ) , ELL_4V_COPY ( ( m ) + 12 , d ) )
# Skipping MacroDefinition: ELL_4M_IDENTITY_SET ( m ) ( ELL_4V_SET ( ( m ) + 0 , 1 , 0 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 4 , 0 , 1 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 8 , 0 , 0 , 1 , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4M_EXISTS ( m ) ( ELL_4V_EXISTS ( ( m ) + 0 ) && ELL_4V_EXISTS ( ( m ) + 4 ) && ELL_4V_EXISTS ( ( m ) + 8 ) && ELL_4V_EXISTS ( ( m ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_ZERO_SET ( m ) ( ELL_4V_SET ( ( m ) + 0 , 0 , 0 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 4 , 0 , 0 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 8 , 0 , 0 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 0 ) )
# Skipping MacroDefinition: ELL_4M_SCALE_SET ( m , x , y , z ) ( ELL_4V_SET ( ( m ) + 0 , ( x ) , 0 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 4 , 0 , ( y ) , 0 , 0 ) , ELL_4V_SET ( ( m ) + 8 , 0 , 0 , ( z ) , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4M_TRANSLATE_SET ( m , x , y , z ) ( ELL_4V_SET ( ( m ) + 0 , 1 , 0 , 0 , ( x ) ) , ELL_4V_SET ( ( m ) + 4 , 0 , 1 , 0 , ( y ) ) , ELL_4V_SET ( ( m ) + 8 , 0 , 0 , 1 , ( z ) ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4M_ROTATE_X_SET ( m , th ) ( ELL_4V_SET ( ( m ) + 0 , 1 , 0 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 4 , 0 , cos ( th ) , - sin ( th ) , 0 ) , ELL_4V_SET ( ( m ) + 8 , 0 , + sin ( th ) , cos ( th ) , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4M_ROTATE_Y_SET ( m , th ) ( ELL_4V_SET ( ( m ) + 0 , cos ( th ) , 0 , + sin ( th ) , 0 ) , ELL_4V_SET ( ( m ) + 4 , 0 , 1 , 0 , 0 ) , ELL_4V_SET ( ( m ) + 8 , - sin ( th ) , 0 , cos ( th ) , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4M_ROTATE_Z_SET ( m , th ) ( ELL_4V_SET ( ( m ) + 0 , cos ( th ) , - sin ( th ) , 0 , 0 ) , ELL_4V_SET ( ( m ) + 4 , + sin ( th ) , cos ( th ) , 0 , 0 ) , ELL_4V_SET ( ( m ) + 8 , 0 , 0 , 1 , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_4M_NAN_SET ( m ) ( ELL_4V_NAN_SET ( ( m ) + 0 ) , ELL_4V_NAN_SET ( ( m ) + 4 ) , ELL_4V_NAN_SET ( ( m ) + 8 ) , ELL_4V_NAN_SET ( ( m ) + 12 ) )
# Skipping MacroDefinition: ELL_4M_MUL ( n , l , m ) ( ( n ) [ 0 ] = ( l ) [ 0 ] * ( m ) [ 0 ] + ( l ) [ 1 ] * ( m ) [ 4 ] + ( l ) [ 2 ] * ( m ) [ 8 ] + ( l ) [ 3 ] * ( m ) [ 12 ] , ( n ) [ 1 ] = ( l ) [ 0 ] * ( m ) [ 1 ] + ( l ) [ 1 ] * ( m ) [ 5 ] + ( l ) [ 2 ] * ( m ) [ 9 ] + ( l ) [ 3 ] * ( m ) [ 13 ] , ( n ) [ 2 ] = ( l ) [ 0 ] * ( m ) [ 2 ] + ( l ) [ 1 ] * ( m ) [ 6 ] + ( l ) [ 2 ] * ( m ) [ 10 ] + ( l ) [ 3 ] * ( m ) [ 14 ] , ( n ) [ 3 ] = ( l ) [ 0 ] * ( m ) [ 3 ] + ( l ) [ 1 ] * ( m ) [ 7 ] + ( l ) [ 2 ] * ( m ) [ 11 ] + ( l ) [ 3 ] * ( m ) [ 15 ] , ( n ) [ 4 ] = ( l ) [ 4 ] * ( m ) [ 0 ] + ( l ) [ 5 ] * ( m ) [ 4 ] + ( l ) [ 6 ] * ( m ) [ 8 ] + ( l ) [ 7 ] * ( m ) [ 12 ] , ( n ) [ 5 ] = ( l ) [ 4 ] * ( m ) [ 1 ] + ( l ) [ 5 ] * ( m ) [ 5 ] + ( l ) [ 6 ] * ( m ) [ 9 ] + ( l ) [ 7 ] * ( m ) [ 13 ] , ( n ) [ 6 ] = ( l ) [ 4 ] * ( m ) [ 2 ] + ( l ) [ 5 ] * ( m ) [ 6 ] + ( l ) [ 6 ] * ( m ) [ 10 ] + ( l ) [ 7 ] * ( m ) [ 14 ] , ( n ) [ 7 ] = ( l ) [ 4 ] * ( m ) [ 3 ] + ( l ) [ 5 ] * ( m ) [ 7 ] + ( l ) [ 6 ] * ( m ) [ 11 ] + ( l ) [ 7 ] * ( m ) [ 15 ] , ( n ) [ 8 ] = ( l ) [ 8 ] * ( m ) [ 0 ] + ( l ) [ 9 ] * ( m ) [ 4 ] + ( l ) [ 10 ] * ( m ) [ 8 ] + ( l ) [ 11 ] * ( m ) [ 12 ] , ( n ) [ 9 ] = ( l ) [ 8 ] * ( m ) [ 1 ] + ( l ) [ 9 ] * ( m ) [ 5 ] + ( l ) [ 10 ] * ( m ) [ 9 ] + ( l ) [ 11 ] * ( m ) [ 13 ] , ( n ) [ 10 ] = ( l ) [ 8 ] * ( m ) [ 2 ] + ( l ) [ 9 ] * ( m ) [ 6 ] + ( l ) [ 10 ] * ( m ) [ 10 ] + ( l ) [ 11 ] * ( m ) [ 14 ] , ( n ) [ 11 ] = ( l ) [ 8 ] * ( m ) [ 3 ] + ( l ) [ 9 ] * ( m ) [ 7 ] + ( l ) [ 10 ] * ( m ) [ 11 ] + ( l ) [ 11 ] * ( m ) [ 15 ] , ( n ) [ 12 ] = ( l ) [ 12 ] * ( m ) [ 0 ] + ( l ) [ 13 ] * ( m ) [ 4 ] + ( l ) [ 14 ] * ( m ) [ 8 ] + ( l ) [ 15 ] * ( m ) [ 12 ] , ( n ) [ 13 ] = ( l ) [ 12 ] * ( m ) [ 1 ] + ( l ) [ 13 ] * ( m ) [ 5 ] + ( l ) [ 14 ] * ( m ) [ 9 ] + ( l ) [ 15 ] * ( m ) [ 13 ] , ( n ) [ 14 ] = ( l ) [ 12 ] * ( m ) [ 2 ] + ( l ) [ 13 ] * ( m ) [ 6 ] + ( l ) [ 14 ] * ( m ) [ 10 ] + ( l ) [ 15 ] * ( m ) [ 14 ] , ( n ) [ 15 ] = ( l ) [ 12 ] * ( m ) [ 3 ] + ( l ) [ 13 ] * ( m ) [ 7 ] + ( l ) [ 14 ] * ( m ) [ 11 ] + ( l ) [ 15 ] * ( m ) [ 15 ] )
# Skipping MacroDefinition: ELL_34M_EXTRACT ( m , l ) ( ( m ) [ 0 ] = ( l ) [ 0 ] , ( m ) [ 1 ] = ( l ) [ 1 ] , ( m ) [ 2 ] = ( l ) [ 2 ] , ( m ) [ 3 ] = ( l ) [ 4 ] , ( m ) [ 4 ] = ( l ) [ 5 ] , ( m ) [ 5 ] = ( l ) [ 6 ] , ( m ) [ 6 ] = ( l ) [ 8 ] , ( m ) [ 7 ] = ( l ) [ 9 ] , ( m ) [ 8 ] = ( l ) [ 10 ] )
# Skipping MacroDefinition: ELL_43M_INSET ( l , m ) ( ( l ) [ 0 ] = ( m ) [ 0 ] , ( l ) [ 1 ] = ( m ) [ 1 ] , ( l ) [ 2 ] = ( m ) [ 2 ] , ( l ) [ 3 ] = 0 , ( l ) [ 4 ] = ( m ) [ 3 ] , ( l ) [ 5 ] = ( m ) [ 4 ] , ( l ) [ 6 ] = ( m ) [ 5 ] , ( l ) [ 7 ] = 0 , ( l ) [ 8 ] = ( m ) [ 6 ] , ( l ) [ 9 ] = ( m ) [ 7 ] , ( l ) [ 10 ] = ( m ) [ 8 ] , ( l ) [ 11 ] = 0 , ( l ) [ 12 ] = 0 , ( l ) [ 13 ] = 0 , ( l ) [ 14 ] = 0 , ( l ) [ 15 ] = 1 )
# Skipping MacroDefinition: ELL_4M_FROB ( m ) ( sqrt ( ELL_4V_DOT ( ( m ) + 0 , ( m ) + 0 ) + ELL_4V_DOT ( ( m ) + 4 , ( m ) + 4 ) + ELL_4V_DOT ( ( m ) + 8 , ( m ) + 8 ) + ELL_4V_DOT ( ( m ) + 12 , ( m ) + 12 ) ) )
# Skipping MacroDefinition: ELL_4M_DET ( m ) ( ( m ) [ 0 ] * _ELL_3M_DET ( ( m ) [ 5 ] , ( m ) [ 6 ] , ( m ) [ 7 ] , ( m ) [ 9 ] , ( m ) [ 10 ] , ( m ) [ 11 ] , ( m ) [ 13 ] , ( m ) [ 14 ] , ( m ) [ 15 ] ) - ( m ) [ 1 ] * _ELL_3M_DET ( ( m ) [ 4 ] , ( m ) [ 6 ] , ( m ) [ 7 ] , ( m ) [ 8 ] , ( m ) [ 10 ] , ( m ) [ 11 ] , ( m ) [ 12 ] , ( m ) [ 14 ] , ( m ) [ 15 ] ) + ( m ) [ 2 ] * _ELL_3M_DET ( ( m ) [ 4 ] , ( m ) [ 5 ] , ( m ) [ 7 ] , ( m ) [ 8 ] , ( m ) [ 9 ] , ( m ) [ 11 ] , ( m ) [ 12 ] , ( m ) [ 13 ] , ( m ) [ 15 ] ) - ( m ) [ 3 ] * _ELL_3M_DET ( ( m ) [ 4 ] , ( m ) [ 5 ] , ( m ) [ 6 ] , ( m ) [ 8 ] , ( m ) [ 9 ] , ( m ) [ 10 ] , ( m ) [ 12 ] , ( m ) [ 13 ] , ( m ) [ 14 ] ) )
# Skipping MacroDefinition: ELL_4MV_OUTER ( m , v1 , v2 ) ( ELL_4V_SCALE ( ( m ) + 0 , ( v1 ) [ 0 ] , ( v2 ) ) , ELL_4V_SCALE ( ( m ) + 4 , ( v1 ) [ 1 ] , ( v2 ) ) , ELL_4V_SCALE ( ( m ) + 8 , ( v1 ) [ 2 ] , ( v2 ) ) , ELL_4V_SCALE ( ( m ) + 12 , ( v1 ) [ 3 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_4MV_OUTER_TT ( m , TT , v1 , v2 ) ( ELL_4V_SCALE_TT ( ( m ) + 0 , TT , ( v1 ) [ 0 ] , ( v2 ) ) , ELL_4V_SCALE_TT ( ( m ) + 4 , TT , ( v1 ) [ 1 ] , ( v2 ) ) , ELL_4V_SCALE_TT ( ( m ) + 8 , TT , ( v1 ) [ 2 ] , ( v2 ) ) , ELL_4V_SCALE_TT ( ( m ) + 12 , TT , ( v1 ) [ 3 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_4MV_OUTER_INCR ( m , v1 , v2 ) ( ELL_4V_SCALE_INCR ( ( m ) + 0 , ( v1 ) [ 0 ] , ( v2 ) ) , ELL_4V_SCALE_INCR ( ( m ) + 4 , ( v1 ) [ 1 ] , ( v2 ) ) , ELL_4V_SCALE_INCR ( ( m ) + 8 , ( v1 ) [ 2 ] , ( v2 ) ) , ELL_4V_SCALE_INCR ( ( m ) + 12 , ( v1 ) [ 3 ] , ( v2 ) ) )
# Skipping MacroDefinition: ELL_Q_MUL ( q3 , q1 , q2 ) ELL_4V_SET ( ( q3 ) , ( q1 ) [ 0 ] * ( q2 ) [ 0 ] - ( q1 ) [ 1 ] * ( q2 ) [ 1 ] - ( q1 ) [ 2 ] * ( q2 ) [ 2 ] - ( q1 ) [ 3 ] * ( q2 ) [ 3 ] , ( q1 ) [ 0 ] * ( q2 ) [ 1 ] + ( q1 ) [ 1 ] * ( q2 ) [ 0 ] + ( q1 ) [ 2 ] * ( q2 ) [ 3 ] - ( q1 ) [ 3 ] * ( q2 ) [ 2 ] , ( q1 ) [ 0 ] * ( q2 ) [ 2 ] - ( q1 ) [ 1 ] * ( q2 ) [ 3 ] + ( q1 ) [ 2 ] * ( q2 ) [ 0 ] + ( q1 ) [ 3 ] * ( q2 ) [ 1 ] , ( q1 ) [ 0 ] * ( q2 ) [ 3 ] + ( q1 ) [ 1 ] * ( q2 ) [ 2 ] - ( q1 ) [ 2 ] * ( q2 ) [ 1 ] + ( q1 ) [ 3 ] * ( q2 ) [ 0 ] )
# Skipping MacroDefinition: ELL_Q_CONJ ( q2 , q1 ) ELL_4V_SET ( ( q2 ) , ( q1 ) [ 0 ] , - ( q1 ) [ 1 ] , - ( q1 ) [ 2 ] , - ( q1 ) [ 3 ] )
# Skipping MacroDefinition: ELL_Q_INV ( i , q , n ) ( n = ELL_4V_DOT ( q , q ) , ELL_4V_SET ( ( i ) , ( q ) [ 0 ] / ( n ) , - ( q ) [ 1 ] / ( n ) , - ( q ) [ 2 ] / ( n ) , - ( q ) [ 3 ] / ( n ) ) )
# Skipping MacroDefinition: ELL_Q_TO_3M ( m , q ) ( ELL_3V_SET ( ( m ) + 0 , ( q ) [ 0 ] * ( q ) [ 0 ] + ( q ) [ 1 ] * ( q ) [ 1 ] - ( q ) [ 2 ] * ( q ) [ 2 ] - ( q ) [ 3 ] * ( q ) [ 3 ] , 2 * ( ( q ) [ 1 ] * ( q ) [ 2 ] - ( q ) [ 0 ] * ( q ) [ 3 ] ) , 2 * ( ( q ) [ 1 ] * ( q ) [ 3 ] + ( q ) [ 0 ] * ( q ) [ 2 ] ) ) , ELL_3V_SET ( ( m ) + 3 , 2 * ( ( q ) [ 1 ] * ( q ) [ 2 ] + ( q ) [ 0 ] * ( q ) [ 3 ] ) , ( q ) [ 0 ] * ( q ) [ 0 ] - ( q ) [ 1 ] * ( q ) [ 1 ] + ( q ) [ 2 ] * ( q ) [ 2 ] - ( q ) [ 3 ] * ( q ) [ 3 ] , 2 * ( ( q ) [ 2 ] * ( q ) [ 3 ] - ( q ) [ 0 ] * ( q ) [ 1 ] ) ) , ELL_3V_SET ( ( m ) + 6 , 2 * ( ( q ) [ 1 ] * ( q ) [ 3 ] - ( q ) [ 0 ] * ( q ) [ 2 ] ) , 2 * ( ( q ) [ 2 ] * ( q ) [ 3 ] + ( q ) [ 0 ] * ( q ) [ 1 ] ) , ( q ) [ 0 ] * ( q ) [ 0 ] - ( q ) [ 1 ] * ( q ) [ 1 ] - ( q ) [ 2 ] * ( q ) [ 2 ] + ( q ) [ 3 ] * ( q ) [ 3 ] ) )
# Skipping MacroDefinition: ELL_Q_TO_4M ( m , q ) ( ELL_4V_SET ( ( m ) + 0 , ( q ) [ 0 ] * ( q ) [ 0 ] + ( q ) [ 1 ] * ( q ) [ 1 ] - ( q ) [ 2 ] * ( q ) [ 2 ] - ( q ) [ 3 ] * ( q ) [ 3 ] , 2 * ( ( q ) [ 1 ] * ( q ) [ 2 ] - ( q ) [ 0 ] * ( q ) [ 3 ] ) , 2 * ( ( q ) [ 1 ] * ( q ) [ 3 ] + ( q ) [ 0 ] * ( q ) [ 2 ] ) , 0 ) , ELL_4V_SET ( ( m ) + 4 , 2 * ( ( q ) [ 1 ] * ( q ) [ 2 ] + ( q ) [ 0 ] * ( q ) [ 3 ] ) , ( q ) [ 0 ] * ( q ) [ 0 ] - ( q ) [ 1 ] * ( q ) [ 1 ] + ( q ) [ 2 ] * ( q ) [ 2 ] - ( q ) [ 3 ] * ( q ) [ 3 ] , 2 * ( ( q ) [ 2 ] * ( q ) [ 3 ] - ( q ) [ 0 ] * ( q ) [ 1 ] ) , 0 ) , ELL_4V_SET ( ( m ) + 8 , 2 * ( ( q ) [ 1 ] * ( q ) [ 3 ] - ( q ) [ 0 ] * ( q ) [ 2 ] ) , 2 * ( ( q ) [ 2 ] * ( q ) [ 3 ] + ( q ) [ 0 ] * ( q ) [ 1 ] ) , ( q ) [ 0 ] * ( q ) [ 0 ] - ( q ) [ 1 ] * ( q ) [ 1 ] - ( q ) [ 2 ] * ( q ) [ 2 ] + ( q ) [ 3 ] * ( q ) [ 3 ] , 0 ) , ELL_4V_SET ( ( m ) + 12 , 0 , 0 , 0 , 1 ) )
# Skipping MacroDefinition: ELL_5V_SET ( v , a , b , c , d , e ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) , ( v ) [ 2 ] = ( c ) , ( v ) [ 3 ] = ( d ) , ( v ) [ 4 ] = ( e ) )
# Skipping MacroDefinition: ELL_5V_COPY ( v , w ) ( ( v ) [ 0 ] = ( w ) [ 0 ] , ( v ) [ 1 ] = ( w ) [ 1 ] , ( v ) [ 2 ] = ( w ) [ 2 ] , ( v ) [ 3 ] = ( w ) [ 3 ] , ( v ) [ 4 ] = ( w ) [ 4 ] )
# Skipping MacroDefinition: ELL_6V_SET ( v , a , b , c , d , e , f ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) , ( v ) [ 2 ] = ( c ) , ( v ) [ 3 ] = ( d ) , ( v ) [ 4 ] = ( e ) , ( v ) [ 5 ] = ( f ) )
# Skipping MacroDefinition: ELL_6V_ZERO_SET ( v ) ELL_6V_SET ( v , 0 , 0 , 0 , 0 , 0 , 0 )
# Skipping MacroDefinition: ELL_6V_COPY ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( v1 ) [ 3 ] , ( v2 ) [ 4 ] = ( v1 ) [ 4 ] , ( v2 ) [ 5 ] = ( v1 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_INCR ( v2 , v1 ) ( ( v2 ) [ 0 ] += ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( v1 ) [ 1 ] , ( v2 ) [ 2 ] += ( v1 ) [ 2 ] , ( v2 ) [ 3 ] += ( v1 ) [ 3 ] , ( v2 ) [ 4 ] += ( v1 ) [ 4 ] , ( v2 ) [ 5 ] += ( v1 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_SCALE_INCR2 ( v2 , s0 , v0 , s1 , v1 ) ( ( v2 ) [ 0 ] += ( s0 ) * ( v0 ) [ 0 ] + ( s1 ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( s0 ) * ( v0 ) [ 1 ] + ( s1 ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] += ( s0 ) * ( v0 ) [ 2 ] + ( s1 ) * ( v1 ) [ 2 ] , ( v2 ) [ 3 ] += ( s0 ) * ( v0 ) [ 3 ] + ( s1 ) * ( v1 ) [ 3 ] , ( v2 ) [ 4 ] += ( s0 ) * ( v0 ) [ 4 ] + ( s1 ) * ( v1 ) [ 4 ] , ( v2 ) [ 5 ] += ( s0 ) * ( v0 ) [ 5 ] + ( s1 ) * ( v1 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_SCALE_INCR ( v2 , a , v1 ) ( ( v2 ) [ 0 ] += ( a ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] += ( a ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] += ( a ) * ( v1 ) [ 2 ] , ( v2 ) [ 3 ] += ( a ) * ( v1 ) [ 3 ] , ( v2 ) [ 4 ] += ( a ) * ( v1 ) [ 4 ] , ( v2 ) [ 5 ] += ( a ) * ( v1 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_SCALE ( v2 , a , v1 ) ( ( v2 ) [ 0 ] = ( a ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( a ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( a ) * ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( a ) * ( v1 ) [ 3 ] , ( v2 ) [ 4 ] = ( a ) * ( v1 ) [ 4 ] , ( v2 ) [ 5 ] = ( a ) * ( v1 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_DOT ( v1 , v2 ) ( ( v1 ) [ 0 ] * ( v2 ) [ 0 ] + ( v1 ) [ 1 ] * ( v2 ) [ 1 ] + ( v1 ) [ 2 ] * ( v2 ) [ 2 ] + ( v1 ) [ 3 ] * ( v2 ) [ 3 ] + ( v1 ) [ 4 ] * ( v2 ) [ 4 ] + ( v1 ) [ 5 ] * ( v2 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_SUB ( m3 , m1 , m2 ) ( ( m3 ) [ 0 ] = ( m1 ) [ 0 ] - ( m2 ) [ 0 ] , ( m3 ) [ 1 ] = ( m1 ) [ 1 ] - ( m2 ) [ 1 ] , ( m3 ) [ 2 ] = ( m1 ) [ 2 ] - ( m2 ) [ 2 ] , ( m3 ) [ 3 ] = ( m1 ) [ 3 ] - ( m2 ) [ 3 ] , ( m3 ) [ 4 ] = ( m1 ) [ 4 ] - ( m2 ) [ 4 ] , ( m3 ) [ 5 ] = ( m1 ) [ 5 ] - ( m2 ) [ 5 ] )
# Skipping MacroDefinition: ELL_6V_ADD2 ( m3 , m1 , m2 ) ( ( m3 ) [ 0 ] = ( m1 ) [ 0 ] + ( m2 ) [ 0 ] , ( m3 ) [ 1 ] = ( m1 ) [ 1 ] + ( m2 ) [ 1 ] , ( m3 ) [ 2 ] = ( m1 ) [ 2 ] + ( m2 ) [ 2 ] , ( m3 ) [ 3 ] = ( m1 ) [ 3 ] + ( m2 ) [ 3 ] , ( m3 ) [ 4 ] = ( m1 ) [ 4 ] + ( m2 ) [ 4 ] , ( m3 ) [ 5 ] = ( m1 ) [ 5 ] + ( m2 ) [ 5 ] )
# Skipping MacroDefinition: ELL_9V_SET ( v , a , b , c , d , e , f , g , h , i ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) , ( v ) [ 2 ] = ( c ) , ( v ) [ 3 ] = ( d ) , ( v ) [ 4 ] = ( e ) , ( v ) [ 5 ] = ( f ) , ( v ) [ 6 ] = ( g ) , ( v ) [ 7 ] = ( h ) , ( v ) [ 8 ] = ( i ) )
# Skipping MacroDefinition: ELL_9V_COPY ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( v1 ) [ 3 ] , ( v2 ) [ 4 ] = ( v1 ) [ 4 ] , ( v2 ) [ 5 ] = ( v1 ) [ 5 ] , ( v2 ) [ 6 ] = ( v1 ) [ 6 ] , ( v2 ) [ 7 ] = ( v1 ) [ 7 ] , ( v2 ) [ 8 ] = ( v1 ) [ 8 ] )
# Skipping MacroDefinition: ELL_9V_SUB ( v3 , v1 , v2 ) ( ( v3 ) [ 0 ] = ( v1 ) [ 0 ] - ( v2 ) [ 0 ] , ( v3 ) [ 1 ] = ( v1 ) [ 1 ] - ( v2 ) [ 1 ] , ( v3 ) [ 2 ] = ( v1 ) [ 2 ] - ( v2 ) [ 2 ] , ( v3 ) [ 3 ] = ( v1 ) [ 3 ] - ( v2 ) [ 3 ] , ( v3 ) [ 4 ] = ( v1 ) [ 4 ] - ( v2 ) [ 4 ] , ( v3 ) [ 5 ] = ( v1 ) [ 5 ] - ( v2 ) [ 5 ] , ( v3 ) [ 6 ] = ( v1 ) [ 6 ] - ( v2 ) [ 6 ] , ( v3 ) [ 7 ] = ( v1 ) [ 7 ] - ( v2 ) [ 7 ] , ( v3 ) [ 8 ] = ( v1 ) [ 8 ] - ( v2 ) [ 8 ] )
# Skipping MacroDefinition: ELL_9V_DOT ( v1 , v2 ) ( ( v1 ) [ 0 ] * ( v2 ) [ 0 ] + ( v1 ) [ 1 ] * ( v2 ) [ 1 ] + ( v1 ) [ 2 ] * ( v2 ) [ 2 ] + ( v1 ) [ 3 ] * ( v2 ) [ 3 ] + ( v1 ) [ 4 ] * ( v2 ) [ 4 ] + ( v1 ) [ 5 ] * ( v2 ) [ 5 ] + ( v1 ) [ 6 ] * ( v2 ) [ 6 ] + ( v1 ) [ 7 ] * ( v2 ) [ 7 ] + ( v1 ) [ 8 ] * ( v2 ) [ 8 ] )
# Skipping MacroDefinition: ELL_9V_LEN ( v ) ( sqrt ( ELL_9V_DOT ( ( v ) , ( v ) ) ) )
# Skipping MacroDefinition: ELL_10V_ZERO_SET ( v ) ( ( v ) [ 0 ] = 0 , ( v ) [ 1 ] = 0 , ( v ) [ 2 ] = 0 , ( v ) [ 3 ] = 0 , ( v ) [ 4 ] = 0 , ( v ) [ 5 ] = 0 , ( v ) [ 6 ] = 0 , ( v ) [ 7 ] = 0 , ( v ) [ 8 ] = 0 , ( v ) [ 9 ] = 0 )
# Skipping MacroDefinition: ELL_10V_SET ( v , a , b , c , d , e , f , g , h , i , j ) ( ( v ) [ 0 ] = ( a ) , ( v ) [ 1 ] = ( b ) , ( v ) [ 2 ] = ( c ) , ( v ) [ 3 ] = ( d ) , ( v ) [ 4 ] = ( e ) , ( v ) [ 5 ] = ( f ) , ( v ) [ 6 ] = ( g ) , ( v ) [ 7 ] = ( h ) , ( v ) [ 8 ] = ( i ) , ( v ) [ 9 ] = ( j ) )
# Skipping MacroDefinition: ELL_10V_COPY ( v2 , v1 ) ( ( v2 ) [ 0 ] = ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( v1 ) [ 3 ] , ( v2 ) [ 4 ] = ( v1 ) [ 4 ] , ( v2 ) [ 5 ] = ( v1 ) [ 5 ] , ( v2 ) [ 6 ] = ( v1 ) [ 6 ] , ( v2 ) [ 7 ] = ( v1 ) [ 7 ] , ( v2 ) [ 8 ] = ( v1 ) [ 8 ] , ( v2 ) [ 9 ] = ( v1 ) [ 9 ] )
# Skipping MacroDefinition: ELL_10V_SCALE ( v2 , a , v1 ) ( ( v2 ) [ 0 ] = ( a ) * ( v1 ) [ 0 ] , ( v2 ) [ 1 ] = ( a ) * ( v1 ) [ 1 ] , ( v2 ) [ 2 ] = ( a ) * ( v1 ) [ 2 ] , ( v2 ) [ 3 ] = ( a ) * ( v1 ) [ 3 ] , ( v2 ) [ 4 ] = ( a ) * ( v1 ) [ 4 ] , ( v2 ) [ 5 ] = ( a ) * ( v1 ) [ 5 ] , ( v2 ) [ 6 ] = ( a ) * ( v1 ) [ 6 ] , ( v2 ) [ 7 ] = ( a ) * ( v1 ) [ 7 ] , ( v2 ) [ 8 ] = ( a ) * ( v1 ) [ 8 ] , ( v2 ) [ 9 ] = ( a ) * ( v1 ) [ 9 ] )

const GAGE_DERIV_MAX = 2

# Skipping MacroDefinition: GAGE_DV_SET ( v , d0 , d1 , d2 ) ( ( v ) [ 0 ] = ( d0 ) , ( v ) [ 1 ] = ( d1 ) , ( v ) [ 2 ] = ( d2 ) )
# Skipping MacroDefinition: GAGE_DV_EQUAL ( a , b ) ( ( a ) [ 0 ] == ( b ) [ 0 ] && ( a ) [ 1 ] == ( b ) [ 1 ] && ( a ) [ 2 ] == ( b ) [ 2 ] )
# Skipping MacroDefinition: GAGE_DV_COPY ( a , b ) ( ( a ) [ 0 ] = ( b ) [ 0 ] , ( a ) [ 1 ] = ( b ) [ 1 ] , ( a ) [ 2 ] = ( b ) [ 2 ] )

const GAGE_ERR_MAX = 6
const GAGE_CTX_FLAG_MAX = 6
const GAGE_PVL_FLAG_MAX = 3
const GAGE_KERNEL_MAX = 7
const GAGE_ITEM_PREREQ_MAXNUM = 8
const GAGE_SCL_ITEM_MAX = 36
const GAGE_VEC_ITEM_MAX = 31
const GAGE_2VEC_ITEM_MAX = 4
const GAGE_ITEM_PACK_PART_MAX = 11
const GAGE_SIGMA_SAMPLING_MAX = 3
const GAGE_QUERY_BYTES_NUM = 32

# Skipping MacroDefinition: GAGE_ITEM_MAX ( ( 8 * GAGE_QUERY_BYTES_NUM ) - 1 )
# Skipping MacroDefinition: GAGE_QUERY_RESET ( q ) q [ 0 ] = q [ 1 ] = q [ 2 ] = q [ 3 ] = q [ 4 ] = q [ 5 ] = q [ 6 ] = q [ 7 ] = q [ 8 ] = q [ 9 ] = q [ 10 ] = q [ 11 ] = q [ 12 ] = q [ 13 ] = q [ 14 ] = q [ 15 ] = q [ 16 ] = q [ 17 ] = q [ 18 ] = q [ 19 ] = q [ 20 ] = q [ 21 ] = q [ 22 ] = q [ 23 ] = q [ 24 ] = q [ 25 ] = q [ 26 ] = q [ 27 ] = q [ 28 ] = q [ 29 ] = q [ 30 ] = q [ 31 ] = 0
# Skipping MacroDefinition: GAGE_QUERY_COPY ( p , q ) p [ 0 ] = q [ 0 ] ; p [ 1 ] = q [ 1 ] ; p [ 2 ] = q [ 2 ] ; p [ 3 ] = q [ 3 ] ; p [ 4 ] = q [ 4 ] ; p [ 5 ] = q [ 5 ] ; p [ 6 ] = q [ 6 ] ; p [ 7 ] = q [ 7 ] ; p [ 8 ] = q [ 8 ] ; p [ 9 ] = q [ 9 ] ; p [ 10 ] = q [ 10 ] ; p [ 11 ] = q [ 11 ] ; p [ 12 ] = q [ 12 ] ; p [ 13 ] = q [ 13 ] ; p [ 14 ] = q [ 14 ] ; p [ 15 ] = q [ 15 ] ; p [ 16 ] = q [ 16 ] ; p [ 17 ] = q [ 17 ] ; p [ 18 ] = q [ 18 ] ; p [ 19 ] = q [ 19 ] ; p [ 20 ] = q [ 20 ] ; p [ 21 ] = q [ 21 ] ; p [ 22 ] = q [ 22 ] ; p [ 23 ] = q [ 23 ] ; p [ 24 ] = q [ 24 ] ; p [ 25 ] = q [ 25 ] ; p [ 26 ] = q [ 26 ] ; p [ 27 ] = q [ 27 ] ; p [ 28 ] = q [ 28 ] ; p [ 29 ] = q [ 29 ] ; p [ 30 ] = q [ 30 ] ; p [ 31 ] = q [ 31 ]
# Skipping MacroDefinition: GAGE_QUERY_ADD ( p , q ) p [ 0 ] |= q [ 0 ] ; p [ 1 ] |= q [ 1 ] ; p [ 2 ] |= q [ 2 ] ; p [ 3 ] |= q [ 3 ] ; p [ 4 ] |= q [ 4 ] ; p [ 5 ] |= q [ 5 ] ; p [ 6 ] |= q [ 6 ] ; p [ 7 ] |= q [ 7 ] ; p [ 8 ] |= q [ 8 ] ; p [ 9 ] |= q [ 9 ] ; p [ 10 ] |= q [ 10 ] ; p [ 11 ] |= q [ 11 ] ; p [ 12 ] |= q [ 12 ] ; p [ 13 ] |= q [ 13 ] ; p [ 14 ] |= q [ 14 ] ; p [ 15 ] |= q [ 15 ] ; p [ 16 ] |= q [ 16 ] ; p [ 17 ] |= q [ 17 ] ; p [ 18 ] |= q [ 18 ] ; p [ 19 ] |= q [ 19 ] ; p [ 20 ] |= q [ 20 ] ; p [ 21 ] |= q [ 21 ] ; p [ 22 ] |= q [ 22 ] ; p [ 23 ] |= q [ 23 ] ; p [ 24 ] |= q [ 24 ] ; p [ 25 ] |= q [ 25 ] ; p [ 26 ] |= q [ 26 ] ; p [ 27 ] |= q [ 27 ] ; p [ 28 ] |= q [ 28 ] ; p [ 29 ] |= q [ 29 ] ; p [ 30 ] |= q [ 30 ] ; p [ 31 ] |= q [ 31 ]
# Skipping MacroDefinition: GAGE_QUERY_EQUAL ( p , q ) ( p [ 0 ] == q [ 0 ] && p [ 1 ] == q [ 1 ] && p [ 2 ] == q [ 2 ] && p [ 3 ] == q [ 3 ] && p [ 4 ] == q [ 4 ] && p [ 5 ] == q [ 5 ] && p [ 6 ] == q [ 6 ] && p [ 7 ] == q [ 7 ] && p [ 8 ] == q [ 8 ] && p [ 9 ] == q [ 9 ] && p [ 10 ] == q [ 10 ] && p [ 11 ] == q [ 11 ] && p [ 12 ] == q [ 12 ] && p [ 13 ] == q [ 13 ] && p [ 14 ] == q [ 14 ] && p [ 15 ] == q [ 15 ] && p [ 16 ] == q [ 16 ] && p [ 17 ] == q [ 17 ] && p [ 18 ] == q [ 18 ] && p [ 19 ] == q [ 19 ] && p [ 20 ] == q [ 20 ] && p [ 21 ] == q [ 21 ] && p [ 22 ] == q [ 22 ] && p [ 23 ] == q [ 23 ] && p [ 24 ] == q [ 24 ] && p [ 25 ] == q [ 25 ] && p [ 26 ] == q [ 26 ] && p [ 27 ] == q [ 27 ] && p [ 28 ] == q [ 28 ] && p [ 29 ] == q [ 29 ] && p [ 30 ] == q [ 30 ] && p [ 31 ] == q [ 31 ] )
# Skipping MacroDefinition: GAGE_QUERY_NONZERO ( q ) ( q [ 0 ] | q [ 1 ] | q [ 2 ] | q [ 3 ] | q [ 4 ] | q [ 5 ] | q [ 6 ] | q [ 7 ] | q [ 8 ] | q [ 9 ] | q [ 10 ] | q [ 11 ] | q [ 12 ] | q [ 13 ] | q [ 14 ] | q [ 15 ] | q [ 16 ] | q [ 17 ] | q [ 18 ] | q [ 19 ] | q [ 20 ] | q [ 21 ] | q [ 22 ] | q [ 23 ] | q [ 24 ] | q [ 25 ] | q [ 26 ] | q [ 27 ] | q [ 28 ] | q [ 29 ] | q [ 30 ] | q [ 31 ] )
# Skipping MacroDefinition: GAGE_QUERY_ITEM_TEST ( q , i ) ( q [ i / 8 ] & ( 1 << ( i % 8 ) ) )
# Skipping MacroDefinition: GAGE_QUERY_ITEM_ON ( q , i ) ( q [ i / 8 ] |= ( 1 << ( i % 8 ) ) )
# Skipping MacroDefinition: GAGE_QUERY_ITEM_OFF ( q , i ) ( q [ i / 8 ] &= ~ ( 1 << ( i % 8 ) ) )

const GAGE_PERVOLUME_ARR_INCR = 32
const GAGE_OPTIMSIG_SIGMA_MAX = 11
const GAGE_OPTIMSIG_SAMPLES_MAXNUM = 11

# Skipping MacroDefinition: gageTauOfTee ( TEE ) airTauOfTime ( TEE )
# Skipping MacroDefinition: gageTeeOfTau ( TAU ) airTimeOfTau ( TAU )
# Skipping MacroDefinition: gageSigOfTau ( TAU ) airSigmaOfTau ( TAU )
# Skipping MacroDefinition: gageTauOfSig ( SIG ) airTauOfSigma ( SIG )

struct gageItemEntry
    enumVal::Cint
    answerLength::UInt32
    needDeriv::Cint
    prereq::NTuple{8, Cint}
    parentItem::Cint
    parentIndex::Cint
    needData::Cint
end

struct gageKind_t
    dynamicAlloc::Cint
    name::NTuple{129, UInt8}
    enm::Ptr{airEnum}
    baseDim::UInt32
    valLen::UInt32
    itemMax::Cint
    table::Ptr{gageItemEntry}
    iv3Print::Ptr{Cvoid}
    filter::Ptr{Cvoid}
    answer::Ptr{Cvoid}
    pvlDataNew::Ptr{Cvoid}
    pvlDataCopy::Ptr{Cvoid}
    pvlDataNix::Ptr{Cvoid}
    pvlDataUpdate::Ptr{Cvoid}
    data::Ptr{Cvoid}
end

const gageQuery = NTuple{32, Cuchar}

struct gagePerVolume_t
    verbose::Cint
    kind::Ptr{gageKind_t}
    query::gageQuery
    needD::NTuple{3, Cint}
    nin::Ptr{Nrrd}
    flag::NTuple{4, Cint}
    iv3::Ptr{Cdouble}
    iv2::Ptr{Cdouble}
    iv1::Ptr{Cdouble}
    lup::Ptr{Cvoid}
    answer::Ptr{Cdouble}
    directAnswer::Ptr{Ptr{Cdouble}}
    data::Ptr{Cvoid}
end

struct gageShape_t
    defaultCenter::Cint
    orientationFromSpacing::Cint
    center::Cint
    fromOrientation::Cint
    size::NTuple{3, UInt32}
    spacing::NTuple{3, Cdouble}
    ItoW::NTuple{16, Cdouble}
    WtoI::NTuple{16, Cdouble}
    ItoWSubInvTransp::NTuple{9, Cdouble}
    ItoWSubInv::NTuple{9, Cdouble}
end

const gageShape = gageShape_t

struct gageParm_t
    renormalize::Cint
    checkIntegrals::Cint
    k3pack::Cint
    gradMagCurvMin::Cdouble
    kernelIntegralNearZero::Cdouble
    stackNormalizeDerivBias::Cdouble
    curvNormalSide::Cint
    defaultCenter::Cint
    stackUse::Cint
    stackNormalizeRecon::Cint
    stackNormalizeDeriv::Cint
    orientationFromSpacing::Cint
    generateErrStr::Cint
    twoDimZeroZ::Cint
end

const gageParm = gageParm_t

struct gagePoint_t
    frac::NTuple{4, Cdouble}
    idx::NTuple{4, UInt32}
    stackFwNonZeroNum::UInt32
end

const gagePoint = gagePoint_t

struct NrrdKernel
    name::NTuple{129, UInt8}
    numParm::UInt32
    support::Ptr{Cvoid}
    integral::Ptr{Cvoid}
    eval1_f::Ptr{Cvoid}
    evalN_f::Ptr{Cvoid}
    eval1_d::Ptr{Cvoid}
    evalN_d::Ptr{Cvoid}
end

struct NrrdKernelSpec
    kernel::Ptr{NrrdKernel}
    parm::NTuple{8, Cdouble}
end

struct gageContext_t
    verbose::Cint
    parm::gageParm
    ksp::NTuple{8, Ptr{NrrdKernelSpec}}
    pvl::Ptr{Ptr{gagePerVolume_t}}
    pvlNum::UInt32
    pvlArr::Ptr{airArray}
    shape::Ptr{gageShape}
    stackPos::Ptr{Cdouble}
    stackFsl::Ptr{Cdouble}
    stackFw::Ptr{Cdouble}
    flag::NTuple{7, Cint}
    needD::NTuple{3, Cint}
    needK::NTuple{8, Cint}
    radius::UInt32
    fsl::Ptr{Cdouble}
    fw::Ptr{Cdouble}
    off::Ptr{UInt32}
    point::gagePoint
    errStr::NTuple{513, UInt8}
    errNum::Cint
    edgeFrac::Cdouble
end

const gageContext = gageContext_t
const gagePerVolume = gagePerVolume_t
const gageKind = gageKind_t

struct gageItemSpec
    kind::Ptr{gageKind}
    item::Cint
end

struct gageItemPack
    kind::Ptr{gageKind}
    item::NTuple{12, Cint}
end

struct NrrdBoundarySpec
    boundary::Cint
    padValue::Cdouble
end

struct gageStackBlurParm
    num::UInt32
    sigmaRange::NTuple{2, Cdouble}
    sigmaSampling::Cint
    sigma::Ptr{Cdouble}
    kspec::Ptr{NrrdKernelSpec}
    renormalize::Cint
    bspec::Ptr{NrrdBoundarySpec}
    oneDim::Cint
    needSpatialBlur::Cint
    verbose::Cint
    dgGoodSigmaMax::Cdouble
end

struct gageOptimSigContext
    dim::UInt32
    sampleNumMax::UInt32
    trueImgNum::UInt32
    sigmaRange::NTuple{2, Cdouble}
    cutoff::Cdouble
    kssSpec::Ptr{NrrdKernelSpec}
    sampleNum::UInt32
    maxIter::UInt32
    imgMeasr::Cint
    allMeasr::Cint
    convEps::Cdouble
    sx::UInt32
    sy::UInt32
    sz::UInt32
    nerr::Ptr{Nrrd}
    ninterp::Ptr{Nrrd}
    ndiff::Ptr{Nrrd}
    rhoRange::NTuple{2, Cdouble}
    kloc::Ptr{Cdouble}
    kern::Ptr{Cdouble}
    ktmp1::Ptr{Cdouble}
    ktmp2::Ptr{Cdouble}
    kone::NTuple{1, Cdouble}
    gctx::Ptr{gageContext}
    pvlBase::Ptr{gagePerVolume}
    pvlSS::Ptr{Ptr{gagePerVolume}}
    nsampleImg::Ptr{Ptr{Nrrd}}
    sampleSigma::Ptr{Cdouble}
    sampleRho::Ptr{Cdouble}
    sampleTmp::Ptr{Cdouble}
    sampleErrMax::Ptr{Cdouble}
    step::Ptr{Cdouble}
    finalErr::Cdouble
end

const gageScl3PFilter_t = Cvoid

struct hestCB
    size::Csize_t
    type::Cstring
    parse::Ptr{Cvoid}
    destroy::Ptr{Cvoid}
end

struct hestOpt
    flag::Cstring
    name::Cstring
    type::Cint
    min::UInt32
    max::Cint
    valueP::Ptr{Cvoid}
    dflt::Cstring
    info::Cstring
    sawP::Ptr{UInt32}
    enm::Ptr{airEnum}
    CB::Ptr{hestCB}
    kind::Cint
    alloc::Cint
    source::Cint
end

struct hestParm
    verbosity::Cint
    respFileEnable::Cint
    elideSingleEnumType::Cint
    elideSingleOtherType::Cint
    elideSingleOtherDefault::Cint
    elideSingleNonExistFloatDefault::Cint
    elideMultipleNonExistFloatDefault::Cint
    elideSingleEmptyStringDefault::Cint
    elideMultipleEmptyStringDefault::Cint
    noArgsIsNoProblem::Cint
    greedySingleString::Cint
    cleverPluralizeOtherY::Cint
    columns::UInt32
    respFileFlag::UInt8
    respFileComment::UInt8
    varParamStopFlag::UInt8
    multiFlagSep::UInt8
end

const HOOVER_THREAD_MAX = 512
const HOOVER_ERR_MAX = 10
const hooverRenderBegin_t = Cvoid
const hooverThreadBegin_t = Cvoid
const hooverRayBegin_t = Cvoid
const hooverSample_t = Cvoid
const hooverRayEnd_t = Cvoid
const hooverThreadEnd_t = Cvoid
const hooverRenderEnd_t = Cvoid

struct hooverContext
    cam::Ptr{limnCamera}
    volSize::NTuple{3, Cint}
    volSpacing::NTuple{3, Cdouble}
    volCentering::Cint
    shape::Ptr{gageShape}
    imgSize::NTuple{2, Cint}
    imgCentering::Cint
    user::Ptr{Cvoid}
    numThreads::UInt32
    workIdx::Cint
    workMutex::Ptr{airThreadMutex}
    renderBegin::Ptr{hooverRenderBegin_t}
    threadBegin::Ptr{hooverThreadBegin_t}
    rayBegin::Ptr{hooverRayBegin_t}
    sample::Ptr{hooverSample_t}
    rayEnd::Ptr{hooverRayEnd_t}
    threadEnd::Ptr{hooverThreadEnd_t}
    renderEnd::Ptr{hooverRenderEnd_t}
end

const LIMN_LIGHT_NUM = 8
const LIMN_SPLINE_Q_AVG_EPS = 1.0e-5
const LIMN_EDGE_TYPE_MAX = 7
const LIMN_SPACE_MAX = 4
const LIMN_PRIMITIVE_MAX = 7
const LIMN_POLY_DATA_INFO_MAX = 4
const LIMN_QN_MAX = 16
const LIMN_SPLINE_TYPE_MAX = 5
const LIMN_SPLINE_INFO_MAX = 6
const LIMN_CAMERA_PATH_TRACK_MAX = 3

# Skipping MacroDefinition: LIMN_DECLARE ( C ) LIMN_EXPORT unrrduCmd limnpu_ ## C ## Cmd ;
# Skipping MacroDefinition: LIMN_LIST ( C ) & limnpu_ ## C ## Cmd ,
# Skipping MacroDefinition: LIMN_MAP ( F ) F ( about ) F ( ccfind ) F ( psel ) F ( rast ) F ( verts ) F ( meas ) F ( sort )

struct limnLight
    amb::NTuple{4, Cfloat}
    _dir::NTuple{8, NTuple{4, Cfloat}}
    dir::NTuple{8, NTuple{4, Cfloat}}
    col::NTuple{8, NTuple{4, Cfloat}}
    on::NTuple{8, Cint}
    vsp::NTuple{8, Cint}
end

struct limnOptsPS
    lineWidth::NTuple{8, Cfloat}
    creaseAngle::Cfloat
    bg::NTuple{3, Cfloat}
    edgeColor::NTuple{3, Cfloat}
    showpage::Cint
    wireFrame::Cint
    noBackground::Cint
end

struct limnWindow
    ps::limnOptsPS
    device::Cint
    scale::Cfloat
    bbox::NTuple{4, Cfloat}
    yFlip::Cint
    file::Ptr{Cvoid}
end

struct limnLook
    rgba::NTuple{4, Cfloat}
    kads::NTuple{3, Cfloat}
    spow::Cfloat
end

struct limnVertex
    world::NTuple{4, Cfloat}
    rgba::NTuple{4, Cfloat}
    coord::NTuple{4, Cfloat}
    worldNormal::NTuple{3, Cfloat}
end

struct limnEdge_t
    vertIdx::NTuple{2, UInt32}
    lookIdx::UInt32
    partIdx::UInt32
    type::Cint
    faceIdx::NTuple{2, Cint}
    once::Cint
end

const limnEdge = limnEdge_t

struct limnFace_t
    worldNormal::NTuple{3, Cfloat}
    screenNormal::NTuple{3, Cfloat}
    vertIdx::Ptr{UInt32}
    edgeIdx::Ptr{UInt32}
    sideNum::UInt32
    lookIdx::UInt32
    partIdx::UInt32
    visible::Cint
    depth::Cfloat
end

const limnFace = limnFace_t

struct limnPart_t
    vertIdx::Ptr{UInt32}
    vertIdxNum::UInt32
    vertIdxArr::Ptr{airArray}
    edgeIdx::Ptr{UInt32}
    edgeIdxNum::UInt32
    edgeIdxArr::Ptr{airArray}
    faceIdx::Ptr{UInt32}
    faceIdxNum::UInt32
    faceIdxArr::Ptr{airArray}
    lookIdx::Cint
    depth::Cfloat
end

const limnPart = limnPart_t

struct limnObject
    vert::Ptr{limnVertex}
    vertNum::UInt32
    vertArr::Ptr{airArray}
    edge::Ptr{limnEdge}
    edgeNum::UInt32
    edgeArr::Ptr{airArray}
    face::Ptr{limnFace}
    faceNum::UInt32
    faceArr::Ptr{airArray}
    faceSort::Ptr{Ptr{limnFace}}
    part::Ptr{Ptr{limnPart}}
    partNum::UInt32
    partArr::Ptr{airArray}
    partPool::Ptr{Ptr{limnPart}}
    partPoolNum::UInt32
    partPoolArr::Ptr{airArray}
    look::Ptr{limnLook}
    lookNum::UInt32
    lookArr::Ptr{airArray}
    vertSpace::Cint
    setVertexRGBAFromLook::Cint
    doEdges::Cint
    incr::UInt32
end

struct limnPolyData
    xyzw::Ptr{Cfloat}
    xyzwNum::UInt32
    rgba::Ptr{Cuchar}
    rgbaNum::UInt32
    norm::Ptr{Cfloat}
    normNum::UInt32
    tex2::Ptr{Cfloat}
    tex2Num::UInt32
    tang::Ptr{Cfloat}
    tangNum::UInt32
    indxNum::UInt32
    indx::Ptr{UInt32}
    primNum::UInt32
    type::Ptr{Cuchar}
    icnt::Ptr{UInt32}
end

struct limnSpline_t
    type::Cint
    info::Cint
    loop::Cint
    B::Cdouble
    C::Cdouble
    ncpt::Ptr{Nrrd}
    time::Ptr{Cdouble}
end

const limnSpline = limnSpline_t

struct limnSplineTypeSpec_t
    type::Cint
    B::Cdouble
    C::Cdouble
end

const limnSplineTypeSpec = limnSplineTypeSpec_t
const limnEnvMapCB = Ptr{Cvoid}
const MITE_T_DOUBLE = 1
const MITE_RANGE_NUM = 9
const MITE_STAGE_OP_MAX = 4
const MITE_VAL_ITEM_MAX = 19
const mite_t = Cdouble

struct miteUser
    nsin::Ptr{Nrrd}
    nvin::Ptr{Nrrd}
    ntin::Ptr{Nrrd}
    ntxf::Ptr{Ptr{Nrrd}}
    nout::Ptr{Nrrd}
    debug::Ptr{Cdouble}
    debugArr::Ptr{airArray}
    ndebug::Ptr{Nrrd}
    debugIdx::Cint
    ntxfNum::Cint
    shadeStr::NTuple{257, UInt8}
    normalStr::NTuple{257, UInt8}
    rangeInit::NTuple{9, mite_t}
    refStep::Cdouble
    rayStep::Cdouble
    opacMatters::Cdouble
    opacNear1::Cdouble
    hctx::Ptr{hooverContext}
    fakeFrom::NTuple{3, Cdouble}
    vectorD::NTuple{3, Cdouble}
    ksp::NTuple{8, Ptr{NrrdKernelSpec}}
    shape::Ptr{gageShape}
    gctx0::Ptr{gageContext}
    lit::Ptr{limnLight}
    normalSide::Cint
    verbUi::Cint
    verbVi::Cint
    umop::Ptr{airArray}
    rendTime::Cdouble
    sampRate::Cdouble
end

struct miteStage
    val::Ptr{Cdouble}
    size::Cint
    op::Cint
    qn::Ptr{Cvoid}
    min::Cdouble
    max::Cdouble
    data::Ptr{mite_t}
    rangeIdx::NTuple{9, Cint}
    rangeNum::Cint
    label::Cstring
end

struct miteThread_t
    gctx::Ptr{gageContext}
    ansScl::Ptr{Cdouble}
    nPerp::Ptr{Cdouble}
    geomTens::Ptr{Cdouble}
    ansVec::Ptr{Cdouble}
    ansTen::Ptr{Cdouble}
    ansMiteVal::Ptr{Cdouble}
    directAnsMiteVal::Ptr{Ptr{Cdouble}}
    _normal::Ptr{Cdouble}
    shadeVec0::Ptr{Cdouble}
    shadeVec1::Ptr{Cdouble}
    shadeScl0::Ptr{Cdouble}
    shadeScl1::Ptr{Cdouble}
    verbose::Cint
    skip::Cint
    thrid::Cint
    ui::Cint
    vi::Cint
    raySample::Cint
    samples::Cint
    stage::Ptr{miteStage}
    stageNum::Cint
    range::NTuple{9, mite_t}
    rayStep::mite_t
    V::NTuple{3, mite_t}
    RR::mite_t
    GG::mite_t
    BB::mite_t
    TT::mite_t
    ZZ::mite_t
    rmop::Ptr{airArray}
end

struct miteShadeSpec
    method::Cint
    vec0::Ptr{gageItemSpec}
    vec1::Ptr{gageItemSpec}
    scl0::Ptr{gageItemSpec}
    scl1::Ptr{gageItemSpec}
end

struct miteRender
    ntxf::Ptr{Ptr{Nrrd}}
    ntxfNum::Cint
    sclPvlIdx::Cint
    vecPvlIdx::Cint
    tenPvlIdx::Cint
    shadeSpec::Ptr{miteShadeSpec}
    normalSpec::Ptr{gageItemSpec}
    time0::Cdouble
    queryMite::gageQuery
    queryMiteNonzero::Cint
    tt::NTuple{512, Ptr{miteThread_t}}
    rmop::Ptr{airArray}
end

const miteThread = miteThread_t

# Skipping MacroDefinition: MOSS_NCOL ( img ) ( 3 == ( img ) -> dim ? ( img ) -> axis [ 0 ] . size : 1 )
# Skipping MacroDefinition: MOSS_AXIS0 ( img ) ( 3 == ( img ) -> dim ? 1 : 0 )
# Skipping MacroDefinition: MOSS_SX ( img ) ( 3 == ( img ) -> dim ? ( img ) -> axis [ 1 ] . size : ( img ) -> axis [ 0 ] . size )
# Skipping MacroDefinition: MOSS_SY ( img ) ( 3 == ( img ) -> dim ? ( img ) -> axis [ 2 ] . size : ( img ) -> axis [ 1 ] . size )

const MOSS_FLAG_NUM = 2

struct mossSampler
    image::Ptr{Nrrd}
    kernel::Ptr{NrrdKernel}
    kparm::NTuple{8, Cdouble}
    ivc::Ptr{Cfloat}
    xFslw::Ptr{Cdouble}
    yFslw::Ptr{Cdouble}
    fdiam::Cint
    ncol::Cint
    xIdx::Ptr{Cint}
    yIdx::Ptr{Cint}
    bg::Ptr{Cfloat}
    boundary::Cint
    flag::NTuple{2, Cint}
end

const NRRD_RESAMPLE_FLOAT = 0

struct NrrdFormat
    name::NTuple{129, UInt8}
    isImage::Cint
    readable::Cint
    usesDIO::Cint
    available::Ptr{Cvoid}
    nameLooksLike::Ptr{Cvoid}
    fitsInto::Ptr{Cvoid}
    contentStartsLike::Ptr{Cvoid}
    read::Ptr{Cvoid}
    write::Ptr{Cvoid}
end

struct NrrdEncoding_t
    name::NTuple{129, UInt8}
    suffix::NTuple{129, UInt8}
    endianMatters::Cint
    isCompression::Cint
    available::Ptr{Cvoid}
    read::Ptr{Cvoid}
    write::Ptr{Cvoid}
end

const NrrdEncoding = NrrdEncoding_t

struct NrrdIoState_t
    path::Cstring
    base::Cstring
    line::Cstring
    dataFNFormat::Cstring
    dataFN::Ptr{Cstring}
    headerStringWrite::Cstring
    headerStringRead::Cstring
    dataFNArr::Ptr{airArray}
    headerFile::Ptr{Cvoid}
    dataFile::Ptr{Cvoid}
    dataFileDim::UInt32
    lineLen::UInt32
    charsPerLine::UInt32
    valsPerLine::UInt32
    lineSkip::UInt32
    headerStrlen::UInt32
    headerStrpos::UInt32
    byteSkip::Clong
    dataFSkip::Ptr{Clong}
    dataFSkipArr::Ptr{airArray}
    dataFNMin::Cint
    dataFNMax::Cint
    dataFNStep::Cint
    dataFNIndex::UInt32
    pos::Cint
    endian::Cint
    seen::NTuple{33, Cint}
    detachedHeader::Cint
    bareText::Cint
    skipData::Cint
    skipFormatURL::Cint
    keepNrrdDataFileOpen::Cint
    zlibLevel::Cint
    zlibStrategy::Cint
    bzip2BlockSize::Cint
    learningHeaderStrlen::Cint
    PNGsRGBIntentKnown::Cint
    PNGsRGBIntent::Cint
    oldData::Ptr{Cvoid}
    oldDataSize::Csize_t
    format::Ptr{NrrdFormat}
    encoding::Ptr{NrrdEncoding}
end

const NrrdIoState = NrrdIoState_t

struct NrrdRange
    min::Cdouble
    max::Cdouble
    hasNonExist::Cint
end

struct NrrdResampleInfo
    kernel::NTuple{16, Ptr{NrrdKernel}}
    samples::NTuple{16, Csize_t}
    parm::NTuple{16, NTuple{8, Cdouble}}
    min::NTuple{16, Cdouble}
    max::NTuple{16, Cdouble}
    boundary::Cint
    type::Cint
    renormalize::Cint
    round::Cint
    clamp::Cint
    cheap::Cint
    padValue::Cdouble
end

struct NrrdResampleAxis
    kernel::Ptr{NrrdKernel}
    kparm::NTuple{8, Cdouble}
    min::Cdouble
    max::Cdouble
    samples::Csize_t
    overrideCenter::Cint
    center::Cint
    sizeIn::Csize_t
    sizePerm::NTuple{16, Csize_t}
    axIdx::UInt32
    passIdx::UInt32
    axisPerm::NTuple{16, UInt32}
    ratio::Cdouble
    nrsmp::Ptr{Nrrd}
    nline::Ptr{Nrrd}
    nindex::Ptr{Nrrd}
    nweight::Ptr{Nrrd}
end

struct NrrdResampleContext
    nin::Ptr{Nrrd}
    verbose::Cint
    boundary::Cint
    typeOut::Cint
    renormalize::Cint
    roundlast::Cint
    clamp::Cint
    defaultCenter::Cint
    nonExistent::Cint
    padValue::Cdouble
    dim::UInt32
    passNum::UInt32
    topRax::UInt32
    botRax::UInt32
    permute::NTuple{17, UInt32}
    passAxis::NTuple{16, UInt32}
    axis::NTuple{17, NrrdResampleAxis}
    flag::Ptr{Cint}
    time::Cdouble
end

struct NrrdIter
    nrrd::Ptr{Nrrd}
    ownNrrd::Ptr{Nrrd}
    val::Cdouble
    size::Csize_t
    data::Cstring
    left::Csize_t
    load::Ptr{Cvoid}
end

struct NrrdDeringContext
    verbose::Cint
    linearInterp::Cint
    verticalSeam::Cint
    nin::Ptr{Nrrd}
    center::NTuple{2, Cdouble}
    clampPerc::NTuple{2, Cdouble}
    radiusScale::Cdouble
    thetaNum::UInt32
    clampHistoBins::UInt32
    rkernel::Ptr{NrrdKernel}
    rkparm::NTuple{8, Cdouble}
    tkernel::Ptr{NrrdKernel}
    tkparm::NTuple{8, Cdouble}
    cdataIn::Cstring
    cdataOut::Cstring
    sliceSize::Csize_t
    clampDo::Cint
    clamp::NTuple{2, Cdouble}
    ringMagnitude::Cdouble
end

const nrrdResample_t = Cdouble
const NRRD_DIM_MAX = 16
const NRRD_SPACE_DIM_MAX = 8
const NRRD_EXT_NRRD = ".nrrd"
const NRRD_EXT_NHDR = ".nhdr"
const NRRD_EXT_PGM = ".pgm"
const NRRD_EXT_PPM = ".ppm"
const NRRD_EXT_PNG = ".png"
const NRRD_EXT_VTK = ".vtk"
const NRRD_EXT_TEXT = ".txt"
const NRRD_EXT_EPS = ".eps"
const NRRD_KERNEL_PARMS_NUM = 8

# Skipping MacroDefinition: NRRD_LLONG_MAX AIR_LLONG ( 9223372036854775807 )
# Skipping MacroDefinition: NRRD_LLONG_MIN ( - NRRD_LLONG_MAX - AIR_LLONG ( 1 ) )
# Skipping MacroDefinition: NRRD_ULLONG_MAX AIR_ULLONG ( 18446744073709551615 )

const NRRD_MINMAX_PERC_SUFF = "%"
const NRRD_COMMENT_CHAR = '#'
const NRRD_FILENAME_INCR = 32
const NRRD_COMMENT_INCR = 16
const NRRD_KEYVALUE_INCR = 32
const NRRD_LIST_FLAG = "LIST"
const NRRD_SKIPLIST_FLAG = "SKIPLIST"
const NRRD_PNM_COMMENT = "# NRRD>"
const NRRD_PNG_FIELD_KEY = "NRRD"
const NRRD_PNG_COMMENT_KEY = "NRRD#"
const NRRD_UNKNOWN = "???"
const NRRD_NONE = "none"
const NRRD_FORMAT_TYPE_MAX = 6
const NRRD_BOUNDARY_MAX = 5
const NRRD_TYPE_MAX = 11
const NRRD_TYPE_SIZE_MAX = 8
const NRRD_ENCODING_TYPE_MAX = 6
const NRRD_ZLIB_STRATEGY_MAX = 3
const NRRD_CENTER_MAX = 2
const NRRD_KIND_MAX = 31
const NRRD_AXIS_INFO_SIZE_BIT = 1 << 1
const NRRD_AXIS_INFO_SPACING_BIT = 1 << 2
const NRRD_AXIS_INFO_THICKNESS_BIT = 1 << 3
const NRRD_AXIS_INFO_MIN_BIT = 1 << 4
const NRRD_AXIS_INFO_MAX_BIT = 1 << 5
const NRRD_AXIS_INFO_SPACEDIRECTION_BIT = 1 << 6
const NRRD_AXIS_INFO_CENTER_BIT = 1 << 7
const NRRD_AXIS_INFO_KIND_BIT = 1 << 8
const NRRD_AXIS_INFO_LABEL_BIT = 1 << 9
const NRRD_AXIS_INFO_UNITS_BIT = 1 << 10
const NRRD_AXIS_INFO_MAX = 10

# Skipping MacroDefinition: NRRD_AXIS_INFO_ALL ( ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 1 << 8 ) | ( 1 << 9 ) | ( 1 << 10 ) )

const NRRD_AXIS_INFO_NONE = 0
const NRRD_BASIC_INFO_DATA_BIT = 1 << 1
const NRRD_BASIC_INFO_TYPE_BIT = 1 << 2
const NRRD_BASIC_INFO_BLOCKSIZE_BIT = 1 << 3
const NRRD_BASIC_INFO_DIMENSION_BIT = 1 << 4
const NRRD_BASIC_INFO_CONTENT_BIT = 1 << 5
const NRRD_BASIC_INFO_SAMPLEUNITS_BIT = 1 << 6
const NRRD_BASIC_INFO_SPACE_BIT = 1 << 7
const NRRD_BASIC_INFO_SPACEDIMENSION_BIT = 1 << 8
const NRRD_BASIC_INFO_SPACEUNITS_BIT = 1 << 9
const NRRD_BASIC_INFO_SPACEORIGIN_BIT = 1 << 10
const NRRD_BASIC_INFO_MEASUREMENTFRAME_BIT = 1 << 11
const NRRD_BASIC_INFO_OLDMIN_BIT = 1 << 12
const NRRD_BASIC_INFO_OLDMAX_BIT = 1 << 13
const NRRD_BASIC_INFO_COMMENTS_BIT = 1 << 14
const NRRD_BASIC_INFO_KEYVALUEPAIRS_BIT = 1 << 15
const NRRD_BASIC_INFO_MAX = 15

# Skipping MacroDefinition: NRRD_BASIC_INFO_ALL ( ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 1 << 8 ) | ( 1 << 9 ) | ( 1 << 10 ) | ( 1 << 11 ) | ( 1 << 12 ) | ( 1 << 13 ) | ( 1 << 14 ) | ( 1 << 15 ) )

const NRRD_BASIC_INFO_SPACE = (((NRRD_BASIC_INFO_SPACE_BIT | NRRD_BASIC_INFO_SPACEDIMENSION_BIT) | NRRD_BASIC_INFO_SPACEUNITS_BIT) | NRRD_BASIC_INFO_SPACEORIGIN_BIT) | NRRD_BASIC_INFO_MEASUREMENTFRAME_BIT
const NRRD_BASIC_INFO_NONE = 0
const NRRD_FIELD_MAX = 32
const NRRD_HAS_NON_EXIST_MAX = 3
const NRRD_SPACE_MAX = 14
const NRRD_SPACING_STATUS_MAX = 4
const NRRD_FORMAT_PNG_SRGB_INTENT_NUM = 5
const NRRD_ORIENTATION_HAVE_MAX = 6
const NRRD_MEASURE_MAX = 30

# Skipping MacroDefinition: NRRD_MEASURE_DESC "Possibilities include:\n " "\b\bo \"min\", \"max\", \"mean\", \"median\", \"mode\", \"variance\", " "\"skew\", \"sum\", \"product\", : (self-explanatory)\n " "\b\bo \"intc\", \"slope\", \"error\": " "intercept, slope, and error from line fitting\n " "\b\bo \"stdv\": standard deviation\n " "\b\bo \"cov\": coefficient of variation\n " "\b\bo \"product\", \"sum\": product or sum of all values\n " "\b\bo \"L1\", \"L2\", \"L4\", \"NL2\", \"RMS\", \"Linf\": vector norms\n " "\b\bo \"histo-min\", \"histo-max\", \"histo-mean\"," "\"histo-median\", \"histo-mode\", \"histo-product\", \"histo-l2\", " "\"histo-sum\", \"histo-variance\", \"histo-sd\": same measures, " "but for situations " "where we're given not the original values, but a histogram of them."

const NRRD_BLIND_8BIT_RANGE_MAX = 3
const NRRD_UNARY_OP_MAX = 32
const NRRD_BINARY_OP_MAX = 26
const NRRD_TERNARY_OP_MAX = 16
const NRRD_FFTW_PLAN_RIGOR_MAX = 4
const NRRD_RESAMPLE_NON_EXISTENT_MAX = 3
const NRRD_META_DATA_CANONICAL_VERSION_MAX = 1

# Skipping MacroDefinition: NRRD_CELL_POS ( min , max , size , idx ) AIR_AFFINE ( 0 , ( idx ) + 0.5 , ( size ) , ( min ) , ( max ) )
# Skipping MacroDefinition: NRRD_NODE_POS ( min , max , size , idx ) AIR_AFFINE ( 0 , ( idx ) , ( size ) - 1 , ( min ) , ( max ) )
# Skipping MacroDefinition: NRRD_POS ( center , min , max , size , idx ) ( nrrdCenterCell == ( center ) ? NRRD_CELL_POS ( ( min ) , ( max ) , ( size ) , ( idx ) ) : NRRD_NODE_POS ( ( min ) , ( max ) , ( size ) , ( idx ) ) )
# Skipping MacroDefinition: NRRD_CELL_IDX ( min , max , size , pos ) ( AIR_AFFINE ( ( min ) , ( pos ) , ( max ) , 0 , ( size ) ) - 0.5 )
# Skipping MacroDefinition: NRRD_NODE_IDX ( min , max , size , pos ) AIR_AFFINE ( ( min ) , ( pos ) , ( max ) , 0 , ( size ) - 1 )
# Skipping MacroDefinition: NRRD_IDX ( center , min , max , size , pos ) ( nrrdCenterCell == ( center ) ? NRRD_CELL_IDX ( ( min ) , ( max ) , ( size ) , ( pos ) ) : NRRD_NODE_IDX ( ( min ) , ( max ) , ( size ) , ( pos ) ) )
# Skipping MacroDefinition: NRRD_SPACING ( center , min , max , size ) ( nrrdCenterCell == center ? ( ( max ) - ( min ) ) / AIR_CAST ( double , size ) : ( ( max ) - ( min ) ) / ( AIR_CAST ( double , ( size ) - 1 ) ) )
# Skipping MacroDefinition: NRRD_COORD_UPDATE ( coord , size , dim ) { unsigned int ddd ; for ( ddd = 0 ; ddd + 1 < ( dim ) && ( coord ) [ ddd ] >= ( size ) [ ddd ] ; ddd ++ ) { ( coord ) [ ddd ] = 0 ; ( coord ) [ ddd + 1 ] ++ ; } if ( dim ) { ( coord ) [ ( dim ) - 1 ] = AIR_MIN ( ( coord ) [ ( dim ) - 1 ] , ( size ) [ ( dim ) - 1 ] - 1 ) ; } }
# Skipping MacroDefinition: NRRD_COORD_INCR ( coord , size , dim , idx ) if ( ( idx ) < ( dim ) ) { ( coord ) [ ( idx ) ] ++ ; NRRD_COORD_UPDATE ( ( coord ) + ( idx ) , ( size ) + ( idx ) , ( dim ) - ( idx ) ) ; }
# Skipping MacroDefinition: NRRD_INDEX_GEN ( I , coord , size , dim ) { unsigned int ddd = ( dim ) ; ( I ) = 0 ; while ( ddd ) { ddd -- ; ( I ) = ( coord ) [ ddd ] + ( size ) [ ddd ] * ( I ) ; } }
# Skipping MacroDefinition: NRRD_COORD_GEN ( coord , size , dim , I ) { unsigned int ddd ; size_t myI = ( I ) ; for ( ddd = 0 ; ddd < ( dim ) ; ddd ++ ) { ( coord ) [ ddd ] = myI % ( size ) [ ddd ] ; myI /= ( size ) [ ddd ] ; } }

const SEEK_TYPE_MAX = 11

struct seekContext
    verbose::Cint
    ninscl::Ptr{Nrrd}
    gctx::Ptr{gageContext}
    pvl::Ptr{gagePerVolume}
    type::Cint
    sclvItem::Cint
    gradItem::Cint
    normItem::Cint
    evalItem::Cint
    evecItem::Cint
    stngItem::Cint
    hessItem::Cint
    lowerInside::Cint
    normalsFind::Cint
    strengthUse::Cint
    strengthSign::Cint
    isovalue::Cdouble
    strength::Cdouble
    evalDiffThresh::Cdouble
    samples::NTuple{3, Csize_t}
    facesPerVoxel::Cdouble
    vertsPerVoxel::Cdouble
    pldArrIncr::UInt32
    flag::Ptr{Cint}
    nin::Ptr{Nrrd}
    baseDim::UInt32
    _shape::Ptr{gageShape}
    shape::Ptr{gageShape}
    nsclDerived::Ptr{Nrrd}
    sclvAns::Ptr{Cdouble}
    gradAns::Ptr{Cdouble}
    normAns::Ptr{Cdouble}
    evalAns::Ptr{Cdouble}
    evecAns::Ptr{Cdouble}
    stngAns::Ptr{Cdouble}
    hessAns::Ptr{Cdouble}
    reverse::Cint
    txfNormal::NTuple{9, Cdouble}
    spanSize::Csize_t
    nspanHist::Ptr{Nrrd}
    range::Ptr{NrrdRange}
    sx::Csize_t
    sy::Csize_t
    sz::Csize_t
    txfIdx::NTuple{16, Cdouble}
    vidx::Ptr{Cint}
    facevidx::Ptr{Cint}
    sclv::Ptr{Cdouble}
    grad::Ptr{Cdouble}
    eval::Ptr{Cdouble}
    evec::Ptr{Cdouble}
    hess::Ptr{Cdouble}
    t::Ptr{Cdouble}
    edgealpha::Ptr{Cdouble}
    edgenorm::Ptr{Cdouble}
    edgeicoord::Ptr{Cdouble}
    facecoord::Ptr{Cdouble}
    facenorm::Ptr{Cdouble}
    faceicoord::Ptr{Cdouble}
    gradcontext::Ptr{Cdouble}
    hesscontext::Ptr{Cdouble}
    tcontext::Ptr{Cdouble}
    stngcontext::Ptr{Cdouble}
    flip::Ptr{UInt8}
    pairs::Ptr{UInt8}
    treated::Ptr{UInt8}
    stng::Ptr{Cdouble}
    nvidx::Ptr{Nrrd}
    nsclv::Ptr{Nrrd}
    ngrad::Ptr{Nrrd}
    neval::Ptr{Nrrd}
    nevec::Ptr{Nrrd}
    nflip::Ptr{Nrrd}
    nstng::Ptr{Nrrd}
    nhess::Ptr{Nrrd}
    nt::Ptr{Nrrd}
    nfacevidx::Ptr{Nrrd}
    nedgealpha::Ptr{Nrrd}
    nedgenorm::Ptr{Nrrd}
    nfacecoord::Ptr{Nrrd}
    nfacenorm::Ptr{Nrrd}
    npairs::Ptr{Nrrd}
    nedgeicoord::Ptr{Nrrd}
    nfaceicoord::Ptr{Nrrd}
    ngradcontext::Ptr{Nrrd}
    nhesscontext::Ptr{Nrrd}
    ntcontext::Ptr{Nrrd}
    nstngcontext::Ptr{Nrrd}
    ntreated::Ptr{Nrrd}
    voxNum::UInt32
    vertNum::UInt32
    faceNum::UInt32
    strengthSeenMax::Cdouble
    time::Cdouble
end

const TEN_ANISO_MAX = 29
const TEN_INTERP_TYPE_MAX = 11
const TEN_GLYPH_TYPE_MAX = 6

# Skipping MacroDefinition: TEN_ANISO_DESC "All the Westin metrics come in two versions.  Currently supported:\n " "\b\bo \"cl1\", \"cl2\": Westin's linear\n " "\b\bo \"cp1\", \"cp2\": Westin's planar\n " "\b\bo \"ca1\", \"ca2\": Westin's linear + planar\n " "\b\bo \"cs1\", \"cs2\": Westin's spherical (1-ca)\n " "\b\bo \"ct1\", \"ct2\": GK's anisotropy type (cp/ca)\n " "\b\bo \"ra\": Basser/Pierpaoli relative anisotropy/sqrt(2)\n " "\b\bo \"fa\": Basser/Pierpaoli fractional anisotropy\n " "\b\bo \"vf\": volume fraction = 1-(Basser/Pierpaoli volume ratio)\n " "\b\bo \"tr\": trace"

const TEN_GAGE_ITEM_MAX = 207
const TEN_DWI_GAGE_ITEM_MAX = 35
const TEN_ESTIMATE_1_METHOD_MAX = 4
const TEN_ESTIMATE_2_METHOD_MAX = 2
const TEN_FIBER_TYPE_MAX = 6
const TEN_DWI_FIBER_TYPE_MAX = 3
const TEN_FIBER_INTG_MAX = 3
const TEN_FIBER_STOP_MAX = 10
const TEN_FIBER_NUM_STEPS_MAX = 10240
const TEN_FIBER_PARM_MAX = 4
const TEN_TRIPLE_TYPE_MAX = 9
const TEN_MODEL_B0_MAX = 65500
const TEN_MODEL_DIFF_MAX = 0.006
const TEN_MODEL_PARM_GRAD_EPS = 5.0e-6
const TEN_MODEL_STR_ZERO = "zero"
const TEN_MODEL_STR_B0 = "b0"
const TEN_MODEL_STR_BALL = "ball"
const TEN_MODEL_STR_1VECTOR2D = "1vector2d"
const TEN_MODEL_STR_1UNIT2D = "1unit2d"
const TEN_MODEL_STR_2UNIT2D = "2unit2d"
const TEN_MODEL_STR_1STICK = "1stick"
const TEN_MODEL_STR_BALL1STICKEMD = "ball1stickemd"
const TEN_MODEL_STR_BALL1STICK = "ball1stick"
const TEN_MODEL_STR_BALL1CYLINDER = "ball1cylinder"
const TEN_MODEL_STR_1CYLINDER = "1cylinder"
const TEN_MODEL_STR_1TENSOR2 = "1tensor2"
const TEN_DWI_GAGE_KIND_NAME = "dwi"

# Skipping MacroDefinition: TEND_DECLARE ( C ) TEN_EXPORT unrrduCmd tend_ ## C ## Cmd ;
# Skipping MacroDefinition: TEND_LIST ( C ) & tend_ ## C ## Cmd ,
# Skipping MacroDefinition: TEND_MAP ( F ) F ( about ) F ( grads ) F ( epireg ) F ( bmat ) F ( estim ) F ( sim ) F ( mfit ) F ( mconv ) F ( msim ) F ( make ) F ( avg ) F ( helix ) F ( sten ) F ( glyph ) F ( ellipse ) F ( anplot ) F ( anvol ) F ( anscale ) F ( anhist ) F ( triple ) F ( tconv ) F ( point ) F ( slice ) F ( norm ) F ( fiber ) F ( eval ) F ( evalpow ) F ( evalclamp ) F ( evaladd ) F ( evalmult ) F ( log ) F ( exp ) F ( evec ) F ( evecrgb ) F ( evq ) F ( unmf ) F ( expand ) F ( shrink ) F ( bfit ) F ( satin )

struct tenGlyphParm
    verbose::Cint
    nmask::Ptr{Nrrd}
    anisoType::Cint
    onlyPositive::Cint
    confThresh::Cfloat
    anisoThresh::Cfloat
    maskThresh::Cfloat
    glyphType::Cint
    facetRes::Cint
    glyphScale::Cfloat
    sqdSharp::Cfloat
    edgeWidth::NTuple{5, Cfloat}
    colEvec::Cint
    colAnisoType::Cint
    colMaxSat::Cfloat
    colIsoGray::Cfloat
    colGamma::Cfloat
    colAnisoModulate::Cfloat
    ADSP::NTuple{4, Cfloat}
    sliceAxis::UInt32
    slicePos::Csize_t
    doSlice::Cint
    sliceAnisoType::Cint
    sliceOffset::Cfloat
    sliceBias::Cfloat
    sliceGamma::Cfloat
end

struct tenEvecRGBParm
    which::UInt32
    aniso::Cint
    confThresh::Cdouble
    anisoGamma::Cdouble
    gamma::Cdouble
    bgGray::Cdouble
    isoGray::Cdouble
    maxSat::Cdouble
    typeOut::Cint
    genAlpha::Cint
end

struct tenFiberContext
    nin::Ptr{Nrrd}
    ksp::Ptr{NrrdKernelSpec}
    useDwi::Cint
    fiberType::Cint
    fiberProbeItem::Cint
    intg::Cint
    anisoStopType::Cint
    anisoSpeedType::Cint
    stop::Cint
    useIndexSpace::Cint
    verbose::Cint
    anisoThresh::Cdouble
    anisoSpeedFunc::NTuple{3, Cdouble}
    maxNumSteps::UInt32
    minNumSteps::UInt32
    stepSize::Cdouble
    maxHalfLen::Cdouble
    minWholeLen::Cdouble
    confThresh::Cdouble
    minRadius::Cdouble
    minFraction::Cdouble
    wPunct::Cdouble
    ten2Which::UInt32
    query::gageQuery
    halfIdx::Cint
    mframeUse::Cint
    mframe::NTuple{9, Cdouble}
    mframeT::NTuple{9, Cdouble}
    wPos::NTuple{3, Cdouble}
    wDir::NTuple{3, Cdouble}
    lastDir::NTuple{3, Cdouble}
    seedEvec::NTuple{3, Cdouble}
    lastDirSet::Cint
    lastTenSet::Cint
    ten2Use::UInt32
    gtx::Ptr{gageContext}
    pvl::Ptr{gagePerVolume}
    gageTen::Ptr{Cdouble}
    gageEval::Ptr{Cdouble}
    gageEvec::Ptr{Cdouble}
    gageAnisoStop::Ptr{Cdouble}
    gageAnisoSpeed::Ptr{Cdouble}
    gageTen2::Ptr{Cdouble}
    ten2AnisoStop::Cdouble
    fiberTen::NTuple{7, Cdouble}
    fiberEval::NTuple{3, Cdouble}
    fiberEvec::NTuple{9, Cdouble}
    fiberAnisoStop::Cdouble
    fiberAnisoSpeed::Cdouble
    radius::Cdouble
    halfLen::NTuple{2, Cdouble}
    numSteps::NTuple{2, UInt32}
    whyStop::NTuple{2, Cint}
    whyNowhere::Cint
end

struct tenFiberSingle
    seedPos::NTuple{3, Cdouble}
    dirIdx::UInt32
    dirNum::UInt32
    nvert::Ptr{Nrrd}
    halfLen::NTuple{2, Cdouble}
    seedIdx::UInt32
    stepNum::NTuple{2, UInt32}
    whyStop::NTuple{2, Cint}
    whyNowhere::Cint
    nval::Ptr{Nrrd}
    measr::NTuple{31, Cdouble}
end

struct tenFiberMulti
    fiber::Ptr{tenFiberSingle}
    fiberNum::UInt32
    fiberArr::Ptr{airArray}
end

struct tenEMBimodalParm
    minProb::Cdouble
    minProb2::Cdouble
    minDelta::Cdouble
    minFraction::Cdouble
    minConfidence::Cdouble
    twoStage::Cdouble
    verbose::Cdouble
    maxIteration::UInt32
    histo::Ptr{Cdouble}
    pp1::Ptr{Cdouble}
    pp2::Ptr{Cdouble}
    vmin::Cdouble
    vmax::Cdouble
    delta::Cdouble
    N::Cint
    stage::Cint
    iteration::UInt32
    mean1::Cdouble
    stdv1::Cdouble
    mean2::Cdouble
    stdv2::Cdouble
    fraction1::Cdouble
    confidence::Cdouble
    threshold::Cdouble
end

struct tenGradientParm
    initStep::Cdouble
    jitter::Cdouble
    minVelocity::Cdouble
    minPotentialChange::Cdouble
    minMean::Cdouble
    minMeanImprovement::Cdouble
    single::Cint
    insertZeroVec::Cint
    verbose::Cint
    snap::UInt32
    report::UInt32
    expo::UInt32
    seed::UInt32
    maxEdgeShrink::UInt32
    minIteration::UInt32
    maxIteration::UInt32
    expo_d::Cdouble
    step::Cdouble
    nudge::Cdouble
    itersUsed::UInt32
    potential::Cdouble
    potentialNorm::Cdouble
    angle::Cdouble
    edge::Cdouble
end

struct tenEstimateContext
    bValue::Cdouble
    valueMin::Cdouble
    sigma::Cdouble
    dwiConfThresh::Cdouble
    dwiConfSoft::Cdouble
    _ngrad::Ptr{Nrrd}
    _nbmat::Ptr{Nrrd}
    skipList::Ptr{UInt32}
    skipListArr::Ptr{airArray}
    all_f::Ptr{Cfloat}
    all_d::Ptr{Cdouble}
    simulate::Cint
    estimate1Method::Cint
    estimateB0::Cint
    recordTime::Cint
    recordErrorDwi::Cint
    recordErrorLogDwi::Cint
    recordLikelihoodDwi::Cint
    verbose::Cint
    negEvalShift::Cint
    progress::Cint
    WLSIterNum::UInt32
    flag::NTuple{128, Cint}
    allNum::UInt32
    dwiNum::UInt32
    nbmat::Ptr{Nrrd}
    nwght::Ptr{Nrrd}
    nemat::Ptr{Nrrd}
    knownB0::Cdouble
    all::Ptr{Cdouble}
    bnorm::Ptr{Cdouble}
    allTmp::Ptr{Cdouble}
    dwiTmp::Ptr{Cdouble}
    dwi::Ptr{Cdouble}
    skipLut::Ptr{Cuchar}
    estimatedB0::Cdouble
    ten::NTuple{7, Cdouble}
    conf::Cdouble
    mdwi::Cdouble
    time::Cdouble
    errorDwi::Cdouble
    errorLogDwi::Cdouble
    likelihoodDwi::Cdouble
end

struct tenDwiGageKindData
    ngrad::Ptr{Nrrd}
    nbmat::Ptr{Nrrd}
    thresh::Cdouble
    soft::Cdouble
    bval::Cdouble
    valueMin::Cdouble
    est1Method::Cint
    est2Method::Cint
    randSeed::UInt32
end

struct tenDwiGagePvlData
    tec1::Ptr{tenEstimateContext}
    tec2::Ptr{tenEstimateContext}
    vbuf::Ptr{Cdouble}
    wght::Ptr{UInt32}
    qvals::Ptr{Cdouble}
    qpoints::Ptr{Cdouble}
    dists::Ptr{Cdouble}
    weights::Ptr{Cdouble}
    nten1EigenGrads::Ptr{Nrrd}
    randState::Ptr{airRandMTState}
    randSeed::UInt32
    ten1::NTuple{7, Cdouble}
    ten1Evec::NTuple{9, Cdouble}
    ten1Eval::NTuple{3, Cdouble}
    levmarUseFastExp::Cint
    levmarMaxIter::UInt32
    levmarTau::Cdouble
    levmarEps1::Cdouble
    levmarEps2::Cdouble
    levmarEps3::Cdouble
    levmarDelta::Cdouble
    levmarMinCp::Cdouble
    levmarInfo::NTuple{9, Cdouble}
end

struct tenInterpParm
    verbose::Cint
    convStep::Cdouble
    minNorm::Cdouble
    convEps::Cdouble
    wghtSumEps::Cdouble
    enableRecurse::Cint
    maxIter::UInt32
    numSteps::UInt32
    lengthFancy::Cint
    allocLen::UInt32
    eval::Ptr{Cdouble}
    evec::Ptr{Cdouble}
    rtIn::Ptr{Cdouble}
    rtLog::Ptr{Cdouble}
    qIn::Ptr{Cdouble}
    qBuff::Ptr{Cdouble}
    qInter::Ptr{Cdouble}
    numIter::UInt32
    convFinal::Cdouble
    lengthShape::Cdouble
    lengthOrient::Cdouble
end

struct tenExperSpec
    set::Cint
    imgNum::UInt32
    bval::Ptr{Cdouble}
    grad::Ptr{Cdouble}
end

struct tenModelParmDesc
    name::NTuple{129, UInt8}
    min::Cdouble
    max::Cdouble
    cyclic::Cint
    vec3::Cint
    vecIdx::UInt32
end

struct tenModel_t
    name::NTuple{129, UInt8}
    parmNum::UInt32
    parmDesc::Ptr{tenModelParmDesc}
    simulate::Ptr{Cvoid}
    sprint::Ptr{Cvoid}
    alloc::Ptr{Cvoid}
    rand::Ptr{Cvoid}
    step::Ptr{Cvoid}
    dist::Ptr{Cvoid}
    copy::Ptr{Cvoid}
    convert::Ptr{Cvoid}
    sqe::Ptr{Cvoid}
    sqeGrad::Ptr{Cvoid}
    sqeFit::Ptr{Cvoid}
    nll::Ptr{Cvoid}
    nllGrad::Ptr{Cvoid}
    nllFit::Ptr{Cvoid}
end

const tenModel = tenModel_t

# Skipping MacroDefinition: TEN_T2M ( m , t ) ( ( m ) [ 0 ] = ( t ) [ 1 ] , ( m ) [ 1 ] = ( t ) [ 2 ] , ( m ) [ 2 ] = ( t ) [ 3 ] , ( m ) [ 3 ] = ( t ) [ 2 ] , ( m ) [ 4 ] = ( t ) [ 4 ] , ( m ) [ 5 ] = ( t ) [ 5 ] , ( m ) [ 6 ] = ( t ) [ 3 ] , ( m ) [ 7 ] = ( t ) [ 5 ] , ( m ) [ 8 ] = ( t ) [ 6 ] )
# Skipping MacroDefinition: TEN_M2T ( t , m ) ( ( t ) [ 1 ] = ( m ) [ 0 ] , ( t ) [ 2 ] = ( ( m ) [ 1 ] + ( m ) [ 3 ] ) / 2.0 , ( t ) [ 3 ] = ( ( m ) [ 2 ] + ( m ) [ 6 ] ) / 2.0 , ( t ) [ 4 ] = ( m ) [ 4 ] , ( t ) [ 5 ] = ( ( m ) [ 5 ] + ( m ) [ 7 ] ) / 2.0 , ( t ) [ 6 ] = ( m ) [ 8 ] )
# Skipping MacroDefinition: TEN_M2T_TT ( t , TT , m ) ( ( t ) [ 1 ] = AIR_CAST ( TT , ( m ) [ 0 ] ) , ( t ) [ 2 ] = AIR_CAST ( TT , ( ( m ) [ 1 ] + ( m ) [ 3 ] ) / 2.0 ) , ( t ) [ 3 ] = AIR_CAST ( TT , ( ( m ) [ 2 ] + ( m ) [ 6 ] ) / 2.0 ) , ( t ) [ 4 ] = AIR_CAST ( TT , ( m ) [ 4 ] ) , ( t ) [ 5 ] = AIR_CAST ( TT , ( ( m ) [ 5 ] + ( m ) [ 7 ] ) / 2.0 ) , ( t ) [ 6 ] = AIR_CAST ( TT , ( m ) [ 8 ] ) )
# Skipping MacroDefinition: TEN_TV_MUL ( v2 , t , v1 ) ( ( v2 ) [ 0 ] = ( t ) [ 1 ] * ( v1 ) [ 0 ] + ( t ) [ 2 ] * ( v1 ) [ 1 ] + ( t ) [ 3 ] * ( v1 ) [ 2 ] , ( v2 ) [ 1 ] = ( t ) [ 2 ] * ( v1 ) [ 0 ] + ( t ) [ 4 ] * ( v1 ) [ 1 ] + ( t ) [ 5 ] * ( v1 ) [ 2 ] , ( v2 ) [ 2 ] = ( t ) [ 3 ] * ( v1 ) [ 0 ] + ( t ) [ 5 ] * ( v1 ) [ 1 ] + ( t ) [ 6 ] * ( v1 ) [ 2 ] )
# Skipping MacroDefinition: TEN_T_EXISTS ( t ) ( AIR_EXISTS ( ( t ) [ 0 ] ) && AIR_EXISTS ( ( t ) [ 1 ] ) && AIR_EXISTS ( ( t ) [ 2 ] ) && AIR_EXISTS ( ( t ) [ 3 ] ) && AIR_EXISTS ( ( t ) [ 4 ] ) && AIR_EXISTS ( ( t ) [ 5 ] ) && AIR_EXISTS ( ( t ) [ 6 ] ) )
# Skipping MacroDefinition: TEN_T_SET ( t , conf , a , b , c , d , e , f ) ( ( t ) [ 0 ] = ( conf ) , ( t ) [ 1 ] = ( a ) , ( t ) [ 2 ] = ( b ) , ( t ) [ 3 ] = ( c ) , ( t ) [ 4 ] = ( d ) , ( t ) [ 5 ] = ( e ) , ( t ) [ 6 ] = ( f ) )
# Skipping MacroDefinition: TEN_T_SET_TT ( t , TT , conf , a , b , c , d , e , f ) ( ( t ) [ 0 ] = AIR_CAST ( TT , ( conf ) ) , ( t ) [ 1 ] = AIR_CAST ( TT , ( a ) ) , ( t ) [ 2 ] = AIR_CAST ( TT , ( b ) ) , ( t ) [ 3 ] = AIR_CAST ( TT , ( c ) ) , ( t ) [ 4 ] = AIR_CAST ( TT , ( d ) ) , ( t ) [ 5 ] = AIR_CAST ( TT , ( e ) ) , ( t ) [ 6 ] = AIR_CAST ( TT , ( f ) ) )
# Skipping MacroDefinition: TEN_T_COPY ( d , s ) ( ( d ) [ 0 ] = ( s ) [ 0 ] , ( d ) [ 1 ] = ( s ) [ 1 ] , ( d ) [ 2 ] = ( s ) [ 2 ] , ( d ) [ 3 ] = ( s ) [ 3 ] , ( d ) [ 4 ] = ( s ) [ 4 ] , ( d ) [ 5 ] = ( s ) [ 5 ] , ( d ) [ 6 ] = ( s ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_COPY_TT ( d , TT , s ) ( ( d ) [ 0 ] = AIR_CAST ( TT , ( s ) [ 0 ] ) , ( d ) [ 1 ] = AIR_CAST ( TT , ( s ) [ 1 ] ) , ( d ) [ 2 ] = AIR_CAST ( TT , ( s ) [ 2 ] ) , ( d ) [ 3 ] = AIR_CAST ( TT , ( s ) [ 3 ] ) , ( d ) [ 4 ] = AIR_CAST ( TT , ( s ) [ 4 ] ) , ( d ) [ 5 ] = AIR_CAST ( TT , ( s ) [ 5 ] ) , ( d ) [ 6 ] = AIR_CAST ( TT , ( s ) [ 6 ] ) )
# Skipping MacroDefinition: TEN_T_DET ( t ) ( ( t ) [ 1 ] * ( ( t ) [ 4 ] * ( t ) [ 6 ] - ( t ) [ 5 ] * ( t ) [ 5 ] ) + ( t ) [ 2 ] * ( ( t ) [ 5 ] * ( t ) [ 3 ] - ( t ) [ 2 ] * ( t ) [ 6 ] ) + ( t ) [ 3 ] * ( ( t ) [ 2 ] * ( t ) [ 5 ] - ( t ) [ 3 ] * ( t ) [ 4 ] ) )
# Skipping MacroDefinition: TEN_T_DET_XY ( t ) ( ( t ) [ 1 ] * ( t ) [ 4 ] - ( t ) [ 2 ] * ( t ) [ 2 ] )
# Skipping MacroDefinition: TEN_T_DET_XZ ( t ) ( ( t ) [ 1 ] * ( t ) [ 6 ] - ( t ) [ 3 ] * ( t ) [ 3 ] )
# Skipping MacroDefinition: TEN_T_DET_YZ ( t ) ( ( t ) [ 4 ] * ( t ) [ 6 ] - ( t ) [ 5 ] * ( t ) [ 5 ] )
# Skipping MacroDefinition: TEN_T_TRACE ( t ) ( ( t ) [ 1 ] + ( t ) [ 4 ] + ( t ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_INV ( i , t , det ) ( ( det ) = TEN_T_DET ( t ) , ( i ) [ 0 ] = ( t ) [ 0 ] , ( i ) [ 1 ] = _ELL_2M_DET ( ( t ) [ 4 ] , ( t ) [ 5 ] , ( t ) [ 5 ] , ( t ) [ 6 ] ) / ( det ) , ( i ) [ 2 ] = - _ELL_2M_DET ( ( t ) [ 2 ] , ( t ) [ 5 ] , ( t ) [ 3 ] , ( t ) [ 6 ] ) / ( det ) , ( i ) [ 3 ] = _ELL_2M_DET ( ( t ) [ 2 ] , ( t ) [ 4 ] , ( t ) [ 3 ] , ( t ) [ 5 ] ) / ( det ) , ( i ) [ 4 ] = _ELL_2M_DET ( ( t ) [ 1 ] , ( t ) [ 3 ] , ( t ) [ 3 ] , ( t ) [ 6 ] ) / ( det ) , ( i ) [ 5 ] = - _ELL_2M_DET ( ( t ) [ 1 ] , ( t ) [ 2 ] , ( t ) [ 3 ] , ( t ) [ 5 ] ) / ( det ) , ( i ) [ 6 ] = _ELL_2M_DET ( ( t ) [ 1 ] , ( t ) [ 2 ] , ( t ) [ 2 ] , ( t ) [ 4 ] ) / ( det ) )
# Skipping MacroDefinition: TEN_T_DOT ( A , B ) ( ( A ) [ 1 ] * ( B ) [ 1 ] + 2 * ( A ) [ 2 ] * ( B ) [ 2 ] + 2 * ( A ) [ 3 ] * ( B ) [ 3 ] + ( A ) [ 4 ] * ( B ) [ 4 ] + 2 * ( A ) [ 5 ] * ( B ) [ 5 ] + ( A ) [ 6 ] * ( B ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_NORM ( A ) ( sqrt ( TEN_T_DOT ( A , A ) ) )
# Skipping MacroDefinition: TEN_T_ADD ( a , b , c ) ( ( a ) [ 0 ] = ( ( b ) [ 0 ] + ( c ) [ 0 ] ) / 2.0 , ( a ) [ 1 ] = ( b ) [ 1 ] + ( c ) [ 1 ] , ( a ) [ 2 ] = ( b ) [ 2 ] + ( c ) [ 2 ] , ( a ) [ 3 ] = ( b ) [ 3 ] + ( c ) [ 3 ] , ( a ) [ 4 ] = ( b ) [ 4 ] + ( c ) [ 4 ] , ( a ) [ 5 ] = ( b ) [ 5 ] + ( c ) [ 5 ] , ( a ) [ 6 ] = ( b ) [ 6 ] + ( c ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_SUB ( a , b , c ) ( ( a ) [ 0 ] = ( ( b ) [ 0 ] + ( c ) [ 0 ] ) / 2.0 , ( a ) [ 1 ] = ( b ) [ 1 ] - ( c ) [ 1 ] , ( a ) [ 2 ] = ( b ) [ 2 ] - ( c ) [ 2 ] , ( a ) [ 3 ] = ( b ) [ 3 ] - ( c ) [ 3 ] , ( a ) [ 4 ] = ( b ) [ 4 ] - ( c ) [ 4 ] , ( a ) [ 5 ] = ( b ) [ 5 ] - ( c ) [ 5 ] , ( a ) [ 6 ] = ( b ) [ 6 ] - ( c ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_AFFINE ( C , i , x , I , A , B ) ( ( C ) [ 0 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 0 ] , ( B ) [ 0 ] ) , ( C ) [ 1 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 1 ] , ( B ) [ 1 ] ) , ( C ) [ 2 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 2 ] , ( B ) [ 2 ] ) , ( C ) [ 3 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 3 ] , ( B ) [ 3 ] ) , ( C ) [ 4 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 4 ] , ( B ) [ 4 ] ) , ( C ) [ 5 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 5 ] , ( B ) [ 5 ] ) , ( C ) [ 6 ] = AIR_AFFINE ( ( i ) , ( x ) , ( I ) , ( A ) [ 6 ] , ( B ) [ 6 ] ) )
# Skipping MacroDefinition: TEN_T_LERP ( c , w , a , b ) ( ( c ) [ 0 ] = AIR_LERP ( ( w ) , ( a ) [ 0 ] , ( b ) [ 0 ] ) , ( c ) [ 1 ] = AIR_LERP ( ( w ) , ( a ) [ 1 ] , ( b ) [ 1 ] ) , ( c ) [ 2 ] = AIR_LERP ( ( w ) , ( a ) [ 2 ] , ( b ) [ 2 ] ) , ( c ) [ 3 ] = AIR_LERP ( ( w ) , ( a ) [ 3 ] , ( b ) [ 3 ] ) , ( c ) [ 4 ] = AIR_LERP ( ( w ) , ( a ) [ 4 ] , ( b ) [ 4 ] ) , ( c ) [ 5 ] = AIR_LERP ( ( w ) , ( a ) [ 5 ] , ( b ) [ 5 ] ) , ( c ) [ 6 ] = AIR_LERP ( ( w ) , ( a ) [ 6 ] , ( b ) [ 6 ] ) )
# Skipping MacroDefinition: TEN_T_SCALE ( a , s , b ) ( ( a ) [ 0 ] = ( b ) [ 0 ] , ( a ) [ 1 ] = ( s ) * ( b ) [ 1 ] , ( a ) [ 2 ] = ( s ) * ( b ) [ 2 ] , ( a ) [ 3 ] = ( s ) * ( b ) [ 3 ] , ( a ) [ 4 ] = ( s ) * ( b ) [ 4 ] , ( a ) [ 5 ] = ( s ) * ( b ) [ 5 ] , ( a ) [ 6 ] = ( s ) * ( b ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_INCR ( a , b ) ( ( a ) [ 0 ] = ( b ) [ 0 ] , ( a ) [ 1 ] += ( b ) [ 1 ] , ( a ) [ 2 ] += ( b ) [ 2 ] , ( a ) [ 3 ] += ( b ) [ 3 ] , ( a ) [ 4 ] += ( b ) [ 4 ] , ( a ) [ 5 ] += ( b ) [ 5 ] , ( a ) [ 6 ] += ( b ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_SCALE_INCR ( a , s , b ) ( ( a ) [ 0 ] = ( b ) [ 0 ] , ( a ) [ 1 ] += ( s ) * ( b ) [ 1 ] , ( a ) [ 2 ] += ( s ) * ( b ) [ 2 ] , ( a ) [ 3 ] += ( s ) * ( b ) [ 3 ] , ( a ) [ 4 ] += ( s ) * ( b ) [ 4 ] , ( a ) [ 5 ] += ( s ) * ( b ) [ 5 ] , ( a ) [ 6 ] += ( s ) * ( b ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_SCALE_INCR2 ( a , s , b , t , c ) ( ( a ) [ 0 ] = AIR_MIN ( ( b ) [ 0 ] , ( c ) [ 0 ] ) , ( a ) [ 1 ] += ( s ) * ( b ) [ 1 ] + ( t ) * ( c ) [ 1 ] , ( a ) [ 2 ] += ( s ) * ( b ) [ 2 ] + ( t ) * ( c ) [ 2 ] , ( a ) [ 3 ] += ( s ) * ( b ) [ 3 ] + ( t ) * ( c ) [ 3 ] , ( a ) [ 4 ] += ( s ) * ( b ) [ 4 ] + ( t ) * ( c ) [ 4 ] , ( a ) [ 5 ] += ( s ) * ( b ) [ 5 ] + ( t ) * ( c ) [ 5 ] , ( a ) [ 6 ] += ( s ) * ( b ) [ 6 ] + ( t ) * ( c ) [ 6 ] )
# Skipping MacroDefinition: TEN_T_SCALE_ADD2 ( a , s , b , t , c ) ( ( a ) [ 0 ] = AIR_MIN ( ( b ) [ 0 ] , ( c ) [ 0 ] ) , ( a ) [ 1 ] = ( s ) * ( b ) [ 1 ] + ( t ) * ( c ) [ 1 ] , ( a ) [ 2 ] = ( s ) * ( b ) [ 2 ] + ( t ) * ( c ) [ 2 ] , ( a ) [ 3 ] = ( s ) * ( b ) [ 3 ] + ( t ) * ( c ) [ 3 ] , ( a ) [ 4 ] = ( s ) * ( b ) [ 4 ] + ( t ) * ( c ) [ 4 ] , ( a ) [ 5 ] = ( s ) * ( b ) [ 5 ] + ( t ) * ( c ) [ 5 ] , ( a ) [ 6 ] = ( s ) * ( b ) [ 6 ] + ( t ) * ( c ) [ 6 ] )
# Skipping MacroDefinition: TEN_T3V_MUL ( b , t , a ) ( ( b ) [ 0 ] = ( t ) [ 1 ] * ( a ) [ 0 ] + ( t ) [ 2 ] * ( a ) [ 1 ] + ( t ) [ 3 ] * ( a ) [ 2 ] , ( b ) [ 1 ] = ( t ) [ 2 ] * ( a ) [ 0 ] + ( t ) [ 4 ] * ( a ) [ 1 ] + ( t ) [ 5 ] * ( a ) [ 2 ] , ( b ) [ 2 ] = ( t ) [ 3 ] * ( a ) [ 0 ] + ( t ) [ 5 ] * ( a ) [ 1 ] + ( t ) [ 6 ] * ( a ) [ 2 ] )
# Skipping MacroDefinition: TEN_T3V_OUTER ( t , a ) ( ( t ) [ 0 ] = 1.0 , ( t ) [ 1 ] = ( a ) [ 0 ] * ( a ) [ 0 ] , ( t ) [ 2 ] = ( a ) [ 0 ] * ( a ) [ 1 ] , ( t ) [ 3 ] = ( a ) [ 0 ] * ( a ) [ 2 ] , ( t ) [ 4 ] = ( a ) [ 1 ] * ( a ) [ 1 ] , ( t ) [ 5 ] = ( a ) [ 1 ] * ( a ) [ 2 ] , ( t ) [ 6 ] = ( a ) [ 2 ] * ( a ) [ 2 ] )
# Skipping MacroDefinition: TEN_T3V_OUTER_INCR ( t , a ) ( ( t ) [ 1 ] += ( a ) [ 0 ] * ( a ) [ 0 ] , ( t ) [ 2 ] += ( a ) [ 0 ] * ( a ) [ 1 ] , ( t ) [ 3 ] += ( a ) [ 0 ] * ( a ) [ 2 ] , ( t ) [ 4 ] += ( a ) [ 1 ] * ( a ) [ 1 ] , ( t ) [ 5 ] += ( a ) [ 1 ] * ( a ) [ 2 ] , ( t ) [ 6 ] += ( a ) [ 2 ] * ( a ) [ 2 ] )
# Skipping MacroDefinition: TEN_T3V_CONTR ( t , v ) ( ( v ) [ 0 ] * ( t ) [ 1 ] * ( v ) [ 0 ] + ( v ) [ 0 ] * ( t ) [ 2 ] * ( v ) [ 1 ] + ( v ) [ 0 ] * ( t ) [ 3 ] * ( v ) [ 2 ] + ( v ) [ 1 ] * ( t ) [ 2 ] * ( v ) [ 0 ] + ( v ) [ 1 ] * ( t ) [ 4 ] * ( v ) [ 1 ] + ( v ) [ 1 ] * ( t ) [ 5 ] * ( v ) [ 2 ] + ( v ) [ 2 ] * ( t ) [ 3 ] * ( v ) [ 0 ] + ( v ) [ 2 ] * ( t ) [ 5 ] * ( v ) [ 1 ] + ( v ) [ 2 ] * ( t ) [ 6 ] * ( v ) [ 2 ] )

const UNRRDU_COLUMNS = 78

# Skipping MacroDefinition: UNRRDU_DECLARE ( C ) UNRRDU_EXPORT unrrduCmd unrrdu_ ## C ## Cmd ;
# Skipping MacroDefinition: UNRRDU_LIST ( C ) & unrrdu_ ## C ## Cmd ,
# Skipping MacroDefinition: UNRRDU_MAP ( F ) F ( about ) F ( env ) F ( i2w ) F ( w2i ) F ( make ) F ( head ) F ( data ) F ( convert ) F ( resample ) F ( fft ) F ( cmedian ) F ( dering ) F ( dist ) F ( minmax ) F ( cksum ) F ( diff ) F ( quantize ) F ( unquantize ) F ( project ) F ( slice ) F ( sselect ) F ( dice ) F ( splice ) F ( join ) F ( crop ) F ( acrop ) F ( inset ) F ( pad ) F ( reshape ) F ( permute ) F ( swap ) F ( shuffle ) F ( flip ) F ( unorient ) F ( basinfo ) F ( axinfo ) F ( axinsert ) F ( axsplit ) F ( axdelete ) F ( axmerge ) F ( tile ) F ( untile ) F ( histo ) F ( dhisto ) F ( jhisto ) F ( histax ) F ( heq ) F ( gamma ) F ( 1op ) F ( 2op ) F ( 3op ) F ( affine ) F ( lut ) F ( mlut ) F ( subst ) F ( rmap ) F ( mrmap ) F ( imap ) F ( lut2 ) F ( ccfind ) F ( ccadj ) F ( ccmerge ) F ( ccsettle ) F ( dnorm ) F ( vidicon ) F ( grid ) F ( hack ) F ( aabplot ) F ( undos ) F ( save )
# Skipping MacroDefinition: UNRRDU_CMD ( name , info ) unrrduCmd unrrdu_ ## name ## Cmd = { # name , info , unrrdu_ ## name ## Main , AIR_FALSE }
# Skipping MacroDefinition: UNRRDU_CMD_HIDE ( name , info ) unrrduCmd unrrdu_ ## name ## Cmd = { # name , info , unrrdu_ ## name ## Main , AIR_TRUE }

struct unrrduCmd
    name::Cstring
    info::Cstring
    main::Ptr{Cvoid}
    hidden::Cint
end
