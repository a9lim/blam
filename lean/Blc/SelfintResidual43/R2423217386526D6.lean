import Blc.SelfintResidual43.R2423217386526D5

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
def cl423 : AClo := ⟨131, en51⟩
def cl424 : AClo := ⟨131, en52⟩
def cl425 : AClo := ⟨132, en23⟩
def cl426 : AClo := ⟨132, en22⟩
def cl427 : AClo := ⟨132, en49⟩
def cl428 : AClo := ⟨132, en50⟩
def cl429 : AClo := ⟨132, en51⟩
def cl430 : AClo := ⟨132, en52⟩
def cl431 : AClo := ⟨135, en143⟩
def cl432 : AClo := ⟨135, en144⟩
def cl433 : AClo := ⟨136, en145⟩
def cl434 : AClo := ⟨136, en146⟩
def cl435 : AClo := ⟨138, en147⟩
def cl436 : AClo := ⟨138, en148⟩
def cl437 : AClo := ⟨138, en149⟩
def cl438 : AClo := ⟨138, en150⟩
def cl439 : AClo := ⟨139, en151⟩
def cl440 : AClo := ⟨139, en152⟩
def cl441 : AClo := ⟨139, en153⟩
def cl442 : AClo := ⟨139, en154⟩
def cl443 : AClo := ⟨139, en155⟩
def cl444 : AClo := ⟨142, en156⟩
def cl445 : AClo := ⟨142, en157⟩
def cl446 : AClo := ⟨142, en158⟩
def cl447 : AClo := ⟨143, en159⟩
def cl448 : AClo := ⟨143, en160⟩
def cl449 : AClo := ⟨143, en161⟩
def cl450 : AClo := ⟨145, en162⟩
def cl451 : AClo := ⟨145, en163⟩
def cl452 : AClo := ⟨145, en164⟩
def cl453 : AClo := ⟨146, en165⟩
def cl454 : AClo := ⟨146, en166⟩
def cl455 : AClo := ⟨146, en167⟩
def cl456 : AClo := ⟨146, en168⟩
def cl457 : AClo := ⟨148, en80⟩
def cl458 : AClo := ⟨148, en55⟩
def cl459 : AClo := ⟨148, en36⟩
def cl460 : AClo := ⟨148, en56⟩
def cl461 : AClo := ⟨149, en80⟩
def cl462 : AClo := ⟨149, en55⟩
def cl463 : AClo := ⟨149, en36⟩
def cl464 : AClo := ⟨149, en56⟩
def cl465 : AClo := ⟨150, en80⟩
def cl466 : AClo := ⟨150, en55⟩
def cl467 : AClo := ⟨150, en36⟩
def cl468 : AClo := ⟨150, en56⟩
def cl469 : AClo := ⟨152, en169⟩
def cl470 : AClo := ⟨152, en170⟩
def cl471 : AClo := ⟨153, en171⟩
def cl472 : AClo := ⟨153, en172⟩
def cl473 : AClo := ⟨155, en81⟩
def cl474 : AClo := ⟨155, en53⟩
def cl475 : AClo := ⟨155, en54⟩
def cl476 : AClo := ⟨156, en81⟩
def cl477 : AClo := ⟨156, en53⟩
def cl478 : AClo := ⟨156, en54⟩
def cl479 : AClo := ⟨157, en81⟩
def cl480 : AClo := ⟨157, en53⟩
def cl481 : AClo := ⟨157, en54⟩
def cl482 : AClo := ⟨159, en173⟩
def cl483 : AClo := ⟨159, en174⟩
def cl484 : AClo := ⟨160, en175⟩
def cl485 : AClo := ⟨160, en176⟩
def cl486 : AClo := ⟨177, en34⟩
def cl487 : AClo := ⟨178, en57⟩
def cl488 : AClo := ⟨179, en57⟩
def cl489 : AClo := ⟨182, en58⟩
def cl490 : AClo := ⟨182, en59⟩
def cl491 : AClo := ⟨182, en60⟩
def cl492 : AClo := ⟨182, en61⟩
def cl493 : AClo := ⟨183, en58⟩
def cl494 : AClo := ⟨183, en59⟩
def cl495 : AClo := ⟨183, en60⟩
def cl496 : AClo := ⟨183, en61⟩
def cl497 : AClo := ⟨186, en34⟩
def cl498 : AClo := ⟨187, en62⟩
def cl499 : AClo := ⟨188, en62⟩
def cl500 : AClo := ⟨191, en63⟩
def cl501 : AClo := ⟨191, en64⟩
def cl502 : AClo := ⟨191, en65⟩
def cl503 : AClo := ⟨191, en66⟩
def cl504 : AClo := ⟨192, en63⟩
def cl505 : AClo := ⟨192, en64⟩
def cl506 : AClo := ⟨192, en65⟩
def cl507 : AClo := ⟨192, en66⟩
def cl508 : AClo := ⟨195, en34⟩
def cl509 : AClo := ⟨196, en67⟩
def cl510 : AClo := ⟨197, en67⟩
def cl511 : AClo := ⟨200, en68⟩
def cl512 : AClo := ⟨200, en69⟩
def cl513 : AClo := ⟨200, en70⟩
def cl514 : AClo := ⟨200, en71⟩
def cl515 : AClo := ⟨201, en68⟩
def cl516 : AClo := ⟨201, en69⟩
def cl517 : AClo := ⟨201, en70⟩
def cl518 : AClo := ⟨201, en71⟩
def fr0 : Frame := ⟨cl91, 0⟩
def fr1 : Frame := ⟨cl129, 1⟩
def fr2 : Frame := ⟨cl6, 77⟩
def fr3 : Frame := ⟨cl156, 77⟩
end R2423217386526
end Blc.Floor43
