import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q2AllHead
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r528 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject528 : ¬ Reader r528 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject529 : ¬ Reader r529 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject529

def r532 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject532 : ¬ Reader r532 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject533 : ¬ Reader r533 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject533

def r536 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject536 : ¬ Reader r536 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject537 : ¬ Reader r537 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject537

def r540 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 1))))
theorem reject540 : ¬ Reader r540 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 2)))
theorem reject541 : ¬ Reader r541 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject541

def r544 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.lam (.var 0)))))
theorem reject544 : ¬ Reader r544 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject544

def r545 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 0) (.var 0))))
theorem reject545 : ¬ Reader r545 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject545

def r546 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 2) (.var 0))))
theorem reject546 : ¬ Reader r546 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject546

def r547 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 0) (.var 2))))
theorem reject547 : ¬ Reader r547 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject547

def r548 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))) (.var 0)))
theorem reject548 : ¬ Reader r548 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))) (.var 0)))
theorem reject549 : ¬ Reader r549 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject549

def r550 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))) (.var 2)))
theorem reject550 : ¬ Reader r550 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 2)))
theorem reject551 : ¬ Reader r551 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject551

def r560 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 2))))
theorem reject560 : ¬ Reader r560 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject560

def r561 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 2))) (.var 2)))
theorem reject561 : ¬ Reader r561 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject561

def r564 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.lam (.var 1)))))
theorem reject564 : ¬ Reader r564 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 2)))
theorem reject565 : ¬ Reader r565 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject565

def r568 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject568 : ¬ Reader r568 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject568

def r569 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject569 : ¬ Reader r569 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject570 : ¬ Reader r570 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject571 : ¬ Reader r571 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject571

def r572 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject572 : ¬ Reader r572 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject572

def r573 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject573 : ¬ Reader r573 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject573

def r574 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject574 : ¬ Reader r574 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject574

def r575 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject575 : ¬ Reader r575 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject575

def r576 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject576 : ¬ Reader r576 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject576

def r577 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject577 : ¬ Reader r577 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject577

def r578 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject578 : ¬ Reader r578 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject579 : ¬ Reader r579 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject579

def r592 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.lam (.var 2)))))
theorem reject592 : ¬ Reader r592 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.lam (.lam (.var 0))))))
theorem reject593 : ¬ Reader r593 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.app (.var 0) (.var 0)))))
theorem reject594 : ¬ Reader r594 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 0) (.lam (.var 0)))))
theorem reject595 : ¬ Reader r595 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.lam (.var 0)) (.var 0))))
theorem reject596 : ¬ Reader r596 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 2) (.lam (.var 0)))))
theorem reject597 : ¬ Reader r597 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject597

def r598 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.lam (.var 0)) (.var 2))))
theorem reject598 : ¬ Reader r598 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject598

def r599 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.app (.var 2) (.var 0))))
theorem reject599 : ¬ Reader r599 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject599

def r600 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.app (.var 0) (.var 2))))
theorem reject600 : ¬ Reader r600 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject600

def r601 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))) (.lam (.var 0))))
theorem reject601 : ¬ Reader r601 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject601

def r602 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))) (.lam (.var 0))))
theorem reject602 : ¬ Reader r602 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject602

def r603 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))) (.var 0)))
theorem reject603 : ¬ Reader r603 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject603

def r604 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))) (.var 0)))
theorem reject604 : ¬ Reader r604 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject604

def r605 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 2)))
theorem reject605 : ¬ Reader r605 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject605

def r606 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.var 0))))) (.var 2)))
theorem reject606 : ¬ Reader r606 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject606

def r607 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))
theorem reject607 : ¬ Reader r607 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject607

def r608 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 2)))
theorem reject608 : ¬ Reader r608 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject608

def r609 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 0))) (.var 2)))
theorem reject609 : ¬ Reader r609 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject609

def r628 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1))))
theorem reject628 : ¬ Reader r628 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 2) (.var 1))))
theorem reject629 : ¬ Reader r629 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject629

def r630 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 1) (.var 2))))
theorem reject630 : ¬ Reader r630 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))) (.var 1)))
theorem reject631 : ¬ Reader r631 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject631

def r632 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))) (.var 1)))
theorem reject632 : ¬ Reader r632 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject632

def r633 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 2)))
theorem reject633 : ¬ Reader r633 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject633

def r700 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject700 : ¬ Reader r700 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject700

def r701 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject701 : ¬ Reader r701 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject701

def r702 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.var 0)))
theorem reject702 : ¬ Reader r702 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject702

def r703 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 0)) (.var 2)))
theorem reject703 : ¬ Reader r703 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject703

def r708 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject708 : ¬ Reader r708 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject708

def r709 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject709 : ¬ Reader r709 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject709

def r712 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)) (.var 0)))
theorem reject712 : ¬ Reader r712 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject712

def r713 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 0)) (.var 2)))
theorem reject713 : ¬ Reader r713 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject713

def r716 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject716 : ¬ Reader r716 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject716

def r717 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject717 : ¬ Reader r717 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject717

def r720 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject720 : ¬ Reader r720 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject720

def r721 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject721 : ¬ Reader r721 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject721

def r724 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject724 : ¬ Reader r724 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject724

def r725 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject725 : ¬ Reader r725 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject725

def r726 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.var 1)))
theorem reject726 : ¬ Reader r726 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject726

def r727 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 1)) (.var 2)))
theorem reject727 : ¬ Reader r727 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject727

def r732 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject732 : ¬ Reader r732 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject732

def r733 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject733 : ¬ Reader r733 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject733

def r736 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)) (.var 1)))
theorem reject736 : ¬ Reader r736 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 1)) (.var 2)))
theorem reject737 : ¬ Reader r737 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject737

def r740 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject740 : ¬ Reader r740 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject740

def r741 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject741 : ¬ Reader r741 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject741

def r744 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject744 : ¬ Reader r744 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject744

def r745 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject745 : ¬ Reader r745 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject745

def r748 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 0))))
theorem reject748 : ¬ Reader r748 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject748

def r749 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 2)))
theorem reject749 : ¬ Reader r749 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject749

def r750 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.lam (.var 0))))
theorem reject750 : ¬ Reader r750 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject750

def r751 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0))) (.lam (.var 0))) (.var 2)))
theorem reject751 : ¬ Reader r751 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject751

def r756 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 0))))
theorem reject756 : ¬ Reader r756 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject756

def r757 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 2)))
theorem reject757 : ¬ Reader r757 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject757

def r760 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.var 2)) (.lam (.var 0))))
theorem reject760 : ¬ Reader r760 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject760

def r761 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 2)))
theorem reject761 : ¬ Reader r761 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject761

def r764 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject764 : ¬ Reader r764 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject764

def r765 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject765 : ¬ Reader r765 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject765

def r768 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject768 : ¬ Reader r768 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject768

def r769 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject769 : ¬ Reader r769 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject769

def r802 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject802 : ¬ Reader r802 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject802

def r803 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject803 : ¬ Reader r803 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject803

def r804 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)) (.var 0)))
theorem reject804 : ¬ Reader r804 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject804

def r805 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 0)) (.var 2)))
theorem reject805 : ¬ Reader r805 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject805

def r806 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)) (.var 0)))
theorem reject806 : ¬ Reader r806 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject806

def r807 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 0)) (.var 2)))
theorem reject807 : ¬ Reader r807 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject807

def r810 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject810 : ¬ Reader r810 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject810

def r811 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject811 : ¬ Reader r811 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject811

def r814 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject814 : ¬ Reader r814 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject814

def r815 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject815 : ¬ Reader r815 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject815

def r816 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)) (.var 1)))
theorem reject816 : ¬ Reader r816 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject816

def r817 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.var 1)) (.var 2)))
theorem reject817 : ¬ Reader r817 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject817

def r818 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 2)) (.var 1)))
theorem reject818 : ¬ Reader r818 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject818

def r819 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1)) (.var 2)))
theorem reject819 : ¬ Reader r819 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject819

def r822 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject822 : ¬ Reader r822 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject822

def r823 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject823 : ¬ Reader r823 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject823

def r826 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject826 : ¬ Reader r826 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject826

def r827 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject827 : ¬ Reader r827 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject827

def r830 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 2)) (.var 0)))
theorem reject830 : ¬ Reader r830 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject830

def r831 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 2)))
theorem reject831 : ¬ Reader r831 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject831

def r834 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject834 : ¬ Reader r834 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject834

def r835 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject835 : ¬ Reader r835 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject835

def r836 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 2)) (.var 0)))
theorem reject836 : ¬ Reader r836 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject836

def r837 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.var 0)) (.var 2)))
theorem reject837 : ¬ Reader r837 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject837

def r844 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject844 : ¬ Reader r844 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject844

def r845 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject845 : ¬ Reader r845 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject845

def r848 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject848 : ¬ Reader r848 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject848

def r849 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject849 : ¬ Reader r849 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject849

def r932 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject932 : ¬ Reader r932 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject932

def r933 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject933 : ¬ Reader r933 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject933

def r936 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject936 : ¬ Reader r936 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject936

def r937 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject937 : ¬ Reader r937 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject937

def r940 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject940 : ¬ Reader r940 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject940

def r941 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject941 : ¬ Reader r941 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject941

def r944 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject944 : ¬ Reader r944 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject944

def r945 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject945 : ¬ Reader r945 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject945

def r948 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject948 : ¬ Reader r948 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject948

def r949 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject949 : ¬ Reader r949 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject949

def r952 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject952 : ¬ Reader r952 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject952

def r953 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject953 : ¬ Reader r953 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject953

def r984 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject984 : ¬ Reader r984 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject984

def r985 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject985 : ¬ Reader r985 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject985

def r1050 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)))
theorem reject1050 : ¬ Reader r1050 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1050

def r1051 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)))
theorem reject1051 : ¬ Reader r1051 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1051

def r1056 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0)))
theorem reject1056 : ¬ Reader r1056 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1056

def r1057 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2)))
theorem reject1057 : ¬ Reader r1057 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1057

def r1066 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)))
theorem reject1066 : ¬ Reader r1066 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1066

def r1067 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)))
theorem reject1067 : ¬ Reader r1067 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1067

def r1072 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)))
theorem reject1072 : ¬ Reader r1072 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1072

def r1073 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2)))
theorem reject1073 : ¬ Reader r1073 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1073

def r1138 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.var 0)))
theorem reject1138 : ¬ Reader r1138 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1138

def r1139 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 0)) (.var 2)))
theorem reject1139 : ¬ Reader r1139 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1139

def r1142 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1142 : ¬ Reader r1142 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1142

def r1143 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1143 : ¬ Reader r1143 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1143

def r1146 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.lam (.var 0))))
theorem reject1146 : ¬ Reader r1146 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1146

def r1147 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1))))))) (.lam (.var 0))) (.var 2)))
theorem reject1147 : ¬ Reader r1147 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1147

def r1248 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1248 : ¬ Reader r1248 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1248

def r1249 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1249 : ¬ Reader r1249 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1249

def r1252 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1252 : ¬ Reader r1252 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1252

def r1253 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1253 : ¬ Reader r1253 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1253

def r1256 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1256 : ¬ Reader r1256 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1256

def r1257 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1257 : ¬ Reader r1257 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1257

def r1260 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1260 : ¬ Reader r1260 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1260

def r1261 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1261 : ¬ Reader r1261 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1261

def r1264 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 0))))
theorem reject1264 : ¬ Reader r1264 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1264

def r1265 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 2)))
theorem reject1265 : ¬ Reader r1265 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1265

def r1268 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject1268 : ¬ Reader r1268 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1268

def r1269 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject1269 : ¬ Reader r1269 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1269

def r1364 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)) (.var 0)))
theorem reject1364 : ¬ Reader r1364 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1364

def r1365 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 2)))
theorem reject1365 : ¬ Reader r1365 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1365

def r1368 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1368 : ¬ Reader r1368 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1368

def r1369 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1369 : ¬ Reader r1369 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1369

def r1372 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)) (.var 1)))
theorem reject1372 : ¬ Reader r1372 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1372

def r1373 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 1)) (.var 2)))
theorem reject1373 : ¬ Reader r1373 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1373

def r1376 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1376 : ¬ Reader r1376 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1376

def r1377 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1377 : ¬ Reader r1377 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1377

def r1442 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 0)))
theorem reject1442 : ¬ Reader r1442 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1442

def r1443 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 2)))
theorem reject1443 : ¬ Reader r1443 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1443

def r1446 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1446 : ¬ Reader r1446 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1446

def r1447 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1447 : ¬ Reader r1447 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1447

def r1464 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1464 : ¬ Reader r1464 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1464

def r1465 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1465 : ¬ Reader r1465 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1465

def r1468 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1468 : ¬ Reader r1468 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1468

def r1469 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1469 : ¬ Reader r1469 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1469

def r1472 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))))
theorem reject1472 : ¬ Reader r1472 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1472

def r1473 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)))
theorem reject1473 : ¬ Reader r1473 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1473

def r1476 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 1))))
theorem reject1476 : ¬ Reader r1476 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1476

def r1477 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.var 2)))
theorem reject1477 : ¬ Reader r1477 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1477

def r1486 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.lam (.var 0)))))
theorem reject1486 : ¬ Reader r1486 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1486

def r1487 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 0) (.var 0))))
theorem reject1487 : ¬ Reader r1487 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1487

def r1488 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 2) (.var 0))))
theorem reject1488 : ¬ Reader r1488 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1488

def r1489 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 0) (.var 2))))
theorem reject1489 : ¬ Reader r1489 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1489

def r1490 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))) (.var 0)))
theorem reject1490 : ¬ Reader r1490 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1490

def r1491 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))) (.var 0)))
theorem reject1491 : ¬ Reader r1491 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1491

def r1492 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))) (.var 2)))
theorem reject1492 : ¬ Reader r1492 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1492

def r1493 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 2)))
theorem reject1493 : ¬ Reader r1493 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1493

def r1496 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 2))))
theorem reject1496 : ¬ Reader r1496 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1496

def r1497 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.var 2))) (.var 2)))
theorem reject1497 : ¬ Reader r1497 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1497

def r1500 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.lam (.var 1)))))
theorem reject1500 : ¬ Reader r1500 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1500

def r1501 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 2)))
theorem reject1501 : ¬ Reader r1501 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1501

def r1514 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 0) (.var 1))))
theorem reject1514 : ¬ Reader r1514 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1514

def r1515 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.app (.var 1) (.var 0))))
theorem reject1515 : ¬ Reader r1515 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1515

def r1516 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 2) (.var 1))))
theorem reject1516 : ¬ Reader r1516 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1516

def r1517 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.app (.var 1) (.var 2))))
theorem reject1517 : ¬ Reader r1517 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1517

def r1518 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 2) (.var 0))))
theorem reject1518 : ¬ Reader r1518 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1518

def r1519 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 2))))
theorem reject1519 : ¬ Reader r1519 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1519

def r1520 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))) (.var 1)))
theorem reject1520 : ¬ Reader r1520 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1520

def r1521 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))) (.var 1)))
theorem reject1521 : ¬ Reader r1521 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1521

def r1522 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))) (.var 0)))
theorem reject1522 : ¬ Reader r1522 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1522

def r1523 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))) (.var 0)))
theorem reject1523 : ¬ Reader r1523 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1523

def r1524 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 1))) (.var 2)))
theorem reject1524 : ¬ Reader r1524 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1524

def r1525 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 0))) (.var 2)))
theorem reject1525 : ¬ Reader r1525 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1525

def r1530 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1530 : ¬ Reader r1530 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1530

def r1531 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1531 : ¬ Reader r1531 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1531

def r1532 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.var 0)))
theorem reject1532 : ¬ Reader r1532 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1532

def r1533 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 0)) (.var 2)))
theorem reject1533 : ¬ Reader r1533 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1533

def r1538 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1538 : ¬ Reader r1538 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1538

def r1539 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1539 : ¬ Reader r1539 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1539

def r1540 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 2)) (.var 1)))
theorem reject1540 : ¬ Reader r1540 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1540

def r1541 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))) (.var 1)) (.var 2)))
theorem reject1541 : ¬ Reader r1541 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1541

def r1542 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)) (.var 0)))
theorem reject1542 : ¬ Reader r1542 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1542

def r1543 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 0)) (.var 2)))
theorem reject1543 : ¬ Reader r1543 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1543

def r1546 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1546 : ¬ Reader r1546 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1546

def r1547 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1547 : ¬ Reader r1547 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1547

def r1548 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.var 2)) (.var 0)))
theorem reject1548 : ¬ Reader r1548 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1548

def r1549 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 1))) (.var 0)) (.var 2)))
theorem reject1549 : ¬ Reader r1549 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1549

def r1560 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1560 : ¬ Reader r1560 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1560

def r1561 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1561 : ¬ Reader r1561 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1561

def r1562 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1562 : ¬ Reader r1562 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1562

def r1563 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1563 : ¬ Reader r1563 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1563

def r1568 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1568 : ¬ Reader r1568 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1568

def r1569 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1569 : ¬ Reader r1569 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1569

def r1570 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1570 : ¬ Reader r1570 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1570

def r1571 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1571 : ¬ Reader r1571 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1571

def r1574 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1574 : ¬ Reader r1574 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1574

def r1575 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1575 : ¬ Reader r1575 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1575

def r1578 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1578 : ¬ Reader r1578 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1578

def r1579 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1579 : ¬ Reader r1579 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1579

def r1650 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1650 : ¬ Reader r1650 := by
  exact head_reduct true 11 (3,5) (by decide) (by decide)
#print axioms reject1650

def r1651 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1651 : ¬ Reader r1651 := by
  exact head_reduct true 11 (3,5) (by decide) (by decide)
#print axioms reject1651

def r1700 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.var 0)))
theorem reject1700 : ¬ Reader r1700 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1700

def r1701 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 0)) (.var 2)))
theorem reject1701 : ¬ Reader r1701 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1701

def r1702 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1702 : ¬ Reader r1702 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1702

def r1703 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1703 : ¬ Reader r1703 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1703

def r1710 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1710 : ¬ Reader r1710 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1710

def r1711 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1711 : ¬ Reader r1711 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1711

def r1716 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1716 : ¬ Reader r1716 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1716

def r1717 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1717 : ¬ Reader r1717 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1717

def r1724 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1724 : ¬ Reader r1724 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1724

def r1725 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1725 : ¬ Reader r1725 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1725

def r1726 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1726 : ¬ Reader r1726 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1726

def r1727 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1727 : ¬ Reader r1727 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1727

def r1728 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1728 : ¬ Reader r1728 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1728

def r1729 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1729 : ¬ Reader r1729 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1729

def r1730 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)) (.var 0)))
theorem reject1730 : ¬ Reader r1730 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1730

def r1731 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 0)) (.var 2)))
theorem reject1731 : ¬ Reader r1731 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1731

def r1734 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1734 : ¬ Reader r1734 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1734

def r1735 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1735 : ¬ Reader r1735 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1735

def r1740 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1740 : ¬ Reader r1740 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1740

def r1741 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1741 : ¬ Reader r1741 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1741

def r1748 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1748 : ¬ Reader r1748 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1748

def r1749 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1749 : ¬ Reader r1749 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1749

def r1750 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1750 : ¬ Reader r1750 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1750

def r1751 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1751 : ¬ Reader r1751 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1751

def r1752 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1752 : ¬ Reader r1752 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1752

def r1753 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1753 : ¬ Reader r1753 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1753

def r1754 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)) (.var 1)))
theorem reject1754 : ¬ Reader r1754 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1754

def r1755 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 1)) (.var 2)))
theorem reject1755 : ¬ Reader r1755 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1755

def r1770 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.var 2)) (.var 0)))
theorem reject1770 : ¬ Reader r1770 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1770

def r1771 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 2)))
theorem reject1771 : ¬ Reader r1771 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1771

def r1782 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1782 : ¬ Reader r1782 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1782

def r1783 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1783 : ¬ Reader r1783 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1783

def r1784 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1784 : ¬ Reader r1784 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1784

def r1785 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1785 : ¬ Reader r1785 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1785

def r1788 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)) (.var 0)))
theorem reject1788 : ¬ Reader r1788 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1788

def r1789 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 0)) (.var 2)))
theorem reject1789 : ¬ Reader r1789 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1789

def r1790 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1790 : ¬ Reader r1790 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1790

def r1791 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1791 : ¬ Reader r1791 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1791

def r1792 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)))
theorem reject1792 : ¬ Reader r1792 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1792

def r1793 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)))
theorem reject1793 : ¬ Reader r1793 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1793

def r1794 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)) (.var 0)))
theorem reject1794 : ¬ Reader r1794 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1794

def r1795 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 0)) (.var 2)))
theorem reject1795 : ¬ Reader r1795 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1795

def r1828 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1828 : ¬ Reader r1828 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1828

def r1829 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1829 : ¬ Reader r1829 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1829

def r1832 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1832 : ¬ Reader r1832 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1832

def r1833 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1833 : ¬ Reader r1833 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1833

def r1836 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 0))))
theorem reject1836 : ¬ Reader r1836 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1836

def r1837 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 2)))
theorem reject1837 : ¬ Reader r1837 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1837

def r1840 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 1))))
theorem reject1840 : ¬ Reader r1840 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1840

def r1841 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 1))) (.var 2)))
theorem reject1841 : ¬ Reader r1841 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1841

def r1844 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.lam (.var 0)))))
theorem reject1844 : ¬ Reader r1844 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1844

def r1845 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.app (.var 0) (.var 0))))
theorem reject1845 : ¬ Reader r1845 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1845

def r1846 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.app (.var 2) (.var 0))))
theorem reject1846 : ¬ Reader r1846 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1846

def r1847 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.app (.var 0) (.var 2))))
theorem reject1847 : ¬ Reader r1847 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1847

def r1848 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))) (.var 0)))
theorem reject1848 : ¬ Reader r1848 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1848

def r1849 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))) (.var 0)))
theorem reject1849 : ¬ Reader r1849 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1849

def r1850 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 2)))
theorem reject1850 : ¬ Reader r1850 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1850

def r1851 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 2)))
theorem reject1851 : ¬ Reader r1851 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1851

def r1860 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.lam (.var 2))))
theorem reject1860 : ¬ Reader r1860 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1860

def r1861 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 2))) (.var 2)))
theorem reject1861 : ¬ Reader r1861 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1861

def r1894 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 0)))
theorem reject1894 : ¬ Reader r1894 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1894

def r1895 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 2)))
theorem reject1895 : ¬ Reader r1895 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1895

def r1896 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 2)) (.var 0)))
theorem reject1896 : ¬ Reader r1896 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject1896

def r1897 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0))) (.var 0)) (.var 2)))
theorem reject1897 : ¬ Reader r1897 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject1897

def r1902 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 0)))
theorem reject1902 : ¬ Reader r1902 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1902

def r1903 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 2)))
theorem reject1903 : ¬ Reader r1903 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1903

def r1904 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 2)) (.var 0)))
theorem reject1904 : ¬ Reader r1904 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1904

def r1905 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.var 0)) (.var 2)))
theorem reject1905 : ¬ Reader r1905 := by
  exact head_reduct true 3 (0,5) (by decide) (by decide)
#print axioms reject1905

def r1906 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)) (.var 0)))
theorem reject1906 : ¬ Reader r1906 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1906

def r1907 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 0)) (.var 2)))
theorem reject1907 : ¬ Reader r1907 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1907

def r1910 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 0)))
theorem reject1910 : ¬ Reader r1910 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1910

def r1911 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 2)))
theorem reject1911 : ¬ Reader r1911 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1911

def r1914 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 2)) (.var 0)))
theorem reject1914 : ¬ Reader r1914 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1914

def r1915 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.var 0)) (.var 2)))
theorem reject1915 : ¬ Reader r1915 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1915

def r1918 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1918 : ¬ Reader r1918 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1918

def r1919 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1919 : ¬ Reader r1919 := by
  exact head_reduct true 3 (0,7) (by decide) (by decide)
#print axioms reject1919

def r1922 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1922 : ¬ Reader r1922 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject1922

def r1923 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1923 : ¬ Reader r1923 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject1923

def r1934 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1934 : ¬ Reader r1934 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1934

def r1935 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1935 : ¬ Reader r1935 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1935

def r1938 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1938 : ¬ Reader r1938 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1938

def r1939 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1939 : ¬ Reader r1939 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1939

def r1946 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 2)) (.var 0)))
theorem reject1946 : ¬ Reader r1946 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1946

def r1947 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.var 0)) (.var 2)))
theorem reject1947 : ¬ Reader r1947 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1947

def r1958 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 0)))
theorem reject1958 : ¬ Reader r1958 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1958

def r1959 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 2)))
theorem reject1959 : ¬ Reader r1959 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1959

def r1962 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)) (.var 0)))
theorem reject1962 : ¬ Reader r1962 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1962

def r1963 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 0)) (.var 2)))
theorem reject1963 : ¬ Reader r1963 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1963

def r1970 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 0)))
theorem reject1970 : ¬ Reader r1970 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1970

def r1971 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 2)))
theorem reject1971 : ¬ Reader r1971 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1971

def r1974 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.var 1)))
theorem reject1974 : ¬ Reader r1974 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1974

def r1975 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 2)))
theorem reject1975 : ¬ Reader r1975 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1975

def r1978 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)) (.lam (.var 0))))
theorem reject1978 : ¬ Reader r1978 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1978

def r1979 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.lam (.var 0))) (.var 2)))
theorem reject1979 : ¬ Reader r1979 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1979

def r1990 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)) (.var 0)))
theorem reject1990 : ¬ Reader r1990 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1990

def r1991 : Term := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 2)))
theorem reject1991 : ¬ Reader r1991 := by
  exact head_reduct true 2 (0,5) (by decide) (by decide)
#print axioms reject1991

end Blc.FirstopNonlinear.Q2AllHead
