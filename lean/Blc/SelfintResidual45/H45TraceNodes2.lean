import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TraceNodes1

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
def n300 : Term := .app n299 n27
def n301 : Term := .app n11 n115
def n302 : Term := .app n301 n114
def n303 : Term := .app n302 n62
def n304 : Term := .app n303 n13
def n305 : Term := .app n304 n27
def n306 : Term := .app n189 n156
def n307 : Term := .app n306 n158
def n308 : Term := .app n307 n62
def n309 : Term := .app n308 n13
def n310 : Term := .app n309 n27
def n311 : Term := .app n47 n63
def n312 : Term := .lam n311
def n313 : Term := .app n312 n157
def n314 : Term := .app n313 n62
def n315 : Term := .app n314 n13
def n316 : Term := .app n315 n27
def n317 : Term := .app n11 n157
def n318 : Term := .app n317 n156
def n319 : Term := .app n318 n62
def n320 : Term := .app n319 n13
def n321 : Term := .app n320 n27
def n322 : Term := .app n30 n62
def n323 : Term := .lam n322
def n324 : Term := .app n323 n63
def n325 : Term := .app n324 n62
def n326 : Term := .app n325 n13
def n327 : Term := .app n326 n27
def n328 : Term := .app n190 n42
def n329 : Term := .app n328 n43
def n330 : Term := .app n329 n62
def n331 : Term := .app n330 n13
def n332 : Term := .app n331 n27
def n333 : Term := .app n50 n115
def n334 : Term := .app n333 n42
def n335 : Term := .app n334 n13
def n336 : Term := .app n335 n27
def n337 : Term := .app n33 n50
def n338 : Term := .lam n337
def n339 : Term := .app n37 n13
def n340 : Term := .app n338 n339
def n341 : Term := .app n340 n128
def n342 : Term := .app n341 n27
def n343 : Term := .app n31 n339
def n344 : Term := .app n31 n343
def n345 : Term := .app n31 n344
def n346 : Term := .app n30 n345
def n347 : Term := .lam n346
def n348 : Term := .app n347 n128
def n349 : Term := .app n348 n27
def n350 : Term := .app n190 n343
def n351 : Term := .app n350 n115
def n352 : Term := .app n351 n27
def n353 : Term := .app n189 n63
def n354 : Term := .app n353 n50
def n355 : Term := .app n354 n339
def n356 : Term := .app n355 n27
def n357 : Term := .app n339 n157
def n358 : Term := .app n357 n27
def n359 : Term := .app n31 n13
def n360 : Term := .app n31 n359
def n361 : Term := .app n31 n360
def n362 : Term := .app n190 n361
def n363 : Term := .app n362 n157
def n364 : Term := .app n363 n27
def n365 : Term := .app n11 n360
def n366 : Term := .app n365 n63
def n367 : Term := .app n366 n27
def n368 : Term := .app n45 n13
def n369 : Term := .app n368 n27
end Blc.H45.Trace
