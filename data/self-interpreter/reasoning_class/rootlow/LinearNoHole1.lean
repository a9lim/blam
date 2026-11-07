import Blc.SelfintHelperPair
namespace Blc.RootLow.LinearNoHole1
open Term SelfintClass SelfintHelperPair
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r500 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject500 : ¬ Reader r500 := rejectsZero_sound (by decide)
#print axioms reject500

def r501 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject501 : ¬ Reader r501 := rejectsZero_sound (by decide)
#print axioms reject501

def r502 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 4) (.var 0)))) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject502 : ¬ Reader r502 := rejectsZero_sound (by decide)
#print axioms reject502

def r503 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 4) (.var 0)))) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject503 : ¬ Reader r503 := rejectsZero_sound (by decide)
#print axioms reject503

def r504 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 4) (.var 0)))) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject504 : ¬ Reader r504 := rejectsZero_sound (by decide)
#print axioms reject504

def r505 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 4)))) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject505 : ¬ Reader r505 := rejectsZero_sound (by decide)
#print axioms reject505

def r506 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 4)))) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject506 : ¬ Reader r506 := rejectsZero_sound (by decide)
#print axioms reject506

def r507 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 4)))) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject507 : ¬ Reader r507 := rejectsZero_sound (by decide)
#print axioms reject507

def r508 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject508 : ¬ Reader r508 := rejectsZero_sound (by decide)
#print axioms reject508

def r509 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject509 : ¬ Reader r509 := rejectsZero_sound (by decide)
#print axioms reject509

def r510 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject510 : ¬ Reader r510 := rejectsZero_sound (by decide)
#print axioms reject510

def r511 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject511 : ¬ Reader r511 := rejectsZero_sound (by decide)
#print axioms reject511

def r512 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject512 : ¬ Reader r512 := rejectsZero_sound (by decide)
#print axioms reject512

def r513 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject513 : ¬ Reader r513 := rejectsZero_sound (by decide)
#print axioms reject513

def r514 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 0))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject514 : ¬ Reader r514 := rejectsZero_sound (by decide)
#print axioms reject514

def r515 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 0))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject515 : ¬ Reader r515 := rejectsZero_sound (by decide)
#print axioms reject515

def r516 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 0))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject516 : ¬ Reader r516 := rejectsZero_sound (by decide)
#print axioms reject516

def r517 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 0))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject517 : ¬ Reader r517 := rejectsZero_sound (by decide)
#print axioms reject517

def r518 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject518 : ¬ Reader r518 := rejectsZero_sound (by decide)
#print axioms reject518

def r519 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject519 : ¬ Reader r519 := rejectsZero_sound (by decide)
#print axioms reject519

def r520 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject520 : ¬ Reader r520 := rejectsZero_sound (by decide)
#print axioms reject520

def r521 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject521 : ¬ Reader r521 := rejectsZero_sound (by decide)
#print axioms reject521

def r522 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject522 : ¬ Reader r522 := rejectsZero_sound (by decide)
#print axioms reject522

def r523 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject523 : ¬ Reader r523 := rejectsZero_sound (by decide)
#print axioms reject523

def r524 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject524 : ¬ Reader r524 := rejectsZero_sound (by decide)
#print axioms reject524

def r525 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject525 : ¬ Reader r525 := rejectsZero_sound (by decide)
#print axioms reject525

def r526 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject526 : ¬ Reader r526 := rejectsZero_sound (by decide)
#print axioms reject526

def r527 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject527 : ¬ Reader r527 := rejectsZero_sound (by decide)
#print axioms reject527

def r528 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject528 : ¬ Reader r528 := rejectsZero_sound (by decide)
#print axioms reject528

def r529 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject529 : ¬ Reader r529 := rejectsZero_sound (by decide)
#print axioms reject529

def r530 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject530 : ¬ Reader r530 := rejectsZero_sound (by decide)
#print axioms reject530

def r531 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject531 : ¬ Reader r531 := rejectsZero_sound (by decide)
#print axioms reject531

def r532 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject532 : ¬ Reader r532 := rejectsZero_sound (by decide)
#print axioms reject532

def r533 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject533 : ¬ Reader r533 := rejectsZero_sound (by decide)
#print axioms reject533

def r534 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject534 : ¬ Reader r534 := rejectsZero_sound (by decide)
#print axioms reject534

def r535 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject535 : ¬ Reader r535 := rejectsZero_sound (by decide)
#print axioms reject535

def r536 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject536 : ¬ Reader r536 := rejectsZero_sound (by decide)
#print axioms reject536

def r537 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject537 : ¬ Reader r537 := rejectsZero_sound (by decide)
#print axioms reject537

def r538 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject538 : ¬ Reader r538 := rejectsZero_sound (by decide)
#print axioms reject538

def r539 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject539 : ¬ Reader r539 := rejectsZero_sound (by decide)
#print axioms reject539

def r540 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject540 : ¬ Reader r540 := rejectsZero_sound (by decide)
#print axioms reject540

def r541 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 4) (.var 0))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject541 : ¬ Reader r541 := rejectsZero_sound (by decide)
#print axioms reject541

def r542 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject542 : ¬ Reader r542 := rejectsZero_sound (by decide)
#print axioms reject542

def r543 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject543 : ¬ Reader r543 := rejectsZero_sound (by decide)
#print axioms reject543

def r544 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject544 : ¬ Reader r544 := rejectsZero_sound (by decide)
#print axioms reject544

def r545 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject545 : ¬ Reader r545 := rejectsZero_sound (by decide)
#print axioms reject545

def r546 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject546 : ¬ Reader r546 := rejectsZero_sound (by decide)
#print axioms reject546

def r547 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject547 : ¬ Reader r547 := rejectsZero_sound (by decide)
#print axioms reject547

def r548 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject548 : ¬ Reader r548 := rejectsZero_sound (by decide)
#print axioms reject548

def r549 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject549 : ¬ Reader r549 := rejectsZero_sound (by decide)
#print axioms reject549

def r550 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 4) (.var 0))))) (.var 0))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject550 : ¬ Reader r550 := rejectsZero_sound (by decide)
#print axioms reject550

def r551 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 4) (.var 0))))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject551 : ¬ Reader r551 := rejectsZero_sound (by decide)
#print axioms reject551

def r552 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 4) (.var 0))))) (.var 0))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject552 : ¬ Reader r552 := rejectsZero_sound (by decide)
#print axioms reject552

def r553 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 0))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject553 : ¬ Reader r553 := rejectsZero_sound (by decide)
#print axioms reject553

def r554 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject554 : ¬ Reader r554 := rejectsZero_sound (by decide)
#print axioms reject554

def r555 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 0))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject555 : ¬ Reader r555 := rejectsZero_sound (by decide)
#print axioms reject555

def r556 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 4))))) (.var 0))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject556 : ¬ Reader r556 := rejectsZero_sound (by decide)
#print axioms reject556

def r557 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 4))))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject557 : ¬ Reader r557 := rejectsZero_sound (by decide)
#print axioms reject557

def r558 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 4))))) (.var 0))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject558 : ¬ Reader r558 := rejectsZero_sound (by decide)
#print axioms reject558

def r559 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 4) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject559 : ¬ Reader r559 := rejectsZero_sound (by decide)
#print axioms reject559

def r560 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 4) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject560 : ¬ Reader r560 := rejectsZero_sound (by decide)
#print axioms reject560

def r561 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 4) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject561 : ¬ Reader r561 := rejectsZero_sound (by decide)
#print axioms reject561

def r562 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject562 : ¬ Reader r562 := rejectsZero_sound (by decide)
#print axioms reject562

def r563 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject563 : ¬ Reader r563 := rejectsZero_sound (by decide)
#print axioms reject563

def r564 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject564 : ¬ Reader r564 := rejectsZero_sound (by decide)
#print axioms reject564

def r565 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject565 : ¬ Reader r565 := rejectsZero_sound (by decide)
#print axioms reject565

def r566 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject566 : ¬ Reader r566 := rejectsZero_sound (by decide)
#print axioms reject566

def r567 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject567 : ¬ Reader r567 := rejectsZero_sound (by decide)
#print axioms reject567

def r568 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 0))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject568 : ¬ Reader r568 := rejectsZero_sound (by decide)
#print axioms reject568

def r569 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 0))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject569 : ¬ Reader r569 := rejectsZero_sound (by decide)
#print axioms reject569

def r570 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 0))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject570 : ¬ Reader r570 := rejectsZero_sound (by decide)
#print axioms reject570

def r571 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 0))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject571 : ¬ Reader r571 := rejectsZero_sound (by decide)
#print axioms reject571

def r572 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject572 : ¬ Reader r572 := rejectsZero_sound (by decide)
#print axioms reject572

def r573 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject573 : ¬ Reader r573 := rejectsZero_sound (by decide)
#print axioms reject573

def r574 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject574 : ¬ Reader r574 := rejectsZero_sound (by decide)
#print axioms reject574

def r575 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject575 : ¬ Reader r575 := rejectsZero_sound (by decide)
#print axioms reject575

def r576 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject576 : ¬ Reader r576 := rejectsZero_sound (by decide)
#print axioms reject576

def r577 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject577 : ¬ Reader r577 := rejectsZero_sound (by decide)
#print axioms reject577

def r578 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject578 : ¬ Reader r578 := rejectsZero_sound (by decide)
#print axioms reject578

def r579 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject579 : ¬ Reader r579 := rejectsZero_sound (by decide)
#print axioms reject579

def r580 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject580 : ¬ Reader r580 := rejectsZero_sound (by decide)
#print axioms reject580

def r581 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject581 : ¬ Reader r581 := rejectsZero_sound (by decide)
#print axioms reject581

def r582 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject582 : ¬ Reader r582 := rejectsZero_sound (by decide)
#print axioms reject582

def r583 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject583 : ¬ Reader r583 := rejectsZero_sound (by decide)
#print axioms reject583

def r584 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject584 : ¬ Reader r584 := rejectsZero_sound (by decide)
#print axioms reject584

def r585 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject585 : ¬ Reader r585 := rejectsZero_sound (by decide)
#print axioms reject585

def r586 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject586 : ¬ Reader r586 := rejectsZero_sound (by decide)
#print axioms reject586

def r587 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject587 : ¬ Reader r587 := rejectsZero_sound (by decide)
#print axioms reject587

def r588 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject588 : ¬ Reader r588 := rejectsZero_sound (by decide)
#print axioms reject588

def r589 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject589 : ¬ Reader r589 := rejectsZero_sound (by decide)
#print axioms reject589

def r590 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject590 : ¬ Reader r590 := rejectsZero_sound (by decide)
#print axioms reject590

def r591 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject591 : ¬ Reader r591 := rejectsZero_sound (by decide)
#print axioms reject591

def r592 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject592 : ¬ Reader r592 := rejectsZero_sound (by decide)
#print axioms reject592

def r593 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject593 : ¬ Reader r593 := rejectsZero_sound (by decide)
#print axioms reject593

def r594 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject594 : ¬ Reader r594 := rejectsZero_sound (by decide)
#print axioms reject594

def r595 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject595 : ¬ Reader r595 := rejectsZero_sound (by decide)
#print axioms reject595

def r596 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject596 : ¬ Reader r596 := rejectsZero_sound (by decide)
#print axioms reject596

def r597 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject597 : ¬ Reader r597 := rejectsZero_sound (by decide)
#print axioms reject597

def r598 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject598 : ¬ Reader r598 := rejectsZero_sound (by decide)
#print axioms reject598

def r599 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject599 : ¬ Reader r599 := rejectsZero_sound (by decide)
#print axioms reject599

def r600 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject600 : ¬ Reader r600 := rejectsZero_sound (by decide)
#print axioms reject600

def r601 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject601 : ¬ Reader r601 := rejectsZero_sound (by decide)
#print axioms reject601

def r602 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject602 : ¬ Reader r602 := rejectsZero_sound (by decide)
#print axioms reject602

def r603 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject603 : ¬ Reader r603 := rejectsZero_sound (by decide)
#print axioms reject603

def r604 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.var 0))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject604 : ¬ Reader r604 := rejectsZero_sound (by decide)
#print axioms reject604

def r605 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject605 : ¬ Reader r605 := rejectsZero_sound (by decide)
#print axioms reject605

def r606 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.var 0))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject606 : ¬ Reader r606 := rejectsZero_sound (by decide)
#print axioms reject606

def r607 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject607 : ¬ Reader r607 := rejectsZero_sound (by decide)
#print axioms reject607

def r608 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject608 : ¬ Reader r608 := rejectsZero_sound (by decide)
#print axioms reject608

def r609 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject609 : ¬ Reader r609 := rejectsZero_sound (by decide)
#print axioms reject609

def r610 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject610 : ¬ Reader r610 := rejectsZero_sound (by decide)
#print axioms reject610

def r611 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject611 : ¬ Reader r611 := rejectsZero_sound (by decide)
#print axioms reject611

def r612 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject612 : ¬ Reader r612 := rejectsZero_sound (by decide)
#print axioms reject612

def r613 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 4))))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject613 : ¬ Reader r613 := rejectsZero_sound (by decide)
#print axioms reject613

def r614 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 4))))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject614 : ¬ Reader r614 := rejectsZero_sound (by decide)
#print axioms reject614

def r615 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 4))))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject615 : ¬ Reader r615 := rejectsZero_sound (by decide)
#print axioms reject615

def r616 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.var 0)))))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject616 : ¬ Reader r616 := rejectsZero_sound (by decide)
#print axioms reject616

def r617 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.var 0)))))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject617 : ¬ Reader r617 := rejectsZero_sound (by decide)
#print axioms reject617

def r618 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 4) (.var 0)))))) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject618 : ¬ Reader r618 := rejectsZero_sound (by decide)
#print axioms reject618

def r619 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 4)))))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject619 : ¬ Reader r619 := rejectsZero_sound (by decide)
#print axioms reject619

def r620 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 4)))))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject620 : ¬ Reader r620 := rejectsZero_sound (by decide)
#print axioms reject620

def r621 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 4)))))) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject621 : ¬ Reader r621 := rejectsZero_sound (by decide)
#print axioms reject621

def r622 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 4)))))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject622 : ¬ Reader r622 := rejectsZero_sound (by decide)
#print axioms reject622

def r623 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 4)))))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject623 : ¬ Reader r623 := rejectsZero_sound (by decide)
#print axioms reject623

def r624 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.var 4)))))) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject624 : ¬ Reader r624 := rejectsZero_sound (by decide)
#print axioms reject624

def r625 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 4)))))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject625 : ¬ Reader r625 := rejectsZero_sound (by decide)
#print axioms reject625

def r626 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 4)))))) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject626 : ¬ Reader r626 := rejectsZero_sound (by decide)
#print axioms reject626

def r627 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 4)))))) (.var 0)))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject627 : ¬ Reader r627 := rejectsZero_sound (by decide)
#print axioms reject627

def r628 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 4) (.var 0)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject628 : ¬ Reader r628 := rejectsZero_sound (by decide)
#print axioms reject628

def r629 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 4) (.var 0)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject629 : ¬ Reader r629 := rejectsZero_sound (by decide)
#print axioms reject629

def r630 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 4) (.var 0)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject630 : ¬ Reader r630 := rejectsZero_sound (by decide)
#print axioms reject630

def r631 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject631 : ¬ Reader r631 := rejectsZero_sound (by decide)
#print axioms reject631

def r632 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject632 : ¬ Reader r632 := rejectsZero_sound (by decide)
#print axioms reject632

def r633 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject633 : ¬ Reader r633 := rejectsZero_sound (by decide)
#print axioms reject633

def r634 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject634 : ¬ Reader r634 := rejectsZero_sound (by decide)
#print axioms reject634

def r635 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject635 : ¬ Reader r635 := rejectsZero_sound (by decide)
#print axioms reject635

def r636 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject636 : ¬ Reader r636 := rejectsZero_sound (by decide)
#print axioms reject636

def r637 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 4)))))))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject637 : ¬ Reader r637 := rejectsZero_sound (by decide)
#print axioms reject637

def r638 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 4)))))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))
theorem reject638 : ¬ Reader r638 := rejectsZero_sound (by decide)
#print axioms reject638

def r639 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 4)))))))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))
theorem reject639 : ¬ Reader r639 := rejectsZero_sound (by decide)
#print axioms reject639

def r640 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject640 : ¬ Reader r640 := rejectsZero_sound (by decide)
#print axioms reject640

def r641 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject641 : ¬ Reader r641 := rejectsZero_sound (by decide)
#print axioms reject641

def r642 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject642 : ¬ Reader r642 := rejectsZero_sound (by decide)
#print axioms reject642

def r643 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject643 : ¬ Reader r643 := rejectsZero_sound (by decide)
#print axioms reject643

def r644 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject644 : ¬ Reader r644 := rejectsZero_sound (by decide)
#print axioms reject644

def r645 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject645 : ¬ Reader r645 := rejectsZero_sound (by decide)
#print axioms reject645

def r646 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject646 : ¬ Reader r646 := rejectsZero_sound (by decide)
#print axioms reject646

def r647 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject647 : ¬ Reader r647 := rejectsZero_sound (by decide)
#print axioms reject647

def r648 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject648 : ¬ Reader r648 := rejectsZero_sound (by decide)
#print axioms reject648

def r649 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject649 : ¬ Reader r649 := rejectsZero_sound (by decide)
#print axioms reject649

def r650 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject650 : ¬ Reader r650 := rejectsZero_sound (by decide)
#print axioms reject650

def r651 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject651 : ¬ Reader r651 := rejectsZero_sound (by decide)
#print axioms reject651

def r652 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject652 : ¬ Reader r652 := rejectsZero_sound (by decide)
#print axioms reject652

def r653 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject653 : ¬ Reader r653 := rejectsZero_sound (by decide)
#print axioms reject653

def r654 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject654 : ¬ Reader r654 := rejectsZero_sound (by decide)
#print axioms reject654

def r655 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject655 : ¬ Reader r655 := rejectsZero_sound (by decide)
#print axioms reject655

def r656 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject656 : ¬ Reader r656 := rejectsZero_sound (by decide)
#print axioms reject656

def r657 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject657 : ¬ Reader r657 := rejectsZero_sound (by decide)
#print axioms reject657

def r658 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject658 : ¬ Reader r658 := rejectsZero_sound (by decide)
#print axioms reject658

def r659 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject659 : ¬ Reader r659 := rejectsZero_sound (by decide)
#print axioms reject659

def r660 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject660 : ¬ Reader r660 := rejectsZero_sound (by decide)
#print axioms reject660

def r661 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject661 : ¬ Reader r661 := rejectsZero_sound (by decide)
#print axioms reject661

def r662 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject662 : ¬ Reader r662 := rejectsZero_sound (by decide)
#print axioms reject662

def r663 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject663 : ¬ Reader r663 := rejectsZero_sound (by decide)
#print axioms reject663

def r664 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject664 : ¬ Reader r664 := rejectsZero_sound (by decide)
#print axioms reject664

def r665 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject665 : ¬ Reader r665 := rejectsZero_sound (by decide)
#print axioms reject665

def r666 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject666 : ¬ Reader r666 := rejectsZero_sound (by decide)
#print axioms reject666

def r667 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject667 : ¬ Reader r667 := rejectsZero_sound (by decide)
#print axioms reject667

def r668 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject668 : ¬ Reader r668 := rejectsZero_sound (by decide)
#print axioms reject668

def r669 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject669 : ¬ Reader r669 := rejectsZero_sound (by decide)
#print axioms reject669

def r670 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject670 : ¬ Reader r670 := rejectsZero_sound (by decide)
#print axioms reject670

def r671 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject671 : ¬ Reader r671 := rejectsZero_sound (by decide)
#print axioms reject671

def r672 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject672 : ¬ Reader r672 := rejectsZero_sound (by decide)
#print axioms reject672

def r673 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject673 : ¬ Reader r673 := rejectsZero_sound (by decide)
#print axioms reject673

def r674 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject674 : ¬ Reader r674 := rejectsZero_sound (by decide)
#print axioms reject674

def r675 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject675 : ¬ Reader r675 := rejectsZero_sound (by decide)
#print axioms reject675

def r676 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject676 : ¬ Reader r676 := rejectsZero_sound (by decide)
#print axioms reject676

def r677 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject677 : ¬ Reader r677 := rejectsZero_sound (by decide)
#print axioms reject677

def r678 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject678 : ¬ Reader r678 := rejectsZero_sound (by decide)
#print axioms reject678

def r679 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject679 : ¬ Reader r679 := rejectsZero_sound (by decide)
#print axioms reject679

def r680 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject680 : ¬ Reader r680 := rejectsZero_sound (by decide)
#print axioms reject680

def r681 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject681 : ¬ Reader r681 := rejectsZero_sound (by decide)
#print axioms reject681

def r682 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject682 : ¬ Reader r682 := rejectsZero_sound (by decide)
#print axioms reject682

def r683 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject683 : ¬ Reader r683 := rejectsZero_sound (by decide)
#print axioms reject683

def r684 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject684 : ¬ Reader r684 := rejectsZero_sound (by decide)
#print axioms reject684

def r685 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject685 : ¬ Reader r685 := rejectsZero_sound (by decide)
#print axioms reject685

def r686 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject686 : ¬ Reader r686 := rejectsZero_sound (by decide)
#print axioms reject686

def r687 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject687 : ¬ Reader r687 := rejectsZero_sound (by decide)
#print axioms reject687

def r688 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject688 : ¬ Reader r688 := rejectsZero_sound (by decide)
#print axioms reject688

def r689 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject689 : ¬ Reader r689 := rejectsZero_sound (by decide)
#print axioms reject689

def r690 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject690 : ¬ Reader r690 := rejectsZero_sound (by decide)
#print axioms reject690

def r691 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject691 : ¬ Reader r691 := rejectsZero_sound (by decide)
#print axioms reject691

def r692 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject692 : ¬ Reader r692 := rejectsZero_sound (by decide)
#print axioms reject692

def r693 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject693 : ¬ Reader r693 := rejectsZero_sound (by decide)
#print axioms reject693

def r694 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject694 : ¬ Reader r694 := rejectsZero_sound (by decide)
#print axioms reject694

def r695 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject695 : ¬ Reader r695 := rejectsZero_sound (by decide)
#print axioms reject695

def r696 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject696 : ¬ Reader r696 := rejectsZero_sound (by decide)
#print axioms reject696

def r697 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject697 : ¬ Reader r697 := rejectsZero_sound (by decide)
#print axioms reject697

def r698 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject698 : ¬ Reader r698 := rejectsZero_sound (by decide)
#print axioms reject698

def r699 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject699 : ¬ Reader r699 := rejectsZero_sound (by decide)
#print axioms reject699

def r700 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject700 : ¬ Reader r700 := rejectsZero_sound (by decide)
#print axioms reject700

def r701 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject701 : ¬ Reader r701 := rejectsZero_sound (by decide)
#print axioms reject701

def r702 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject702 : ¬ Reader r702 := rejectsZero_sound (by decide)
#print axioms reject702

def r703 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject703 : ¬ Reader r703 := rejectsZero_sound (by decide)
#print axioms reject703

def r704 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject704 : ¬ Reader r704 := rejectsZero_sound (by decide)
#print axioms reject704

def r705 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject705 : ¬ Reader r705 := rejectsZero_sound (by decide)
#print axioms reject705

def r706 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject706 : ¬ Reader r706 := rejectsZero_sound (by decide)
#print axioms reject706

def r707 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject707 : ¬ Reader r707 := rejectsZero_sound (by decide)
#print axioms reject707

def r708 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject708 : ¬ Reader r708 := rejectsZero_sound (by decide)
#print axioms reject708

def r709 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject709 : ¬ Reader r709 := rejectsZero_sound (by decide)
#print axioms reject709

def r710 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject710 : ¬ Reader r710 := rejectsZero_sound (by decide)
#print axioms reject710

def r711 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject711 : ¬ Reader r711 := rejectsZero_sound (by decide)
#print axioms reject711

def r712 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject712 : ¬ Reader r712 := rejectsZero_sound (by decide)
#print axioms reject712

def r713 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject713 : ¬ Reader r713 := rejectsZero_sound (by decide)
#print axioms reject713

def r714 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject714 : ¬ Reader r714 := rejectsZero_sound (by decide)
#print axioms reject714

def r715 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject715 : ¬ Reader r715 := rejectsZero_sound (by decide)
#print axioms reject715

def r716 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject716 : ¬ Reader r716 := rejectsZero_sound (by decide)
#print axioms reject716

def r717 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject717 : ¬ Reader r717 := rejectsZero_sound (by decide)
#print axioms reject717

def r718 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject718 : ¬ Reader r718 := rejectsZero_sound (by decide)
#print axioms reject718

def r719 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject719 : ¬ Reader r719 := rejectsZero_sound (by decide)
#print axioms reject719

def r720 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject720 : ¬ Reader r720 := rejectsZero_sound (by decide)
#print axioms reject720

def r721 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject721 : ¬ Reader r721 := rejectsZero_sound (by decide)
#print axioms reject721

def r722 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject722 : ¬ Reader r722 := rejectsZero_sound (by decide)
#print axioms reject722

def r723 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject723 : ¬ Reader r723 := rejectsZero_sound (by decide)
#print axioms reject723

def r724 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject724 : ¬ Reader r724 := rejectsZero_sound (by decide)
#print axioms reject724

def r725 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject725 : ¬ Reader r725 := rejectsZero_sound (by decide)
#print axioms reject725

def r726 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject726 : ¬ Reader r726 := rejectsZero_sound (by decide)
#print axioms reject726

def r727 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject727 : ¬ Reader r727 := rejectsZero_sound (by decide)
#print axioms reject727

def r728 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject728 : ¬ Reader r728 := rejectsZero_sound (by decide)
#print axioms reject728

def r729 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject729 : ¬ Reader r729 := rejectsZero_sound (by decide)
#print axioms reject729

def r730 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject730 : ¬ Reader r730 := rejectsZero_sound (by decide)
#print axioms reject730

def r731 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject731 : ¬ Reader r731 := rejectsZero_sound (by decide)
#print axioms reject731

def r732 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject732 : ¬ Reader r732 := rejectsZero_sound (by decide)
#print axioms reject732

def r733 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject733 : ¬ Reader r733 := rejectsZero_sound (by decide)
#print axioms reject733

def r734 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject734 : ¬ Reader r734 := rejectsZero_sound (by decide)
#print axioms reject734

def r735 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject735 : ¬ Reader r735 := rejectsZero_sound (by decide)
#print axioms reject735

def r736 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject736 : ¬ Reader r736 := rejectsZero_sound (by decide)
#print axioms reject736

def r737 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject737 : ¬ Reader r737 := rejectsZero_sound (by decide)
#print axioms reject737

def r738 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject738 : ¬ Reader r738 := rejectsZero_sound (by decide)
#print axioms reject738

def r739 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject739 : ¬ Reader r739 := rejectsZero_sound (by decide)
#print axioms reject739

def r740 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject740 : ¬ Reader r740 := rejectsZero_sound (by decide)
#print axioms reject740

def r741 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject741 : ¬ Reader r741 := rejectsZero_sound (by decide)
#print axioms reject741

def r742 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject742 : ¬ Reader r742 := rejectsZero_sound (by decide)
#print axioms reject742

def r743 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject743 : ¬ Reader r743 := rejectsZero_sound (by decide)
#print axioms reject743

def r744 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject744 : ¬ Reader r744 := rejectsZero_sound (by decide)
#print axioms reject744

def r745 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject745 : ¬ Reader r745 := rejectsZero_sound (by decide)
#print axioms reject745

def r746 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject746 : ¬ Reader r746 := rejectsZero_sound (by decide)
#print axioms reject746

def r747 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject747 : ¬ Reader r747 := rejectsZero_sound (by decide)
#print axioms reject747

def r748 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject748 : ¬ Reader r748 := rejectsZero_sound (by decide)
#print axioms reject748

def r749 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject749 : ¬ Reader r749 := rejectsZero_sound (by decide)
#print axioms reject749

def r750 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject750 : ¬ Reader r750 := rejectsZero_sound (by decide)
#print axioms reject750

def r751 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject751 : ¬ Reader r751 := rejectsZero_sound (by decide)
#print axioms reject751

def r752 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject752 : ¬ Reader r752 := rejectsZero_sound (by decide)
#print axioms reject752

def r753 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject753 : ¬ Reader r753 := rejectsZero_sound (by decide)
#print axioms reject753

def r754 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject754 : ¬ Reader r754 := rejectsZero_sound (by decide)
#print axioms reject754

def r755 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject755 : ¬ Reader r755 := rejectsZero_sound (by decide)
#print axioms reject755

def r756 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject756 : ¬ Reader r756 := rejectsZero_sound (by decide)
#print axioms reject756

def r757 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject757 : ¬ Reader r757 := rejectsZero_sound (by decide)
#print axioms reject757

def r758 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject758 : ¬ Reader r758 := rejectsZero_sound (by decide)
#print axioms reject758

def r759 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject759 : ¬ Reader r759 := rejectsZero_sound (by decide)
#print axioms reject759

def r760 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject760 : ¬ Reader r760 := rejectsZero_sound (by decide)
#print axioms reject760

def r761 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject761 : ¬ Reader r761 := rejectsZero_sound (by decide)
#print axioms reject761

def r762 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject762 : ¬ Reader r762 := rejectsZero_sound (by decide)
#print axioms reject762

def r763 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject763 : ¬ Reader r763 := rejectsZero_sound (by decide)
#print axioms reject763

def r764 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject764 : ¬ Reader r764 := rejectsZero_sound (by decide)
#print axioms reject764

def r765 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject765 : ¬ Reader r765 := rejectsZero_sound (by decide)
#print axioms reject765

def r766 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject766 : ¬ Reader r766 := rejectsZero_sound (by decide)
#print axioms reject766

def r767 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject767 : ¬ Reader r767 := rejectsZero_sound (by decide)
#print axioms reject767

def r768 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject768 : ¬ Reader r768 := rejectsZero_sound (by decide)
#print axioms reject768

def r769 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject769 : ¬ Reader r769 := rejectsZero_sound (by decide)
#print axioms reject769

def r770 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject770 : ¬ Reader r770 := rejectsZero_sound (by decide)
#print axioms reject770

def r771 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject771 : ¬ Reader r771 := rejectsZero_sound (by decide)
#print axioms reject771

def r772 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject772 : ¬ Reader r772 := rejectsZero_sound (by decide)
#print axioms reject772

def r773 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject773 : ¬ Reader r773 := rejectsZero_sound (by decide)
#print axioms reject773

def r774 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject774 : ¬ Reader r774 := rejectsZero_sound (by decide)
#print axioms reject774

def r775 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject775 : ¬ Reader r775 := rejectsZero_sound (by decide)
#print axioms reject775

def r776 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject776 : ¬ Reader r776 := rejectsZero_sound (by decide)
#print axioms reject776

def r777 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject777 : ¬ Reader r777 := rejectsZero_sound (by decide)
#print axioms reject777

def r778 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject778 : ¬ Reader r778 := rejectsZero_sound (by decide)
#print axioms reject778

def r779 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject779 : ¬ Reader r779 := rejectsZero_sound (by decide)
#print axioms reject779

def r780 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject780 : ¬ Reader r780 := rejectsZero_sound (by decide)
#print axioms reject780

def r781 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject781 : ¬ Reader r781 := rejectsZero_sound (by decide)
#print axioms reject781

def r782 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject782 : ¬ Reader r782 := rejectsZero_sound (by decide)
#print axioms reject782

def r783 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject783 : ¬ Reader r783 := rejectsZero_sound (by decide)
#print axioms reject783

def r784 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject784 : ¬ Reader r784 := rejectsZero_sound (by decide)
#print axioms reject784

def r785 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject785 : ¬ Reader r785 := rejectsZero_sound (by decide)
#print axioms reject785

def r786 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject786 : ¬ Reader r786 := rejectsZero_sound (by decide)
#print axioms reject786

def r787 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject787 : ¬ Reader r787 := rejectsZero_sound (by decide)
#print axioms reject787

def r788 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject788 : ¬ Reader r788 := rejectsZero_sound (by decide)
#print axioms reject788

def r789 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject789 : ¬ Reader r789 := rejectsZero_sound (by decide)
#print axioms reject789

def r790 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject790 : ¬ Reader r790 := rejectsZero_sound (by decide)
#print axioms reject790

def r791 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject791 : ¬ Reader r791 := rejectsZero_sound (by decide)
#print axioms reject791

def r792 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject792 : ¬ Reader r792 := rejectsZero_sound (by decide)
#print axioms reject792

def r793 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject793 : ¬ Reader r793 := rejectsZero_sound (by decide)
#print axioms reject793

def r794 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject794 : ¬ Reader r794 := rejectsZero_sound (by decide)
#print axioms reject794

def r795 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject795 : ¬ Reader r795 := rejectsZero_sound (by decide)
#print axioms reject795

def r796 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject796 : ¬ Reader r796 := rejectsZero_sound (by decide)
#print axioms reject796

def r797 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject797 : ¬ Reader r797 := rejectsZero_sound (by decide)
#print axioms reject797

def r798 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject798 : ¬ Reader r798 := rejectsZero_sound (by decide)
#print axioms reject798

def r799 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject799 : ¬ Reader r799 := rejectsZero_sound (by decide)
#print axioms reject799

def r800 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject800 : ¬ Reader r800 := rejectsZero_sound (by decide)
#print axioms reject800

def r801 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject801 : ¬ Reader r801 := rejectsZero_sound (by decide)
#print axioms reject801

def r802 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject802 : ¬ Reader r802 := rejectsZero_sound (by decide)
#print axioms reject802

def r803 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject803 : ¬ Reader r803 := rejectsZero_sound (by decide)
#print axioms reject803

def r804 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject804 : ¬ Reader r804 := rejectsZero_sound (by decide)
#print axioms reject804

def r805 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject805 : ¬ Reader r805 := rejectsZero_sound (by decide)
#print axioms reject805

def r806 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject806 : ¬ Reader r806 := rejectsZero_sound (by decide)
#print axioms reject806

def r807 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject807 : ¬ Reader r807 := rejectsZero_sound (by decide)
#print axioms reject807

def r808 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject808 : ¬ Reader r808 := rejectsZero_sound (by decide)
#print axioms reject808

def r809 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject809 : ¬ Reader r809 := rejectsZero_sound (by decide)
#print axioms reject809

def r810 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject810 : ¬ Reader r810 := rejectsZero_sound (by decide)
#print axioms reject810

def r811 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject811 : ¬ Reader r811 := rejectsZero_sound (by decide)
#print axioms reject811

def r812 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject812 : ¬ Reader r812 := rejectsZero_sound (by decide)
#print axioms reject812

def r813 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject813 : ¬ Reader r813 := rejectsZero_sound (by decide)
#print axioms reject813

def r814 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject814 : ¬ Reader r814 := rejectsZero_sound (by decide)
#print axioms reject814

def r815 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject815 : ¬ Reader r815 := rejectsZero_sound (by decide)
#print axioms reject815

def r816 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject816 : ¬ Reader r816 := rejectsZero_sound (by decide)
#print axioms reject816

def r817 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject817 : ¬ Reader r817 := rejectsZero_sound (by decide)
#print axioms reject817

def r818 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject818 : ¬ Reader r818 := rejectsZero_sound (by decide)
#print axioms reject818

def r819 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject819 : ¬ Reader r819 := rejectsZero_sound (by decide)
#print axioms reject819

def r820 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject820 : ¬ Reader r820 := rejectsZero_sound (by decide)
#print axioms reject820

def r821 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject821 : ¬ Reader r821 := rejectsZero_sound (by decide)
#print axioms reject821

def r822 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject822 : ¬ Reader r822 := rejectsZero_sound (by decide)
#print axioms reject822

def r823 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject823 : ¬ Reader r823 := rejectsZero_sound (by decide)
#print axioms reject823

def r824 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject824 : ¬ Reader r824 := rejectsZero_sound (by decide)
#print axioms reject824

def r825 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject825 : ¬ Reader r825 := rejectsZero_sound (by decide)
#print axioms reject825

def r826 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject826 : ¬ Reader r826 := rejectsZero_sound (by decide)
#print axioms reject826

def r827 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject827 : ¬ Reader r827 := rejectsZero_sound (by decide)
#print axioms reject827

def r828 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject828 : ¬ Reader r828 := rejectsZero_sound (by decide)
#print axioms reject828

def r829 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject829 : ¬ Reader r829 := rejectsZero_sound (by decide)
#print axioms reject829

def r830 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject830 : ¬ Reader r830 := rejectsZero_sound (by decide)
#print axioms reject830

def r831 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject831 : ¬ Reader r831 := rejectsZero_sound (by decide)
#print axioms reject831

def r832 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject832 : ¬ Reader r832 := rejectsZero_sound (by decide)
#print axioms reject832

def r833 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject833 : ¬ Reader r833 := rejectsZero_sound (by decide)
#print axioms reject833

def r834 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject834 : ¬ Reader r834 := rejectsZero_sound (by decide)
#print axioms reject834

def r835 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject835 : ¬ Reader r835 := rejectsZero_sound (by decide)
#print axioms reject835

def r836 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject836 : ¬ Reader r836 := rejectsZero_sound (by decide)
#print axioms reject836

def r837 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject837 : ¬ Reader r837 := rejectsZero_sound (by decide)
#print axioms reject837

def r838 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject838 : ¬ Reader r838 := rejectsZero_sound (by decide)
#print axioms reject838

def r839 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject839 : ¬ Reader r839 := rejectsZero_sound (by decide)
#print axioms reject839

def r840 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject840 : ¬ Reader r840 := rejectsZero_sound (by decide)
#print axioms reject840

def r841 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject841 : ¬ Reader r841 := rejectsZero_sound (by decide)
#print axioms reject841

def r842 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject842 : ¬ Reader r842 := rejectsZero_sound (by decide)
#print axioms reject842

def r843 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject843 : ¬ Reader r843 := rejectsZero_sound (by decide)
#print axioms reject843

def r844 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject844 : ¬ Reader r844 := rejectsZero_sound (by decide)
#print axioms reject844

def r845 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject845 : ¬ Reader r845 := rejectsZero_sound (by decide)
#print axioms reject845

def r846 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject846 : ¬ Reader r846 := rejectsZero_sound (by decide)
#print axioms reject846

def r847 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject847 : ¬ Reader r847 := rejectsZero_sound (by decide)
#print axioms reject847

def r848 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject848 : ¬ Reader r848 := rejectsZero_sound (by decide)
#print axioms reject848

def r849 : Term := (.app (.app (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject849 : ¬ Reader r849 := rejectsZero_sound (by decide)
#print axioms reject849

def r850 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject850 : ¬ Reader r850 := rejectsZero_sound (by decide)
#print axioms reject850

def r851 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject851 : ¬ Reader r851 := rejectsZero_sound (by decide)
#print axioms reject851

def r852 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject852 : ¬ Reader r852 := rejectsZero_sound (by decide)
#print axioms reject852

def r853 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject853 : ¬ Reader r853 := rejectsZero_sound (by decide)
#print axioms reject853

def r854 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject854 : ¬ Reader r854 := rejectsZero_sound (by decide)
#print axioms reject854

def r855 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject855 : ¬ Reader r855 := rejectsZero_sound (by decide)
#print axioms reject855

def r856 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject856 : ¬ Reader r856 := rejectsZero_sound (by decide)
#print axioms reject856

def r857 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject857 : ¬ Reader r857 := rejectsZero_sound (by decide)
#print axioms reject857

def r858 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject858 : ¬ Reader r858 := rejectsZero_sound (by decide)
#print axioms reject858

def r859 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject859 : ¬ Reader r859 := rejectsZero_sound (by decide)
#print axioms reject859

def r860 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject860 : ¬ Reader r860 := rejectsZero_sound (by decide)
#print axioms reject860

def r861 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject861 : ¬ Reader r861 := rejectsZero_sound (by decide)
#print axioms reject861

def r862 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject862 : ¬ Reader r862 := rejectsZero_sound (by decide)
#print axioms reject862

def r863 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject863 : ¬ Reader r863 := rejectsZero_sound (by decide)
#print axioms reject863

def r864 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject864 : ¬ Reader r864 := rejectsZero_sound (by decide)
#print axioms reject864

def r865 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject865 : ¬ Reader r865 := rejectsZero_sound (by decide)
#print axioms reject865

def r866 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject866 : ¬ Reader r866 := rejectsZero_sound (by decide)
#print axioms reject866

def r867 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject867 : ¬ Reader r867 := rejectsZero_sound (by decide)
#print axioms reject867

def r868 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject868 : ¬ Reader r868 := rejectsZero_sound (by decide)
#print axioms reject868

def r869 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject869 : ¬ Reader r869 := rejectsZero_sound (by decide)
#print axioms reject869

def r870 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject870 : ¬ Reader r870 := rejectsZero_sound (by decide)
#print axioms reject870

def r871 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject871 : ¬ Reader r871 := rejectsZero_sound (by decide)
#print axioms reject871

def r872 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject872 : ¬ Reader r872 := rejectsZero_sound (by decide)
#print axioms reject872

def r873 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject873 : ¬ Reader r873 := rejectsZero_sound (by decide)
#print axioms reject873

def r874 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject874 : ¬ Reader r874 := rejectsZero_sound (by decide)
#print axioms reject874

def r875 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject875 : ¬ Reader r875 := rejectsZero_sound (by decide)
#print axioms reject875

def r876 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject876 : ¬ Reader r876 := rejectsZero_sound (by decide)
#print axioms reject876

def r877 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject877 : ¬ Reader r877 := rejectsZero_sound (by decide)
#print axioms reject877

def r878 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject878 : ¬ Reader r878 := rejectsZero_sound (by decide)
#print axioms reject878

def r879 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject879 : ¬ Reader r879 := rejectsZero_sound (by decide)
#print axioms reject879

def r880 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject880 : ¬ Reader r880 := rejectsZero_sound (by decide)
#print axioms reject880

def r881 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject881 : ¬ Reader r881 := rejectsZero_sound (by decide)
#print axioms reject881

def r882 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject882 : ¬ Reader r882 := rejectsZero_sound (by decide)
#print axioms reject882

def r883 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject883 : ¬ Reader r883 := rejectsZero_sound (by decide)
#print axioms reject883

def r884 : Term := (.app (.app (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject884 : ¬ Reader r884 := rejectsZero_sound (by decide)
#print axioms reject884

def r885 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject885 : ¬ Reader r885 := rejectsZero_sound (by decide)
#print axioms reject885

def r886 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject886 : ¬ Reader r886 := rejectsZero_sound (by decide)
#print axioms reject886

def r887 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject887 : ¬ Reader r887 := rejectsZero_sound (by decide)
#print axioms reject887

def r888 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject888 : ¬ Reader r888 := rejectsZero_sound (by decide)
#print axioms reject888

def r889 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject889 : ¬ Reader r889 := rejectsZero_sound (by decide)
#print axioms reject889

def r890 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject890 : ¬ Reader r890 := rejectsZero_sound (by decide)
#print axioms reject890

def r891 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject891 : ¬ Reader r891 := rejectsZero_sound (by decide)
#print axioms reject891

def r892 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject892 : ¬ Reader r892 := rejectsZero_sound (by decide)
#print axioms reject892

def r893 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject893 : ¬ Reader r893 := rejectsZero_sound (by decide)
#print axioms reject893

def r894 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject894 : ¬ Reader r894 := rejectsZero_sound (by decide)
#print axioms reject894

def r895 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject895 : ¬ Reader r895 := rejectsZero_sound (by decide)
#print axioms reject895

def r896 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject896 : ¬ Reader r896 := rejectsZero_sound (by decide)
#print axioms reject896

def r897 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject897 : ¬ Reader r897 := rejectsZero_sound (by decide)
#print axioms reject897

def r898 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject898 : ¬ Reader r898 := rejectsZero_sound (by decide)
#print axioms reject898

def r899 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject899 : ¬ Reader r899 := rejectsZero_sound (by decide)
#print axioms reject899

def r900 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject900 : ¬ Reader r900 := rejectsZero_sound (by decide)
#print axioms reject900

def r901 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject901 : ¬ Reader r901 := rejectsZero_sound (by decide)
#print axioms reject901

def r902 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject902 : ¬ Reader r902 := rejectsZero_sound (by decide)
#print axioms reject902

def r903 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject903 : ¬ Reader r903 := rejectsZero_sound (by decide)
#print axioms reject903

def r904 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject904 : ¬ Reader r904 := rejectsZero_sound (by decide)
#print axioms reject904

def r905 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject905 : ¬ Reader r905 := rejectsZero_sound (by decide)
#print axioms reject905

def r906 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject906 : ¬ Reader r906 := rejectsZero_sound (by decide)
#print axioms reject906

def r907 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject907 : ¬ Reader r907 := rejectsZero_sound (by decide)
#print axioms reject907

def r908 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject908 : ¬ Reader r908 := rejectsZero_sound (by decide)
#print axioms reject908

def r909 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject909 : ¬ Reader r909 := rejectsZero_sound (by decide)
#print axioms reject909

def r910 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject910 : ¬ Reader r910 := rejectsZero_sound (by decide)
#print axioms reject910

def r911 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject911 : ¬ Reader r911 := rejectsZero_sound (by decide)
#print axioms reject911

def r912 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject912 : ¬ Reader r912 := rejectsZero_sound (by decide)
#print axioms reject912

def r913 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject913 : ¬ Reader r913 := rejectsZero_sound (by decide)
#print axioms reject913

def r914 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject914 : ¬ Reader r914 := rejectsZero_sound (by decide)
#print axioms reject914

def r915 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject915 : ¬ Reader r915 := rejectsZero_sound (by decide)
#print axioms reject915

def r916 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject916 : ¬ Reader r916 := rejectsZero_sound (by decide)
#print axioms reject916

def r917 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject917 : ¬ Reader r917 := rejectsZero_sound (by decide)
#print axioms reject917

def r918 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject918 : ¬ Reader r918 := rejectsZero_sound (by decide)
#print axioms reject918

def r919 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject919 : ¬ Reader r919 := rejectsZero_sound (by decide)
#print axioms reject919

def r920 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject920 : ¬ Reader r920 := rejectsZero_sound (by decide)
#print axioms reject920

def r921 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject921 : ¬ Reader r921 := rejectsZero_sound (by decide)
#print axioms reject921

def r922 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject922 : ¬ Reader r922 := rejectsZero_sound (by decide)
#print axioms reject922

def r923 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject923 : ¬ Reader r923 := rejectsZero_sound (by decide)
#print axioms reject923

def r924 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject924 : ¬ Reader r924 := rejectsZero_sound (by decide)
#print axioms reject924

def r925 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject925 : ¬ Reader r925 := rejectsZero_sound (by decide)
#print axioms reject925

def r926 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject926 : ¬ Reader r926 := rejectsZero_sound (by decide)
#print axioms reject926

def r927 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject927 : ¬ Reader r927 := rejectsZero_sound (by decide)
#print axioms reject927

def r928 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject928 : ¬ Reader r928 := rejectsZero_sound (by decide)
#print axioms reject928

def r929 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject929 : ¬ Reader r929 := rejectsZero_sound (by decide)
#print axioms reject929

def r930 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject930 : ¬ Reader r930 := rejectsZero_sound (by decide)
#print axioms reject930

def r931 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject931 : ¬ Reader r931 := rejectsZero_sound (by decide)
#print axioms reject931

def r932 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject932 : ¬ Reader r932 := rejectsZero_sound (by decide)
#print axioms reject932

def r933 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject933 : ¬ Reader r933 := rejectsZero_sound (by decide)
#print axioms reject933

def r934 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject934 : ¬ Reader r934 := rejectsZero_sound (by decide)
#print axioms reject934

def r935 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject935 : ¬ Reader r935 := rejectsZero_sound (by decide)
#print axioms reject935

def r936 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject936 : ¬ Reader r936 := rejectsZero_sound (by decide)
#print axioms reject936

def r937 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject937 : ¬ Reader r937 := rejectsZero_sound (by decide)
#print axioms reject937

def r938 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject938 : ¬ Reader r938 := rejectsZero_sound (by decide)
#print axioms reject938

def r939 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject939 : ¬ Reader r939 := rejectsZero_sound (by decide)
#print axioms reject939

def r940 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject940 : ¬ Reader r940 := rejectsZero_sound (by decide)
#print axioms reject940

def r941 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject941 : ¬ Reader r941 := rejectsZero_sound (by decide)
#print axioms reject941

def r942 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject942 : ¬ Reader r942 := rejectsZero_sound (by decide)
#print axioms reject942

def r943 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject943 : ¬ Reader r943 := rejectsZero_sound (by decide)
#print axioms reject943

def r944 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject944 : ¬ Reader r944 := rejectsZero_sound (by decide)
#print axioms reject944

def r945 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject945 : ¬ Reader r945 := rejectsZero_sound (by decide)
#print axioms reject945

def r946 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject946 : ¬ Reader r946 := rejectsZero_sound (by decide)
#print axioms reject946

def r947 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject947 : ¬ Reader r947 := rejectsZero_sound (by decide)
#print axioms reject947

def r948 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject948 : ¬ Reader r948 := rejectsZero_sound (by decide)
#print axioms reject948

def r949 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject949 : ¬ Reader r949 := rejectsZero_sound (by decide)
#print axioms reject949

def r950 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject950 : ¬ Reader r950 := rejectsZero_sound (by decide)
#print axioms reject950

def r951 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject951 : ¬ Reader r951 := rejectsZero_sound (by decide)
#print axioms reject951

def r952 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject952 : ¬ Reader r952 := rejectsZero_sound (by decide)
#print axioms reject952

def r953 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject953 : ¬ Reader r953 := rejectsZero_sound (by decide)
#print axioms reject953

def r954 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject954 : ¬ Reader r954 := rejectsZero_sound (by decide)
#print axioms reject954

def r955 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject955 : ¬ Reader r955 := rejectsZero_sound (by decide)
#print axioms reject955

def r956 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject956 : ¬ Reader r956 := rejectsZero_sound (by decide)
#print axioms reject956

def r957 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject957 : ¬ Reader r957 := rejectsZero_sound (by decide)
#print axioms reject957

def r958 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject958 : ¬ Reader r958 := rejectsZero_sound (by decide)
#print axioms reject958

def r959 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject959 : ¬ Reader r959 := rejectsZero_sound (by decide)
#print axioms reject959

def r960 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject960 : ¬ Reader r960 := rejectsZero_sound (by decide)
#print axioms reject960

def r961 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject961 : ¬ Reader r961 := rejectsZero_sound (by decide)
#print axioms reject961

def r962 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject962 : ¬ Reader r962 := rejectsZero_sound (by decide)
#print axioms reject962

def r963 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject963 : ¬ Reader r963 := rejectsZero_sound (by decide)
#print axioms reject963

def r964 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject964 : ¬ Reader r964 := rejectsZero_sound (by decide)
#print axioms reject964

def r965 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject965 : ¬ Reader r965 := rejectsZero_sound (by decide)
#print axioms reject965

def r966 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))
theorem reject966 : ¬ Reader r966 := rejectsZero_sound (by decide)
#print axioms reject966

def r967 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject967 : ¬ Reader r967 := rejectsZero_sound (by decide)
#print axioms reject967

def r968 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject968 : ¬ Reader r968 := rejectsZero_sound (by decide)
#print axioms reject968

def r969 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject969 : ¬ Reader r969 := rejectsZero_sound (by decide)
#print axioms reject969

def r970 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject970 : ¬ Reader r970 := rejectsZero_sound (by decide)
#print axioms reject970

def r971 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject971 : ¬ Reader r971 := rejectsZero_sound (by decide)
#print axioms reject971

def r972 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))
theorem reject972 : ¬ Reader r972 := rejectsZero_sound (by decide)
#print axioms reject972

def r973 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject973 : ¬ Reader r973 := rejectsZero_sound (by decide)
#print axioms reject973

def r974 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject974 : ¬ Reader r974 := rejectsZero_sound (by decide)
#print axioms reject974

def r975 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.var 1))
theorem reject975 : ¬ Reader r975 := rejectsZero_sound (by decide)
#print axioms reject975

def r976 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.var 1))
theorem reject976 : ¬ Reader r976 := rejectsZero_sound (by decide)
#print axioms reject976

def r977 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject977 : ¬ Reader r977 := rejectsZero_sound (by decide)
#print axioms reject977

def r978 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.var 1))
theorem reject978 : ¬ Reader r978 := rejectsZero_sound (by decide)
#print axioms reject978

def r979 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))
theorem reject979 : ¬ Reader r979 := rejectsZero_sound (by decide)
#print axioms reject979

def r980 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))
theorem reject980 : ¬ Reader r980 := rejectsZero_sound (by decide)
#print axioms reject980

def r981 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0))) (.var 1))
theorem reject981 : ¬ Reader r981 := rejectsZero_sound (by decide)
#print axioms reject981

def r982 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))
theorem reject982 : ¬ Reader r982 := rejectsZero_sound (by decide)
#print axioms reject982

def r983 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject983 : ¬ Reader r983 := rejectsZero_sound (by decide)
#print axioms reject983

def r984 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject984 : ¬ Reader r984 := rejectsZero_sound (by decide)
#print axioms reject984

def r985 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 1))
theorem reject985 : ¬ Reader r985 := rejectsZero_sound (by decide)
#print axioms reject985

def r986 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject986 : ¬ Reader r986 := rejectsZero_sound (by decide)
#print axioms reject986

def r987 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))
theorem reject987 : ¬ Reader r987 := rejectsZero_sound (by decide)
#print axioms reject987

def r988 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject988 : ¬ Reader r988 := rejectsZero_sound (by decide)
#print axioms reject988

def r989 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject989 : ¬ Reader r989 := rejectsZero_sound (by decide)
#print axioms reject989

def r990 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.var 1))
theorem reject990 : ¬ Reader r990 := rejectsZero_sound (by decide)
#print axioms reject990

def r991 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject991 : ¬ Reader r991 := rejectsZero_sound (by decide)
#print axioms reject991

def r992 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject992 : ¬ Reader r992 := rejectsZero_sound (by decide)
#print axioms reject992

def r993 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.var 1))
theorem reject993 : ¬ Reader r993 := rejectsZero_sound (by decide)
#print axioms reject993

def r994 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject994 : ¬ Reader r994 := rejectsZero_sound (by decide)
#print axioms reject994

def r995 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.var 1))
theorem reject995 : ¬ Reader r995 := rejectsZero_sound (by decide)
#print axioms reject995

def r996 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.var 1))
theorem reject996 : ¬ Reader r996 := rejectsZero_sound (by decide)
#print axioms reject996

def r997 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.var 1))
theorem reject997 : ¬ Reader r997 := rejectsZero_sound (by decide)
#print axioms reject997

def r998 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 1))
theorem reject998 : ¬ Reader r998 := rejectsZero_sound (by decide)
#print axioms reject998

def r999 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject999 : ¬ Reader r999 := rejectsZero_sound (by decide)
#print axioms reject999

end Blc.RootLow.LinearNoHole1
