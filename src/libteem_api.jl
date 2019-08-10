# Julia wrapper for header: air.h
# Automatically generated using Clang.jl


function airEnumUnknown(enm)
    ccall((:airEnumUnknown, libteem), Cint, (Ptr{airEnum},), enm)
end

function airEnumValCheck(enm, val)
    ccall((:airEnumValCheck, libteem), Cint, (Ptr{airEnum}, Cint), enm, val)
end

function airEnumStr(enm, val)
    ccall((:airEnumStr, libteem), Cstring, (Ptr{airEnum}, Cint), enm, val)
end

function airEnumDesc(enm, val)
    ccall((:airEnumDesc, libteem), Cstring, (Ptr{airEnum}, Cint), enm, val)
end

function airEnumVal(enm, str)
    ccall((:airEnumVal, libteem), Cint, (Ptr{airEnum}, Cstring), enm, str)
end

function airEnumFmtDesc(enm, val, canon, fmt)
    ccall((:airEnumFmtDesc, libteem), Cstring, (Ptr{airEnum}, Cint, Cint, Cstring), enm, val, canon, fmt)
end

function airEnumPrint(file, enm)
    ccall((:airEnumPrint, libteem), Cvoid, (Ptr{Cvoid}, Ptr{airEnum}), file, enm)
end

function airEnumCheck(err, enm)
    ccall((:airEnumCheck, libteem), Cint, (Ptr{UInt8}, Ptr{airEnum}), err, enm)
end

function airMyEndian()
    ccall((:airMyEndian, libteem), Cint, ())
end

function airArrayNew(dataP, lenP, unit, incr)
    ccall((:airArrayNew, libteem), Ptr{airArray}, (Ptr{Ptr{Cvoid}}, Ptr{UInt32}, Csize_t, UInt32), dataP, lenP, unit, incr)
end

function airArrayStructCB(a, initCB, doneCB)
    ccall((:airArrayStructCB, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}, Ptr{Cvoid}), a, initCB, doneCB)
end

function airArrayPointerCB(a, allocCB, freeCB)
    ccall((:airArrayPointerCB, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}, Ptr{Cvoid}), a, allocCB, freeCB)
end

function airArrayLenSet(a, newlen)
    ccall((:airArrayLenSet, libteem), Cvoid, (Ptr{airArray}, UInt32), a, newlen)
end

function airArrayLenPreSet(a, newlen)
    ccall((:airArrayLenPreSet, libteem), Cvoid, (Ptr{airArray}, UInt32), a, newlen)
end

function airArrayLenIncr(a, delta)
    ccall((:airArrayLenIncr, libteem), UInt32, (Ptr{airArray}, Cint), a, delta)
end

function airArrayNix(a)
    ccall((:airArrayNix, libteem), Ptr{airArray}, (Ptr{airArray},), a)
end

function airArrayNuke(a)
    ccall((:airArrayNuke, libteem), Ptr{airArray}, (Ptr{airArray},), a)
end

function airHeapNew(dataUnit, incr)
    ccall((:airHeapNew, libteem), Ptr{airHeap}, (Csize_t, UInt32), dataUnit, incr)
end

function airHeapFromArray(key, data)
    ccall((:airHeapFromArray, libteem), Ptr{airHeap}, (Ptr{airArray}, Ptr{airArray}), key, data)
end

function airHeapNix(h)
    ccall((:airHeapNix, libteem), Ptr{airHeap}, (Ptr{airHeap},), h)
end

function airHeapLength(h)
    ccall((:airHeapLength, libteem), UInt32, (Ptr{airHeap},), h)
end

function airHeapInsert(h, key, data)
    ccall((:airHeapInsert, libteem), UInt32, (Ptr{airHeap}, Cdouble, Ptr{Cvoid}), h, key, data)
end

function airHeapMerge(first, second)
    ccall((:airHeapMerge, libteem), UInt32, (Ptr{airHeap}, Ptr{airHeap}), first, second)
end

function airHeapFrontPeek(h, data)
    ccall((:airHeapFrontPeek, libteem), Cdouble, (Ptr{airHeap}, Ptr{Cvoid}), h, data)
end

function airHeapFrontPop(h, data)
    ccall((:airHeapFrontPop, libteem), Cdouble, (Ptr{airHeap}, Ptr{Cvoid}), h, data)
end

function airHeapFrontUpdate(h, newKey, newData)
    ccall((:airHeapFrontUpdate, libteem), Cint, (Ptr{airHeap}, Cdouble, Ptr{Cvoid}), h, newKey, newData)
end

function airHeapFind(h, ai, data)
    ccall((:airHeapFind, libteem), Cint, (Ptr{airHeap}, Ptr{UInt32}, Ptr{Cvoid}), h, ai, data)
end

function airHeapRemove(h, ai)
    ccall((:airHeapRemove, libteem), Cint, (Ptr{airHeap}, UInt32), h, ai)
end

function airHeapUpdate(h, ai, newKey, newData)
    ccall((:airHeapUpdate, libteem), Cint, (Ptr{airHeap}, UInt32, Cdouble, Ptr{Cvoid}), h, ai, newKey, newData)
end

function airThreadNew()
    ccall((:airThreadNew, libteem), Ptr{airThread}, ())
end

function airThreadStart(thread, threadBody, arg)
    ccall((:airThreadStart, libteem), Cint, (Ptr{airThread}, Ptr{Cvoid}, Ptr{Cvoid}), thread, threadBody, arg)
end

function airThreadJoin(thread, retP)
    ccall((:airThreadJoin, libteem), Cint, (Ptr{airThread}, Ptr{Ptr{Cvoid}}), thread, retP)
end

function airThreadNix(thread)
    ccall((:airThreadNix, libteem), Ptr{airThread}, (Ptr{airThread},), thread)
end

function airThreadMutexNew()
    ccall((:airThreadMutexNew, libteem), Ptr{airThreadMutex}, ())
end

function airThreadMutexLock(mutex)
    ccall((:airThreadMutexLock, libteem), Cint, (Ptr{airThreadMutex},), mutex)
end

function airThreadMutexUnlock(mutex)
    ccall((:airThreadMutexUnlock, libteem), Cint, (Ptr{airThreadMutex},), mutex)
end

function airThreadMutexNix(mutex)
    ccall((:airThreadMutexNix, libteem), Ptr{airThreadMutex}, (Ptr{airThreadMutex},), mutex)
end

function airThreadCondNew()
    ccall((:airThreadCondNew, libteem), Ptr{airThreadCond}, ())
end

function airThreadCondWait(cond, mutex)
    ccall((:airThreadCondWait, libteem), Cint, (Ptr{airThreadCond}, Ptr{airThreadMutex}), cond, mutex)
end

function airThreadCondSignal(cond)
    ccall((:airThreadCondSignal, libteem), Cint, (Ptr{airThreadCond},), cond)
end

function airThreadCondBroadcast(cond)
    ccall((:airThreadCondBroadcast, libteem), Cint, (Ptr{airThreadCond},), cond)
end

function airThreadCondNix(cond)
    ccall((:airThreadCondNix, libteem), Ptr{airThreadCond}, (Ptr{airThreadCond},), cond)
end

function airThreadBarrierNew(numUsers)
    ccall((:airThreadBarrierNew, libteem), Ptr{airThreadBarrier}, (UInt32,), numUsers)
end

function airThreadBarrierWait(barrier)
    ccall((:airThreadBarrierWait, libteem), Cint, (Ptr{airThreadBarrier},), barrier)
end

function airThreadBarrierNix(barrier)
    ccall((:airThreadBarrierNix, libteem), Ptr{airThreadBarrier}, (Ptr{airThreadBarrier},), barrier)
end

function airFPPartsToVal_f(sign, expo, mant)
    ccall((:airFPPartsToVal_f, libteem), Cfloat, (UInt32, UInt32, UInt32), sign, expo, mant)
end

function airFPValToParts_f(signP, expoP, mantP, v)
    ccall((:airFPValToParts_f, libteem), Cvoid, (Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Cfloat), signP, expoP, mantP, v)
end

function airFPPartsToVal_d(sign, expo, mant0, mant1)
    ccall((:airFPPartsToVal_d, libteem), Cdouble, (UInt32, UInt32, UInt32, UInt32), sign, expo, mant0, mant1)
end

function airFPValToParts_d(signP, expoP, mant0P, mant1P, v)
    ccall((:airFPValToParts_d, libteem), Cvoid, (Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Cdouble), signP, expoP, mant0P, mant1P, v)
end

function airFPGen_f(cls)
    ccall((:airFPGen_f, libteem), Cfloat, (Cint,), cls)
end

function airFPGen_d(cls)
    ccall((:airFPGen_d, libteem), Cdouble, (Cint,), cls)
end

function airFPClass_f(val)
    ccall((:airFPClass_f, libteem), Cint, (Cfloat,), val)
end

function airFPClass_d(val)
    ccall((:airFPClass_d, libteem), Cint, (Cdouble,), val)
end

function airFPFprintf_f(file, val)
    ccall((:airFPFprintf_f, libteem), Cvoid, (Ptr{Cvoid}, Cfloat), file, val)
end

function airFPFprintf_d(file, val)
    ccall((:airFPFprintf_d, libteem), Cvoid, (Ptr{Cvoid}, Cdouble), file, val)
end

function airNaN()
    ccall((:airNaN, libteem), Cfloat, ())
end

function airIsNaN(d)
    ccall((:airIsNaN, libteem), Cint, (Cdouble,), d)
end

function airIsInf_f(f)
    ccall((:airIsInf_f, libteem), Cint, (Cfloat,), f)
end

function airIsInf_d(d)
    ccall((:airIsInf_d, libteem), Cint, (Cdouble,), d)
end

function airExists(d)
    ccall((:airExists, libteem), Cint, (Cdouble,), d)
end

function airRandMTStateGlobalInit()
    ccall((:airRandMTStateGlobalInit, libteem), Cvoid, ())
end

function airRandMTStateNew(seed)
    ccall((:airRandMTStateNew, libteem), Ptr{airRandMTState}, (UInt32,), seed)
end

function airRandMTStateNix(state)
    ccall((:airRandMTStateNix, libteem), Ptr{airRandMTState}, (Ptr{airRandMTState},), state)
end

function airSrandMT_r(state, seed)
    ccall((:airSrandMT_r, libteem), Cvoid, (Ptr{airRandMTState}, UInt32), state, seed)
end

function airDrandMT_r(state)
    ccall((:airDrandMT_r, libteem), Cdouble, (Ptr{airRandMTState},), state)
end

function airUIrandMT_r(state)
    ccall((:airUIrandMT_r, libteem), UInt32, (Ptr{airRandMTState},), state)
end

function airDrandMT53_r(state)
    ccall((:airDrandMT53_r, libteem), Cdouble, (Ptr{airRandMTState},), state)
end

function airRandInt(N)
    ccall((:airRandInt, libteem), UInt32, (UInt32,), N)
end

function airRandInt_r(state, N)
    ccall((:airRandInt_r, libteem), UInt32, (Ptr{airRandMTState}, UInt32), state, N)
end

function airSrandMT(seed)
    ccall((:airSrandMT, libteem), Cvoid, (UInt32,), seed)
end

function airDrandMT()
    ccall((:airDrandMT, libteem), Cdouble, ())
end

function airRandMTSanity()
    ccall((:airRandMTSanity, libteem), Cint, ())
end

function airAtod(str)
    ccall((:airAtod, libteem), Cdouble, (Cstring,), str)
end

function airSingleSscanf(str, fmt, ptr)
    ccall((:airSingleSscanf, libteem), Cint, (Cstring, Cstring, Ptr{Cvoid}), str, fmt, ptr)
end

function airStrdup(s)
    ccall((:airStrdup, libteem), Cstring, (Cstring,), s)
end

function airStrlen(s)
    ccall((:airStrlen, libteem), Csize_t, (Cstring,), s)
end

function airStrcmp(s1, s2)
    ccall((:airStrcmp, libteem), Cint, (Cstring, Cstring), s1, s2)
end

function airStrtok(s, ct, last)
    ccall((:airStrtok, libteem), Cstring, (Cstring, Cstring, Ptr{Cstring}), s, ct, last)
end

function airStrntok(s, ct)
    ccall((:airStrntok, libteem), UInt32, (Cstring, Cstring), s, ct)
end

function airStrtrans(s, from, to)
    ccall((:airStrtrans, libteem), Cstring, (Cstring, UInt8, UInt8), s, from, to)
end

function airStrcpy(dst, dstSize, src)
    ccall((:airStrcpy, libteem), Cstring, (Cstring, Csize_t, Cstring), dst, dstSize, src)
end

function airEndsWith(s, suff)
    ccall((:airEndsWith, libteem), Cint, (Cstring, Cstring), s, suff)
end

function airUnescape(s)
    ccall((:airUnescape, libteem), Cstring, (Cstring,), s)
end

function airOneLinify(s)
    ccall((:airOneLinify, libteem), Cstring, (Cstring,), s)
end

function airToLower(str)
    ccall((:airToLower, libteem), Cstring, (Cstring,), str)
end

function airToUpper(str)
    ccall((:airToUpper, libteem), Cstring, (Cstring,), str)
end

function airOneLine(file, line, size)
    ccall((:airOneLine, libteem), UInt32, (Ptr{Cvoid}, Cstring, UInt32), file, line, size)
end

function airInsaneErr(insane)
    ccall((:airInsaneErr, libteem), Cstring, (Cint,), insane)
end

function airSanity()
    ccall((:airSanity, libteem), Cint, ())
end

function airTeemVersionSprint(buff)
    ccall((:airTeemVersionSprint, libteem), Cvoid, (Ptr{UInt8},), buff)
end

function airNull()
    ccall((:airNull, libteem), Ptr{Cvoid}, ())
end

function airSetNull(ptrP)
    ccall((:airSetNull, libteem), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}},), ptrP)
end

function airFree(ptr)
    ccall((:airFree, libteem), Ptr{Cvoid}, (Ptr{Cvoid},), ptr)
end

function airFopen(name, std, mode)
    ccall((:airFopen, libteem), Ptr{Cvoid}, (Cstring, Ptr{Cvoid}, Cstring), name, std, mode)
end

function airFclose(file)
    ccall((:airFclose, libteem), Ptr{Cvoid}, (Ptr{Cvoid},), file)
end

function airSprintSize_t(str, val)
    ccall((:airSprintSize_t, libteem), Cstring, (Ptr{UInt8}, Csize_t), str, val)
end

function airSprintVecSize_t(str, vec, len)
    ccall((:airSprintVecSize_t, libteem), Cstring, (Cstring, Ptr{Csize_t}, UInt32), str, vec, len)
end

function airPrettySprintSize_t(str, v)
    ccall((:airPrettySprintSize_t, libteem), Cstring, (Ptr{UInt8}, Csize_t), str, v)
end

function airSprintPtrdiff_t(str, v)
    ccall((:airSprintPtrdiff_t, libteem), Cstring, (Ptr{UInt8}, Cptrdiff_t), str, v)
end

function airStderr()
    ccall((:airStderr, libteem), Ptr{Cvoid}, ())
end

function airStdout()
    ccall((:airStdout, libteem), Ptr{Cvoid}, ())
end

function airStdin()
    ccall((:airStdin, libteem), Ptr{Cvoid}, ())
end

function airBitsSet(N)
    ccall((:airBitsSet, libteem), UInt32, (UInt32,), N)
end

function airIndex(min, val, max, N)
    ccall((:airIndex, libteem), UInt32, (Cdouble, Cdouble, Cdouble, UInt32), min, val, max, N)
end

function airIndexClamp(min, val, max, N)
    ccall((:airIndexClamp, libteem), UInt32, (Cdouble, Cdouble, Cdouble, UInt32), min, val, max, N)
end

function airIndexULL(min, val, max, N)
    ccall((:airIndexULL, libteem), airULLong, (Cdouble, Cdouble, Cdouble, airULLong), min, val, max, N)
end

function airIndexClampULL(min, val, max, N)
    ccall((:airIndexClampULL, libteem), airULLong, (Cdouble, Cdouble, Cdouble, airULLong), min, val, max, N)
end

function airDoneStr(start, here, _end, str)
    ccall((:airDoneStr, libteem), Cstring, (Cdouble, Cdouble, Cdouble, Cstring), start, here, _end, str)
end

function airTime()
    ccall((:airTime, libteem), Cdouble, ())
end

function airEqvAdd(eqvArr, j, k)
    ccall((:airEqvAdd, libteem), Cvoid, (Ptr{airArray}, UInt32, UInt32), eqvArr, j, k)
end

function airEqvMap(eqvArr, map, len)
    ccall((:airEqvMap, libteem), UInt32, (Ptr{airArray}, Ptr{UInt32}, UInt32), eqvArr, map, len)
end

function airEqvSettle(map, len)
    ccall((:airEqvSettle, libteem), UInt32, (Ptr{UInt32}, UInt32), map, len)
end

function airFastExp(val)
    ccall((:airFastExp, libteem), Cdouble, (Cdouble,), val)
end

function airExp(val)
    ccall((:airExp, libteem), Cdouble, (Cdouble,), val)
end

function airNormalRand(z1, z2)
    ccall((:airNormalRand, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), z1, z2)
end

function airNormalRand_r(z1, z2, state)
    ccall((:airNormalRand_r, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{airRandMTState}), z1, z2, state)
end

function airShuffle(buff, N, perm)
    ccall((:airShuffle, libteem), Cvoid, (Ptr{UInt32}, UInt32, Cint), buff, N, perm)
end

function airShuffle_r(state, buff, N, perm)
    ccall((:airShuffle_r, libteem), Cvoid, (Ptr{airRandMTState}, Ptr{UInt32}, UInt32, Cint), state, buff, N, perm)
end

function airCbrt(arg1)
    ccall((:airCbrt, libteem), Cdouble, (Cdouble,), arg1)
end

function airMode3(a, b, c)
    ccall((:airMode3, libteem), Cdouble, (Cdouble, Cdouble, Cdouble), a, b, c)
end

function airMode3_d(v)
    ccall((:airMode3_d, libteem), Cdouble, (Ptr{Cdouble},), v)
end

function airSgnPow(arg1, arg2)
    ccall((:airSgnPow, libteem), Cdouble, (Cdouble, Cdouble), arg1, arg2)
end

function airFlippedSgnPow(arg1, arg2)
    ccall((:airFlippedSgnPow, libteem), Cdouble, (Cdouble, Cdouble), arg1, arg2)
end

function airIntPow(v, p)
    ccall((:airIntPow, libteem), Cdouble, (Cdouble, Cint), v, p)
end

function airSgn(arg1)
    ccall((:airSgn, libteem), Cint, (Cdouble,), arg1)
end

function airLog2(n)
    ccall((:airLog2, libteem), Cint, (Csize_t,), n)
end

function airErfc(x)
    ccall((:airErfc, libteem), Cdouble, (Cdouble,), x)
end

function airErf(x)
    ccall((:airErf, libteem), Cdouble, (Cdouble,), x)
end

function airGaussian(x, mean, stdv)
    ccall((:airGaussian, libteem), Cdouble, (Cdouble, Cdouble, Cdouble), x, mean, stdv)
end

function airBesselI0(x)
    ccall((:airBesselI0, libteem), Cdouble, (Cdouble,), x)
end

function airBesselI1(x)
    ccall((:airBesselI1, libteem), Cdouble, (Cdouble,), x)
end

function airBesselI0ExpScaled(x)
    ccall((:airBesselI0ExpScaled, libteem), Cdouble, (Cdouble,), x)
end

function airBesselI1ExpScaled(x)
    ccall((:airBesselI1ExpScaled, libteem), Cdouble, (Cdouble,), x)
end

function airLogBesselI0(x)
    ccall((:airLogBesselI0, libteem), Cdouble, (Cdouble,), x)
end

function airLogRician(mes, tru, sig)
    ccall((:airLogRician, libteem), Cdouble, (Cdouble, Cdouble, Cdouble), mes, tru, sig)
end

function airRician(mes, tru, sig)
    ccall((:airRician, libteem), Cdouble, (Cdouble, Cdouble, Cdouble), mes, tru, sig)
end

function airBesselI1By0(x)
    ccall((:airBesselI1By0, libteem), Cdouble, (Cdouble,), x)
end

function airBesselIn(n, x)
    ccall((:airBesselIn, libteem), Cdouble, (Cint, Cdouble), n, x)
end

function airBesselInExpScaled(n, x)
    ccall((:airBesselInExpScaled, libteem), Cdouble, (Cint, Cdouble), n, x)
end

function airTauOfTime(tee)
    ccall((:airTauOfTime, libteem), Cdouble, (Cdouble,), tee)
end

function airTimeOfTau(tau)
    ccall((:airTimeOfTau, libteem), Cdouble, (Cdouble,), tau)
end

function airSigmaOfTau(tau)
    ccall((:airSigmaOfTau, libteem), Cdouble, (Cdouble,), tau)
end

function airTauOfSigma(sig)
    ccall((:airTauOfSigma, libteem), Cdouble, (Cdouble,), sig)
end

function airVanDerCorput(indx, base)
    ccall((:airVanDerCorput, libteem), Cdouble, (UInt32, UInt32), indx, base)
end

function airHalton(out, indx, base, num)
    ccall((:airHalton, libteem), Cvoid, (Ptr{Cdouble}, UInt32, Ptr{UInt32}, UInt32), out, indx, base, num)
end

function airCRC32(data, len, unit, swap)
    ccall((:airCRC32, libteem), UInt32, (Ptr{Cuchar}, Csize_t, Csize_t, Cint), data, len, unit, swap)
end

function airNoDioErr(noDio)
    ccall((:airNoDioErr, libteem), Cstring, (Cint,), noDio)
end

function airDioInfo(align, min, max, fd)
    ccall((:airDioInfo, libteem), Cvoid, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Cint), align, min, max, fd)
end

function airDioTest(fd, ptr, size)
    ccall((:airDioTest, libteem), Cint, (Cint, Ptr{Cvoid}, Csize_t), fd, ptr, size)
end

function airDioMalloc(size, fd)
    ccall((:airDioMalloc, libteem), Ptr{Cvoid}, (Csize_t, Cint), size, fd)
end

function airDioRead(fd, ptr, size)
    ccall((:airDioRead, libteem), Csize_t, (Cint, Ptr{Cvoid}, Csize_t), fd, ptr, size)
end

function airDioWrite(fd, ptr, size)
    ccall((:airDioWrite, libteem), Csize_t, (Cint, Ptr{Cvoid}, Csize_t), fd, ptr, size)
end

function airMopNew()
    ccall((:airMopNew, libteem), Ptr{airArray}, ())
end

function airMopAdd(arr, ptr, mop, when)
    ccall((:airMopAdd, libteem), Cint, (Ptr{airArray}, Ptr{Cvoid}, airMopper, Cint), arr, ptr, mop, when)
end

function airMopSub(arr, ptr, mop)
    ccall((:airMopSub, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}, airMopper), arr, ptr, mop)
end

function airMopMem(arr, _ptrP, when)
    ccall((:airMopMem, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}, Cint), arr, _ptrP, when)
end

function airMopUnMem(arr, _ptrP)
    ccall((:airMopUnMem, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}), arr, _ptrP)
end

function airMopPrint(arr, _str, when)
    ccall((:airMopPrint, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}, Cint), arr, _str, when)
end

function airMopDone(arr, error)
    ccall((:airMopDone, libteem), Cvoid, (Ptr{airArray}, Cint), arr, error)
end

function airMopError(arr)
    ccall((:airMopError, libteem), Cvoid, (Ptr{airArray},), arr)
end

function airMopOkay(arr)
    ccall((:airMopOkay, libteem), Cvoid, (Ptr{airArray},), arr)
end

function airMopDebug(arr)
    ccall((:airMopDebug, libteem), Cvoid, (Ptr{airArray},), arr)
end

function airMopSingleDone(arr, ptr, error)
    ccall((:airMopSingleDone, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}, Cint), arr, ptr, error)
end

function airMopSingleError(arr, ptr)
    ccall((:airMopSingleError, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}), arr, ptr)
end

function airMopSingleOkay(arr, ptr)
    ccall((:airMopSingleOkay, libteem), Cvoid, (Ptr{airArray}, Ptr{Cvoid}), arr, ptr)
end
# Julia wrapper for header: airExistsConf.h
# Automatically generated using Clang.jl

# Julia wrapper for header: biff.h
# Automatically generated using Clang.jl


function biffMsgNew(key)
    ccall((:biffMsgNew, libteem), Ptr{biffMsg}, (Cstring,), key)
end

function biffMsgNix(msg)
    ccall((:biffMsgNix, libteem), Ptr{biffMsg}, (Ptr{biffMsg},), msg)
end

function biffMsgAdd(msg, err)
    ccall((:biffMsgAdd, libteem), Cvoid, (Ptr{biffMsg}, Cstring), msg, err)
end

function biffMsgClear(msg)
    ccall((:biffMsgClear, libteem), Cvoid, (Ptr{biffMsg},), msg)
end

function biffMsgLineLenMax(msg)
    ccall((:biffMsgLineLenMax, libteem), UInt32, (Ptr{biffMsg},), msg)
end

function biffMsgMove(dest, src, err)
    ccall((:biffMsgMove, libteem), Cvoid, (Ptr{biffMsg}, Ptr{biffMsg}, Cstring), dest, src, err)
end

function biffMsgErrNum(msg)
    ccall((:biffMsgErrNum, libteem), UInt32, (Ptr{biffMsg},), msg)
end

function biffMsgStrlen(msg)
    ccall((:biffMsgStrlen, libteem), UInt32, (Ptr{biffMsg},), msg)
end

function biffMsgStrSet(ret, msg)
    ccall((:biffMsgStrSet, libteem), Cvoid, (Cstring, Ptr{biffMsg}), ret, msg)
end

function biffMsgStrAlloc(msg)
    ccall((:biffMsgStrAlloc, libteem), Cstring, (Ptr{biffMsg},), msg)
end

function biffMsgStrGet(msg)
    ccall((:biffMsgStrGet, libteem), Cstring, (Ptr{biffMsg},), msg)
end

function biffAdd(key, err)
    ccall((:biffAdd, libteem), Cvoid, (Cstring, Cstring), key, err)
end

function biffMaybeAdd(key, err, useBiff)
    ccall((:biffMaybeAdd, libteem), Cvoid, (Cstring, Cstring, Cint), key, err, useBiff)
end

function biffGet(key)
    ccall((:biffGet, libteem), Cstring, (Cstring,), key)
end

function biffGetStrlen(key)
    ccall((:biffGetStrlen, libteem), UInt32, (Cstring,), key)
end

function biffSetStr(str, key)
    ccall((:biffSetStr, libteem), Cvoid, (Cstring, Cstring), str, key)
end

function biffCheck(key)
    ccall((:biffCheck, libteem), UInt32, (Cstring,), key)
end

function biffMove(destKey, err, srcKey)
    ccall((:biffMove, libteem), Cvoid, (Cstring, Cstring, Cstring), destKey, err, srcKey)
end

function biffSetStrDone(str, key)
    ccall((:biffSetStrDone, libteem), Cvoid, (Cstring, Cstring), str, key)
end

function biffDone(key)
    ccall((:biffDone, libteem), Cvoid, (Cstring,), key)
end

function biffGetDone(key)
    ccall((:biffGetDone, libteem), Cstring, (Cstring,), key)
end
# Julia wrapper for header: dye.h
# Automatically generated using Clang.jl


function dyeStrToSpace(str)
    ccall((:dyeStrToSpace, libteem), Cint, (Cstring,), str)
end

function dyeColorInit(col)
    ccall((:dyeColorInit, libteem), Ptr{dyeColor}, (Ptr{dyeColor},), col)
end

function dyeColorSet(col, space, v0, v1, v2)
    ccall((:dyeColorSet, libteem), Ptr{dyeColor}, (Ptr{dyeColor}, Cint, Cfloat, Cfloat, Cfloat), col, space, v0, v1, v2)
end

function dyeColorGet(v0P, v1P, v2P, col)
    ccall((:dyeColorGet, libteem), Cint, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{dyeColor}), v0P, v1P, v2P, col)
end

function dyeColorGetAs(v0P, v1P, v2P, col, space)
    ccall((:dyeColorGetAs, libteem), Cint, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{dyeColor}, Cint), v0P, v1P, v2P, col, space)
end

function dyeColorNew()
    ccall((:dyeColorNew, libteem), Ptr{dyeColor}, ())
end

function dyeColorCopy(c1, c0)
    ccall((:dyeColorCopy, libteem), Ptr{dyeColor}, (Ptr{dyeColor}, Ptr{dyeColor}), c1, c0)
end

function dyeColorNix(col)
    ccall((:dyeColorNix, libteem), Ptr{dyeColor}, (Ptr{dyeColor},), col)
end

function dyeColorParse(col, str)
    ccall((:dyeColorParse, libteem), Cint, (Ptr{dyeColor}, Cstring), col, str)
end

function dyeColorSprintf(str, col)
    ccall((:dyeColorSprintf, libteem), Cstring, (Cstring, Ptr{dyeColor}), str, col)
end

function dyeRGBtoHSV(H, S, V, R, G, B)
    ccall((:dyeRGBtoHSV, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), H, S, V, R, G, B)
end

function dyeHSVtoRGB(R, G, B, H, S, V)
    ccall((:dyeHSVtoRGB, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), R, G, B, H, S, V)
end

function dyeRGBtoHSL(H, S, L, R, G, B)
    ccall((:dyeRGBtoHSL, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), H, S, L, R, G, B)
end

function dyeHSLtoRGB(R, G, B, H, S, L)
    ccall((:dyeHSLtoRGB, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), R, G, B, H, S, L)
end

function dyeRGBtoXYZ(X, Y, Z, R, G, B)
    ccall((:dyeRGBtoXYZ, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), X, Y, Z, R, G, B)
end

function dyeXYZtoRGB(R, G, B, X, Y, Z)
    ccall((:dyeXYZtoRGB, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), R, G, B, X, Y, Z)
end

function dyeXYZtoLAB(L, A, B, X, Y, Z)
    ccall((:dyeXYZtoLAB, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), L, A, B, X, Y, Z)
end

function dyeXYZtoLUV(L, U, V, X, Y, Z)
    ccall((:dyeXYZtoLUV, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), L, U, V, X, Y, Z)
end

function dyeLABtoXYZ(X, Y, Z, L, A, B)
    ccall((:dyeLABtoXYZ, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), X, Y, Z, L, A, B)
end

function dyeLUVtoXYZ(X, Y, Z, L, U, V)
    ccall((:dyeLUVtoXYZ, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), X, Y, Z, L, U, V)
end

function dyeLABtoLCH(Lp, C, H, L, A, B)
    ccall((:dyeLABtoLCH, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), Lp, C, H, L, A, B)
end

function dyeLCHtoLAB(Lp, A, B, L, C, H)
    ccall((:dyeLCHtoLAB, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), Lp, A, B, L, C, H)
end

function dyeXYZtoLCH(L, C, H, X, Y, Z)
    ccall((:dyeXYZtoLCH, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), L, C, H, X, Y, Z)
end

function dyeLCHtoXYZ(X, Y, Z, L, C, H)
    ccall((:dyeLCHtoXYZ, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat), X, Y, Z, L, C, H)
end

function dyeConvert(col, space)
    ccall((:dyeConvert, libteem), Cint, (Ptr{dyeColor}, Cint), col, space)
end
# Julia wrapper for header: echo.h
# Automatically generated using Clang.jl


function echoRTParmNew()
    ccall((:echoRTParmNew, libteem), Ptr{echoRTParm}, ())
end

function echoRTParmNix(parm)
    ccall((:echoRTParmNix, libteem), Ptr{echoRTParm}, (Ptr{echoRTParm},), parm)
end

function echoGlobalStateNew()
    ccall((:echoGlobalStateNew, libteem), Ptr{echoGlobalState}, ())
end

function echoGlobalStateNix(state)
    ccall((:echoGlobalStateNix, libteem), Ptr{echoGlobalState}, (Ptr{echoGlobalState},), state)
end

function echoThreadStateNew()
    ccall((:echoThreadStateNew, libteem), Ptr{echoThreadState}, ())
end

function echoThreadStateNix(state)
    ccall((:echoThreadStateNix, libteem), Ptr{echoThreadState}, (Ptr{echoThreadState},), state)
end

function echoSceneNew()
    ccall((:echoSceneNew, libteem), Ptr{echoScene}, ())
end

function echoSceneNix(scene)
    ccall((:echoSceneNix, libteem), Ptr{echoScene}, (Ptr{echoScene},), scene)
end

function echoObjectNew(scene, type)
    ccall((:echoObjectNew, libteem), Ptr{echoObject}, (Ptr{echoScene}, UInt8), scene, type)
end

function echoObjectAdd(scene, obj)
    ccall((:echoObjectAdd, libteem), Cint, (Ptr{echoScene}, Ptr{echoObject}), scene, obj)
end

function echoObjectNix(obj)
    ccall((:echoObjectNix, libteem), Ptr{echoObject}, (Ptr{echoObject},), obj)
end

function echoRoughSphereNew(scene, theRes, phiRes, matx)
    ccall((:echoRoughSphereNew, libteem), Ptr{echoObject}, (Ptr{echoScene}, Cint, Cint, Ptr{echoPos_t}), scene, theRes, phiRes, matx)
end

function echoBoundsGet(lo, hi, obj)
    ccall((:echoBoundsGet, libteem), Cvoid, (Ptr{echoPos_t}, Ptr{echoPos_t}, Ptr{echoObject}), lo, hi, obj)
end

function echoListAdd(parent, child)
    ccall((:echoListAdd, libteem), Cvoid, (Ptr{echoObject}, Ptr{echoObject}), parent, child)
end

function echoListSplit(scene, list, axis)
    ccall((:echoListSplit, libteem), Ptr{echoObject}, (Ptr{echoScene}, Ptr{echoObject}, Cint), scene, list, axis)
end

function echoListSplit3(scene, list, depth)
    ccall((:echoListSplit3, libteem), Ptr{echoObject}, (Ptr{echoScene}, Ptr{echoObject}, Cint), scene, list, depth)
end

function echoSphereSet(sphere, x, y, z, rad)
    ccall((:echoSphereSet, libteem), Cvoid, (Ptr{echoObject}, echoPos_t, echoPos_t, echoPos_t, echoPos_t), sphere, x, y, z, rad)
end

function echoCylinderSet(cylind, axis)
    ccall((:echoCylinderSet, libteem), Cvoid, (Ptr{echoObject}, Cint), cylind, axis)
end

function echoSuperquadSet(squad, axis, A, B)
    ccall((:echoSuperquadSet, libteem), Cvoid, (Ptr{echoObject}, Cint, echoPos_t, echoPos_t), squad, axis, A, B)
end

function echoRectangleSet(rect, ogx, ogy, ogz, x0, y0, z0, x1, y1, z1)
    ccall((:echoRectangleSet, libteem), Cvoid, (Ptr{echoObject}, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t), rect, ogx, ogy, ogz, x0, y0, z0, x1, y1, z1)
end

function echoTriangleSet(tri, x0, y0, z0, x1, y1, z1, x2, y2, z2)
    ccall((:echoTriangleSet, libteem), Cvoid, (Ptr{echoObject}, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t, echoPos_t), tri, x0, y0, z0, x1, y1, z1, x2, y2, z2)
end

function echoTriMeshSet(trim, numV, pos, numF, vert)
    ccall((:echoTriMeshSet, libteem), Cvoid, (Ptr{echoObject}, Cint, Ptr{echoPos_t}, Cint, Ptr{Cint}), trim, numV, pos, numF, vert)
end

function echoInstanceSet(inst, M, obj)
    ccall((:echoInstanceSet, libteem), Cvoid, (Ptr{echoObject}, Ptr{echoPos_t}, Ptr{echoObject}), inst, M, obj)
end

function echoColorSet(obj, R, G, B, A)
    ccall((:echoColorSet, libteem), Cvoid, (Ptr{echoObject}, echoCol_t, echoCol_t, echoCol_t, echoCol_t), obj, R, G, B, A)
end

function echoMatterPhongSet(scene, obj, ka, kd, ks, sp)
    ccall((:echoMatterPhongSet, libteem), Cvoid, (Ptr{echoScene}, Ptr{echoObject}, echoCol_t, echoCol_t, echoCol_t, echoCol_t), scene, obj, ka, kd, ks, sp)
end

function echoMatterGlassSet(scene, obj, index, ka, kd, fuzzy)
    ccall((:echoMatterGlassSet, libteem), Cvoid, (Ptr{echoScene}, Ptr{echoObject}, echoCol_t, echoCol_t, echoCol_t, echoCol_t), scene, obj, index, ka, kd, fuzzy)
end

function echoMatterMetalSet(scene, obj, R0, ka, kd, fuzzy)
    ccall((:echoMatterMetalSet, libteem), Cvoid, (Ptr{echoScene}, Ptr{echoObject}, echoCol_t, echoCol_t, echoCol_t, echoCol_t), scene, obj, R0, ka, kd, fuzzy)
end

function echoMatterLightSet(scene, obj, power, unit)
    ccall((:echoMatterLightSet, libteem), Cvoid, (Ptr{echoScene}, Ptr{echoObject}, echoCol_t, echoCol_t), scene, obj, power, unit)
end

function echoMatterTextureSet(scene, obj, ntext)
    ccall((:echoMatterTextureSet, libteem), Cvoid, (Ptr{echoScene}, Ptr{echoObject}, Ptr{Nrrd}), scene, obj, ntext)
end

function echoLightPosition(pos, light, tstate)
    ccall((:echoLightPosition, libteem), Cvoid, (Ptr{echoPos_t}, Ptr{echoObject}, Ptr{echoThreadState}), pos, light, tstate)
end

function echoLightColor(rgb, Ldist, light, parm, tstate)
    ccall((:echoLightColor, libteem), Cvoid, (Ptr{echoCol_t}, echoPos_t, Ptr{echoObject}, Ptr{echoRTParm}, Ptr{echoThreadState}), rgb, Ldist, light, parm, tstate)
end

function echoEnvmapLookup(rgb, norm, envmap)
    ccall((:echoEnvmapLookup, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{echoPos_t}, Ptr{Nrrd}), rgb, norm, envmap)
end

function echoTextureLookup(rgba, ntext, u, v, parm)
    ccall((:echoTextureLookup, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{Nrrd}, echoPos_t, echoPos_t, Ptr{echoRTParm}), rgba, ntext, u, v, parm)
end

function echoIntxMaterialColor(rgba, intx, parm)
    ccall((:echoIntxMaterialColor, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{echoIntx}, Ptr{echoRTParm}), rgba, intx, parm)
end

function echoIntxLightColor(ambi, diff, spec, sp, intx, scene, parm, tstate)
    ccall((:echoIntxLightColor, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{echoCol_t}, Ptr{echoCol_t}, echoCol_t, Ptr{echoIntx}, Ptr{echoScene}, Ptr{echoRTParm}, Ptr{echoThreadState}), ambi, diff, spec, sp, intx, scene, parm, tstate)
end

function echoIntxFuzzify(intx, fuzz, tstate)
    ccall((:echoIntxFuzzify, libteem), Cvoid, (Ptr{echoIntx}, echoCol_t, Ptr{echoThreadState}), intx, fuzz, tstate)
end

function echoRayIntx(intx, ray, scene, parm, tstate)
    ccall((:echoRayIntx, libteem), Cint, (Ptr{echoIntx}, Ptr{echoRay}, Ptr{echoScene}, Ptr{echoRTParm}, Ptr{echoThreadState}), intx, ray, scene, parm, tstate)
end

function echoIntxColor(rgba, intx, scene, parm, tstate)
    ccall((:echoIntxColor, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{echoIntx}, Ptr{echoScene}, Ptr{echoRTParm}, Ptr{echoThreadState}), rgba, intx, scene, parm, tstate)
end

function echoThreadStateInit(threadIdx, tstate, parm, gstate)
    ccall((:echoThreadStateInit, libteem), Cint, (Cint, Ptr{echoThreadState}, Ptr{echoRTParm}, Ptr{echoGlobalState}), threadIdx, tstate, parm, gstate)
end

function echoJitterCompute(parm, state)
    ccall((:echoJitterCompute, libteem), Cvoid, (Ptr{echoRTParm}, Ptr{echoThreadState}), parm, state)
end

function echoRayColor(rgba, ray, scene, parm, tstate)
    ccall((:echoRayColor, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{echoRay}, Ptr{echoScene}, Ptr{echoRTParm}, Ptr{echoThreadState}), rgba, ray, scene, parm, tstate)
end

function echoChannelAverage(img, parm, tstate)
    ccall((:echoChannelAverage, libteem), Cvoid, (Ptr{echoCol_t}, Ptr{echoRTParm}, Ptr{echoThreadState}), img, parm, tstate)
end

function echoRTRenderCheck(nraw, cam, scene, parm, gstate)
    ccall((:echoRTRenderCheck, libteem), Cint, (Ptr{Nrrd}, Ptr{limnCamera}, Ptr{echoScene}, Ptr{echoRTParm}, Ptr{echoGlobalState}), nraw, cam, scene, parm, gstate)
end

function echoRTRender(nraw, cam, scene, parm, gstate)
    ccall((:echoRTRender, libteem), Cint, (Ptr{Nrrd}, Ptr{limnCamera}, Ptr{echoScene}, Ptr{echoRTParm}, Ptr{echoGlobalState}), nraw, cam, scene, parm, gstate)
end
# Julia wrapper for header: ell.h
# Automatically generated using Clang.jl


function ell_3m_print_f(f, s)
    ccall((:ell_3m_print_f, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cfloat}), f, s)
end

function ell_3v_print_f(f, s)
    ccall((:ell_3v_print_f, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cfloat}), f, s)
end

function ell_3m_print_d(f, s)
    ccall((:ell_3m_print_d, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cdouble}), f, s)
end

function ell_3v_print_d(f, s)
    ccall((:ell_3v_print_d, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cdouble}), f, s)
end

function ell_4m_print_f(f, s)
    ccall((:ell_4m_print_f, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cfloat}), f, s)
end

function ell_4v_print_f(f, s)
    ccall((:ell_4v_print_f, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cfloat}), f, s)
end

function ell_4m_print_d(f, s)
    ccall((:ell_4m_print_d, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cdouble}), f, s)
end

function ell_4v_print_d(f, s)
    ccall((:ell_4v_print_d, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cdouble}), f, s)
end

function ell_4v_norm_f(bv, av)
    ccall((:ell_4v_norm_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), bv, av)
end

function ell_3v_perp_f(p, v)
    ccall((:ell_3v_perp_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), p, v)
end

function ell_3v_perp_d(p, v)
    ccall((:ell_3v_perp_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), p, v)
end

function ell_3mv_mul_f(v2, m, v1)
    ccall((:ell_3mv_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), v2, m, v1)
end

function ell_3mv_mul_d(v2, m, v1)
    ccall((:ell_3mv_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), v2, m, v1)
end

function ell_4mv_mul_f(v2, m, v1)
    ccall((:ell_4mv_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), v2, m, v1)
end

function ell_4mv_mul_d(v2, m, v1)
    ccall((:ell_4mv_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), v2, m, v1)
end

function ell_2v_angle_f(u, v)
    ccall((:ell_2v_angle_f, libteem), Cfloat, (Ptr{Cfloat}, Ptr{Cfloat}), u, v)
end

function ell_2v_angle_d(u, v)
    ccall((:ell_2v_angle_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}), u, v)
end

function ell_3v_angle_f(u, v)
    ccall((:ell_3v_angle_f, libteem), Cfloat, (Ptr{Cfloat}, Ptr{Cfloat}), u, v)
end

function ell_3v_angle_d(u, v)
    ccall((:ell_3v_angle_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}), u, v)
end

function ell_3v_area_spherical_d(avec, bvec, cvec)
    ccall((:ell_3v_area_spherical_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), avec, bvec, cvec)
end

function ell_3v_barycentric_spherical_d(bary, av, bv, cv, vv)
    ccall((:ell_3v_barycentric_spherical_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), bary, av, bv, cv, vv)
end

function ell_3m_mul_f(m3, m1, m2)
    ccall((:ell_3m_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), m3, m1, m2)
end

function ell_3m_mul_d(m3, m1, m2)
    ccall((:ell_3m_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), m3, m1, m2)
end

function ell_3m_pre_mul_f(A, B)
    ccall((:ell_3m_pre_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), A, B)
end

function ell_3m_pre_mul_d(A, B)
    ccall((:ell_3m_pre_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), A, B)
end

function ell_3m_post_mul_f(A, B)
    ccall((:ell_3m_post_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), A, B)
end

function ell_3m_post_mul_d(m, x)
    ccall((:ell_3m_post_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), m, x)
end

function ell_3m_det_f(m)
    ccall((:ell_3m_det_f, libteem), Cfloat, (Ptr{Cfloat},), m)
end

function ell_3m_det_d(m)
    ccall((:ell_3m_det_d, libteem), Cdouble, (Ptr{Cdouble},), m)
end

function ell_3m_inv_f(i, m)
    ccall((:ell_3m_inv_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), i, m)
end

function ell_3m_inv_d(i, m)
    ccall((:ell_3m_inv_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), i, m)
end

function ell_4m_mul_f(m3, m1, m2)
    ccall((:ell_4m_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), m3, m1, m2)
end

function ell_4m_mul_d(m3, m1, m2)
    ccall((:ell_4m_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), m3, m1, m2)
end

function ell_4m_pre_mul_f(m, x)
    ccall((:ell_4m_pre_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), m, x)
end

function ell_4m_pre_mul_d(m, x)
    ccall((:ell_4m_pre_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), m, x)
end

function ell_4m_post_mul_f(m, x)
    ccall((:ell_4m_post_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), m, x)
end

function ell_4m_post_mul_d(m, x)
    ccall((:ell_4m_post_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), m, x)
end

function ell_4m_det_f(m)
    ccall((:ell_4m_det_f, libteem), Cfloat, (Ptr{Cfloat},), m)
end

function ell_4m_det_d(m)
    ccall((:ell_4m_det_d, libteem), Cdouble, (Ptr{Cdouble},), m)
end

function ell_4m_inv_f(i, m)
    ccall((:ell_4m_inv_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), i, m)
end

function ell_4m_inv_d(i, m)
    ccall((:ell_4m_inv_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), i, m)
end

function ell_6m_mul_d(AB, A, B)
    ccall((:ell_6m_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), AB, A, B)
end

function ell_3m_rotate_between_d(rot, from, to)
    ccall((:ell_3m_rotate_between_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), rot, from, to)
end

function ell_3m_to_q_f(q, m)
    ccall((:ell_3m_to_q_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), q, m)
end

function ell_3m_to_q_d(q, m)
    ccall((:ell_3m_to_q_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), q, m)
end

function ell_4m_to_q_f(q, m)
    ccall((:ell_4m_to_q_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), q, m)
end

function ell_4m_to_q_d(q, m)
    ccall((:ell_4m_to_q_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), q, m)
end

function ell_q_to_3m_f(m, q)
    ccall((:ell_q_to_3m_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), m, q)
end

function ell_q_to_3m_d(m, q)
    ccall((:ell_q_to_3m_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), m, q)
end

function ell_q_to_4m_f(m, q)
    ccall((:ell_q_to_4m_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), m, q)
end

function ell_q_to_4m_d(m, q)
    ccall((:ell_q_to_4m_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), m, q)
end

function ell_q_to_aa_f(axis, q)
    ccall((:ell_q_to_aa_f, libteem), Cfloat, (Ptr{Cfloat}, Ptr{Cfloat}), axis, q)
end

function ell_q_to_aa_d(axis, q)
    ccall((:ell_q_to_aa_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}), axis, q)
end

function ell_aa_to_q_f(q, angle, axis)
    ccall((:ell_aa_to_q_f, libteem), Cvoid, (Ptr{Cfloat}, Cfloat, Ptr{Cfloat}), q, angle, axis)
end

function ell_aa_to_q_d(q, angle, axis)
    ccall((:ell_aa_to_q_d, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), q, angle, axis)
end

function ell_aa_to_3m_f(m, angle, axis)
    ccall((:ell_aa_to_3m_f, libteem), Cvoid, (Ptr{Cfloat}, Cfloat, Ptr{Cfloat}), m, angle, axis)
end

function ell_aa_to_3m_d(m, angle, axis)
    ccall((:ell_aa_to_3m_d, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), m, angle, axis)
end

function ell_aa_to_4m_f(m, angle, axis)
    ccall((:ell_aa_to_4m_f, libteem), Cvoid, (Ptr{Cfloat}, Cfloat, Ptr{Cfloat}), m, angle, axis)
end

function ell_aa_to_4m_d(m, angle, axis)
    ccall((:ell_aa_to_4m_d, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), m, angle, axis)
end

function ell_3m_to_aa_f(axis, m)
    ccall((:ell_3m_to_aa_f, libteem), Cfloat, (Ptr{Cfloat}, Ptr{Cfloat}), axis, m)
end

function ell_3m_to_aa_d(axis, m)
    ccall((:ell_3m_to_aa_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}), axis, m)
end

function ell_4m_to_aa_f(axis, m)
    ccall((:ell_4m_to_aa_f, libteem), Cfloat, (Ptr{Cfloat}, Ptr{Cfloat}), axis, m)
end

function ell_4m_to_aa_d(axis, m)
    ccall((:ell_4m_to_aa_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}), axis, m)
end

function ell_q_mul_f(q3, q1, q2)
    ccall((:ell_q_mul_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), q3, q1, q2)
end

function ell_q_mul_d(q3, q1, q2)
    ccall((:ell_q_mul_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), q3, q1, q2)
end

function ell_q_inv_f(qi, q)
    ccall((:ell_q_inv_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), qi, q)
end

function ell_q_inv_d(qi, q)
    ccall((:ell_q_inv_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), qi, q)
end

function ell_q_pow_f(q2, q1, p)
    ccall((:ell_q_pow_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Cfloat), q2, q1, p)
end

function ell_q_pow_d(q2, q1, p)
    ccall((:ell_q_pow_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), q2, q1, p)
end

function ell_q_div_f(q3, q1, q2)
    ccall((:ell_q_div_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), q3, q1, q2)
end

function ell_q_div_d(q3, q1, q2)
    ccall((:ell_q_div_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), q3, q1, q2)
end

function ell_q_exp_f(q2, q1)
    ccall((:ell_q_exp_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), q2, q1)
end

function ell_q_exp_d(q2, q1)
    ccall((:ell_q_exp_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), q2, q1)
end

function ell_q_log_f(q2, q1)
    ccall((:ell_q_log_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), q2, q1)
end

function ell_q_log_d(q2, q1)
    ccall((:ell_q_log_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), q2, q1)
end

function ell_q_3v_rotate_f(v2, q, v1)
    ccall((:ell_q_3v_rotate_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), v2, q, v1)
end

function ell_q_3v_rotate_d(v2, q, v1)
    ccall((:ell_q_3v_rotate_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), v2, q, v1)
end

function ell_q_4v_rotate_f(v2, q, v1)
    ccall((:ell_q_4v_rotate_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), v2, q, v1)
end

function ell_q_4v_rotate_d(v2, q, v1)
    ccall((:ell_q_4v_rotate_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), v2, q, v1)
end

function ell_q_avg4_d(m, iterP, _q1, _q2, _q3, _q4, _wght, eps, maxIter)
    ccall((:ell_q_avg4_d, libteem), Cint, (Ptr{Cdouble}, Ptr{UInt32}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble, UInt32), m, iterP, _q1, _q2, _q3, _q4, _wght, eps, maxIter)
end

function ell_q_avgN_d(mm, iterP, qq, qbuff, wght, NN, eps, maxIter)
    ccall((:ell_q_avgN_d, libteem), Cint, (Ptr{Cdouble}, Ptr{UInt32}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, UInt32, Cdouble, UInt32), mm, iterP, qq, qbuff, wght, NN, eps, maxIter)
end

function ell_Nm_check(mat, doNrrdCheck)
    ccall((:ell_Nm_check, libteem), Cint, (Ptr{Nrrd}, Cint), mat, doNrrdCheck)
end

function ell_Nm_tran(dest, src)
    ccall((:ell_Nm_tran, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), dest, src)
end

function ell_Nm_mul(dest, A, B)
    ccall((:ell_Nm_mul, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), dest, A, B)
end

function ell_Nm_inv(dest, src)
    ccall((:ell_Nm_inv, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), dest, src)
end

function ell_Nm_pseudo_inv(dest, src)
    ccall((:ell_Nm_pseudo_inv, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), dest, src)
end

function ell_Nm_wght_pseudo_inv(ninv, nA, nW)
    ccall((:ell_Nm_wght_pseudo_inv, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), ninv, nA, nW)
end

function ell_cubic(root, A, B, C, newton)
    ccall((:ell_cubic, libteem), Cint, (Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, Cint), root, A, B, C, newton)
end

function ell_quadratic(root, A, B, C)
    ccall((:ell_quadratic, libteem), Cint, (Ptr{Cdouble}, Cdouble, Cdouble, Cdouble), root, A, B, C)
end

function ell_2m_1d_nullspace_d(ans, n)
    ccall((:ell_2m_1d_nullspace_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), ans, n)
end

function ell_2m_eigenvalues_d(eval, m)
    ccall((:ell_2m_eigenvalues_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}), eval, m)
end

function ell_2m_eigensolve_d(eval, evec, m)
    ccall((:ell_2m_eigensolve_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), eval, evec, m)
end

function ell_3m_1d_nullspace_d(ans, n)
    ccall((:ell_3m_1d_nullspace_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), ans, n)
end

function ell_3m_2d_nullspace_d(ans0, ans1, n)
    ccall((:ell_3m_2d_nullspace_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), ans0, ans1, n)
end

function ell_3m_eigenvalues_d(eval, m, newton)
    ccall((:ell_3m_eigenvalues_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Cint), eval, m, newton)
end

function ell_3m_eigensolve_d(eval, evec, m, newton)
    ccall((:ell_3m_eigensolve_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cint), eval, evec, m, newton)
end

function ell_3m2sub_eigenvalues_d(eval, m)
    ccall((:ell_3m2sub_eigenvalues_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}), eval, m)
end

function ell_3m2sub_eigensolve_d(eval, evec, m)
    ccall((:ell_3m2sub_eigensolve_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), eval, evec, m)
end

function ell_3m_svd_d(uu, sval, vv, mat, newton)
    ccall((:ell_3m_svd_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cint), uu, sval, vv, mat, newton)
end

function ell_6ms_eigensolve_d(eval, evec, mat, eps)
    ccall((:ell_6ms_eigensolve_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), eval, evec, mat, eps)
end
# Julia wrapper for header: ellMacros.h
# Automatically generated using Clang.jl

# Julia wrapper for header: gage.h
# Automatically generated using Clang.jl


function gageParmReset(parm)
    ccall((:gageParmReset, libteem), Cvoid, (Ptr{gageParm},), parm)
end

function gagePointReset(point)
    ccall((:gagePointReset, libteem), Cvoid, (Ptr{gagePoint},), point)
end

function gageItemSpecNew()
    ccall((:gageItemSpecNew, libteem), Ptr{gageItemSpec}, ())
end

function gageItemSpecInit(isp)
    ccall((:gageItemSpecInit, libteem), Cvoid, (Ptr{gageItemSpec},), isp)
end

function gageItemSpecNix(isp)
    ccall((:gageItemSpecNix, libteem), Ptr{gageItemSpec}, (Ptr{gageItemSpec},), isp)
end

function gageKindCheck(kind)
    ccall((:gageKindCheck, libteem), Cint, (Ptr{gageKind},), kind)
end

function gageKindTotalAnswerLength(kind)
    ccall((:gageKindTotalAnswerLength, libteem), UInt32, (Ptr{gageKind},), kind)
end

function gageKindAnswerLength(kind, item)
    ccall((:gageKindAnswerLength, libteem), UInt32, (Ptr{gageKind}, Cint), kind, item)
end

function gageKindAnswerOffset(kind, item)
    ccall((:gageKindAnswerOffset, libteem), Cint, (Ptr{gageKind}, Cint), kind, item)
end

function gageKindVolumeCheck(kind, nrrd)
    ccall((:gageKindVolumeCheck, libteem), Cint, (Ptr{gageKind}, Ptr{Nrrd}), kind, nrrd)
end

function gageQueryPrint(file, kind, query)
    ccall((:gageQueryPrint, libteem), Cvoid, (Ptr{Cvoid}, Ptr{gageKind}, gageQuery), file, kind, query)
end

function gageScl3PFilter2()
    ccall((:gageScl3PFilter2, libteem), Cvoid, ())
end

function gageScl3PFilter4()
    ccall((:gageScl3PFilter4, libteem), Cvoid, ())
end

function gageScl3PFilter6()
    ccall((:gageScl3PFilter6, libteem), Cvoid, ())
end

function gageScl3PFilter8()
    ccall((:gageScl3PFilter8, libteem), Cvoid, ())
end

function gageScl3PFilterN(shape, fd, iv3, iv2, iv1, fw00, fw11, fw22, val, gvec, hess, needD)
    ccall((:gageScl3PFilterN, libteem), Cvoid, (Ptr{gageShape}, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cint}), shape, fd, iv3, iv2, iv1, fw00, fw11, fw22, val, gvec, hess, needD)
end

function gageShapeReset(shp)
    ccall((:gageShapeReset, libteem), Cvoid, (Ptr{gageShape},), shp)
end

function gageShapeNew()
    ccall((:gageShapeNew, libteem), Ptr{gageShape}, ())
end

function gageShapeCopy(shp)
    ccall((:gageShapeCopy, libteem), Ptr{gageShape}, (Ptr{gageShape},), shp)
end

function gageShapeNix(shape)
    ccall((:gageShapeNix, libteem), Ptr{gageShape}, (Ptr{gageShape},), shape)
end

function gageShapeSet(shp, nin, baseDim)
    ccall((:gageShapeSet, libteem), Cint, (Ptr{gageShape}, Ptr{Nrrd}, Cint), shp, nin, baseDim)
end

function gageShapeWtoI(shape, index, world)
    ccall((:gageShapeWtoI, libteem), Cvoid, (Ptr{gageShape}, Ptr{Cdouble}, Ptr{Cdouble}), shape, index, world)
end

function gageShapeItoW(shape, world, index)
    ccall((:gageShapeItoW, libteem), Cvoid, (Ptr{gageShape}, Ptr{Cdouble}, Ptr{Cdouble}), shape, world, index)
end

function gageShapeEqual(shp1, name1, shp2, name2)
    ccall((:gageShapeEqual, libteem), Cint, (Ptr{gageShape}, Cstring, Ptr{gageShape}, Cstring), shp1, name1, shp2, name2)
end

function gageShapeBoundingBox(min, max, shape)
    ccall((:gageShapeBoundingBox, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{gageShape}), min, max, shape)
end

function gageVolumeCheck(ctx, nin, kind)
    ccall((:gageVolumeCheck, libteem), Cint, (Ptr{gageContext}, Ptr{Nrrd}, Ptr{gageKind}), ctx, nin, kind)
end

function gagePerVolumeNew(ctx, nin, kind)
    ccall((:gagePerVolumeNew, libteem), Ptr{gagePerVolume}, (Ptr{gageContext}, Ptr{Nrrd}, Ptr{gageKind}), ctx, nin, kind)
end

function gagePerVolumeNix(pvl)
    ccall((:gagePerVolumeNix, libteem), Ptr{gagePerVolume}, (Ptr{gagePerVolume},), pvl)
end

function gageAnswerPointer(ctx, pvl, item)
    ccall((:gageAnswerPointer, libteem), Ptr{Cdouble}, (Ptr{gageContext}, Ptr{gagePerVolume}, Cint), ctx, pvl, item)
end

function gageAnswerLength(ctx, pvl, item)
    ccall((:gageAnswerLength, libteem), UInt32, (Ptr{gageContext}, Ptr{gagePerVolume}, Cint), ctx, pvl, item)
end

function gageQueryReset(ctx, pvl)
    ccall((:gageQueryReset, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}), ctx, pvl)
end

function gageQuerySet(ctx, pvl, query)
    ccall((:gageQuerySet, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}, gageQuery), ctx, pvl, query)
end

function gageQueryAdd(ctx, pvl, query)
    ccall((:gageQueryAdd, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}, gageQuery), ctx, pvl, query)
end

function gageQueryItemOn(ctx, pvl, item)
    ccall((:gageQueryItemOn, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}, Cint), ctx, pvl, item)
end

function gageOptimSigSet(scale, num, sigmaMax)
    ccall((:gageOptimSigSet, libteem), Cint, (Ptr{Cdouble}, UInt32, UInt32), scale, num, sigmaMax)
end

function gageOptimSigContextNew(dim, sampleNumMax, trueImgNum, sigmaMin, sigmaMax, cutoff)
    ccall((:gageOptimSigContextNew, libteem), Ptr{gageOptimSigContext}, (UInt32, UInt32, UInt32, Cdouble, Cdouble, Cdouble), dim, sampleNumMax, trueImgNum, sigmaMin, sigmaMax, cutoff)
end

function gageOptimSigContextNix(oscx)
    ccall((:gageOptimSigContextNix, libteem), Ptr{gageOptimSigContext}, (Ptr{gageOptimSigContext},), oscx)
end

function gageOptimSigCalculate(oscx, sigma, sigmaNum, kssSpec, imgMeasr, allMeasr, maxIter, convEps)
    ccall((:gageOptimSigCalculate, libteem), Cint, (Ptr{gageOptimSigContext}, Ptr{Cdouble}, UInt32, Ptr{NrrdKernelSpec}, Cint, Cint, UInt32, Cdouble), oscx, sigma, sigmaNum, kssSpec, imgMeasr, allMeasr, maxIter, convEps)
end

function gageOptimSigErrorPlot(oscx, nout, sigma, sigmaNum, kssSpec, imgMeasr)
    ccall((:gageOptimSigErrorPlot, libteem), Cint, (Ptr{gageOptimSigContext}, Ptr{Nrrd}, Ptr{Cdouble}, UInt32, Ptr{NrrdKernelSpec}, Cint), oscx, nout, sigma, sigmaNum, kssSpec, imgMeasr)
end

function gageOptimSigErrorPlotSliding(oscx, nout, windowRho, sampleNum, kssSpec, imgMeasr)
    ccall((:gageOptimSigErrorPlotSliding, libteem), Cint, (Ptr{gageOptimSigContext}, Ptr{Nrrd}, Cdouble, UInt32, Ptr{NrrdKernelSpec}, Cint), oscx, nout, windowRho, sampleNum, kssSpec, imgMeasr)
end

function gageStackWtoI(ctx, swrl, outside)
    ccall((:gageStackWtoI, libteem), Cdouble, (Ptr{gageContext}, Cdouble, Ptr{Cint}), ctx, swrl, outside)
end

function gageStackItoW(ctx, si, outside)
    ccall((:gageStackItoW, libteem), Cdouble, (Ptr{gageContext}, Cdouble, Ptr{Cint}), ctx, si, outside)
end

function gageStackPerVolumeNew(ctx, pvlStack, nblur, blnum, kind)
    ccall((:gageStackPerVolumeNew, libteem), Cint, (Ptr{gageContext}, Ptr{Ptr{gagePerVolume}}, Ptr{Ptr{Nrrd}}, UInt32, Ptr{gageKind}), ctx, pvlStack, nblur, blnum, kind)
end

function gageStackPerVolumeAttach(ctx, pvlBase, pvlStack, stackPos, blnum)
    ccall((:gageStackPerVolumeAttach, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}, Ptr{Ptr{gagePerVolume}}, Ptr{Cdouble}, UInt32), ctx, pvlBase, pvlStack, stackPos, blnum)
end

function gageStackProbe(ctx, xi, yi, zi, si)
    ccall((:gageStackProbe, libteem), Cint, (Ptr{gageContext}, Cdouble, Cdouble, Cdouble, Cdouble), ctx, xi, yi, zi, si)
end

function gageStackProbeSpace(ctx, x, y, z, s, indexSpace, clamp)
    ccall((:gageStackProbeSpace, libteem), Cint, (Ptr{gageContext}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint), ctx, x, y, z, s, indexSpace, clamp)
end

function gageStackBlurParmNew()
    ccall((:gageStackBlurParmNew, libteem), Ptr{gageStackBlurParm}, ())
end

function gageStackBlurParmCopy(sbpDst, sbpSrc)
    ccall((:gageStackBlurParmCopy, libteem), Cint, (Ptr{gageStackBlurParm}, Ptr{gageStackBlurParm}), sbpDst, sbpSrc)
end

function gageStackBlurParmInit(parm)
    ccall((:gageStackBlurParmInit, libteem), Cvoid, (Ptr{gageStackBlurParm},), parm)
end

function gageStackBlurParmNix(sbp)
    ccall((:gageStackBlurParmNix, libteem), Ptr{gageStackBlurParm}, (Ptr{gageStackBlurParm},), sbp)
end

function gageStackBlurParmCompare(sbpA, nameA, sbpB, nameB, differ, explain)
    ccall((:gageStackBlurParmCompare, libteem), Cint, (Ptr{gageStackBlurParm}, Cstring, Ptr{gageStackBlurParm}, Cstring, Ptr{Cint}, Ptr{UInt8}), sbpA, nameA, sbpB, nameB, differ, explain)
end

function gageStackBlurParmScaleSet(sbp, num, sigmaMin, sigmaMax, uniformSigma, optimalL2L2)
    ccall((:gageStackBlurParmScaleSet, libteem), Cint, (Ptr{gageStackBlurParm}, UInt32, Cdouble, Cdouble, Cint, Cint), sbp, num, sigmaMin, sigmaMax, uniformSigma, optimalL2L2)
end

function gageStackBlurParmSigmaSet(sbp, num, sigmaMin, sigmaMax, sigmaSampling)
    ccall((:gageStackBlurParmSigmaSet, libteem), Cint, (Ptr{gageStackBlurParm}, UInt32, Cdouble, Cdouble, Cint), sbp, num, sigmaMin, sigmaMax, sigmaSampling)
end

function gageStackBlurParmKernelSet(sbp, kspec)
    ccall((:gageStackBlurParmKernelSet, libteem), Cint, (Ptr{gageStackBlurParm}, Ptr{NrrdKernelSpec}), sbp, kspec)
end

function gageStackBlurParmRenormalizeSet(sbp, renormalize)
    ccall((:gageStackBlurParmRenormalizeSet, libteem), Cint, (Ptr{gageStackBlurParm}, Cint), sbp, renormalize)
end

function gageStackBlurParmDgGoodSigmaMaxSet(sbp, dgGoodSigmaMax)
    ccall((:gageStackBlurParmDgGoodSigmaMaxSet, libteem), Cint, (Ptr{gageStackBlurParm}, Cdouble), sbp, dgGoodSigmaMax)
end

function gageStackBlurParmBoundarySet(sbp, boundary, padValue)
    ccall((:gageStackBlurParmBoundarySet, libteem), Cint, (Ptr{gageStackBlurParm}, Cint, Cdouble), sbp, boundary, padValue)
end

function gageStackBlurParmBoundarySpecSet(sbp, bsp)
    ccall((:gageStackBlurParmBoundarySpecSet, libteem), Cint, (Ptr{gageStackBlurParm}, Ptr{NrrdBoundarySpec}), sbp, bsp)
end

function gageStackBlurParmNeedSpatialBlurSet(sbp, sblur)
    ccall((:gageStackBlurParmNeedSpatialBlurSet, libteem), Cint, (Ptr{gageStackBlurParm}, Cint), sbp, sblur)
end

function gageStackBlurParmVerboseSet(sbp, verbose)
    ccall((:gageStackBlurParmVerboseSet, libteem), Cint, (Ptr{gageStackBlurParm}, Cint), sbp, verbose)
end

function gageStackBlurParmOneDimSet(sbp, oneDim)
    ccall((:gageStackBlurParmOneDimSet, libteem), Cint, (Ptr{gageStackBlurParm}, Cint), sbp, oneDim)
end

function gageStackBlurParmCheck(sbp)
    ccall((:gageStackBlurParmCheck, libteem), Cint, (Ptr{gageStackBlurParm},), sbp)
end

function gageStackBlurParmParse(sbp, extraFlags, extraParmsP, str)
    ccall((:gageStackBlurParmParse, libteem), Cint, (Ptr{gageStackBlurParm}, Ptr{Cint}, Ptr{Cstring}, Cstring), sbp, extraFlags, extraParmsP, str)
end

function gageStackBlurParmSprint(str, sbp, extraFlag, extraParm)
    ccall((:gageStackBlurParmSprint, libteem), Cint, (Ptr{UInt8}, Ptr{gageStackBlurParm}, Ptr{Cint}, Cstring), str, sbp, extraFlag, extraParm)
end

function gageStackBlur(nblur, sbp, nin, kind)
    ccall((:gageStackBlur, libteem), Cint, (Ptr{Ptr{Nrrd}}, Ptr{gageStackBlurParm}, Ptr{Nrrd}, Ptr{gageKind}), nblur, sbp, nin, kind)
end

function gageStackBlurCheck(nblur, sbp, nin, kind)
    ccall((:gageStackBlurCheck, libteem), Cint, (Ptr{Ptr{Nrrd}}, Ptr{gageStackBlurParm}, Ptr{Nrrd}, Ptr{gageKind}), nblur, sbp, nin, kind)
end

function gageStackBlurGet(nblur, recomputedP, sbp, format, nin, kind)
    ccall((:gageStackBlurGet, libteem), Cint, (Ptr{Ptr{Nrrd}}, Ptr{Cint}, Ptr{gageStackBlurParm}, Cstring, Ptr{Nrrd}, Ptr{gageKind}), nblur, recomputedP, sbp, format, nin, kind)
end

function gageStackBlurManage(nblurP, recomputedP, sbp, format, saveIfComputed, enc, nin, kind)
    ccall((:gageStackBlurManage, libteem), Cint, (Ptr{Ptr{Ptr{Nrrd}}}, Ptr{Cint}, Ptr{gageStackBlurParm}, Cstring, Cint, Ptr{NrrdEncoding}, Ptr{Nrrd}, Ptr{gageKind}), nblurP, recomputedP, sbp, format, saveIfComputed, enc, nin, kind)
end

function gageContextNew()
    ccall((:gageContextNew, libteem), Ptr{gageContext}, ())
end

function gageContextCopy(ctx)
    ccall((:gageContextCopy, libteem), Ptr{gageContext}, (Ptr{gageContext},), ctx)
end

function gageContextNix(ctx)
    ccall((:gageContextNix, libteem), Ptr{gageContext}, (Ptr{gageContext},), ctx)
end

function gageParmSet(ctx, which, val)
    ccall((:gageParmSet, libteem), Cvoid, (Ptr{gageContext}, Cint, Cdouble), ctx, which, val)
end

function gagePerVolumeIsAttached(ctx, pvl)
    ccall((:gagePerVolumeIsAttached, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}), ctx, pvl)
end

function gagePerVolumeAttach(ctx, pvl)
    ccall((:gagePerVolumeAttach, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}), ctx, pvl)
end

function gagePerVolumeDetach(ctx, pvl)
    ccall((:gagePerVolumeDetach, libteem), Cint, (Ptr{gageContext}, Ptr{gagePerVolume}), ctx, pvl)
end

function gageKernelSet(ctx, which, k, kparm)
    ccall((:gageKernelSet, libteem), Cint, (Ptr{gageContext}, Cint, Ptr{NrrdKernel}, Ptr{Cdouble}), ctx, which, k, kparm)
end

function gageKernelReset(ctx)
    ccall((:gageKernelReset, libteem), Cvoid, (Ptr{gageContext},), ctx)
end

function gageProbe(ctx, xi, yi, zi)
    ccall((:gageProbe, libteem), Cint, (Ptr{gageContext}, Cdouble, Cdouble, Cdouble), ctx, xi, yi, zi)
end

function gageProbeSpace(ctx, x, y, z, indexSpace, clamp)
    ccall((:gageProbeSpace, libteem), Cint, (Ptr{gageContext}, Cdouble, Cdouble, Cdouble, Cint, Cint), ctx, x, y, z, indexSpace, clamp)
end

function gageUpdate(ctx)
    ccall((:gageUpdate, libteem), Cint, (Ptr{gageContext},), ctx)
end

function gageStructureTensor(nout, nin, dScale, iScale, dsmp)
    ccall((:gageStructureTensor, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, Cint), nout, nin, dScale, iScale, dsmp)
end

function gageDeconvolve(nout, lastDiffP, nin, kind, ksp, typeOut, maxIter, saveAnyway, step, epsilon, verbose)
    ccall((:gageDeconvolve, libteem), Cint, (Ptr{Nrrd}, Ptr{Cdouble}, Ptr{Nrrd}, Ptr{gageKind}, Ptr{NrrdKernelSpec}, Cint, UInt32, Cint, Cdouble, Cdouble, Cint), nout, lastDiffP, nin, kind, ksp, typeOut, maxIter, saveAnyway, step, epsilon, verbose)
end

function gageDeconvolveSeparableKnown(ksp)
    ccall((:gageDeconvolveSeparableKnown, libteem), Cint, (Ptr{NrrdKernelSpec},), ksp)
end

function gageDeconvolveSeparable(nout, nin, kind, ksp, typeOut)
    ccall((:gageDeconvolveSeparable, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{gageKind}, Ptr{NrrdKernelSpec}, Cint), nout, nin, kind, ksp, typeOut)
end
# Julia wrapper for header: hest.h
# Automatically generated using Clang.jl


function hestParmNew()
    ccall((:hestParmNew, libteem), Ptr{hestParm}, ())
end

function hestParmFree(parm)
    ccall((:hestParmFree, libteem), Ptr{hestParm}, (Ptr{hestParm},), parm)
end

function hestOptFree(opt)
    ccall((:hestOptFree, libteem), Ptr{hestOpt}, (Ptr{hestOpt},), opt)
end

function hestOptCheck(opt, errP)
    ccall((:hestOptCheck, libteem), Cint, (Ptr{hestOpt}, Ptr{Cstring}), opt, errP)
end

function hestParse(opt, argc, argv, errP, parm)
    ccall((:hestParse, libteem), Cint, (Ptr{hestOpt}, Cint, Ptr{Cstring}, Ptr{Cstring}, Ptr{hestParm}), opt, argc, argv, errP, parm)
end

function hestParseFree(opt)
    ccall((:hestParseFree, libteem), Ptr{Cvoid}, (Ptr{hestOpt},), opt)
end

function hestParseOrDie(opt, argc, argv, parm, me, info, doInfo, doUsage, doGlossary)
    ccall((:hestParseOrDie, libteem), Cvoid, (Ptr{hestOpt}, Cint, Ptr{Cstring}, Ptr{hestParm}, Cstring, Cstring, Cint, Cint, Cint), opt, argc, argv, parm, me, info, doInfo, doUsage, doGlossary)
end

function _hestPrintStr(f, indent, already, width, _str, bslash)
    ccall((:_hestPrintStr, libteem), Cvoid, (Ptr{Cvoid}, UInt32, UInt32, UInt32, Cstring, Cint), f, indent, already, width, _str, bslash)
end

function hestMinNumArgs(opt)
    ccall((:hestMinNumArgs, libteem), Cint, (Ptr{hestOpt},), opt)
end

function hestUsage(file, opt, argv0, parm)
    ccall((:hestUsage, libteem), Cvoid, (Ptr{Cvoid}, Ptr{hestOpt}, Cstring, Ptr{hestParm}), file, opt, argv0, parm)
end

function hestGlossary(file, opt, parm)
    ccall((:hestGlossary, libteem), Cvoid, (Ptr{Cvoid}, Ptr{hestOpt}, Ptr{hestParm}), file, opt, parm)
end

function hestInfo(file, argv0, info, parm)
    ccall((:hestInfo, libteem), Cvoid, (Ptr{Cvoid}, Cstring, Cstring, Ptr{hestParm}), file, argv0, info, parm)
end
# Julia wrapper for header: hoover.h
# Automatically generated using Clang.jl


function hooverContextNew()
    ccall((:hooverContextNew, libteem), Ptr{hooverContext}, ())
end

function hooverContextCheck(ctx)
    ccall((:hooverContextCheck, libteem), Cint, (Ptr{hooverContext},), ctx)
end

function hooverContextNix(ctx)
    ccall((:hooverContextNix, libteem), Cvoid, (Ptr{hooverContext},), ctx)
end

function hooverRender(ctx, errCodeP, errThreadP)
    ccall((:hooverRender, libteem), Cint, (Ptr{hooverContext}, Ptr{Cint}, Ptr{Cint}), ctx, errCodeP, errThreadP)
end

function hooverStubRenderBegin()
    ccall((:hooverStubRenderBegin, libteem), Cint, ())
end

function hooverStubThreadBegin()
    ccall((:hooverStubThreadBegin, libteem), Cint, ())
end

function hooverStubRayBegin()
    ccall((:hooverStubRayBegin, libteem), Cint, ())
end

function hooverStubSample()
    ccall((:hooverStubSample, libteem), Cdouble, ())
end

function hooverStubRayEnd()
    ccall((:hooverStubRayEnd, libteem), Cint, ())
end

function hooverStubThreadEnd()
    ccall((:hooverStubThreadEnd, libteem), Cint, ())
end

function hooverStubRenderEnd()
    ccall((:hooverStubRenderEnd, libteem), Cint, ())
end
# Julia wrapper for header: limn.h
# Automatically generated using Clang.jl


function limnQNDemo(nqn, reso, qni)
    ccall((:limnQNDemo, libteem), Cint, (Ptr{Nrrd}, UInt32, Cint), nqn, reso, qni)
end

function limnLightSet(lit, which, vsp, r, g, b, x, y, z)
    ccall((:limnLightSet, libteem), Cvoid, (Ptr{limnLight}, Cint, Cint, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), lit, which, vsp, r, g, b, x, y, z)
end

function limnLightAmbientSet(lit, r, g, b)
    ccall((:limnLightAmbientSet, libteem), Cvoid, (Ptr{limnLight}, Cfloat, Cfloat, Cfloat), lit, r, g, b)
end

function limnLightSwitch(lit, which, on)
    ccall((:limnLightSwitch, libteem), Cvoid, (Ptr{limnLight}, Cint, Cint), lit, which, on)
end

function limnLightReset(lit)
    ccall((:limnLightReset, libteem), Cvoid, (Ptr{limnLight},), lit)
end

function limnLightUpdate(lit, cam)
    ccall((:limnLightUpdate, libteem), Cint, (Ptr{limnLight}, Ptr{limnCamera}), lit, cam)
end

function limnEnvMapFill(envMap, cb, qnMethod, data)
    ccall((:limnEnvMapFill, libteem), Cint, (Ptr{Nrrd}, limnEnvMapCB, Cint, Ptr{Cvoid}), envMap, cb, qnMethod, data)
end

function limnLightDiffuseCB(rgb, vec, _lit)
    ccall((:limnLightDiffuseCB, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cvoid}), rgb, vec, _lit)
end

function limnEnvMapCheck(envMap)
    ccall((:limnEnvMapCheck, libteem), Cint, (Ptr{Nrrd},), envMap)
end

function limnLightNew()
    ccall((:limnLightNew, libteem), Ptr{limnLight}, ())
end

function limnCameraInit(cam)
    ccall((:limnCameraInit, libteem), Cvoid, (Ptr{limnCamera},), cam)
end

function limnLightNix(arg1)
    ccall((:limnLightNix, libteem), Ptr{limnLight}, (Ptr{limnLight},), arg1)
end

function limnCameraNew()
    ccall((:limnCameraNew, libteem), Ptr{limnCamera}, ())
end

function limnCameraNix(cam)
    ccall((:limnCameraNix, libteem), Ptr{limnCamera}, (Ptr{limnCamera},), cam)
end

function limnWindowNew(device)
    ccall((:limnWindowNew, libteem), Ptr{limnWindow}, (Cint,), device)
end

function limnWindowNix(win)
    ccall((:limnWindowNix, libteem), Ptr{limnWindow}, (Ptr{limnWindow},), win)
end

function limnHestCameraOptAdd(hoptP, cam, frDef, atDef, upDef, dnDef, diDef, dfDef, urDef, vrDef, fvDef)
    ccall((:limnHestCameraOptAdd, libteem), Cvoid, (Ptr{Ptr{hestOpt}}, Ptr{limnCamera}, Cstring, Cstring, Cstring, Cstring, Cstring, Cstring, Cstring, Cstring, Cstring), hoptP, cam, frDef, atDef, upDef, dnDef, diDef, dfDef, urDef, vrDef, fvDef)
end

function limnCameraAspectSet(cam, horz, vert, centering)
    ccall((:limnCameraAspectSet, libteem), Cint, (Ptr{limnCamera}, UInt32, UInt32, Cint), cam, horz, vert, centering)
end

function limnCameraUpdate(cam)
    ccall((:limnCameraUpdate, libteem), Cint, (Ptr{limnCamera},), cam)
end

function limnCameraPathMake(cam, numFrames, keycam, time, numKeys, trackFrom, quatType, posType, distType, viewType)
    ccall((:limnCameraPathMake, libteem), Cint, (Ptr{limnCamera}, Cint, Ptr{limnCamera}, Ptr{Cdouble}, Cint, Cint, Ptr{limnSplineTypeSpec}, Ptr{limnSplineTypeSpec}, Ptr{limnSplineTypeSpec}, Ptr{limnSplineTypeSpec}), cam, numFrames, keycam, time, numKeys, trackFrom, quatType, posType, distType, viewType)
end

function limnObjectLookAdd(obj)
    ccall((:limnObjectLookAdd, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectNew(incr, doEdges)
    ccall((:limnObjectNew, libteem), Ptr{limnObject}, (Cint, Cint), incr, doEdges)
end

function limnObjectNix(obj)
    ccall((:limnObjectNix, libteem), Ptr{limnObject}, (Ptr{limnObject},), obj)
end

function limnObjectEmpty(obj)
    ccall((:limnObjectEmpty, libteem), Cvoid, (Ptr{limnObject},), obj)
end

function limnObjectPreSet(obj, partNum, lookNum, vertPerPart, edgePerPart, facePerPart)
    ccall((:limnObjectPreSet, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, UInt32, UInt32, UInt32), obj, partNum, lookNum, vertPerPart, edgePerPart, facePerPart)
end

function limnObjectPartAdd(obj)
    ccall((:limnObjectPartAdd, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectVertexNumPreSet(obj, partIdx, vertNum)
    ccall((:limnObjectVertexNumPreSet, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32), obj, partIdx, vertNum)
end

function limnObjectVertexAdd(obj, partIdx, x, y, z)
    ccall((:limnObjectVertexAdd, libteem), Cint, (Ptr{limnObject}, UInt32, Cfloat, Cfloat, Cfloat), obj, partIdx, x, y, z)
end

function limnObjectEdgeAdd(obj, partIdx, lookIdx, faceIdx, vertIdx0, vertIdx1)
    ccall((:limnObjectEdgeAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, UInt32, UInt32, UInt32), obj, partIdx, lookIdx, faceIdx, vertIdx0, vertIdx1)
end

function limnObjectFaceNumPreSet(obj, partIdx, faceNum)
    ccall((:limnObjectFaceNumPreSet, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32), obj, partIdx, faceNum)
end

function limnObjectFaceAdd(obj, partIdx, lookIdx, sideNum, vertIdx)
    ccall((:limnObjectFaceAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, UInt32, Ptr{UInt32}), obj, partIdx, lookIdx, sideNum, vertIdx)
end

function limnPolyDataNew()
    ccall((:limnPolyDataNew, libteem), Ptr{limnPolyData}, ())
end

function limnPolyDataNix(pld)
    ccall((:limnPolyDataNix, libteem), Ptr{limnPolyData}, (Ptr{limnPolyData},), pld)
end

function limnPolyDataInfoBitFlag(pld)
    ccall((:limnPolyDataInfoBitFlag, libteem), UInt32, (Ptr{limnPolyData},), pld)
end

function limnPolyDataAlloc(pld, infoBitFlag, vertNum, indxNum, primNum)
    ccall((:limnPolyDataAlloc, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32, UInt32, UInt32), pld, infoBitFlag, vertNum, indxNum, primNum)
end

function limnPolyDataSize(pld)
    ccall((:limnPolyDataSize, libteem), Csize_t, (Ptr{limnPolyData},), pld)
end

function limnPolyDataCopy(pldB, pldA)
    ccall((:limnPolyDataCopy, libteem), Cint, (Ptr{limnPolyData}, Ptr{limnPolyData}), pldB, pldA)
end

function limnPolyDataCopyN(pldB, pldA, num)
    ccall((:limnPolyDataCopyN, libteem), Cint, (Ptr{limnPolyData}, Ptr{limnPolyData}, UInt32), pldB, pldA, num)
end

function limnPolyDataTransform_f(pld, homat)
    ccall((:limnPolyDataTransform_f, libteem), Cvoid, (Ptr{limnPolyData}, Ptr{Cfloat}), pld, homat)
end

function limnPolyDataTransform_d(pld, homat)
    ccall((:limnPolyDataTransform_d, libteem), Cvoid, (Ptr{limnPolyData}, Ptr{Cdouble}), pld, homat)
end

function limnPolyDataPolygonNumber(pld)
    ccall((:limnPolyDataPolygonNumber, libteem), UInt32, (Ptr{limnPolyData},), pld)
end

function limnPolyDataVertexNormals(pld)
    ccall((:limnPolyDataVertexNormals, libteem), Cint, (Ptr{limnPolyData},), pld)
end

function limnPolyDataVertexNormalsNO(pld)
    ccall((:limnPolyDataVertexNormalsNO, libteem), Cint, (Ptr{limnPolyData},), pld)
end

function limnPolyDataPrimitiveTypes(pld)
    ccall((:limnPolyDataPrimitiveTypes, libteem), UInt32, (Ptr{limnPolyData},), pld)
end

function limnPolyDataPrimitiveVertexNumber(nout, pld)
    ccall((:limnPolyDataPrimitiveVertexNumber, libteem), Cint, (Ptr{Nrrd}, Ptr{limnPolyData}), nout, pld)
end

function limnPolyDataPrimitiveArea(nout, pld)
    ccall((:limnPolyDataPrimitiveArea, libteem), Cint, (Ptr{Nrrd}, Ptr{limnPolyData}), nout, pld)
end

function limnPolyDataRasterize(nout, pld, min, max, size, type)
    ccall((:limnPolyDataRasterize, libteem), Cint, (Ptr{Nrrd}, Ptr{limnPolyData}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Csize_t}, Cint), nout, pld, min, max, size, type)
end

function limnPolyDataColorSet(pld, RR, GG, BB, AA)
    ccall((:limnPolyDataColorSet, libteem), Cvoid, (Ptr{limnPolyData}, Cuchar, Cuchar, Cuchar, Cuchar), pld, RR, GG, BB, AA)
end

function limnPolyDataCube(pld, infoBitFlag, sharpEdge)
    ccall((:limnPolyDataCube, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cint), pld, infoBitFlag, sharpEdge)
end

function limnPolyDataCubeTriangles(pld, infoBitFlag, sharpEdge)
    ccall((:limnPolyDataCubeTriangles, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cint), pld, infoBitFlag, sharpEdge)
end

function limnPolyDataOctahedron(pld, infoBitFlag, sharpEdge)
    ccall((:limnPolyDataOctahedron, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cint), pld, infoBitFlag, sharpEdge)
end

function limnPolyDataCone(pld, infoBitFlag, res, sharpEdge)
    ccall((:limnPolyDataCone, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32, Cint), pld, infoBitFlag, res, sharpEdge)
end

function limnPolyDataCylinder(pld, infoBitFlag, res, sharpEdge)
    ccall((:limnPolyDataCylinder, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32, Cint), pld, infoBitFlag, res, sharpEdge)
end

function limnPolyDataSuperquadric(pld, infoBitFlag, A, B, thetaRes, phiRes)
    ccall((:limnPolyDataSuperquadric, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cfloat, Cfloat, UInt32, UInt32), pld, infoBitFlag, A, B, thetaRes, phiRes)
end

function limnPolyDataSpiralBetterquadric(pld, infoBitFlag, alpha, beta, cee, minRad, thetaRes, phiRes)
    ccall((:limnPolyDataSpiralBetterquadric, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cfloat, Cfloat, Cfloat, Cfloat, UInt32, UInt32), pld, infoBitFlag, alpha, beta, cee, minRad, thetaRes, phiRes)
end

function limnPolyDataSpiralSuperquadric(pld, infoBitFlag, A, B, thetaRes, phiRes)
    ccall((:limnPolyDataSpiralSuperquadric, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cfloat, Cfloat, UInt32, UInt32), pld, infoBitFlag, A, B, thetaRes, phiRes)
end

function limnPolyDataPolarSphere(pld, infoBitFlag, thetaRes, phiRes)
    ccall((:limnPolyDataPolarSphere, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32, UInt32), pld, infoBitFlag, thetaRes, phiRes)
end

function limnPolyDataSpiralSphere(pld, infoBitFlag, thetaRes, phiRes)
    ccall((:limnPolyDataSpiralSphere, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32, UInt32), pld, infoBitFlag, thetaRes, phiRes)
end

function limnPolyDataIcoSphere(pld, infoBitFlag, level)
    ccall((:limnPolyDataIcoSphere, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32), pld, infoBitFlag, level)
end

function limnPolyDataPlane(pld, infoBitFlag, uRes, vRes)
    ccall((:limnPolyDataPlane, libteem), Cint, (Ptr{limnPolyData}, UInt32, UInt32, UInt32), pld, infoBitFlag, uRes, vRes)
end

function limnPolyDataSquare(pld, infoBitFlag)
    ccall((:limnPolyDataSquare, libteem), Cint, (Ptr{limnPolyData}, UInt32), pld, infoBitFlag)
end

function limnPolyDataSuperquadric2D(pld, infoBitFlag, alpha, res)
    ccall((:limnPolyDataSuperquadric2D, libteem), Cint, (Ptr{limnPolyData}, UInt32, Cfloat, UInt32), pld, infoBitFlag, alpha, res)
end

function limnPolyDataEdgeHalve(pldOut, pldIn)
    ccall((:limnPolyDataEdgeHalve, libteem), Cint, (Ptr{limnPolyData}, Ptr{limnPolyData}), pldOut, pldIn)
end

function limnPolyDataVertexWindingFix(pld, allowSplitting)
    ccall((:limnPolyDataVertexWindingFix, libteem), Cint, (Ptr{limnPolyData}, Cint), pld, allowSplitting)
end

function limnPolyDataClip(pld, nval, thresh)
    ccall((:limnPolyDataClip, libteem), Cint, (Ptr{limnPolyData}, Ptr{Nrrd}, Cdouble), pld, nval, thresh)
end

function limnPolyDataClipMulti(pld, nval, thresh)
    ccall((:limnPolyDataClipMulti, libteem), Cint, (Ptr{limnPolyData}, Ptr{Nrrd}, Ptr{Cdouble}), pld, nval, thresh)
end

function limnPolyDataCompress(pld)
    ccall((:limnPolyDataCompress, libteem), Ptr{limnPolyData}, (Ptr{limnPolyData},), pld)
end

function limnPolyDataJoin(plds, num)
    ccall((:limnPolyDataJoin, libteem), Ptr{limnPolyData}, (Ptr{Ptr{limnPolyData}}, UInt32), plds, num)
end

function limnPolyDataVertexWindingFlip(pld)
    ccall((:limnPolyDataVertexWindingFlip, libteem), Cint, (Ptr{limnPolyData},), pld)
end

function limnPolyDataCCFind(pld)
    ccall((:limnPolyDataCCFind, libteem), Cint, (Ptr{limnPolyData},), pld)
end

function limnPolyDataPrimitiveSort(pld, nval)
    ccall((:limnPolyDataPrimitiveSort, libteem), Cint, (Ptr{limnPolyData}, Ptr{Nrrd}), pld, nval)
end

function limnPolyDataPrimitiveSelect(pldOut, pldIn, nmask)
    ccall((:limnPolyDataPrimitiveSelect, libteem), Cint, (Ptr{limnPolyData}, Ptr{limnPolyData}, Ptr{Nrrd}), pldOut, pldIn, nmask)
end

function limnPolyDataNeighborList(nblist, len, maxnb, pld)
    ccall((:limnPolyDataNeighborList, libteem), Cint, (Ptr{Ptr{UInt32}}, Ptr{Csize_t}, Ptr{UInt32}, Ptr{limnPolyData}), nblist, len, maxnb, pld)
end

function limnPolyDataNeighborArray(neighbors, maxnb, pld)
    ccall((:limnPolyDataNeighborArray, libteem), Cint, (Ptr{Ptr{Cint}}, Ptr{UInt32}, Ptr{limnPolyData}), neighbors, maxnb, pld)
end

function limnPolyDataNeighborArrayComp(neighbors, idx, pld)
    ccall((:limnPolyDataNeighborArrayComp, libteem), Cint, (Ptr{Ptr{Cint}}, Ptr{Ptr{Cint}}, Ptr{limnPolyData}), neighbors, idx, pld)
end

function limnPolyDataSpiralTubeWrap(pldOut, pldIn, infoBitFlag, nvertMap, tubeFacet, endFacet, radius)
    ccall((:limnPolyDataSpiralTubeWrap, libteem), Cint, (Ptr{limnPolyData}, Ptr{limnPolyData}, UInt32, Ptr{Nrrd}, UInt32, UInt32, Cdouble), pldOut, pldIn, infoBitFlag, nvertMap, tubeFacet, endFacet, radius)
end

function limnPolyDataSmoothHC(pld, neighbors, idx, alpha, beta, iter)
    ccall((:limnPolyDataSmoothHC, libteem), Cint, (Ptr{limnPolyData}, Ptr{Cint}, Ptr{Cint}, Cdouble, Cdouble, Cint), pld, neighbors, idx, alpha, beta, iter)
end

function limnObjectDescribe(file, obj)
    ccall((:limnObjectDescribe, libteem), Cint, (Ptr{Cvoid}, Ptr{limnObject}), file, obj)
end

function limnObjectReadOFF(obj, file)
    ccall((:limnObjectReadOFF, libteem), Cint, (Ptr{limnObject}, Ptr{Cvoid}), obj, file)
end

function limnObjectWriteOFF(file, obj)
    ccall((:limnObjectWriteOFF, libteem), Cint, (Ptr{Cvoid}, Ptr{limnObject}), file, obj)
end

function limnPolyDataWriteIV(file, pld)
    ccall((:limnPolyDataWriteIV, libteem), Cint, (Ptr{Cvoid}, Ptr{limnPolyData}), file, pld)
end

function limnPolyDataWriteLMPD(file, pld)
    ccall((:limnPolyDataWriteLMPD, libteem), Cint, (Ptr{Cvoid}, Ptr{limnPolyData}), file, pld)
end

function limnPolyDataReadLMPD(pld, file)
    ccall((:limnPolyDataReadLMPD, libteem), Cint, (Ptr{limnPolyData}, Ptr{Cvoid}), pld, file)
end

function limnPolyDataWriteVTK(file, pld)
    ccall((:limnPolyDataWriteVTK, libteem), Cint, (Ptr{Cvoid}, Ptr{limnPolyData}), file, pld)
end

function limnPolyDataReadOFF(pld, file)
    ccall((:limnPolyDataReadOFF, libteem), Cint, (Ptr{limnPolyData}, Ptr{Cvoid}), pld, file)
end

function limnPolyDataSave(fname, lpld)
    ccall((:limnPolyDataSave, libteem), Cint, (Cstring, Ptr{limnPolyData}), fname, lpld)
end

function limnObjectCubeAdd(obj, lookIdx)
    ccall((:limnObjectCubeAdd, libteem), Cint, (Ptr{limnObject}, UInt32), obj, lookIdx)
end

function limnObjectSquareAdd(obj, lookIdx)
    ccall((:limnObjectSquareAdd, libteem), Cint, (Ptr{limnObject}, UInt32), obj, lookIdx)
end

function limnObjectCylinderAdd(obj, lookIdx, axis, res)
    ccall((:limnObjectCylinderAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, UInt32), obj, lookIdx, axis, res)
end

function limnObjectPolarSphereAdd(obj, lookIdx, axis, thetaRes, phiRes)
    ccall((:limnObjectPolarSphereAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, UInt32, UInt32), obj, lookIdx, axis, thetaRes, phiRes)
end

function limnObjectConeAdd(obj, lookIdx, axis, res)
    ccall((:limnObjectConeAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, UInt32), obj, lookIdx, axis, res)
end

function limnObjectPolarSuperquadAdd(obj, lookIdx, axis, A, B, thetaRes, phiRes)
    ccall((:limnObjectPolarSuperquadAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, Cfloat, Cfloat, UInt32, UInt32), obj, lookIdx, axis, A, B, thetaRes, phiRes)
end

function limnObjectPolarSuperquadFancyAdd(obj, lookIdx, axis, A, B, C, R, thetaRes, phiRes)
    ccall((:limnObjectPolarSuperquadFancyAdd, libteem), Cint, (Ptr{limnObject}, UInt32, UInt32, Cfloat, Cfloat, Cfloat, Cfloat, UInt32, UInt32), obj, lookIdx, axis, A, B, C, R, thetaRes, phiRes)
end

function limnObjectWorldHomog(obj)
    ccall((:limnObjectWorldHomog, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectFaceNormals(obj, space)
    ccall((:limnObjectFaceNormals, libteem), Cint, (Ptr{limnObject}, Cint), obj, space)
end

function limnObjectVertexNormals(obj)
    ccall((:limnObjectVertexNormals, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectSpaceTransform(obj, cam, win, space)
    ccall((:limnObjectSpaceTransform, libteem), Cint, (Ptr{limnObject}, Ptr{limnCamera}, Ptr{limnWindow}, Cint), obj, cam, win, space)
end

function limnObjectPartTransform(obj, partIdx, tx)
    ccall((:limnObjectPartTransform, libteem), Cint, (Ptr{limnObject}, UInt32, Ptr{Cfloat}), obj, partIdx, tx)
end

function limnObjectDepthSortParts(obj)
    ccall((:limnObjectDepthSortParts, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectDepthSortFaces(obj)
    ccall((:limnObjectDepthSortFaces, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectFaceReverse(obj)
    ccall((:limnObjectFaceReverse, libteem), Cint, (Ptr{limnObject},), obj)
end

function limnObjectRender(obj, cam, win)
    ccall((:limnObjectRender, libteem), Cint, (Ptr{limnObject}, Ptr{limnCamera}, Ptr{limnWindow}), obj, cam, win)
end

function limnObjectPSDraw(obj, cam, envMap, win)
    ccall((:limnObjectPSDraw, libteem), Cint, (Ptr{limnObject}, Ptr{limnCamera}, Ptr{Nrrd}, Ptr{limnWindow}), obj, cam, envMap, win)
end

function limnObjectPSDrawConcave(obj, cam, envMap, win)
    ccall((:limnObjectPSDrawConcave, libteem), Cint, (Ptr{limnObject}, Ptr{limnCamera}, Ptr{Nrrd}, Ptr{limnWindow}), obj, cam, envMap, win)
end

function limnSplineTypeSpecNix(spec)
    ccall((:limnSplineTypeSpecNix, libteem), Ptr{limnSplineTypeSpec}, (Ptr{limnSplineTypeSpec},), spec)
end

function limnSplineNew(ncpt, info, spec)
    ccall((:limnSplineNew, libteem), Ptr{limnSpline}, (Ptr{Nrrd}, Cint, Ptr{limnSplineTypeSpec}), ncpt, info, spec)
end

function limnSplineNix(spline)
    ccall((:limnSplineNix, libteem), Ptr{limnSpline}, (Ptr{limnSpline},), spline)
end

function limnSplineNrrdCleverFix(nout, nin, info, type)
    ccall((:limnSplineNrrdCleverFix, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint), nout, nin, info, type)
end

function limnSplineCleverNew(ncpt, info, spec)
    ccall((:limnSplineCleverNew, libteem), Ptr{limnSpline}, (Ptr{Nrrd}, Cint, Ptr{limnSplineTypeSpec}), ncpt, info, spec)
end

function limnSplineUpdate(spline, ncpt)
    ccall((:limnSplineUpdate, libteem), Cint, (Ptr{limnSpline}, Ptr{Nrrd}), spline, ncpt)
end

function limnSplineParse(str)
    ccall((:limnSplineParse, libteem), Ptr{limnSpline}, (Cstring,), str)
end

function limnSplineTypeSpecParse(str)
    ccall((:limnSplineTypeSpecParse, libteem), Ptr{limnSplineTypeSpec}, (Cstring,), str)
end

function limnSplineNumPoints(spline)
    ccall((:limnSplineNumPoints, libteem), Cint, (Ptr{limnSpline},), spline)
end

function limnSplineMinT(spline)
    ccall((:limnSplineMinT, libteem), Cdouble, (Ptr{limnSpline},), spline)
end

function limnSplineMaxT(spline)
    ccall((:limnSplineMaxT, libteem), Cdouble, (Ptr{limnSpline},), spline)
end

function limnSplineBCSet(spline, B, C)
    ccall((:limnSplineBCSet, libteem), Cvoid, (Ptr{limnSpline}, Cdouble, Cdouble), spline, B, C)
end

function limnSplineEvaluate(out, spline, time)
    ccall((:limnSplineEvaluate, libteem), Cvoid, (Ptr{Cdouble}, Ptr{limnSpline}, Cdouble), out, spline, time)
end

function limnSplineNrrdEvaluate(nout, spline, nin)
    ccall((:limnSplineNrrdEvaluate, libteem), Cint, (Ptr{Nrrd}, Ptr{limnSpline}, Ptr{Nrrd}), nout, spline, nin)
end

function limnSplineSample(nout, spline, minT, M, maxT)
    ccall((:limnSplineSample, libteem), Cint, (Ptr{Nrrd}, Ptr{limnSpline}, Cdouble, Csize_t, Cdouble), nout, spline, minT, M, maxT)
end

function limnpuUsage(me, hparm)
    ccall((:limnpuUsage, libteem), Cvoid, (Cstring, Ptr{hestParm}), me, hparm)
end
# Julia wrapper for header: meet.h
# Automatically generated using Clang.jl

# Julia wrapper for header: mite.h
# Automatically generated using Clang.jl


function miteVariableParse(isp, label)
    ccall((:miteVariableParse, libteem), Cint, (Ptr{gageItemSpec}, Cstring), isp, label)
end

function miteVariablePrint(buff, isp)
    ccall((:miteVariablePrint, libteem), Cvoid, (Cstring, Ptr{gageItemSpec}), buff, isp)
end

function miteNtxfCheck(ntxf)
    ccall((:miteNtxfCheck, libteem), Cint, (Ptr{Nrrd},), ntxf)
end

function miteQueryAdd(queryScl, queryVec, queryTen, queryMite, isp)
    ccall((:miteQueryAdd, libteem), Cvoid, (gageQuery, gageQuery, gageQuery, gageQuery, Ptr{gageItemSpec}), queryScl, queryVec, queryTen, queryMite, isp)
end

function miteUserNew()
    ccall((:miteUserNew, libteem), Ptr{miteUser}, ())
end

function miteUserNix(muu)
    ccall((:miteUserNix, libteem), Ptr{miteUser}, (Ptr{miteUser},), muu)
end

function miteShadeSpecNew()
    ccall((:miteShadeSpecNew, libteem), Ptr{miteShadeSpec}, ())
end

function miteShadeSpecNix(arg1)
    ccall((:miteShadeSpecNix, libteem), Ptr{miteShadeSpec}, (Ptr{miteShadeSpec},), arg1)
end

function miteShadeSpecParse(shpec, shadeStr)
    ccall((:miteShadeSpecParse, libteem), Cint, (Ptr{miteShadeSpec}, Cstring), shpec, shadeStr)
end

function miteShadeSpecPrint(buff, shpec)
    ccall((:miteShadeSpecPrint, libteem), Cvoid, (Cstring, Ptr{miteShadeSpec}), buff, shpec)
end

function miteShadeSpecQueryAdd(queryScl, queryVec, queryTen, queryMite, shpec)
    ccall((:miteShadeSpecQueryAdd, libteem), Cvoid, (gageQuery, gageQuery, gageQuery, gageQuery, Ptr{miteShadeSpec}), queryScl, queryVec, queryTen, queryMite, shpec)
end

function miteRenderBegin(mrrP, muu)
    ccall((:miteRenderBegin, libteem), Cint, (Ptr{Ptr{miteRender}}, Ptr{miteUser}), mrrP, muu)
end

function miteRenderEnd(mrr, muu)
    ccall((:miteRenderEnd, libteem), Cint, (Ptr{miteRender}, Ptr{miteUser}), mrr, muu)
end

function miteThreadNew()
    ccall((:miteThreadNew, libteem), Ptr{miteThread}, ())
end

function miteThreadNix(mtt)
    ccall((:miteThreadNix, libteem), Ptr{miteThread}, (Ptr{miteThread},), mtt)
end

function miteThreadBegin(mttP, mrr, muu, whichThread)
    ccall((:miteThreadBegin, libteem), Cint, (Ptr{Ptr{miteThread}}, Ptr{miteRender}, Ptr{miteUser}, Cint), mttP, mrr, muu, whichThread)
end

function miteThreadEnd(mtt, mrr, muu)
    ccall((:miteThreadEnd, libteem), Cint, (Ptr{miteThread}, Ptr{miteRender}, Ptr{miteUser}), mtt, mrr, muu)
end

function miteRayBegin(mtt, mrr, muu, uIndex, vIndex, rayLen, rayStartWorld, rayStartIndex, rayDirWorld, rayDirIndex)
    ccall((:miteRayBegin, libteem), Cint, (Ptr{miteThread}, Ptr{miteRender}, Ptr{miteUser}, Cint, Cint, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), mtt, mrr, muu, uIndex, vIndex, rayLen, rayStartWorld, rayStartIndex, rayDirWorld, rayDirIndex)
end

function miteSample(mtt, mrr, muu, num, rayT, inside, samplePosWorld, samplePosIndex)
    ccall((:miteSample, libteem), Cdouble, (Ptr{miteThread}, Ptr{miteRender}, Ptr{miteUser}, Cint, Cdouble, Cint, Ptr{Cdouble}, Ptr{Cdouble}), mtt, mrr, muu, num, rayT, inside, samplePosWorld, samplePosIndex)
end

function miteRayEnd(mtt, mrr, muu)
    ccall((:miteRayEnd, libteem), Cint, (Ptr{miteThread}, Ptr{miteRender}, Ptr{miteUser}), mtt, mrr, muu)
end
# Julia wrapper for header: moss.h
# Automatically generated using Clang.jl


function mossSamplerNew()
    ccall((:mossSamplerNew, libteem), Ptr{mossSampler}, ())
end

function mossSamplerFill(smplr, fdiam, ncol)
    ccall((:mossSamplerFill, libteem), Cint, (Ptr{mossSampler}, Cint, Cint), smplr, fdiam, ncol)
end

function mossSamplerEmpty(smplr)
    ccall((:mossSamplerEmpty, libteem), Cvoid, (Ptr{mossSampler},), smplr)
end

function mossSamplerNix(smplr)
    ccall((:mossSamplerNix, libteem), Ptr{mossSampler}, (Ptr{mossSampler},), smplr)
end

function mossImageCheck(image)
    ccall((:mossImageCheck, libteem), Cint, (Ptr{Nrrd},), image)
end

function mossImageAlloc(image, type, sx, sy, ncol)
    ccall((:mossImageAlloc, libteem), Cint, (Ptr{Nrrd}, Cint, Cint, Cint, Cint), image, type, sx, sy, ncol)
end

function mossSamplerImageSet(smplr, image, bg)
    ccall((:mossSamplerImageSet, libteem), Cint, (Ptr{mossSampler}, Ptr{Nrrd}, Ptr{Cfloat}), smplr, image, bg)
end

function mossSamplerKernelSet(smplr, kernel, kparm)
    ccall((:mossSamplerKernelSet, libteem), Cint, (Ptr{mossSampler}, Ptr{NrrdKernel}, Ptr{Cdouble}), smplr, kernel, kparm)
end

function mossSamplerUpdate(smplr)
    ccall((:mossSamplerUpdate, libteem), Cint, (Ptr{mossSampler},), smplr)
end

function mossSamplerSample(val, smplr, xPos, yPos)
    ccall((:mossSamplerSample, libteem), Cint, (Ptr{Cfloat}, Ptr{mossSampler}, Cdouble, Cdouble), val, smplr, xPos, yPos)
end

function mossMatPrint(f, mat)
    ccall((:mossMatPrint, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Cdouble}), f, mat)
end

function mossMatRightMultiply(mat, x)
    ccall((:mossMatRightMultiply, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Ptr{Cdouble}), mat, x)
end

function mossMatLeftMultiply(mat, x)
    ccall((:mossMatLeftMultiply, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Ptr{Cdouble}), mat, x)
end

function mossMatInvert(inv, mat)
    ccall((:mossMatInvert, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Ptr{Cdouble}), inv, mat)
end

function mossMatIdentitySet(mat)
    ccall((:mossMatIdentitySet, libteem), Ptr{Cdouble}, (Ptr{Cdouble},), mat)
end

function mossMatTranslateSet(mat, tx, ty)
    ccall((:mossMatTranslateSet, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Cdouble, Cdouble), mat, tx, ty)
end

function mossMatRotateSet(mat, angle)
    ccall((:mossMatRotateSet, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Cdouble), mat, angle)
end

function mossMatFlipSet(mat, angle)
    ccall((:mossMatFlipSet, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Cdouble), mat, angle)
end

function mossMatShearSet(mat, angleFixed, amount)
    ccall((:mossMatShearSet, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Cdouble, Cdouble), mat, angleFixed, amount)
end

function mossMatScaleSet(mat, sx, sy)
    ccall((:mossMatScaleSet, libteem), Ptr{Cdouble}, (Ptr{Cdouble}, Cdouble, Cdouble), mat, sx, sy)
end

function mossMatApply(ox, oy, mat, ix, iy)
    ccall((:mossMatApply, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble, Cdouble), ox, oy, mat, ix, iy)
end

function mossLinearTransform(nout, nin, bg, mat, msp, xMin, xMax, yMin, yMax, sx, sy)
    ccall((:mossLinearTransform, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Cfloat}, Ptr{Cdouble}, Ptr{mossSampler}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint), nout, nin, bg, mat, msp, xMin, xMax, yMin, yMax, sx, sy)
end
# Julia wrapper for header: nrrd.h
# Automatically generated using Clang.jl


function nrrdGetenvBool(val, envStr, envVar)
    ccall((:nrrdGetenvBool, libteem), Cint, (Ptr{Cint}, Ptr{Cstring}, Cstring), val, envStr, envVar)
end

function nrrdGetenvEnum(val, envStr, enm, envVar)
    ccall((:nrrdGetenvEnum, libteem), Cint, (Ptr{Cint}, Ptr{Cstring}, Ptr{airEnum}, Cstring), val, envStr, enm, envVar)
end

function nrrdGetenvInt(val, envStr, envVar)
    ccall((:nrrdGetenvInt, libteem), Cint, (Ptr{Cint}, Ptr{Cstring}, Cstring), val, envStr, envVar)
end

function nrrdGetenvUInt(val, envStr, envVar)
    ccall((:nrrdGetenvUInt, libteem), Cint, (Ptr{UInt32}, Ptr{Cstring}, Cstring), val, envStr, envVar)
end

function nrrdGetenvDouble(val, envStr, envVar)
    ccall((:nrrdGetenvDouble, libteem), Cint, (Ptr{Cdouble}, Ptr{Cstring}, Cstring), val, envStr, envVar)
end

function nrrdGetenvString(envStr, envVar)
    ccall((:nrrdGetenvString, libteem), Cint, (Ptr{Cstring}, Cstring), envStr, envVar)
end

function nrrdDefaultGetenv()
    ccall((:nrrdDefaultGetenv, libteem), Cvoid, ())
end

function nrrdStateGetenv()
    ccall((:nrrdStateGetenv, libteem), Cvoid, ())
end

function nrrdBoundarySpecNew()
    ccall((:nrrdBoundarySpecNew, libteem), Ptr{NrrdBoundarySpec}, ())
end

function nrrdBoundarySpecNix(bspec)
    ccall((:nrrdBoundarySpecNix, libteem), Ptr{NrrdBoundarySpec}, (Ptr{NrrdBoundarySpec},), bspec)
end

function nrrdBoundarySpecCopy(bsp)
    ccall((:nrrdBoundarySpecCopy, libteem), Ptr{NrrdBoundarySpec}, (Ptr{NrrdBoundarySpec},), bsp)
end

function nrrdBoundarySpecCheck(bspec)
    ccall((:nrrdBoundarySpecCheck, libteem), Cint, (Ptr{NrrdBoundarySpec},), bspec)
end

function nrrdBoundarySpecParse(bspec, str)
    ccall((:nrrdBoundarySpecParse, libteem), Cint, (Ptr{NrrdBoundarySpec}, Cstring), bspec, str)
end

function nrrdBoundarySpecSprint(str, bspec)
    ccall((:nrrdBoundarySpecSprint, libteem), Cint, (Ptr{UInt8}, Ptr{NrrdBoundarySpec}), str, bspec)
end

function nrrdBoundarySpecCompare(bspecA, bspecB, differ, explain)
    ccall((:nrrdBoundarySpecCompare, libteem), Cint, (Ptr{NrrdBoundarySpec}, Ptr{NrrdBoundarySpec}, Ptr{Cint}, Ptr{UInt8}), bspecA, bspecB, differ, explain)
end

function nrrdIoStateNew()
    ccall((:nrrdIoStateNew, libteem), Ptr{NrrdIoState}, ())
end

function nrrdIoStateInit(nio)
    ccall((:nrrdIoStateInit, libteem), Cvoid, (Ptr{NrrdIoState},), nio)
end

function nrrdIoStateNix(nio)
    ccall((:nrrdIoStateNix, libteem), Ptr{NrrdIoState}, (Ptr{NrrdIoState},), nio)
end

function nrrdResampleInfoNew()
    ccall((:nrrdResampleInfoNew, libteem), Ptr{NrrdResampleInfo}, ())
end

function nrrdResampleInfoNix(info)
    ccall((:nrrdResampleInfoNix, libteem), Ptr{NrrdResampleInfo}, (Ptr{NrrdResampleInfo},), info)
end

function nrrdKernelSpecNew()
    ccall((:nrrdKernelSpecNew, libteem), Ptr{NrrdKernelSpec}, ())
end

function nrrdKernelSpecCopy(ksp)
    ccall((:nrrdKernelSpecCopy, libteem), Ptr{NrrdKernelSpec}, (Ptr{NrrdKernelSpec},), ksp)
end

function nrrdKernelSpecSet(ksp, k, kparm)
    ccall((:nrrdKernelSpecSet, libteem), Cvoid, (Ptr{NrrdKernelSpec}, Ptr{NrrdKernel}, Ptr{Cdouble}), ksp, k, kparm)
end

function nrrdKernelParmSet(kP, kparm, ksp)
    ccall((:nrrdKernelParmSet, libteem), Cvoid, (Ptr{Ptr{NrrdKernel}}, Ptr{Cdouble}, Ptr{NrrdKernelSpec}), kP, kparm, ksp)
end

function nrrdKernelSpecNix(ksp)
    ccall((:nrrdKernelSpecNix, libteem), Ptr{NrrdKernelSpec}, (Ptr{NrrdKernelSpec},), ksp)
end

function nrrdInit(nrrd)
    ccall((:nrrdInit, libteem), Cvoid, (Ptr{Nrrd},), nrrd)
end

function nrrdNew()
    ccall((:nrrdNew, libteem), Ptr{Nrrd}, ())
end

function nrrdNix(nrrd)
    ccall((:nrrdNix, libteem), Ptr{Nrrd}, (Ptr{Nrrd},), nrrd)
end

function nrrdEmpty(nrrd)
    ccall((:nrrdEmpty, libteem), Ptr{Nrrd}, (Ptr{Nrrd},), nrrd)
end

function nrrdNuke(nrrd)
    ccall((:nrrdNuke, libteem), Ptr{Nrrd}, (Ptr{Nrrd},), nrrd)
end

function nrrdWrap_nva(nrrd, data, type, dim, size)
    ccall((:nrrdWrap_nva, libteem), Cint, (Ptr{Nrrd}, Ptr{Cvoid}, Cint, UInt32, Ptr{Csize_t}), nrrd, data, type, dim, size)
end

function nrrdBasicInfoInit(nrrd, excludeBitflag)
    ccall((:nrrdBasicInfoInit, libteem), Cvoid, (Ptr{Nrrd}, Cint), nrrd, excludeBitflag)
end

function nrrdBasicInfoCopy(nout, nin, excludeBitflag)
    ccall((:nrrdBasicInfoCopy, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nout, nin, excludeBitflag)
end

function nrrdCopy(nout, nin)
    ccall((:nrrdCopy, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function nrrdAlloc_nva(nrrd, type, dim, size)
    ccall((:nrrdAlloc_nva, libteem), Cint, (Ptr{Nrrd}, Cint, UInt32, Ptr{Csize_t}), nrrd, type, dim, size)
end

function nrrdMaybeAlloc_nva(nrrd, type, dim, size)
    ccall((:nrrdMaybeAlloc_nva, libteem), Cint, (Ptr{Nrrd}, Cint, UInt32, Ptr{Csize_t}), nrrd, type, dim, size)
end

function nrrdCompare(ninA, ninB, onlyData, epsilon, differ, explain)
    ccall((:nrrdCompare, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cdouble, Ptr{Cint}, Ptr{UInt8}), ninA, ninB, onlyData, epsilon, differ, explain)
end

function nrrdPPM(arg1, sx, sy)
    ccall((:nrrdPPM, libteem), Cint, (Ptr{Nrrd}, Csize_t, Csize_t), arg1, sx, sy)
end

function nrrdPGM(arg1, sx, sy)
    ccall((:nrrdPGM, libteem), Cint, (Ptr{Nrrd}, Csize_t, Csize_t), arg1, sx, sy)
end

function nrrdKindIsDomain(kind)
    ccall((:nrrdKindIsDomain, libteem), Cint, (Cint,), kind)
end

function nrrdKindSize(kind)
    ccall((:nrrdKindSize, libteem), UInt32, (Cint,), kind)
end

function nrrdAxisInfoCopy(nout, nin, axmap, excludeBitflag)
    ccall((:nrrdAxisInfoCopy, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Cint}, Cint), nout, nin, axmap, excludeBitflag)
end

function nrrdAxisInfoSet_nva(nin, axInfo, info)
    ccall((:nrrdAxisInfoSet_nva, libteem), Cvoid, (Ptr{Nrrd}, Cint, Ptr{Cvoid}), nin, axInfo, info)
end

function nrrdAxisInfoGet_nva(nrrd, axInfo, info)
    ccall((:nrrdAxisInfoGet_nva, libteem), Cvoid, (Ptr{Nrrd}, Cint, Ptr{Cvoid}), nrrd, axInfo, info)
end

function nrrdAxisInfoPos(nrrd, ax, idx)
    ccall((:nrrdAxisInfoPos, libteem), Cdouble, (Ptr{Nrrd}, UInt32, Cdouble), nrrd, ax, idx)
end

function nrrdAxisInfoIdx(nrrd, ax, pos)
    ccall((:nrrdAxisInfoIdx, libteem), Cdouble, (Ptr{Nrrd}, UInt32, Cdouble), nrrd, ax, pos)
end

function nrrdAxisInfoPosRange(loP, hiP, nrrd, ax, loIdx, hiIdx)
    ccall((:nrrdAxisInfoPosRange, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Nrrd}, UInt32, Cdouble, Cdouble), loP, hiP, nrrd, ax, loIdx, hiIdx)
end

function nrrdAxisInfoIdxRange(loP, hiP, nrrd, ax, loPos, hiPos)
    ccall((:nrrdAxisInfoIdxRange, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Nrrd}, UInt32, Cdouble, Cdouble), loP, hiP, nrrd, ax, loPos, hiPos)
end

function nrrdAxisInfoSpacingSet(nrrd, ax)
    ccall((:nrrdAxisInfoSpacingSet, libteem), Cvoid, (Ptr{Nrrd}, UInt32), nrrd, ax)
end

function nrrdAxisInfoMinMaxSet(nrrd, ax, defCenter)
    ccall((:nrrdAxisInfoMinMaxSet, libteem), Cvoid, (Ptr{Nrrd}, UInt32, Cint), nrrd, ax, defCenter)
end

function nrrdAxisInfoCompare(axisA, axisB, differ, explain)
    ccall((:nrrdAxisInfoCompare, libteem), Cint, (Ptr{NrrdAxisInfo}, Ptr{NrrdAxisInfo}, Ptr{Cint}, Ptr{UInt8}), axisA, axisB, differ, explain)
end

function nrrdDomainAxesGet(nrrd, axisIdx)
    ccall((:nrrdDomainAxesGet, libteem), UInt32, (Ptr{Nrrd}, Ptr{UInt32}), nrrd, axisIdx)
end

function nrrdRangeAxesGet(nrrd, axisIdx)
    ccall((:nrrdRangeAxesGet, libteem), UInt32, (Ptr{Nrrd}, Ptr{UInt32}), nrrd, axisIdx)
end

function nrrdSpatialAxesGet(nrrd, axisIdx)
    ccall((:nrrdSpatialAxesGet, libteem), UInt32, (Ptr{Nrrd}, Ptr{UInt32}), nrrd, axisIdx)
end

function nrrdNonSpatialAxesGet(nrrd, axisIdx)
    ccall((:nrrdNonSpatialAxesGet, libteem), UInt32, (Ptr{Nrrd}, Ptr{UInt32}), nrrd, axisIdx)
end

function nrrdSpacingCalculate(nrrd, ax, spacing, vector)
    ccall((:nrrdSpacingCalculate, libteem), Cint, (Ptr{Nrrd}, UInt32, Ptr{Cdouble}, Ptr{Cdouble}), nrrd, ax, spacing, vector)
end

function nrrdOrientationReduce(nout, nin, setMinsFromOrigin)
    ccall((:nrrdOrientationReduce, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nout, nin, setMinsFromOrigin)
end

function nrrdMetaDataNormalize(nout, nin, version, trivialOrient, permuteComponentAxisFastest, recenterGrid, sampleSpacing, lostMeasurementFrame)
    ccall((:nrrdMetaDataNormalize, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, Cint, Cint, Cdouble, Ptr{Cint}), nout, nin, version, trivialOrient, permuteComponentAxisFastest, recenterGrid, sampleSpacing, lostMeasurementFrame)
end

function nrrdSpaceDimension(space)
    ccall((:nrrdSpaceDimension, libteem), UInt32, (Cint,), space)
end

function nrrdSpaceSet(nrrd, space)
    ccall((:nrrdSpaceSet, libteem), Cint, (Ptr{Nrrd}, Cint), nrrd, space)
end

function nrrdSpaceDimensionSet(nrrd, spaceDim)
    ccall((:nrrdSpaceDimensionSet, libteem), Cint, (Ptr{Nrrd}, UInt32), nrrd, spaceDim)
end

function nrrdSpaceOriginGet(nrrd, vector)
    ccall((:nrrdSpaceOriginGet, libteem), UInt32, (Ptr{Nrrd}, Ptr{Cdouble}), nrrd, vector)
end

function nrrdSpaceOriginSet(nrrd, vector)
    ccall((:nrrdSpaceOriginSet, libteem), Cint, (Ptr{Nrrd}, Ptr{Cdouble}), nrrd, vector)
end

function nrrdOriginCalculate(nrrd, axisIdx, axisIdxNum, defaultCenter, origin)
    ccall((:nrrdOriginCalculate, libteem), Cint, (Ptr{Nrrd}, Ptr{UInt32}, UInt32, Cint, Ptr{Cdouble}), nrrd, axisIdx, axisIdxNum, defaultCenter, origin)
end

function nrrdDescribe(file, nrrd)
    ccall((:nrrdDescribe, libteem), Cvoid, (Ptr{Cvoid}, Ptr{Nrrd}), file, nrrd)
end

function nrrdCheck(nrrd)
    ccall((:nrrdCheck, libteem), Cint, (Ptr{Nrrd},), nrrd)
end

function _nrrdCheck(nrrd, checkData, useBiff)
    ccall((:_nrrdCheck, libteem), Cint, (Ptr{Nrrd}, Cint, Cint), nrrd, checkData, useBiff)
end

function nrrdElementSize(nrrd)
    ccall((:nrrdElementSize, libteem), Csize_t, (Ptr{Nrrd},), nrrd)
end

function nrrdElementNumber(nrrd)
    ccall((:nrrdElementNumber, libteem), Csize_t, (Ptr{Nrrd},), nrrd)
end

function nrrdSanity()
    ccall((:nrrdSanity, libteem), Cint, ())
end

function nrrdSameSize(n1, n2, useBiff)
    ccall((:nrrdSameSize, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), n1, n2, useBiff)
end

function nrrdSpaceVecCopy(dst, src)
    ccall((:nrrdSpaceVecCopy, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), dst, src)
end

function nrrdSpaceVecScaleAdd2(sum, sclA, vecA, sclB, vecB)
    ccall((:nrrdSpaceVecScaleAdd2, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), sum, sclA, vecA, sclB, vecB)
end

function nrrdSpaceVecScale(out, scl, vec)
    ccall((:nrrdSpaceVecScale, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}), out, scl, vec)
end

function nrrdSpaceVecNorm(sdim, vec)
    ccall((:nrrdSpaceVecNorm, libteem), Cdouble, (UInt32, Ptr{Cdouble}), sdim, vec)
end

function nrrdSpaceVecExists(sdim, vec)
    ccall((:nrrdSpaceVecExists, libteem), Cint, (UInt32, Ptr{Cdouble}), sdim, vec)
end

function nrrdSpaceVecSetNaN(vec)
    ccall((:nrrdSpaceVecSetNaN, libteem), Cvoid, (Ptr{Cdouble},), vec)
end

function nrrdSanityOrDie(me)
    ccall((:nrrdSanityOrDie, libteem), Cvoid, (Cstring,), me)
end

function nrrdSpaceVecSetZero(vec)
    ccall((:nrrdSpaceVecSetZero, libteem), Cvoid, (Ptr{Cdouble},), vec)
end

function nrrdSetZero(nout)
    ccall((:nrrdSetZero, libteem), Cvoid, (Ptr{Nrrd},), nout)
end

function nrrdSetNaN(nout)
    ccall((:nrrdSetNaN, libteem), Cvoid, (Ptr{Nrrd},), nout)
end

function nrrdCommentAdd(nrrd, str)
    ccall((:nrrdCommentAdd, libteem), Cint, (Ptr{Nrrd}, Cstring), nrrd, str)
end

function nrrdCommentClear(nrrd)
    ccall((:nrrdCommentClear, libteem), Cvoid, (Ptr{Nrrd},), nrrd)
end

function nrrdCommentCopy(nout, nin)
    ccall((:nrrdCommentCopy, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function nrrdKeyValueSize(nrrd)
    ccall((:nrrdKeyValueSize, libteem), UInt32, (Ptr{Nrrd},), nrrd)
end

function nrrdKeyValueAdd(nrrd, key, value)
    ccall((:nrrdKeyValueAdd, libteem), Cint, (Ptr{Nrrd}, Cstring, Cstring), nrrd, key, value)
end

function nrrdKeyValueGet(nrrd, key)
    ccall((:nrrdKeyValueGet, libteem), Cstring, (Ptr{Nrrd}, Cstring), nrrd, key)
end

function nrrdKeyValueIndex(nrrd, keyP, valueP, ki)
    ccall((:nrrdKeyValueIndex, libteem), Cvoid, (Ptr{Nrrd}, Ptr{Cstring}, Ptr{Cstring}, UInt32), nrrd, keyP, valueP, ki)
end

function nrrdKeyValueErase(nrrd, key)
    ccall((:nrrdKeyValueErase, libteem), Cint, (Ptr{Nrrd}, Cstring), nrrd, key)
end

function nrrdKeyValueClear(nrrd)
    ccall((:nrrdKeyValueClear, libteem), Cvoid, (Ptr{Nrrd},), nrrd)
end

function nrrdKeyValueCopy(nout, nin)
    ccall((:nrrdKeyValueCopy, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function nrrdSwapEndian(nrrd)
    ccall((:nrrdSwapEndian, libteem), Cvoid, (Ptr{Nrrd},), nrrd)
end

function _nrrdDataFNNumber(nio)
    ccall((:_nrrdDataFNNumber, libteem), UInt32, (Ptr{NrrdIoState},), nio)
end

function _nrrdContainsPercentThisAndMore(str, thss)
    ccall((:_nrrdContainsPercentThisAndMore, libteem), Cint, (Cstring, UInt8), str, thss)
end

function _nrrdDataFNCheck(nio, nrrd, useBiff)
    ccall((:_nrrdDataFNCheck, libteem), Cint, (Ptr{NrrdIoState}, Ptr{Nrrd}, Cint), nio, nrrd, useBiff)
end

function nrrdSpaceVectorParse(dir, str, spaceDim, useBiff)
    ccall((:nrrdSpaceVectorParse, libteem), Cint, (Ptr{Cdouble}, Cstring, UInt32, Cint), dir, str, spaceDim, useBiff)
end

function _nrrdOneLine(lenP, nio, file)
    ccall((:_nrrdOneLine, libteem), Cint, (Ptr{UInt32}, Ptr{NrrdIoState}, Ptr{Cvoid}), lenP, nio, file)
end

function nrrdLineSkip(dataFile, nio)
    ccall((:nrrdLineSkip, libteem), Cint, (Ptr{Cvoid}, Ptr{NrrdIoState}), dataFile, nio)
end

function nrrdByteSkip(dataFile, nrrd, nio)
    ccall((:nrrdByteSkip, libteem), Cint, (Ptr{Cvoid}, Ptr{Nrrd}, Ptr{NrrdIoState}), dataFile, nrrd, nio)
end

function nrrdLoad(nrrd, filename, nio)
    ccall((:nrrdLoad, libteem), Cint, (Ptr{Nrrd}, Cstring, Ptr{NrrdIoState}), nrrd, filename, nio)
end

function nrrdLoadMulti(nin, ninLen, fnameFormat, numStart, nio)
    ccall((:nrrdLoadMulti, libteem), Cint, (Ptr{Ptr{Nrrd}}, UInt32, Cstring, UInt32, Ptr{NrrdIoState}), nin, ninLen, fnameFormat, numStart, nio)
end

function nrrdRead(nrrd, file, nio)
    ccall((:nrrdRead, libteem), Cint, (Ptr{Nrrd}, Ptr{Cvoid}, Ptr{NrrdIoState}), nrrd, file, nio)
end

function nrrdStringRead(nrrd, string, nio)
    ccall((:nrrdStringRead, libteem), Cint, (Ptr{Nrrd}, Cstring, Ptr{NrrdIoState}), nrrd, string, nio)
end

function nrrdIoStateSet(nio, parm, value)
    ccall((:nrrdIoStateSet, libteem), Cint, (Ptr{NrrdIoState}, Cint, Cint), nio, parm, value)
end

function nrrdIoStateEncodingSet(nio, encoding)
    ccall((:nrrdIoStateEncodingSet, libteem), Cint, (Ptr{NrrdIoState}, Ptr{NrrdEncoding}), nio, encoding)
end

function nrrdIoStateFormatSet(nio, format)
    ccall((:nrrdIoStateFormatSet, libteem), Cint, (Ptr{NrrdIoState}, Ptr{NrrdFormat}), nio, format)
end

function nrrdIoStateGet(nio, parm)
    ccall((:nrrdIoStateGet, libteem), Cint, (Ptr{NrrdIoState}, Cint), nio, parm)
end

function nrrdIoStateEncodingGet(nio)
    ccall((:nrrdIoStateEncodingGet, libteem), Ptr{NrrdEncoding}, (Ptr{NrrdIoState},), nio)
end

function nrrdIoStateFormatGet(nio)
    ccall((:nrrdIoStateFormatGet, libteem), Ptr{NrrdFormat}, (Ptr{NrrdIoState},), nio)
end

function nrrdSave(filename, nrrd, nio)
    ccall((:nrrdSave, libteem), Cint, (Cstring, Ptr{Nrrd}, Ptr{NrrdIoState}), filename, nrrd, nio)
end

function nrrdSaveMulti(fnameFormat, nin, ninLen, numStart, nio)
    ccall((:nrrdSaveMulti, libteem), Cint, (Cstring, Ptr{Ptr{Nrrd}}, UInt32, UInt32, Ptr{NrrdIoState}), fnameFormat, nin, ninLen, numStart, nio)
end

function nrrdWrite(file, nrrd, nio)
    ccall((:nrrdWrite, libteem), Cint, (Ptr{Cvoid}, Ptr{Nrrd}, Ptr{NrrdIoState}), file, nrrd, nio)
end

function nrrdStringWrite(stringP, nrrd, nio)
    ccall((:nrrdStringWrite, libteem), Cint, (Ptr{Cstring}, Ptr{Nrrd}, Ptr{NrrdIoState}), stringP, nrrd, nio)
end

function nrrdArrayCompare(type, valA, valB, valNum, epsilon, differ, explain)
    ccall((:nrrdArrayCompare, libteem), Cint, (Cint, Ptr{Cvoid}, Ptr{Cvoid}, Csize_t, Cdouble, Ptr{Cint}, Ptr{UInt8}), type, valA, valB, valNum, epsilon, differ, explain)
end

function nrrdAxesInsert(nout, nin, ax)
    ccall((:nrrdAxesInsert, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32), nout, nin, ax)
end

function nrrdInvertPerm(invp, perm, n)
    ccall((:nrrdInvertPerm, libteem), Cint, (Ptr{UInt32}, Ptr{UInt32}, UInt32), invp, perm, n)
end

function nrrdAxesPermute(nout, nin, axes)
    ccall((:nrrdAxesPermute, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{UInt32}), nout, nin, axes)
end

function nrrdShuffle(nout, nin, axis, perm)
    ccall((:nrrdShuffle, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Ptr{Csize_t}), nout, nin, axis, perm)
end

function nrrdAxesSwap(nout, nin, ax1, ax2)
    ccall((:nrrdAxesSwap, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, UInt32), nout, nin, ax1, ax2)
end

function nrrdFlip(nout, nin, axis)
    ccall((:nrrdFlip, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32), nout, nin, axis)
end

function nrrdJoin(nout, nin, numNin, axis, incrDim)
    ccall((:nrrdJoin, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, UInt32, UInt32, Cint), nout, nin, numNin, axis, incrDim)
end

function nrrdReshape_nva(nout, nin, dim, size)
    ccall((:nrrdReshape_nva, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Ptr{Csize_t}), nout, nin, dim, size)
end

function nrrdAxesSplit(nout, nin, ax, sizeFast, sizeSlow)
    ccall((:nrrdAxesSplit, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Csize_t, Csize_t), nout, nin, ax, sizeFast, sizeSlow)
end

function nrrdAxesDelete(nout, nin, ax)
    ccall((:nrrdAxesDelete, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32), nout, nin, ax)
end

function nrrdAxesMerge(nout, nin, ax)
    ccall((:nrrdAxesMerge, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32), nout, nin, ax)
end

function nrrdBlock(nout, nin)
    ccall((:nrrdBlock, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function nrrdUnblock(nout, nin, type)
    ccall((:nrrdUnblock, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nout, nin, type)
end

function nrrdTile2D(nout, nin, ax0, ax1, axSplit, sizeFast, sizeSlow)
    ccall((:nrrdTile2D, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, UInt32, UInt32, Csize_t, Csize_t), nout, nin, ax0, ax1, axSplit, sizeFast, sizeSlow)
end

function nrrdUntile2D(nout, nin, ax0, ax1, axMerge, sizeFast, sizeSlow)
    ccall((:nrrdUntile2D, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, UInt32, UInt32, Csize_t, Csize_t), nout, nin, ax0, ax1, axMerge, sizeFast, sizeSlow)
end

function nrrdIterNew()
    ccall((:nrrdIterNew, libteem), Ptr{NrrdIter}, ())
end

function nrrdIterSetValue(iter, val)
    ccall((:nrrdIterSetValue, libteem), Cvoid, (Ptr{NrrdIter}, Cdouble), iter, val)
end

function nrrdIterSetNrrd(iter, nrrd)
    ccall((:nrrdIterSetNrrd, libteem), Cvoid, (Ptr{NrrdIter}, Ptr{Nrrd}), iter, nrrd)
end

function nrrdIterSetOwnNrrd(iter, nrrd)
    ccall((:nrrdIterSetOwnNrrd, libteem), Cvoid, (Ptr{NrrdIter}, Ptr{Nrrd}), iter, nrrd)
end

function nrrdIterValue(iter)
    ccall((:nrrdIterValue, libteem), Cdouble, (Ptr{NrrdIter},), iter)
end

function nrrdIterContent(iter)
    ccall((:nrrdIterContent, libteem), Cstring, (Ptr{NrrdIter},), iter)
end

function nrrdIterNix(iter)
    ccall((:nrrdIterNix, libteem), Ptr{NrrdIter}, (Ptr{NrrdIter},), iter)
end

function nrrdRangeNew(min, max)
    ccall((:nrrdRangeNew, libteem), Ptr{NrrdRange}, (Cdouble, Cdouble), min, max)
end

function nrrdRangeCopy(range)
    ccall((:nrrdRangeCopy, libteem), Ptr{NrrdRange}, (Ptr{NrrdRange},), range)
end

function nrrdRangeNix(range)
    ccall((:nrrdRangeNix, libteem), Ptr{NrrdRange}, (Ptr{NrrdRange},), range)
end

function nrrdRangeReset(range)
    ccall((:nrrdRangeReset, libteem), Cvoid, (Ptr{NrrdRange},), range)
end

function nrrdRangeSet(range, nrrd, blind8BitRange)
    ccall((:nrrdRangeSet, libteem), Cvoid, (Ptr{NrrdRange}, Ptr{Nrrd}, Cint), range, nrrd, blind8BitRange)
end

function nrrdRangePercentileSet(range, nrrd, minPerc, maxPerc, hbins, blind8BitRange)
    ccall((:nrrdRangePercentileSet, libteem), Cint, (Ptr{NrrdRange}, Ptr{Nrrd}, Cdouble, Cdouble, UInt32, Cint), range, nrrd, minPerc, maxPerc, hbins, blind8BitRange)
end

function nrrdRangePercentileFromStringSet(range, nrrd, minStr, maxStr, hbins, blind8BitRange)
    ccall((:nrrdRangePercentileFromStringSet, libteem), Cint, (Ptr{NrrdRange}, Ptr{Nrrd}, Cstring, Cstring, UInt32, Cint), range, nrrd, minStr, maxStr, hbins, blind8BitRange)
end

function nrrdRangeSafeSet(range, nrrd, blind8BitRange)
    ccall((:nrrdRangeSafeSet, libteem), Cvoid, (Ptr{NrrdRange}, Ptr{Nrrd}, Cint), range, nrrd, blind8BitRange)
end

function nrrdRangeNewSet(nrrd, blind8BitRange)
    ccall((:nrrdRangeNewSet, libteem), Ptr{NrrdRange}, (Ptr{Nrrd}, Cint), nrrd, blind8BitRange)
end

function nrrdHasNonExist(nrrd)
    ccall((:nrrdHasNonExist, libteem), Cint, (Ptr{Nrrd},), nrrd)
end

function nrrdConvert(nout, nin, type)
    ccall((:nrrdConvert, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nout, nin, type)
end

function nrrdClampConvert(nout, nin, type)
    ccall((:nrrdClampConvert, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nout, nin, type)
end

function nrrdCastClampRound(nout, nin, type, doClamp, roundDir)
    ccall((:nrrdCastClampRound, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, Cint), nout, nin, type, doClamp, roundDir)
end

function nrrdQuantize(nout, nin, range, bits)
    ccall((:nrrdQuantize, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, UInt32), nout, nin, range, bits)
end

function nrrdUnquantize(nout, nin, type)
    ccall((:nrrdUnquantize, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nout, nin, type)
end

function nrrdHistoEq(nout, nin, nhistP, bins, smart, amount)
    ccall((:nrrdHistoEq, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, UInt32, UInt32, Cfloat), nout, nin, nhistP, bins, smart, amount)
end

function nrrdApply1DLut(nout, nin, range, nlut, typeOut, rescale)
    ccall((:nrrdApply1DLut, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Ptr{Nrrd}, Cint, Cint), nout, nin, range, nlut, typeOut, rescale)
end

function nrrdApplyMulti1DLut(nout, nin, range, nmlut, typeOut, rescale)
    ccall((:nrrdApplyMulti1DLut, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Ptr{Nrrd}, Cint, Cint), nout, nin, range, nmlut, typeOut, rescale)
end

function nrrdApply1DRegMap(nout, nin, range, nmap, typeOut, rescale)
    ccall((:nrrdApply1DRegMap, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Ptr{Nrrd}, Cint, Cint), nout, nin, range, nmap, typeOut, rescale)
end

function nrrdApplyMulti1DRegMap(nout, nin, range, nmmap, typeOut, rescale)
    ccall((:nrrdApplyMulti1DRegMap, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Ptr{Nrrd}, Cint, Cint), nout, nin, range, nmmap, typeOut, rescale)
end

function nrrd1DIrregMapCheck(nmap)
    ccall((:nrrd1DIrregMapCheck, libteem), Cint, (Ptr{Nrrd},), nmap)
end

function nrrd1DIrregAclGenerate(nacl, nmap, aclLen)
    ccall((:nrrd1DIrregAclGenerate, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Csize_t), nacl, nmap, aclLen)
end

function nrrd1DIrregAclCheck(nacl)
    ccall((:nrrd1DIrregAclCheck, libteem), Cint, (Ptr{Nrrd},), nacl)
end

function nrrdApply1DIrregMap(nout, nin, range, nmap, nacl, typeOut, rescale)
    ccall((:nrrdApply1DIrregMap, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint), nout, nin, range, nmap, nacl, typeOut, rescale)
end

function nrrdApply1DSubstitution(nout, nin, nsubst)
    ccall((:nrrdApply1DSubstitution, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), nout, nin, nsubst)
end

function nrrdApply2DLut(nout, nin, domainAxis, range0, range1, nlut, typeOut, rescale0, rescale1)
    ccall((:nrrdApply2DLut, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Ptr{NrrdRange}, Ptr{NrrdRange}, Ptr{Nrrd}, Cint, Cint, Cint), nout, nin, domainAxis, range0, range1, nlut, typeOut, rescale0, rescale1)
end

function nrrdSlice(nout, nin, axis, pos)
    ccall((:nrrdSlice, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Csize_t), nout, nin, axis, pos)
end

function nrrdCrop(nout, nin, min, max)
    ccall((:nrrdCrop, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Csize_t}, Ptr{Csize_t}), nout, nin, min, max)
end

function nrrdSliceSelect(noutAbove, noutBelow, nin, axi, nline, thresh)
    ccall((:nrrdSliceSelect, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Ptr{Nrrd}, Cdouble), noutAbove, noutBelow, nin, axi, nline, thresh)
end

function nrrdSample_nva(val, nin, coord)
    ccall((:nrrdSample_nva, libteem), Cint, (Ptr{Cvoid}, Ptr{Nrrd}, Ptr{Csize_t}), val, nin, coord)
end

function nrrdSimpleCrop(nout, nin, crop)
    ccall((:nrrdSimpleCrop, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32), nout, nin, crop)
end

function nrrdCropAuto(nout, nin, _min, _max, keep, keepNum, measr, frac, offset)
    ccall((:nrrdCropAuto, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Csize_t}, Ptr{Csize_t}, Ptr{UInt32}, UInt32, Cint, Cdouble, Cint), nout, nin, _min, _max, keep, keepNum, measr, frac, offset)
end

function nrrdSplice(nout, nin, nslice, axis, pos)
    ccall((:nrrdSplice, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Csize_t), nout, nin, nslice, axis, pos)
end

function nrrdPad_nva(nout, nin, min, max, boundary, padValue)
    ccall((:nrrdPad_nva, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Cptrdiff_t}, Ptr{Cptrdiff_t}, Cint, Cdouble), nout, nin, min, max, boundary, padValue)
end

function nrrdSimplePad_nva(nout, nin, pad, boundary, padValue)
    ccall((:nrrdSimplePad_nva, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Cint, Cdouble), nout, nin, pad, boundary, padValue)
end

function nrrdInset(nout, nin, nsub, min)
    ccall((:nrrdInset, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Csize_t}), nout, nin, nsub, min)
end

function nrrdProject(nout, nin, axis, measr, type)
    ccall((:nrrdProject, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Cint, Cint), nout, nin, axis, measr, type)
end

function nrrdHisto(nout, nin, range, nwght, bins, type)
    ccall((:nrrdHisto, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Ptr{Nrrd}, Csize_t, Cint), nout, nin, range, nwght, bins, type)
end

function nrrdHistoCheck(nhist)
    ccall((:nrrdHistoCheck, libteem), Cint, (Ptr{Nrrd},), nhist)
end

function nrrdHistoDraw(nout, nin, sy, showLog, max)
    ccall((:nrrdHistoDraw, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Csize_t, Cint, Cdouble), nout, nin, sy, showLog, max)
end

function nrrdHistoAxis(nout, nin, range, axis, bins, type)
    ccall((:nrrdHistoAxis, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, UInt32, Csize_t, Cint), nout, nin, range, axis, bins, type)
end

function nrrdHistoJoint(nout, nin, range, ninNum, nwght, bins, type, clamp)
    ccall((:nrrdHistoJoint, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{NrrdRange}}, UInt32, Ptr{Nrrd}, Ptr{Csize_t}, Cint, Ptr{Cint}), nout, nin, range, ninNum, nwght, bins, type, clamp)
end

function nrrdHistoThresholdOtsu(threshP, nhist, expo)
    ccall((:nrrdHistoThresholdOtsu, libteem), Cint, (Ptr{Cdouble}, Ptr{Nrrd}, Cdouble), threshP, nhist, expo)
end

function nrrdSRGBGamma(val)
    ccall((:nrrdSRGBGamma, libteem), Cdouble, (Cdouble,), val)
end

function nrrdSRGBGammaInverse(val)
    ccall((:nrrdSRGBGammaInverse, libteem), Cdouble, (Cdouble,), val)
end

function nrrdArithGamma(nout, nin, range, gamma)
    ccall((:nrrdArithGamma, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Cdouble), nout, nin, range, gamma)
end

function nrrdArithSRGBGamma(nout, nin, range, forward)
    ccall((:nrrdArithSRGBGamma, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdRange}, Cint), nout, nin, range, forward)
end

function nrrdArithUnaryOp(nout, op, nin)
    ccall((:nrrdArithUnaryOp, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{Nrrd}), nout, op, nin)
end

function nrrdArithBinaryOp(nout, op, ninA, ninB)
    ccall((:nrrdArithBinaryOp, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{Nrrd}, Ptr{Nrrd}), nout, op, ninA, ninB)
end

function nrrdArithTernaryOp(nout, op, ninA, ninB, ninC)
    ccall((:nrrdArithTernaryOp, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), nout, op, ninA, ninB, ninC)
end

function nrrdArithAffine(nout, minIn, nin, maxIn, minOut, maxOut, clamp)
    ccall((:nrrdArithAffine, libteem), Cint, (Ptr{Nrrd}, Cdouble, Ptr{Nrrd}, Cdouble, Cdouble, Cdouble, Cint), nout, minIn, nin, maxIn, minOut, maxOut, clamp)
end

function nrrdArithIterBinaryOp(nout, op, inA, inB)
    ccall((:nrrdArithIterBinaryOp, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{NrrdIter}, Ptr{NrrdIter}), nout, op, inA, inB)
end

function nrrdArithIterBinaryOpSelect(nout, op, inA, inB, which)
    ccall((:nrrdArithIterBinaryOpSelect, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{NrrdIter}, Ptr{NrrdIter}, UInt32), nout, op, inA, inB, which)
end

function nrrdArithIterTernaryOp(nout, op, inA, inB, inC)
    ccall((:nrrdArithIterTernaryOp, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{NrrdIter}, Ptr{NrrdIter}, Ptr{NrrdIter}), nout, op, inA, inB, inC)
end

function nrrdArithIterTernaryOpSelect(nout, op, inA, inB, inC, which)
    ccall((:nrrdArithIterTernaryOpSelect, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{NrrdIter}, Ptr{NrrdIter}, Ptr{NrrdIter}, UInt32), nout, op, inA, inB, inC, which)
end

function nrrdArithIterAffine(nout, minIn, in, maxIn, minOut, maxOut, clamp)
    ccall((:nrrdArithIterAffine, libteem), Cint, (Ptr{Nrrd}, Ptr{NrrdIter}, Ptr{NrrdIter}, Ptr{NrrdIter}, Ptr{NrrdIter}, Ptr{NrrdIter}, Cint), nout, minIn, in, maxIn, minOut, maxOut, clamp)
end

function nrrdCRC32(nin, endian)
    ccall((:nrrdCRC32, libteem), UInt32, (Ptr{Nrrd}, Cint), nin, endian)
end

function nrrdCheapMedian(nout, nin, pad, mode, radius, wght, bins)
    ccall((:nrrdCheapMedian, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, UInt32, Cfloat, UInt32), nout, nin, pad, mode, radius, wght, bins)
end

function nrrdDistanceL2(nout, nin, typeOut, axisDo, thresh, insideHigher)
    ccall((:nrrdDistanceL2, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Ptr{Cint}, Cdouble, Cint), nout, nin, typeOut, axisDo, thresh, insideHigher)
end

function nrrdDistanceL2Biased(nout, nin, typeOut, axisDo, thresh, bias, insideHigher)
    ccall((:nrrdDistanceL2Biased, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Ptr{Cint}, Cdouble, Cdouble, Cint), nout, nin, typeOut, axisDo, thresh, bias, insideHigher)
end

function nrrdDistanceL2Signed(nout, nin, typeOut, axisDo, thresh, insideHigher)
    ccall((:nrrdDistanceL2Signed, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Ptr{Cint}, Cdouble, Cint), nout, nin, typeOut, axisDo, thresh, insideHigher)
end

function nrrdDeringContextNew()
    ccall((:nrrdDeringContextNew, libteem), Ptr{NrrdDeringContext}, ())
end

function nrrdDeringContextNix(drc)
    ccall((:nrrdDeringContextNix, libteem), Ptr{NrrdDeringContext}, (Ptr{NrrdDeringContext},), drc)
end

function nrrdDeringVerboseSet(drc, verbose)
    ccall((:nrrdDeringVerboseSet, libteem), Cint, (Ptr{NrrdDeringContext}, Cint), drc, verbose)
end

function nrrdDeringLinearInterpSet(drc, linterp)
    ccall((:nrrdDeringLinearInterpSet, libteem), Cint, (Ptr{NrrdDeringContext}, Cint), drc, linterp)
end

function nrrdDeringVerticalSeamSet(drc, vertSeam)
    ccall((:nrrdDeringVerticalSeamSet, libteem), Cint, (Ptr{NrrdDeringContext}, Cint), drc, vertSeam)
end

function nrrdDeringInputSet(drc, nin)
    ccall((:nrrdDeringInputSet, libteem), Cint, (Ptr{NrrdDeringContext}, Ptr{Nrrd}), drc, nin)
end

function nrrdDeringCenterSet(drc, cx, cy)
    ccall((:nrrdDeringCenterSet, libteem), Cint, (Ptr{NrrdDeringContext}, Cdouble, Cdouble), drc, cx, cy)
end

function nrrdDeringClampPercSet(drc, lo, hi)
    ccall((:nrrdDeringClampPercSet, libteem), Cint, (Ptr{NrrdDeringContext}, Cdouble, Cdouble), drc, lo, hi)
end

function nrrdDeringClampHistoBinsSet(drc, bins)
    ccall((:nrrdDeringClampHistoBinsSet, libteem), Cint, (Ptr{NrrdDeringContext}, UInt32), drc, bins)
end

function nrrdDeringRadiusScaleSet(drc, rsc)
    ccall((:nrrdDeringRadiusScaleSet, libteem), Cint, (Ptr{NrrdDeringContext}, Cdouble), drc, rsc)
end

function nrrdDeringThetaNumSet(drc, thetaNum)
    ccall((:nrrdDeringThetaNumSet, libteem), Cint, (Ptr{NrrdDeringContext}, UInt32), drc, thetaNum)
end

function nrrdDeringRadialKernelSet(drc, rkernel, rkparm)
    ccall((:nrrdDeringRadialKernelSet, libteem), Cint, (Ptr{NrrdDeringContext}, Ptr{NrrdKernel}, Ptr{Cdouble}), drc, rkernel, rkparm)
end

function nrrdDeringThetaKernelSet(drc, tkernel, tkparm)
    ccall((:nrrdDeringThetaKernelSet, libteem), Cint, (Ptr{NrrdDeringContext}, Ptr{NrrdKernel}, Ptr{Cdouble}), drc, tkernel, tkparm)
end

function nrrdDeringExecute(drc, nout)
    ccall((:nrrdDeringExecute, libteem), Cint, (Ptr{NrrdDeringContext}, Ptr{Nrrd}), drc, nout)
end

function nrrdResampleContextNew()
    ccall((:nrrdResampleContextNew, libteem), Ptr{NrrdResampleContext}, ())
end

function nrrdResampleContextNix(arg1)
    ccall((:nrrdResampleContextNix, libteem), Ptr{NrrdResampleContext}, (Ptr{NrrdResampleContext},), arg1)
end

function nrrdResampleDefaultCenterSet(rsmc, center)
    ccall((:nrrdResampleDefaultCenterSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, center)
end

function nrrdResampleNonExistentSet(rsmc, nonExistent)
    ccall((:nrrdResampleNonExistentSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, nonExistent)
end

function nrrdResampleNrrdSet(rsmc, nin)
    ccall((:nrrdResampleNrrdSet, libteem), Cint, (Ptr{NrrdResampleContext}, Ptr{Nrrd}), rsmc, nin)
end

function nrrdResampleInputSet(rsmc, nin)
    ccall((:nrrdResampleInputSet, libteem), Cint, (Ptr{NrrdResampleContext}, Ptr{Nrrd}), rsmc, nin)
end

function nrrdResampleKernelSet(rsmc, axIdx, kernel, kparm)
    ccall((:nrrdResampleKernelSet, libteem), Cint, (Ptr{NrrdResampleContext}, UInt32, Ptr{NrrdKernel}, Ptr{Cdouble}), rsmc, axIdx, kernel, kparm)
end

function nrrdResampleSamplesSet(rsmc, axIdx, samples)
    ccall((:nrrdResampleSamplesSet, libteem), Cint, (Ptr{NrrdResampleContext}, UInt32, Csize_t), rsmc, axIdx, samples)
end

function nrrdResampleRangeSet(rsmc, axIdx, min, max)
    ccall((:nrrdResampleRangeSet, libteem), Cint, (Ptr{NrrdResampleContext}, UInt32, Cdouble, Cdouble), rsmc, axIdx, min, max)
end

function nrrdResampleOverrideCenterSet(rsmc, axIdx, center)
    ccall((:nrrdResampleOverrideCenterSet, libteem), Cint, (Ptr{NrrdResampleContext}, UInt32, Cint), rsmc, axIdx, center)
end

function nrrdResampleRangeFullSet(rsmc, axIdx)
    ccall((:nrrdResampleRangeFullSet, libteem), Cint, (Ptr{NrrdResampleContext}, UInt32), rsmc, axIdx)
end

function nrrdResampleBoundarySet(rsmc, boundary)
    ccall((:nrrdResampleBoundarySet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, boundary)
end

function nrrdResamplePadValueSet(rsmc, padValue)
    ccall((:nrrdResamplePadValueSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cdouble), rsmc, padValue)
end

function nrrdResampleBoundarySpecSet(rsmc, bspec)
    ccall((:nrrdResampleBoundarySpecSet, libteem), Cint, (Ptr{NrrdResampleContext}, Ptr{NrrdBoundarySpec}), rsmc, bspec)
end

function nrrdResampleTypeOutSet(rsmc, typeOut)
    ccall((:nrrdResampleTypeOutSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, typeOut)
end

function nrrdResampleRenormalizeSet(rsmc, renormalize)
    ccall((:nrrdResampleRenormalizeSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, renormalize)
end

function nrrdResampleRoundSet(rsmc, round)
    ccall((:nrrdResampleRoundSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, round)
end

function nrrdResampleClampSet(rsmc, clamp)
    ccall((:nrrdResampleClampSet, libteem), Cint, (Ptr{NrrdResampleContext}, Cint), rsmc, clamp)
end

function nrrdResampleExecute(rsmc, nout)
    ccall((:nrrdResampleExecute, libteem), Cint, (Ptr{NrrdResampleContext}, Ptr{Nrrd}), rsmc, nout)
end

function nrrdSpatialResample(nout, nin, info)
    ccall((:nrrdSpatialResample, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdResampleInfo}), nout, nin, info)
end

function nrrdSimpleResample(nout, nin, kernel, parm, samples, scalings)
    ccall((:nrrdSimpleResample, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{NrrdKernel}, Ptr{Cdouble}, Ptr{Csize_t}, Ptr{Cdouble}), nout, nin, kernel, parm, samples, scalings)
end

function nrrdCCValid(nin)
    ccall((:nrrdCCValid, libteem), Cint, (Ptr{Nrrd},), nin)
end

function nrrdCCSize(nout, nin)
    ccall((:nrrdCCSize, libteem), UInt32, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function nrrdCCMax(nin)
    ccall((:nrrdCCMax, libteem), UInt32, (Ptr{Nrrd},), nin)
end

function nrrdCCNum(nin)
    ccall((:nrrdCCNum, libteem), UInt32, (Ptr{Nrrd},), nin)
end

function nrrdCCFind(nout, nvalP, nin, type, conny)
    ccall((:nrrdCCFind, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Nrrd}, Cint, UInt32), nout, nvalP, nin, type, conny)
end

function nrrdCCAdjacency(nout, nin, conny)
    ccall((:nrrdCCAdjacency, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32), nout, nin, conny)
end

function nrrdCCMerge(nout, nin, nval, dir, maxSize, maxNeighbor, conny)
    ccall((:nrrdCCMerge, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Cint, UInt32, UInt32, UInt32), nout, nin, nval, dir, maxSize, maxNeighbor, conny)
end

function nrrdCCRevalue(nout, nin, nval)
    ccall((:nrrdCCRevalue, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), nout, nin, nval)
end

function nrrdCCSettle(nout, nvalP, nin)
    ccall((:nrrdCCSettle, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Nrrd}), nout, nvalP, nin)
end

function nrrdFFTWWisdomRead(file)
    ccall((:nrrdFFTWWisdomRead, libteem), Cint, (Ptr{Cvoid},), file)
end

function nrrdFFT(nout, nin, axes, axesLen, sign, rescale, preCompLevel)
    ccall((:nrrdFFT, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{UInt32}, UInt32, Cint, Cint, Cint), nout, nin, axes, axesLen, sign, rescale, preCompLevel)
end

function nrrdFFTWWisdomWrite(file)
    ccall((:nrrdFFTWWisdomWrite, libteem), Cint, (Ptr{Cvoid},), file)
end

function nrrdKernelParse(kernelP, parm, str)
    ccall((:nrrdKernelParse, libteem), Cint, (Ptr{Ptr{NrrdKernel}}, Ptr{Cdouble}, Cstring), kernelP, parm, str)
end

function nrrdKernelSpecParse(ksp, str)
    ccall((:nrrdKernelSpecParse, libteem), Cint, (Ptr{NrrdKernelSpec}, Cstring), ksp, str)
end

function nrrdKernelSpecSprint(str, ksp)
    ccall((:nrrdKernelSpecSprint, libteem), Cint, (Ptr{UInt8}, Ptr{NrrdKernelSpec}), str, ksp)
end

function nrrdKernelSprint(str, kernel, kparm)
    ccall((:nrrdKernelSprint, libteem), Cint, (Ptr{UInt8}, Ptr{NrrdKernel}, Ptr{Cdouble}), str, kernel, kparm)
end

function nrrdKernelCompare(kernA, parmA, kernB, parmB, differ, explain)
    ccall((:nrrdKernelCompare, libteem), Cint, (Ptr{NrrdKernel}, Ptr{Cdouble}, Ptr{NrrdKernel}, Ptr{Cdouble}, Ptr{Cint}, Ptr{UInt8}), kernA, parmA, kernB, parmB, differ, explain)
end

function nrrdKernelSpecCompare(aa, bb, differ, explain)
    ccall((:nrrdKernelSpecCompare, libteem), Cint, (Ptr{NrrdKernelSpec}, Ptr{NrrdKernelSpec}, Ptr{Cint}, Ptr{UInt8}), aa, bb, differ, explain)
end

function nrrdKernelCheck(kern, parm, evalNum, epsilon, diffOkEvalMax, diffOkIntglMax, dkern, dparm)
    ccall((:nrrdKernelCheck, libteem), Cint, (Ptr{NrrdKernel}, Ptr{Cdouble}, Csize_t, Cdouble, UInt32, UInt32, Ptr{NrrdKernel}, Ptr{Cdouble}), kern, parm, evalNum, epsilon, diffOkEvalMax, diffOkIntglMax, dkern, dparm)
end

function nrrdKernelParm0IsScale(kern)
    ccall((:nrrdKernelParm0IsScale, libteem), Cint, (Ptr{NrrdKernel},), kern)
end
# Julia wrapper for header: nrrdDefines.h
# Automatically generated using Clang.jl

# Julia wrapper for header: nrrdEnums.h
# Automatically generated using Clang.jl

# Julia wrapper for header: nrrdMacros.h
# Automatically generated using Clang.jl

# Julia wrapper for header: pull.h
# Automatically generated using Clang.jl

# Julia wrapper for header: seek.h
# Automatically generated using Clang.jl


function seekContextNew()
    ccall((:seekContextNew, libteem), Ptr{seekContext}, ())
end

function seekContextNix(sctx)
    ccall((:seekContextNix, libteem), Ptr{seekContext}, (Ptr{seekContext},), sctx)
end

function seekVerboseSet(sctx, verbose)
    ccall((:seekVerboseSet, libteem), Cvoid, (Ptr{seekContext}, Cint), sctx, verbose)
end

function seekDataSet(sctx, ninscl, gctx, pvlIdx)
    ccall((:seekDataSet, libteem), Cint, (Ptr{seekContext}, Ptr{Nrrd}, Ptr{gageContext}, UInt32), sctx, ninscl, gctx, pvlIdx)
end

function seekNormalsFindSet(sctx, doit)
    ccall((:seekNormalsFindSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, doit)
end

function seekStrengthUseSet(sctx, doit)
    ccall((:seekStrengthUseSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, doit)
end

function seekStrengthSet(sctx, strengthSign, strength)
    ccall((:seekStrengthSet, libteem), Cint, (Ptr{seekContext}, Cint, Cdouble), sctx, strengthSign, strength)
end

function seekSamplesSet(sctx, samples)
    ccall((:seekSamplesSet, libteem), Cint, (Ptr{seekContext}, Ptr{Csize_t}), sctx, samples)
end

function seekTypeSet(sctx, type)
    ccall((:seekTypeSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, type)
end

function seekLowerInsideSet(sctx, lowerInside)
    ccall((:seekLowerInsideSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, lowerInside)
end

function seekItemScalarSet(sctx, item)
    ccall((:seekItemScalarSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, item)
end

function seekItemStrengthSet(sctx, item)
    ccall((:seekItemStrengthSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, item)
end

function seekItemNormalSet(sctx, item)
    ccall((:seekItemNormalSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, item)
end

function seekItemGradientSet(sctx, item)
    ccall((:seekItemGradientSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, item)
end

function seekItemEigensystemSet(sctx, evalItem, evecItem)
    ccall((:seekItemEigensystemSet, libteem), Cint, (Ptr{seekContext}, Cint, Cint), sctx, evalItem, evecItem)
end

function seekItemHessSet(sctx, item)
    ccall((:seekItemHessSet, libteem), Cint, (Ptr{seekContext}, Cint), sctx, item)
end

function seekIsovalueSet(sctx, isovalue)
    ccall((:seekIsovalueSet, libteem), Cint, (Ptr{seekContext}, Cdouble), sctx, isovalue)
end

function seekEvalDiffThreshSet(sctx, evalDiffThresh)
    ccall((:seekEvalDiffThreshSet, libteem), Cint, (Ptr{seekContext}, Cdouble), sctx, evalDiffThresh)
end

function seekUpdate(sctx)
    ccall((:seekUpdate, libteem), Cint, (Ptr{seekContext},), sctx)
end

function seekExtract(sctx, lpld)
    ccall((:seekExtract, libteem), Cint, (Ptr{seekContext}, Ptr{limnPolyData}), sctx, lpld)
end

function seekVertexStrength(nval, sctx, pld)
    ccall((:seekVertexStrength, libteem), Cint, (Ptr{Nrrd}, Ptr{seekContext}, Ptr{limnPolyData}), nval, sctx, pld)
end

function seekDescendToDeg(coord, botleft, botright, topleft, topright, maxiter, eps, type)
    ccall((:seekDescendToDeg, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, UInt8), coord, botleft, botright, topleft, topright, maxiter, eps, type)
end

function seekDescendToDegCell(coord, Hbfl, Hbfr, Hbbl, Hbbr, Htfl, Htfr, Htbl, Htbr, maxiter, eps, type)
    ccall((:seekDescendToDegCell, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, UInt8), coord, Hbfl, Hbfr, Hbbl, Hbbr, Htfl, Htfr, Htbl, Htbr, maxiter, eps, type)
end

function seekDescendToRidge(coord, Hbfl, gbfl, Hbfr, gbfr, Hbbl, gbbl, Hbbr, gbbr, Htfl, gtfl, Htfr, gtfr, Htbl, gtbl, Htbr, gtbr, maxiter, eps, ridge, evalDiffThresh)
    ccall((:seekDescendToRidge, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, UInt8, Cdouble), coord, Hbfl, gbfl, Hbfr, gbfr, Hbbl, gbbl, Hbbr, gbbr, Htfl, gtfl, Htfr, gtfr, Htbl, gtbl, Htbr, gtbr, maxiter, eps, ridge, evalDiffThresh)
end
# Julia wrapper for header: ten.h
# Automatically generated using Clang.jl


function tenTripleConvertSingle_d(dst, dstType, src, srcType)
    ccall((:tenTripleConvertSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Cint, Ptr{Cdouble}, Cint), dst, dstType, src, srcType)
end

function tenTripleConvertSingle_f(dst, dstType, src, srcType)
    ccall((:tenTripleConvertSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Cint, Ptr{Cfloat}, Cint), dst, dstType, src, srcType)
end

function tenTripleCalcSingle_d(dst, ttype, ten)
    ccall((:tenTripleCalcSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Cint, Ptr{Cdouble}), dst, ttype, ten)
end

function tenTripleCalcSingle_f(dst, ttype, ten)
    ccall((:tenTripleCalcSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Cint, Ptr{Cfloat}), dst, ttype, ten)
end

function tenTripleCalc(nout, ttype, nten)
    ccall((:tenTripleCalc, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{Nrrd}), nout, ttype, nten)
end

function tenTripleConvert(nout, dstType, nin, srcType)
    ccall((:tenTripleConvert, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{Nrrd}, Cint), nout, dstType, nin, srcType)
end

function tenGradientParmNew()
    ccall((:tenGradientParmNew, libteem), Ptr{tenGradientParm}, ())
end

function tenGradientParmNix(tgparm)
    ccall((:tenGradientParmNix, libteem), Ptr{tenGradientParm}, (Ptr{tenGradientParm},), tgparm)
end

function tenGradientCheck(ngrad, type, minnum)
    ccall((:tenGradientCheck, libteem), Cint, (Ptr{Nrrd}, Cint, UInt32), ngrad, type, minnum)
end

function tenGradientRandom(ngrad, num, seed)
    ccall((:tenGradientRandom, libteem), Cint, (Ptr{Nrrd}, UInt32, UInt32), ngrad, num, seed)
end

function tenGradientIdealEdge(N, single)
    ccall((:tenGradientIdealEdge, libteem), Cdouble, (UInt32, Cint), N, single)
end

function tenGradientJitter(nout, nin, dist)
    ccall((:tenGradientJitter, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble), nout, nin, dist)
end

function tenGradientBalance(nout, nin, tgparm)
    ccall((:tenGradientBalance, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{tenGradientParm}), nout, nin, tgparm)
end

function tenGradientMeasure(pot, minAngle, minEdge, npos, tgparm, edgeNormalize)
    ccall((:tenGradientMeasure, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Nrrd}, Ptr{tenGradientParm}, Cint), pot, minAngle, minEdge, npos, tgparm, edgeNormalize)
end

function tenGradientDistribute(nout, nin, tgparm)
    ccall((:tenGradientDistribute, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{tenGradientParm}), nout, nin, tgparm)
end

function tenGradientGenerate(nout, num, tgparm)
    ccall((:tenGradientGenerate, libteem), Cint, (Ptr{Nrrd}, UInt32, Ptr{tenGradientParm}), nout, num, tgparm)
end

function tenInterpParmNew()
    ccall((:tenInterpParmNew, libteem), Ptr{tenInterpParm}, ())
end

function tenInterpParmCopy(tip)
    ccall((:tenInterpParmCopy, libteem), Ptr{tenInterpParm}, (Ptr{tenInterpParm},), tip)
end

function tenInterpParmBufferAlloc(tip, num)
    ccall((:tenInterpParmBufferAlloc, libteem), Cint, (Ptr{tenInterpParm}, UInt32), tip, num)
end

function tenInterpParmNix(tip)
    ccall((:tenInterpParmNix, libteem), Ptr{tenInterpParm}, (Ptr{tenInterpParm},), tip)
end

function tenInterpTwo_d(oten, tenA, tenB, ptype, aa, tip)
    ccall((:tenInterpTwo_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble, Ptr{tenInterpParm}), oten, tenA, tenB, ptype, aa, tip)
end

function tenInterpN_d(tenOut, tenIn, wght, num, ptype, tip)
    ccall((:tenInterpN_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, UInt32, Cint, Ptr{tenInterpParm}), tenOut, tenIn, wght, num, ptype, tip)
end

function tenInterpPathLength(npath, doubleVerts, fancy, shape)
    ccall((:tenInterpPathLength, libteem), Cdouble, (Ptr{Nrrd}, Cint, Cint, Cint), npath, doubleVerts, fancy, shape)
end

function tenInterpTwoDiscrete_d(nout, tenA, tenB, ptype, num, tip)
    ccall((:tenInterpTwoDiscrete_d, libteem), Cint, (Ptr{Nrrd}, Ptr{Cdouble}, Ptr{Cdouble}, Cint, UInt32, Ptr{tenInterpParm}), nout, tenA, tenB, ptype, num, tip)
end

function tenInterpDistanceTwo_d(tenA, tenB, ptype, tip)
    ccall((:tenInterpDistanceTwo_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}, Cint, Ptr{tenInterpParm}), tenA, tenB, ptype, tip)
end

function tenInterpMulti3D(nout, nin, wght, ninNum, ptype, tip)
    ccall((:tenInterpMulti3D, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Cdouble}, UInt32, Cint, Ptr{tenInterpParm}), nout, nin, wght, ninNum, ptype, tip)
end

function tenGlyphParmNew()
    ccall((:tenGlyphParmNew, libteem), Ptr{tenGlyphParm}, ())
end

function tenGlyphParmNix(parm)
    ccall((:tenGlyphParmNix, libteem), Ptr{tenGlyphParm}, (Ptr{tenGlyphParm},), parm)
end

function tenGlyphParmCheck(parm, nten, npos, nslc)
    ccall((:tenGlyphParmCheck, libteem), Cint, (Ptr{tenGlyphParm}, Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), parm, nten, npos, nslc)
end

function tenGlyphGen(glyphs, scene, parm, nten, npos, nslc)
    ccall((:tenGlyphGen, libteem), Cint, (Ptr{limnObject}, Ptr{echoScene}, Ptr{tenGlyphParm}, Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), glyphs, scene, parm, nten, npos, nslc)
end

function tenGlyphBqdZoneEval(eval)
    ccall((:tenGlyphBqdZoneEval, libteem), UInt32, (Ptr{Cdouble},), eval)
end

function tenGlyphBqdUvEval(uv, eval)
    ccall((:tenGlyphBqdUvEval, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), uv, eval)
end

function tenGlyphBqdEvalUv(eval, uv)
    ccall((:tenGlyphBqdEvalUv, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), eval, uv)
end

function tenGlyphBqdZoneUv(uv)
    ccall((:tenGlyphBqdZoneUv, libteem), UInt32, (Ptr{Cdouble},), uv)
end

function tenGlyphBqdAbcUv(abc, uv, betaMax)
    ccall((:tenGlyphBqdAbcUv, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), abc, uv, betaMax)
end

function tenRotateSingle_f(tenOut, rot, tenIn)
    ccall((:tenRotateSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), tenOut, rot, tenIn)
end

function tenTensorCheck(nin, wantType, want4D, useBiff)
    ccall((:tenTensorCheck, libteem), Cint, (Ptr{Nrrd}, Cint, Cint, Cint), nin, wantType, want4D, useBiff)
end

function tenMeasurementFrameReduce(nout, nin)
    ccall((:tenMeasurementFrameReduce, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function tenExpand2D(nout, nin, scale, thresh)
    ccall((:tenExpand2D, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble, Cdouble), nout, nin, scale, thresh)
end

function tenExpand(tnine, tseven, scale, thresh)
    ccall((:tenExpand, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble, Cdouble), tnine, tseven, scale, thresh)
end

function tenShrink(tseven, nconf, tnine)
    ccall((:tenShrink, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), tseven, nconf, tnine)
end

function tenEigensolve_f(eval, evec, ten)
    ccall((:tenEigensolve_f, libteem), Cint, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), eval, evec, ten)
end

function tenEigensolve_d(eval, evec, ten)
    ccall((:tenEigensolve_d, libteem), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), eval, evec, ten)
end

function tenMakeSingle_f(ten, conf, eval, evec)
    ccall((:tenMakeSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Cfloat, Ptr{Cfloat}, Ptr{Cfloat}), ten, conf, eval, evec)
end

function tenMakeSingle_d(ten, conf, eval, evec)
    ccall((:tenMakeSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), ten, conf, eval, evec)
end

function tenMake(nout, nconf, neval, nevec)
    ccall((:tenMake, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}), nout, nconf, neval, nevec)
end

function tenSlice(nout, nten, axis, pos, dim)
    ccall((:tenSlice, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, UInt32, Csize_t, UInt32), nout, nten, axis, pos, dim)
end

function tenInvariantGradientsK_d(K1, K2, K3, ten, minnorm)
    ccall((:tenInvariantGradientsK_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), K1, K2, K3, ten, minnorm)
end

function tenInvariantGradientsR_d(R1, R2, R3, ten, minnorm)
    ccall((:tenInvariantGradientsR_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), R1, R2, R3, ten, minnorm)
end

function tenRotationTangents_d(phi1, phi2, phi3, evec)
    ccall((:tenRotationTangents_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), phi1, phi2, phi3, evec)
end

function tenLogSingle_d(logten, ten)
    ccall((:tenLogSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), logten, ten)
end

function tenLogSingle_f(logten, ten)
    ccall((:tenLogSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), logten, ten)
end

function tenExpSingle_d(expten, ten)
    ccall((:tenExpSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), expten, ten)
end

function tenExpSingle_f(expten, ten)
    ccall((:tenExpSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), expten, ten)
end

function tenSqrtSingle_d(sqrtten, ten)
    ccall((:tenSqrtSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), sqrtten, ten)
end

function tenSqrtSingle_f(sqrtten, ten)
    ccall((:tenSqrtSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), sqrtten, ten)
end

function tenPowSingle_d(powten, ten, power)
    ccall((:tenPowSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Cdouble), powten, ten, power)
end

function tenPowSingle_f(powten, ten, power)
    ccall((:tenPowSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Cfloat), powten, ten, power)
end

function tenInv_f(inv, ten)
    ccall((:tenInv_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}), inv, ten)
end

function tenInv_d(inv, ten)
    ccall((:tenInv_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}), inv, ten)
end

function tenDoubleContract_d(a, T, b)
    ccall((:tenDoubleContract_d, libteem), Cdouble, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), a, T, b)
end

function tenDWMRIKeyValueParse(ngradP, nbmatP, bP, skip, skipNum, ndwi)
    ccall((:tenDWMRIKeyValueParse, libteem), Cint, (Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, Ptr{Cdouble}, Ptr{Ptr{UInt32}}, Ptr{UInt32}, Ptr{Nrrd}), ngradP, nbmatP, bP, skip, skipNum, ndwi)
end

function tenBMatrixCalc(nbmat, ngrad)
    ccall((:tenBMatrixCalc, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nbmat, ngrad)
end

function tenEMatrixCalc(nemat, nbmat, knownB0)
    ccall((:tenEMatrixCalc, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint), nemat, nbmat, knownB0)
end

function tenEstimateLinearSingle_f(ten, B0P, dwi, emat, vbuf, DD, knownB0, thresh, soft, b)
    ccall((:tenEstimateLinearSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cdouble}, Ptr{Cdouble}, UInt32, Cint, Cfloat, Cfloat, Cfloat), ten, B0P, dwi, emat, vbuf, DD, knownB0, thresh, soft, b)
end

function tenEstimateLinearSingle_d(ten, B0P, dwi, emat, vbuf, DD, knownB0, thresh, soft, b)
    ccall((:tenEstimateLinearSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, UInt32, Cint, Cdouble, Cdouble, Cdouble), ten, B0P, dwi, emat, vbuf, DD, knownB0, thresh, soft, b)
end

function tenEstimateLinear3D(nten, nterrP, nB0P, ndwi, dwiLen, nbmat, knownB0, thresh, soft, b)
    ccall((:tenEstimateLinear3D, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, UInt32, Ptr{Nrrd}, Cint, Cdouble, Cdouble, Cdouble), nten, nterrP, nB0P, ndwi, dwiLen, nbmat, knownB0, thresh, soft, b)
end

function tenEstimateLinear4D(nten, nterrP, nB0P, ndwi, _nbmat, knownB0, thresh, soft, b)
    ccall((:tenEstimateLinear4D, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cdouble, Cdouble, Cdouble), nten, nterrP, nB0P, ndwi, _nbmat, knownB0, thresh, soft, b)
end

function tenSimulateSingle_f(dwi, B0, ten, bmat, DD, b)
    ccall((:tenSimulateSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Cfloat, Ptr{Cfloat}, Ptr{Cdouble}, UInt32, Cfloat), dwi, B0, ten, bmat, DD, b)
end

function tenSimulate(ndwi, nT2, nten, nbmat, b)
    ccall((:tenSimulate, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Cdouble), ndwi, nT2, nten, nbmat, b)
end

function tenEstimateContextNew()
    ccall((:tenEstimateContextNew, libteem), Ptr{tenEstimateContext}, ())
end

function tenEstimateVerboseSet(tec, verbose)
    ccall((:tenEstimateVerboseSet, libteem), Cvoid, (Ptr{tenEstimateContext}, Cint), tec, verbose)
end

function tenEstimateNegEvalShiftSet(tec, doit)
    ccall((:tenEstimateNegEvalShiftSet, libteem), Cvoid, (Ptr{tenEstimateContext}, Cint), tec, doit)
end

function tenEstimateMethodSet(tec, estMethod)
    ccall((:tenEstimateMethodSet, libteem), Cint, (Ptr{tenEstimateContext}, Cint), tec, estMethod)
end

function tenEstimateSigmaSet(tec, sigma)
    ccall((:tenEstimateSigmaSet, libteem), Cint, (Ptr{tenEstimateContext}, Cdouble), tec, sigma)
end

function tenEstimateValueMinSet(tec, valueMin)
    ccall((:tenEstimateValueMinSet, libteem), Cint, (Ptr{tenEstimateContext}, Cdouble), tec, valueMin)
end

function tenEstimateGradientsSet(tec, ngrad, bValue, estimateB0)
    ccall((:tenEstimateGradientsSet, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Nrrd}, Cdouble, Cint), tec, ngrad, bValue, estimateB0)
end

function tenEstimateBMatricesSet(tec, nbmat, bValue, estimateB0)
    ccall((:tenEstimateBMatricesSet, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Nrrd}, Cdouble, Cint), tec, nbmat, bValue, estimateB0)
end

function tenEstimateSkipSet(tec, valIdx, doSkip)
    ccall((:tenEstimateSkipSet, libteem), Cint, (Ptr{tenEstimateContext}, UInt32, Cint), tec, valIdx, doSkip)
end

function tenEstimateSkipReset(tec)
    ccall((:tenEstimateSkipReset, libteem), Cint, (Ptr{tenEstimateContext},), tec)
end

function tenEstimateThresholdFind(threshP, isB0, nin4d)
    ccall((:tenEstimateThresholdFind, libteem), Cint, (Ptr{Cdouble}, Ptr{Cuchar}, Ptr{Nrrd}), threshP, isB0, nin4d)
end

function tenEstimateThresholdSet(tec, thresh, soft)
    ccall((:tenEstimateThresholdSet, libteem), Cint, (Ptr{tenEstimateContext}, Cdouble, Cdouble), tec, thresh, soft)
end

function tenEstimateUpdate(tec)
    ccall((:tenEstimateUpdate, libteem), Cint, (Ptr{tenEstimateContext},), tec)
end

function tenEstimate1TensorSimulateSingle_f(tec, simval, sigma, bValue, B0, _ten)
    ccall((:tenEstimate1TensorSimulateSingle_f, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Cfloat}, Cfloat, Cfloat, Cfloat, Ptr{Cfloat}), tec, simval, sigma, bValue, B0, _ten)
end

function tenEstimate1TensorSimulateSingle_d(tec, simval, sigma, bValue, B0, ten)
    ccall((:tenEstimate1TensorSimulateSingle_d, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, Ptr{Cdouble}), tec, simval, sigma, bValue, B0, ten)
end

function tenEstimate1TensorSimulateVolume(tec, ndwi, sigma, bValue, nB0, nten, outType, keyValueSet)
    ccall((:tenEstimate1TensorSimulateVolume, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Nrrd}, Cdouble, Cdouble, Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint), tec, ndwi, sigma, bValue, nB0, nten, outType, keyValueSet)
end

function tenEstimate1TensorSingle_f(tec, ten, all)
    ccall((:tenEstimate1TensorSingle_f, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Cfloat}, Ptr{Cfloat}), tec, ten, all)
end

function tenEstimate1TensorSingle_d(tec, ten, all)
    ccall((:tenEstimate1TensorSingle_d, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Cdouble}, Ptr{Cdouble}), tec, ten, all)
end

function tenEstimate1TensorVolume4D(tec, nten, nB0P, nterrP, ndwi, outType)
    ccall((:tenEstimate1TensorVolume4D, libteem), Cint, (Ptr{tenEstimateContext}, Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, Ptr{Nrrd}, Cint), tec, nten, nB0P, nterrP, ndwi, outType)
end

function tenEstimateContextNix(tec)
    ccall((:tenEstimateContextNix, libteem), Ptr{tenEstimateContext}, (Ptr{tenEstimateContext},), tec)
end

function tenAnisoEval_f(eval, aniso)
    ccall((:tenAnisoEval_f, libteem), Cfloat, (Ptr{Cfloat}, Cint), eval, aniso)
end

function tenAnisoEval_d(eval, aniso)
    ccall((:tenAnisoEval_d, libteem), Cdouble, (Ptr{Cdouble}, Cint), eval, aniso)
end

function tenAnisoTen_f(ten, aniso)
    ccall((:tenAnisoTen_f, libteem), Cfloat, (Ptr{Cfloat}, Cint), ten, aniso)
end

function tenAnisoTen_d(ten, aniso)
    ccall((:tenAnisoTen_d, libteem), Cdouble, (Ptr{Cdouble}, Cint), ten, aniso)
end

function tenAnisoPlot(nout, aniso, res, hflip, whole, nanout)
    ccall((:tenAnisoPlot, libteem), Cint, (Ptr{Nrrd}, Cint, UInt32, Cint, Cint, Cint), nout, aniso, res, hflip, whole, nanout)
end

function tenAnisoVolume(nout, nin, aniso, confThresh)
    ccall((:tenAnisoVolume, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cdouble), nout, nin, aniso, confThresh)
end

function tenAnisoHistogram(nout, nin, nwght, right, version, resolution)
    ccall((:tenAnisoHistogram, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, UInt32), nout, nin, nwght, right, version, resolution)
end

function tenEvecRGBParmNew()
    ccall((:tenEvecRGBParmNew, libteem), Ptr{tenEvecRGBParm}, ())
end

function tenEvecRGBParmNix(rgbp)
    ccall((:tenEvecRGBParmNix, libteem), Ptr{tenEvecRGBParm}, (Ptr{tenEvecRGBParm},), rgbp)
end

function tenEvecRGBParmCheck(rgbp)
    ccall((:tenEvecRGBParmCheck, libteem), Cint, (Ptr{tenEvecRGBParm},), rgbp)
end

function tenEvecRGBSingle_f(RGB, conf, eval, evec, rgbp)
    ccall((:tenEvecRGBSingle_f, libteem), Cvoid, (Ptr{Cfloat}, Cfloat, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{tenEvecRGBParm}), RGB, conf, eval, evec, rgbp)
end

function tenEvecRGBSingle_d(RGB, conf, eval, evec, rgbp)
    ccall((:tenEvecRGBSingle_d, libteem), Cvoid, (Ptr{Cdouble}, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{tenEvecRGBParm}), RGB, conf, eval, evec, rgbp)
end

function tenEvecRGB(nout, nin, rgbp)
    ccall((:tenEvecRGB, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{tenEvecRGBParm}), nout, nin, rgbp)
end

function tenEvqSingle_f(vec, scl)
    ccall((:tenEvqSingle_f, libteem), Int16, (Ptr{Cfloat}, Cfloat), vec, scl)
end

function tenEvqVolume(nout, nin, which, aniso, scaleByAniso)
    ccall((:tenEvqVolume, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, Cint), nout, nin, which, aniso, scaleByAniso)
end

function tenBMatrixCheck(nbmat, type, minnum)
    ccall((:tenBMatrixCheck, libteem), Cint, (Ptr{Nrrd}, Cint, UInt32), nbmat, type, minnum)
end

function _tenFindValley(valP, nhist, tweak, save)
    ccall((:_tenFindValley, libteem), Cint, (Ptr{Cdouble}, Ptr{Nrrd}, Cdouble, Cint), valP, nhist, tweak, save)
end

function tenFiberSingleInit(tfbs)
    ccall((:tenFiberSingleInit, libteem), Cvoid, (Ptr{tenFiberSingle},), tfbs)
end

function tenFiberSingleDone(tfbs)
    ccall((:tenFiberSingleDone, libteem), Cvoid, (Ptr{tenFiberSingle},), tfbs)
end

function tenFiberSingleNew()
    ccall((:tenFiberSingleNew, libteem), Ptr{tenFiberSingle}, ())
end

function tenFiberSingleNix(tfbs)
    ccall((:tenFiberSingleNix, libteem), Ptr{tenFiberSingle}, (Ptr{tenFiberSingle},), tfbs)
end

function tenFiberContextNew(dtvol)
    ccall((:tenFiberContextNew, libteem), Ptr{tenFiberContext}, (Ptr{Nrrd},), dtvol)
end

function tenFiberContextDwiNew(dwivol, thresh, soft, valueMin, ten1method, ten2method)
    ccall((:tenFiberContextDwiNew, libteem), Ptr{tenFiberContext}, (Ptr{Nrrd}, Cdouble, Cdouble, Cdouble, Cint, Cint), dwivol, thresh, soft, valueMin, ten1method, ten2method)
end

function tenFiberVerboseSet(tfx, verbose)
    ccall((:tenFiberVerboseSet, libteem), Cvoid, (Ptr{tenFiberContext}, Cint), tfx, verbose)
end

function tenFiberTypeSet(tfx, type)
    ccall((:tenFiberTypeSet, libteem), Cint, (Ptr{tenFiberContext}, Cint), tfx, type)
end

function tenFiberKernelSet(tfx, kern, parm)
    ccall((:tenFiberKernelSet, libteem), Cint, (Ptr{tenFiberContext}, Ptr{NrrdKernel}, Ptr{Cdouble}), tfx, kern, parm)
end

function tenFiberProbeItemSet(tfx, item)
    ccall((:tenFiberProbeItemSet, libteem), Cint, (Ptr{tenFiberContext}, Cint), tfx, item)
end

function tenFiberIntgSet(tfx, intg)
    ccall((:tenFiberIntgSet, libteem), Cint, (Ptr{tenFiberContext}, Cint), tfx, intg)
end

function tenFiberStopAnisoSet(tfx, anisoType, anisoThresh)
    ccall((:tenFiberStopAnisoSet, libteem), Cint, (Ptr{tenFiberContext}, Cint, Cdouble), tfx, anisoType, anisoThresh)
end

function tenFiberStopDoubleSet(tfx, stop, val)
    ccall((:tenFiberStopDoubleSet, libteem), Cint, (Ptr{tenFiberContext}, Cint, Cdouble), tfx, stop, val)
end

function tenFiberStopUIntSet(tfx, stop, val)
    ccall((:tenFiberStopUIntSet, libteem), Cint, (Ptr{tenFiberContext}, Cint, UInt32), tfx, stop, val)
end

function tenFiberStopOn(tfx, stop)
    ccall((:tenFiberStopOn, libteem), Cvoid, (Ptr{tenFiberContext}, Cint), tfx, stop)
end

function tenFiberStopOff(tfx, stop)
    ccall((:tenFiberStopOff, libteem), Cvoid, (Ptr{tenFiberContext}, Cint), tfx, stop)
end

function tenFiberStopReset(tfx)
    ccall((:tenFiberStopReset, libteem), Cvoid, (Ptr{tenFiberContext},), tfx)
end

function tenFiberAnisoSpeedSet(tfx, aniso, lerp, thresh, soft)
    ccall((:tenFiberAnisoSpeedSet, libteem), Cint, (Ptr{tenFiberContext}, Cint, Cdouble, Cdouble, Cdouble), tfx, aniso, lerp, thresh, soft)
end

function tenFiberAnisoSpeedReset(tfx)
    ccall((:tenFiberAnisoSpeedReset, libteem), Cint, (Ptr{tenFiberContext},), tfx)
end

function tenFiberParmSet(tfx, parm, val)
    ccall((:tenFiberParmSet, libteem), Cint, (Ptr{tenFiberContext}, Cint, Cdouble), tfx, parm, val)
end

function tenFiberUpdate(tfx)
    ccall((:tenFiberUpdate, libteem), Cint, (Ptr{tenFiberContext},), tfx)
end

function tenFiberContextCopy(tfx)
    ccall((:tenFiberContextCopy, libteem), Ptr{tenFiberContext}, (Ptr{tenFiberContext},), tfx)
end

function tenFiberContextNix(tfx)
    ccall((:tenFiberContextNix, libteem), Ptr{tenFiberContext}, (Ptr{tenFiberContext},), tfx)
end

function tenFiberTraceSet(tfx, nfiber, buff, halfBuffLen, startIdxP, endIdxP, seed)
    ccall((:tenFiberTraceSet, libteem), Cint, (Ptr{tenFiberContext}, Ptr{Nrrd}, Ptr{Cdouble}, UInt32, Ptr{UInt32}, Ptr{UInt32}, Ptr{Cdouble}), tfx, nfiber, buff, halfBuffLen, startIdxP, endIdxP, seed)
end

function tenFiberTrace(tfx, nfiber, seed)
    ccall((:tenFiberTrace, libteem), Cint, (Ptr{tenFiberContext}, Ptr{Nrrd}, Ptr{Cdouble}), tfx, nfiber, seed)
end

function tenFiberDirectionNumber(tfx, seed)
    ccall((:tenFiberDirectionNumber, libteem), UInt32, (Ptr{tenFiberContext}, Ptr{Cdouble}), tfx, seed)
end

function tenFiberSingleTrace(tfx, tfbs, seed, which)
    ccall((:tenFiberSingleTrace, libteem), Cint, (Ptr{tenFiberContext}, Ptr{tenFiberSingle}, Ptr{Cdouble}, UInt32), tfx, tfbs, seed, which)
end

function tenFiberMultiNew()
    ccall((:tenFiberMultiNew, libteem), Ptr{tenFiberMulti}, ())
end

function tenFiberMultiNix(tfm)
    ccall((:tenFiberMultiNix, libteem), Ptr{tenFiberMulti}, (Ptr{tenFiberMulti},), tfm)
end

function tenFiberMultiTrace(tfx, tfml, nseed)
    ccall((:tenFiberMultiTrace, libteem), Cint, (Ptr{tenFiberContext}, Ptr{tenFiberMulti}, Ptr{Nrrd}), tfx, tfml, nseed)
end

function tenFiberMultiPolyData(tfx, lpld, tfml)
    ccall((:tenFiberMultiPolyData, libteem), Cint, (Ptr{tenFiberContext}, Ptr{limnPolyData}, Ptr{tenFiberMulti}), tfx, lpld, tfml)
end

function tenFiberMultiProbeVals(tfx, nval, tfml)
    ccall((:tenFiberMultiProbeVals, libteem), Cint, (Ptr{tenFiberContext}, Ptr{Nrrd}, Ptr{tenFiberMulti}), tfx, nval, tfml)
end

function _tenEpiRegThresholdFind(DWthrP, nin, ninLen, save, expo)
    ccall((:_tenEpiRegThresholdFind, libteem), Cint, (Ptr{Cdouble}, Ptr{Ptr{Nrrd}}, Cint, Cint, Cdouble), DWthrP, nin, ninLen, save, expo)
end

function tenEpiRegister3D(nout, ndwi, dwiLen, ngrad, reference, bwX, bwY, fitFrac, DWthr, doCC, kern, kparm, progress, verbose)
    ccall((:tenEpiRegister3D, libteem), Cint, (Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, UInt32, Ptr{Nrrd}, Cint, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Ptr{NrrdKernel}, Ptr{Cdouble}, Cint, Cint), nout, ndwi, dwiLen, ngrad, reference, bwX, bwY, fitFrac, DWthr, doCC, kern, kparm, progress, verbose)
end

function tenEpiRegister4D(nout, nin, ngrad, reference, bwX, bwY, fitFrac, DWthr, doCC, kern, kparm, progress, verbose)
    ccall((:tenEpiRegister4D, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Ptr{NrrdKernel}, Ptr{Cdouble}, Cint, Cint), nout, nin, ngrad, reference, bwX, bwY, fitFrac, DWthr, doCC, kern, kparm, progress, verbose)
end

function tenExperSpecNew()
    ccall((:tenExperSpecNew, libteem), Ptr{tenExperSpec}, ())
end

function tenExperSpecGradSingleBValSet(espec, insertB0, bval, grad, gradNum)
    ccall((:tenExperSpecGradSingleBValSet, libteem), Cint, (Ptr{tenExperSpec}, Cint, Cdouble, Ptr{Cdouble}, UInt32), espec, insertB0, bval, grad, gradNum)
end

function tenExperSpecGradBValSet(espec, insertB0, bval, grad, bgNum)
    ccall((:tenExperSpecGradBValSet, libteem), Cint, (Ptr{tenExperSpec}, Cint, Ptr{Cdouble}, Ptr{Cdouble}, UInt32), espec, insertB0, bval, grad, bgNum)
end

function tenExperSpecFromKeyValueSet(espec, ndwi)
    ccall((:tenExperSpecFromKeyValueSet, libteem), Cint, (Ptr{tenExperSpec}, Ptr{Nrrd}), espec, ndwi)
end

function tenExperSpecNix(espec)
    ccall((:tenExperSpecNix, libteem), Ptr{tenExperSpec}, (Ptr{tenExperSpec},), espec)
end

function tenExperSpecKnownB0Get(espec, dwi)
    ccall((:tenExperSpecKnownB0Get, libteem), Cdouble, (Ptr{tenExperSpec}, Ptr{Cdouble}), espec, dwi)
end

function tenExperSpecMaxBGet(espec)
    ccall((:tenExperSpecMaxBGet, libteem), Cdouble, (Ptr{tenExperSpec},), espec)
end

function tenDWMRIKeyValueFromExperSpecSet(ndwi, espec)
    ccall((:tenDWMRIKeyValueFromExperSpecSet, libteem), Cint, (Ptr{Nrrd}, Ptr{tenExperSpec}), ndwi, espec)
end

function tenModelParse(model, plusB0, requirePrefix, str)
    ccall((:tenModelParse, libteem), Cint, (Ptr{Ptr{tenModel}}, Ptr{Cint}, Cint, Cstring), model, plusB0, requirePrefix, str)
end

function tenModelFromAxisLearnPossible(axinfo)
    ccall((:tenModelFromAxisLearnPossible, libteem), Cint, (Ptr{NrrdAxisInfo},), axinfo)
end

function tenModelFromAxisLearn(model, plusB0, axinfo)
    ccall((:tenModelFromAxisLearn, libteem), Cint, (Ptr{Ptr{tenModel}}, Ptr{Cint}, Ptr{NrrdAxisInfo}), model, plusB0, axinfo)
end

function tenModelSimulate(ndwi, typeOut, espec, model, nB0, nparm, keyValueSet)
    ccall((:tenModelSimulate, libteem), Cint, (Ptr{Nrrd}, Cint, Ptr{tenExperSpec}, Ptr{tenModel}, Ptr{Nrrd}, Ptr{Nrrd}, Cint), ndwi, typeOut, espec, model, nB0, nparm, keyValueSet)
end

function tenModelSqeFit(nparm, nsqeP, nconvP, niterP, model, espec, ndwi, knownB0, saveB0, typeOut, minIter, maxIter, starts, convEps, rng, verbose)
    ccall((:tenModelSqeFit, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, Ptr{Ptr{Nrrd}}, Ptr{tenModel}, Ptr{tenExperSpec}, Ptr{Nrrd}, Cint, Cint, Cint, UInt32, UInt32, UInt32, Cdouble, Ptr{airRandMTState}, Cint), nparm, nsqeP, nconvP, niterP, model, espec, ndwi, knownB0, saveB0, typeOut, minIter, maxIter, starts, convEps, rng, verbose)
end

function tenModelNllFit(nparm, nnllP, model, espec, ndwi, rician, sigma, knownB0)
    ccall((:tenModelNllFit, libteem), Cint, (Ptr{Nrrd}, Ptr{Ptr{Nrrd}}, Ptr{tenModel}, Ptr{tenExperSpec}, Ptr{Nrrd}, Cint, Cdouble, Cint), nparm, nnllP, model, espec, ndwi, rician, sigma, knownB0)
end

function tenModelConvert(nparmDst, convRet, modelDst, nparmSrc, modelSrc)
    ccall((:tenModelConvert, libteem), Cint, (Ptr{Nrrd}, Ptr{Cint}, Ptr{tenModel}, Ptr{Nrrd}, Ptr{tenModel}), nparmDst, convRet, modelDst, nparmSrc, modelSrc)
end

function tenSizeNormalize(nout, nin, weight, amount, target)
    ccall((:tenSizeNormalize, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Cdouble}, Cdouble, Cdouble), nout, nin, weight, amount, target)
end

function tenSizeScale(nout, nin, amount)
    ccall((:tenSizeScale, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble), nout, nin, amount)
end

function tenAnisoScale(nout, nin, scale, fixDet, makePositive)
    ccall((:tenAnisoScale, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble, Cint, Cint), nout, nin, scale, fixDet, makePositive)
end

function tenEigenvaluePower(nout, nin, expo)
    ccall((:tenEigenvaluePower, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble), nout, nin, expo)
end

function tenEigenvalueClamp(nout, nin, min, max)
    ccall((:tenEigenvalueClamp, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble, Cdouble), nout, nin, min, max)
end

function tenEigenvalueAdd(nout, nin, val)
    ccall((:tenEigenvalueAdd, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble), nout, nin, val)
end

function tenEigenvalueMultiply(nout, nin, val)
    ccall((:tenEigenvalueMultiply, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Cdouble), nout, nin, val)
end

function tenLog(nout, nin)
    ccall((:tenLog, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function tenExp(nout, nin)
    ccall((:tenExp, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}), nout, nin)
end

function tenBVecNonLinearFit(nout, nin, bb, ww, iterMax, eps)
    ccall((:tenBVecNonLinearFit, libteem), Cint, (Ptr{Nrrd}, Ptr{Nrrd}, Ptr{Cdouble}, Ptr{Cdouble}, Cint, Cdouble), nout, nin, bb, ww, iterMax, eps)
end

function tenDwiGageKindNew()
    ccall((:tenDwiGageKindNew, libteem), Ptr{gageKind}, ())
end

function tenDwiGageKindNix(dwiKind)
    ccall((:tenDwiGageKindNix, libteem), Ptr{gageKind}, (Ptr{gageKind},), dwiKind)
end

function tenDwiGageKindSet(dwiKind, thresh, soft, bval, valueMin, ngrad, nbmat, emethod1, emethod2, randSeed)
    ccall((:tenDwiGageKindSet, libteem), Cint, (Ptr{gageKind}, Cdouble, Cdouble, Cdouble, Cdouble, Ptr{Nrrd}, Ptr{Nrrd}, Cint, Cint, UInt32), dwiKind, thresh, soft, bval, valueMin, ngrad, nbmat, emethod1, emethod2, randSeed)
end

function tenDwiGageKindCheck(kind)
    ccall((:tenDwiGageKindCheck, libteem), Cint, (Ptr{gageKind},), kind)
end

function tenEMBimodalParmNew()
    ccall((:tenEMBimodalParmNew, libteem), Ptr{tenEMBimodalParm}, ())
end

function tenEMBimodalParmNix(biparm)
    ccall((:tenEMBimodalParmNix, libteem), Ptr{tenEMBimodalParm}, (Ptr{tenEMBimodalParm},), biparm)
end

function tenEMBimodal(biparm, nhisto)
    ccall((:tenEMBimodal, libteem), Cint, (Ptr{tenEMBimodalParm}, Ptr{Nrrd}), biparm, nhisto)
end
# Julia wrapper for header: tenMacros.h
# Automatically generated using Clang.jl

# Julia wrapper for header: unrrdu.h
# Automatically generated using Clang.jl


function unrrduCmdMain(argc, argv, cmd, title, cmdList, hparm, fusage)
    ccall((:unrrduCmdMain, libteem), Cint, (Cint, Ptr{Cstring}, Cstring, Cstring, Ptr{Ptr{unrrduCmd}}, Ptr{hestParm}, Ptr{Cvoid}), argc, argv, cmd, title, cmdList, hparm, fusage)
end

function unrrduUsageUnu(me, hparm)
    ccall((:unrrduUsageUnu, libteem), Cvoid, (Cstring, Ptr{hestParm}), me, hparm)
end

function unrrduUsage(me, hparm, title, cmdList)
    ccall((:unrrduUsage, libteem), Cint, (Cstring, Ptr{hestParm}, Cstring, Ptr{Ptr{unrrduCmd}}), me, hparm, title, cmdList)
end
