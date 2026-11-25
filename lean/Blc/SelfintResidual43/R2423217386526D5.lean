import Blc.SelfintResidual43.R2423217386526D4

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def cl323 : AClo := ⟨109, en31⟩
def cl324 : AClo := ⟨109, en32⟩
def cl325 : AClo := ⟨109, en33⟩
def cl326 : AClo := ⟨111, en24⟩
def cl327 : AClo := ⟨111, en25⟩
def cl328 : AClo := ⟨111, en26⟩
def cl329 : AClo := ⟨111, en27⟩
def cl330 : AClo := ⟨111, en28⟩
def cl331 : AClo := ⟨111, en29⟩
def cl332 : AClo := ⟨122, en121⟩
def cl333 : AClo := ⟨122, en122⟩
def cl334 : AClo := ⟨122, en123⟩
def cl335 : AClo := ⟨122, en124⟩
def cl336 : AClo := ⟨122, en125⟩
def cl337 : AClo := ⟨122, en126⟩
def cl338 : AClo := ⟨122, en127⟩
def cl339 : AClo := ⟨122, en128⟩
def cl340 : AClo := ⟨122, en129⟩
def cl341 : AClo := ⟨122, en130⟩
def cl342 : AClo := ⟨122, en131⟩
def cl343 : AClo := ⟨122, en132⟩
def cl344 : AClo := ⟨122, en133⟩
def cl345 : AClo := ⟨122, en134⟩
def cl346 : AClo := ⟨122, en135⟩
def cl347 : AClo := ⟨122, en136⟩
def cl348 : AClo := ⟨123, en40⟩
def cl349 : AClo := ⟨123, en41⟩
def cl350 : AClo := ⟨123, en21⟩
def cl351 : AClo := ⟨123, en39⟩
def cl352 : AClo := ⟨123, en37⟩
def cl353 : AClo := ⟨123, en38⟩
def cl354 : AClo := ⟨123, en43⟩
def cl355 : AClo := ⟨123, en35⟩
def cl356 : AClo := ⟨123, en0⟩
def cl357 : AClo := ⟨123, en76⟩
def cl358 : AClo := ⟨123, en77⟩
def cl359 : AClo := ⟨123, en78⟩
def cl360 : AClo := ⟨123, en79⟩
def cl361 : AClo := ⟨123, en45⟩
def cl362 : AClo := ⟨123, en46⟩
def cl363 : AClo := ⟨123, en47⟩
def cl364 : AClo := ⟨123, en48⟩
def cl365 : AClo := ⟨123, en72⟩
def cl366 : AClo := ⟨124, en40⟩
def cl367 : AClo := ⟨124, en41⟩
def cl368 : AClo := ⟨124, en21⟩
def cl369 : AClo := ⟨124, en39⟩
def cl370 : AClo := ⟨124, en37⟩
def cl371 : AClo := ⟨124, en38⟩
def cl372 : AClo := ⟨124, en43⟩
def cl373 : AClo := ⟨124, en35⟩
def cl374 : AClo := ⟨124, en0⟩
def cl375 : AClo := ⟨124, en76⟩
def cl376 : AClo := ⟨124, en77⟩
def cl377 : AClo := ⟨124, en78⟩
def cl378 : AClo := ⟨124, en79⟩
def cl379 : AClo := ⟨124, en45⟩
def cl380 : AClo := ⟨124, en46⟩
def cl381 : AClo := ⟨124, en47⟩
def cl382 : AClo := ⟨124, en48⟩
def cl383 : AClo := ⟨124, en72⟩
def cl384 : AClo := ⟨125, en40⟩
def cl385 : AClo := ⟨125, en41⟩
def cl386 : AClo := ⟨125, en21⟩
def cl387 : AClo := ⟨125, en39⟩
def cl388 : AClo := ⟨125, en37⟩
def cl389 : AClo := ⟨125, en38⟩
def cl390 : AClo := ⟨125, en43⟩
def cl391 : AClo := ⟨125, en35⟩
def cl392 : AClo := ⟨125, en0⟩
def cl393 : AClo := ⟨125, en76⟩
def cl394 : AClo := ⟨125, en77⟩
def cl395 : AClo := ⟨125, en78⟩
def cl396 : AClo := ⟨125, en79⟩
def cl397 : AClo := ⟨125, en45⟩
def cl398 : AClo := ⟨125, en46⟩
def cl399 : AClo := ⟨125, en47⟩
def cl400 : AClo := ⟨125, en48⟩
def cl401 : AClo := ⟨125, en72⟩
def cl402 : AClo := ⟨127, en21⟩
def cl403 : AClo := ⟨127, en45⟩
def cl404 : AClo := ⟨127, en46⟩
def cl405 : AClo := ⟨127, en47⟩
def cl406 : AClo := ⟨127, en48⟩
def cl407 : AClo := ⟨129, en137⟩
def cl408 : AClo := ⟨129, en138⟩
def cl409 : AClo := ⟨129, en139⟩
def cl410 : AClo := ⟨129, en140⟩
def cl411 : AClo := ⟨129, en141⟩
def cl412 : AClo := ⟨129, en142⟩
def cl413 : AClo := ⟨130, en23⟩
def cl414 : AClo := ⟨130, en22⟩
def cl415 : AClo := ⟨130, en49⟩
def cl416 : AClo := ⟨130, en50⟩
def cl417 : AClo := ⟨130, en51⟩
def cl418 : AClo := ⟨130, en52⟩
def cl419 : AClo := ⟨131, en23⟩
def cl420 : AClo := ⟨131, en22⟩
def cl421 : AClo := ⟨131, en49⟩
def cl422 : AClo := ⟨131, en50⟩
end R2423217386526
end Blc.Floor43
