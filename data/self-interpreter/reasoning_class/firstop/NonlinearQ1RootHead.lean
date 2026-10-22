import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1RootHead
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r605 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject605 : ¬ Reader r605 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject605

def r608 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject608 : ¬ Reader r608 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject608

def r614 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject614 : ¬ Reader r614 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject614

def r615 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject615 : ¬ Reader r615 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject615

def r620 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject620 : ¬ Reader r620 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject620

def r621 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject621 : ¬ Reader r621 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject621

def r630 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject630 : ¬ Reader r630 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject631 : ¬ Reader r631 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject631

def r636 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject636 : ¬ Reader r636 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject636

def r637 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject637 : ¬ Reader r637 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject637

def r664 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject664 : ¬ Reader r664 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject664

def r674 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject674 : ¬ Reader r674 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject674

def r677 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject677 : ¬ Reader r677 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject677

def r681 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject681 : ¬ Reader r681 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject681

def r682 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject682 : ¬ Reader r682 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject682

def r683 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject683 : ¬ Reader r683 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject683

def r684 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject684 : ¬ Reader r684 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject684

def r691 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject691 : ¬ Reader r691 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject691

def r692 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject692 : ¬ Reader r692 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject692

def r697 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject697 : ¬ Reader r697 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject697

def r698 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject698 : ¬ Reader r698 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject698

def r700 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject700 : ¬ Reader r700 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject700

def r707 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject707 : ¬ Reader r707 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject707

def r710 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject710 : ¬ Reader r710 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject710

def r714 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject714 : ¬ Reader r714 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject714

def r715 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject715 : ¬ Reader r715 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject715

def r718 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject718 : ¬ Reader r718 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject718

def r724 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject724 : ¬ Reader r724 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject724

def r725 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject725 : ¬ Reader r725 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject725

def r728 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject728 : ¬ Reader r728 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject728

def r729 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject729 : ¬ Reader r729 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject729

def r730 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject730 : ¬ Reader r730 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject730

def r731 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject731 : ¬ Reader r731 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject731

def r744 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject744 : ¬ Reader r744 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject744

def r745 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject745 : ¬ Reader r745 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject745

def r754 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject754 : ¬ Reader r754 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject754

def r755 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject755 : ¬ Reader r755 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject755

def r756 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject756 : ¬ Reader r756 := by
  exact head_reduct true 10 (3,4) (by decide) (by decide)
#print axioms reject756

def r757 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject757 : ¬ Reader r757 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject757

def r766 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject766 : ¬ Reader r766 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject766

def r769 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject769 : ¬ Reader r769 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject769

def r778 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject778 : ¬ Reader r778 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject778

def r781 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject781 : ¬ Reader r781 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject781

def r785 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject785 : ¬ Reader r785 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject785

def r786 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject786 : ¬ Reader r786 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject786

def r787 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject787 : ¬ Reader r787 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject787

def r788 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject788 : ¬ Reader r788 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject788

def r790 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject790 : ¬ Reader r790 := by
  exact head_reduct true 9 (0,3) (by decide) (by decide)
#print axioms reject790

def r791 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject791 : ¬ Reader r791 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject791

def r792 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject792 : ¬ Reader r792 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject792

def r795 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject795 : ¬ Reader r795 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject795

def r796 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject796 : ¬ Reader r796 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject796

def r797 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject797 : ¬ Reader r797 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject797

def r803 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject803 : ¬ Reader r803 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject803

def r804 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 2)))
theorem reject804 : ¬ Reader r804 := by
  exact head_reduct true 4 (0,7) (by decide) (by decide)
#print axioms reject804

def r873 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject873 : ¬ Reader r873 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject873

def r884 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject884 : ¬ Reader r884 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject884

def r885 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject885 : ¬ Reader r885 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject885

def r997 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject997 : ¬ Reader r997 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject997

def r1000 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1000 : ¬ Reader r1000 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1000

def r1005 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1005 : ¬ Reader r1005 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1005

def r1008 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1008 : ¬ Reader r1008 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1008

def r1021 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1021 : ¬ Reader r1021 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1021

def r1022 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1022 : ¬ Reader r1022 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1022

def r1025 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1025 : ¬ Reader r1025 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1025

def r1026 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1026 : ¬ Reader r1026 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1026

def r1100 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1100 : ¬ Reader r1100 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1100

def r1103 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 2)))
theorem reject1103 : ¬ Reader r1103 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1103

def r1108 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1108 : ¬ Reader r1108 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1108

def r1111 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1111 : ¬ Reader r1111 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1111

def r1167 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1167 : ¬ Reader r1167 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1167

def r1170 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1170 : ¬ Reader r1170 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1170

def r1171 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1171 : ¬ Reader r1171 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1171

def r1174 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1174 : ¬ Reader r1174 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1174

def r1175 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1175 : ¬ Reader r1175 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1175

def r1178 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 0)))))
theorem reject1178 : ¬ Reader r1178 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1178

def r1179 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 0)) (.var 2))))
theorem reject1179 : ¬ Reader r1179 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1179

def r1182 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 1)))))
theorem reject1182 : ¬ Reader r1182 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1182

def r1183 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 1)) (.var 2))))
theorem reject1183 : ¬ Reader r1183 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1183

def r1192 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 0))))))
theorem reject1192 : ¬ Reader r1192 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1192

def r1193 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 0)))))
theorem reject1193 : ¬ Reader r1193 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1193

def r1194 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 0)))))
theorem reject1194 : ¬ Reader r1194 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1194

def r1195 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.var 2)))))
theorem reject1195 : ¬ Reader r1195 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1195

def r1196 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 0))))
theorem reject1196 : ¬ Reader r1196 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1196

def r1197 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 0))))
theorem reject1197 : ¬ Reader r1197 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1197

def r1198 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 0))) (.var 2))))
theorem reject1198 : ¬ Reader r1198 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1198

def r1199 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 0)) (.var 2))))
theorem reject1199 : ¬ Reader r1199 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1199

def r1202 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1202 : ¬ Reader r1202 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1202

def r1203 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1203 : ¬ Reader r1203 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1203

def r1206 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.lam (.lam (.var 1))))))
theorem reject1206 : ¬ Reader r1206 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1206

def r1207 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.var 1))) (.var 2))))
theorem reject1207 : ¬ Reader r1207 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1207

def r1220 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject1220 : ¬ Reader r1220 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1220

def r1221 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject1221 : ¬ Reader r1221 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1221

def r1222 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject1222 : ¬ Reader r1222 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1222

def r1223 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject1223 : ¬ Reader r1223 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1223

def r1224 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject1224 : ¬ Reader r1224 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1224

def r1225 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject1225 : ¬ Reader r1225 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1225

def r1226 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject1226 : ¬ Reader r1226 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1226

def r1227 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject1227 : ¬ Reader r1227 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1227

def r1228 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject1228 : ¬ Reader r1228 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1228

def r1229 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject1229 : ¬ Reader r1229 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1229

def r1230 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject1230 : ¬ Reader r1230 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1230

def r1231 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject1231 : ¬ Reader r1231 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1231

def r1241 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1241 : ¬ Reader r1241 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1241

def r1242 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1242 : ¬ Reader r1242 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1242

def r1247 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1247 : ¬ Reader r1247 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1247

def r1248 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1248 : ¬ Reader r1248 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1248

def r1249 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1249 : ¬ Reader r1249 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1249

def r1250 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1250 : ¬ Reader r1250 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1250

def r1255 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1255 : ¬ Reader r1255 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1255

def r1256 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1256 : ¬ Reader r1256 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1256

def r1257 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1257 : ¬ Reader r1257 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1257

def r1258 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1258 : ¬ Reader r1258 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1258

def r1260 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1260 : ¬ Reader r1260 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1260

def r1263 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1263 : ¬ Reader r1263 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1263

def r1264 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1264 : ¬ Reader r1264 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1264

def r1266 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1266 : ¬ Reader r1266 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1266

def r1269 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1269 : ¬ Reader r1269 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1269

def r1270 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1270 : ¬ Reader r1270 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1270

def r1272 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1272 : ¬ Reader r1272 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1272

def r1274 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1274 : ¬ Reader r1274 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1274

def r1277 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1277 : ¬ Reader r1277 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1277

def r1278 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1278 : ¬ Reader r1278 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1278

def r1282 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1282 : ¬ Reader r1282 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1282

def r1284 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1284 : ¬ Reader r1284 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1284

def r1286 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1286 : ¬ Reader r1286 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1286

def r1288 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1288 : ¬ Reader r1288 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1288

def r1294 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1294 : ¬ Reader r1294 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1294

def r1295 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1295 : ¬ Reader r1295 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1295

def r1296 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1296 : ¬ Reader r1296 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1296

def r1297 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1297 : ¬ Reader r1297 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1297

def r1298 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1298 : ¬ Reader r1298 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1298

def r1303 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1303 : ¬ Reader r1303 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1303

def r1305 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1305 : ¬ Reader r1305 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1305

def r1310 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 2)))
theorem reject1310 : ¬ Reader r1310 := by
  exact head_reduct true 10 (3,4) (by decide) (by decide)
#print axioms reject1310

def r1314 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1314 : ¬ Reader r1314 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1314

def r1315 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1315 : ¬ Reader r1315 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1315

def r1316 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1316 : ¬ Reader r1316 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1316

def r1317 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1317 : ¬ Reader r1317 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1317

def r1318 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1318 : ¬ Reader r1318 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1318

def r1319 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1319 : ¬ Reader r1319 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1319

def r1320 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1320 : ¬ Reader r1320 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1320

def r1321 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1321 : ¬ Reader r1321 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1321

def r1324 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1324 : ¬ Reader r1324 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject1324

def r1328 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1328 : ¬ Reader r1328 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1328

def r1329 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1329 : ¬ Reader r1329 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1329

def r1330 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1330 : ¬ Reader r1330 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1330

def r1331 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1331 : ¬ Reader r1331 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1331

def r1377 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1377 : ¬ Reader r1377 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1377

def r1440 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1440 : ¬ Reader r1440 := by
  exact head_reduct true 11 (3,4) (by decide) (by decide)
#print axioms reject1440

def r1441 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1441 : ¬ Reader r1441 := by
  exact head_reduct true 11 (3,4) (by decide) (by decide)
#print axioms reject1441

def r1458 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1458 : ¬ Reader r1458 := by
  exact head_reduct true 11 (3,5) (by decide) (by decide)
#print axioms reject1458

def r1501 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1501 : ¬ Reader r1501 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1501

def r1502 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 0))))
theorem reject1502 : ¬ Reader r1502 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1502

def r1503 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 0) (.var 2))))
theorem reject1503 : ¬ Reader r1503 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1503

def r1504 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1504 : ¬ Reader r1504 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1504

def r1505 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1505 : ¬ Reader r1505 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1505

def r1506 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1506 : ¬ Reader r1506 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1506

def r1507 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1507 : ¬ Reader r1507 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1507

def r1508 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1508 : ¬ Reader r1508 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1508

def r1509 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1509 : ¬ Reader r1509 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1509

def r1515 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1515 : ¬ Reader r1515 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1515

def r1518 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1518 : ¬ Reader r1518 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1518

def r1522 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1522 : ¬ Reader r1522 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1522

def r1523 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1523 : ¬ Reader r1523 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1523

def r1524 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1524 : ¬ Reader r1524 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1524

def r1525 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1525 : ¬ Reader r1525 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1525

def r1528 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1528 : ¬ Reader r1528 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1528

def r1529 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1529 : ¬ Reader r1529 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1529

def r1534 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1534 : ¬ Reader r1534 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1534

def r1535 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1535 : ¬ Reader r1535 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1535

def r1542 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1542 : ¬ Reader r1542 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1542

def r1543 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1543 : ¬ Reader r1543 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1543

def r1544 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1544 : ¬ Reader r1544 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1544

def r1545 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1545 : ¬ Reader r1545 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1545

def r1546 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1546 : ¬ Reader r1546 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1546

def r1547 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1547 : ¬ Reader r1547 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1547

def r1548 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 2) (.var 0))))
theorem reject1548 : ¬ Reader r1548 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1548

def r1549 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 0) (.var 2))))
theorem reject1549 : ¬ Reader r1549 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1549

def r1552 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1552 : ¬ Reader r1552 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1552

def r1553 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1553 : ¬ Reader r1553 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1553

def r1558 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1558 : ¬ Reader r1558 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1558

def r1559 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1559 : ¬ Reader r1559 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1559

def r1566 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1566 : ¬ Reader r1566 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1566

def r1567 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1567 : ¬ Reader r1567 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1567

def r1568 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1568 : ¬ Reader r1568 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1568

def r1569 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1569 : ¬ Reader r1569 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1569

def r1570 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1570 : ¬ Reader r1570 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1570

def r1571 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1571 : ¬ Reader r1571 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1571

def r1572 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 2) (.var 1))))
theorem reject1572 : ¬ Reader r1572 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1572

def r1573 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.app (.var 1) (.var 2))))
theorem reject1573 : ¬ Reader r1573 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1573

def r1575 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1575 : ¬ Reader r1575 := by
  exact head_reduct true 8 (0,6) (by decide) (by decide)
#print axioms reject1575

def r1580 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1580 : ¬ Reader r1580 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1580

def r1583 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1583 : ¬ Reader r1583 := by
  exact head_reduct true 6 (0,6) (by decide) (by decide)
#print axioms reject1583

def r1584 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1584 : ¬ Reader r1584 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1584

def r1589 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1589 : ¬ Reader r1589 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1589

def r1590 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1590 : ¬ Reader r1590 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1590

def r1597 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1597 : ¬ Reader r1597 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1597

def r1598 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1598 : ¬ Reader r1598 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1598

def r1599 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1599 : ¬ Reader r1599 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1599

def r1600 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1600 : ¬ Reader r1600 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1600

def r1601 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1601 : ¬ Reader r1601 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1601

def r1602 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1602 : ¬ Reader r1602 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1602

def r1603 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1603 : ¬ Reader r1603 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1603

def r1604 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1604 : ¬ Reader r1604 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1604

def r1606 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1606 : ¬ Reader r1606 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1606

def r1609 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1609 : ¬ Reader r1609 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1609

def r1613 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1613 : ¬ Reader r1613 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1613

def r1614 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1614 : ¬ Reader r1614 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1614

def r1615 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1615 : ¬ Reader r1615 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1615

def r1616 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1616 : ¬ Reader r1616 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1616

def r1618 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1618 : ¬ Reader r1618 := by
  exact head_reduct true 6 (0,7) (by decide) (by decide)
#print axioms reject1618

def r1621 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1621 : ¬ Reader r1621 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1621

def r1625 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1625 : ¬ Reader r1625 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1625

def r1626 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1626 : ¬ Reader r1626 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1626

def r1627 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1627 : ¬ Reader r1627 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1627

def r1628 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1628 : ¬ Reader r1628 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1628

def r1644 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1644 : ¬ Reader r1644 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1644

def r1647 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 0))))
theorem reject1647 : ¬ Reader r1647 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1647

def r1648 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.app (.var 0) (.var 2))))
theorem reject1648 : ¬ Reader r1648 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1648

def r1652 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1652 : ¬ Reader r1652 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1652

def r1653 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1653 : ¬ Reader r1653 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1653

def r1659 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1659 : ¬ Reader r1659 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1659

def r1660 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1660 : ¬ Reader r1660 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1660

def r1662 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1662 : ¬ Reader r1662 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1662

def r1663 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1663 : ¬ Reader r1663 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1663

def r1664 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1664 : ¬ Reader r1664 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1664

def r1665 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)))
theorem reject1665 : ¬ Reader r1665 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1665

def r1676 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1676 : ¬ Reader r1676 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1676

def r1677 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1677 : ¬ Reader r1677 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1677

def r1678 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1678 : ¬ Reader r1678 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1678

def r1679 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1679 : ¬ Reader r1679 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1679

def r1682 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 2) (.var 0))))
theorem reject1682 : ¬ Reader r1682 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1682

def r1683 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.var 0) (.var 2))))
theorem reject1683 : ¬ Reader r1683 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1683

def r1684 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 2) (.var 0))))
theorem reject1684 : ¬ Reader r1684 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1684

def r1685 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 2))))
theorem reject1685 : ¬ Reader r1685 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1685

def r1686 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 0))))
theorem reject1686 : ¬ Reader r1686 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1686

def r1687 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 2))))
theorem reject1687 : ¬ Reader r1687 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1687

def r1688 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.var 2) (.var 0))))
theorem reject1688 : ¬ Reader r1688 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1688

def r1689 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.app (.var 0) (.var 2))))
theorem reject1689 : ¬ Reader r1689 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1689

def r1695 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1695 : ¬ Reader r1695 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1695

def r1706 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1706 : ¬ Reader r1706 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1706

def r1707 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1707 : ¬ Reader r1707 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1707

def r1708 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1708 : ¬ Reader r1708 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1708

def r1709 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1709 : ¬ Reader r1709 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1709

def r1712 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1712 : ¬ Reader r1712 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1712

def r1713 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1713 : ¬ Reader r1713 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1713

def r1714 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1714 : ¬ Reader r1714 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1714

def r1715 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1715 : ¬ Reader r1715 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1715

def r1716 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1716 : ¬ Reader r1716 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1716

def r1717 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1717 : ¬ Reader r1717 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1717

def r1718 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)))
theorem reject1718 : ¬ Reader r1718 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1718

def r1719 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)))
theorem reject1719 : ¬ Reader r1719 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1719

def r1724 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1724 : ¬ Reader r1724 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1724

def r1725 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1725 : ¬ Reader r1725 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1725

def r1726 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1726 : ¬ Reader r1726 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1726

def r1727 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1727 : ¬ Reader r1727 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1727

def r1730 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 2)))
theorem reject1730 : ¬ Reader r1730 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1730

def r1734 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.var 2)))
theorem reject1734 : ¬ Reader r1734 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1734

def r1735 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1735 : ¬ Reader r1735 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1735

def r1736 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 2)))
theorem reject1736 : ¬ Reader r1736 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1736

def r1738 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1738 : ¬ Reader r1738 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1738

def r1742 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1742 : ¬ Reader r1742 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1742

def r1744 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1744 : ¬ Reader r1744 := by
  exact head_reduct true 6 (0,4) (by decide) (by decide)
#print axioms reject1744

def r1751 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1751 : ¬ Reader r1751 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject1751

def r1754 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 1))))))) (.var 2)))
theorem reject1754 : ¬ Reader r1754 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1754

def r1759 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))) (.var 2)))
theorem reject1759 : ¬ Reader r1759 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1759

def r1760 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))) (.var 2)))
theorem reject1760 : ¬ Reader r1760 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1760

def r1761 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1761 : ¬ Reader r1761 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1761

def r1762 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 1)))))) (.var 2)))
theorem reject1762 : ¬ Reader r1762 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1762

def r1765 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.var 2)))
theorem reject1765 : ¬ Reader r1765 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1765

def r1766 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 2)))
theorem reject1766 : ¬ Reader r1766 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1766

def r1771 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 2)))
theorem reject1771 : ¬ Reader r1771 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1771

def r1772 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1772 : ¬ Reader r1772 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1772

def r1773 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.var 2)))
theorem reject1773 : ¬ Reader r1773 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1773

def r1774 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.var 2)))))))) (.var 2)))
theorem reject1774 : ¬ Reader r1774 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1774

def r1777 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))) (.var 2)))
theorem reject1777 : ¬ Reader r1777 := by
  exact head_reduct true 6 (0,4) (by decide) (by decide)
#print axioms reject1777

def r1778 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))) (.var 2)))
theorem reject1778 : ¬ Reader r1778 := by
  exact head_reduct true 6 (0,4) (by decide) (by decide)
#print axioms reject1778

def r1781 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1781 : ¬ Reader r1781 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1781

def r1782 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1782 : ¬ Reader r1782 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1782

def r1784 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1784 : ¬ Reader r1784 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1784

def r1785 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1785 : ¬ Reader r1785 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1785

def r1786 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.var 0))))) (.var 2)))
theorem reject1786 : ¬ Reader r1786 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1786

def r1787 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1787 : ¬ Reader r1787 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1787

def r1788 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 2)))
theorem reject1788 : ¬ Reader r1788 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1788

def r1790 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1790 : ¬ Reader r1790 := by
  exact head_reduct true 6 (0,6) (by decide) (by decide)
#print axioms reject1790

def r1793 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1793 : ¬ Reader r1793 := by
  exact head_reduct true 6 (0,6) (by decide) (by decide)
#print axioms reject1793

def r1797 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1797 : ¬ Reader r1797 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1797

def r1798 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1798 : ¬ Reader r1798 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1798

def r1799 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1799 : ¬ Reader r1799 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1799

def r1800 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1800 : ¬ Reader r1800 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1800

def r1807 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1807 : ¬ Reader r1807 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1807

def r1808 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1808 : ¬ Reader r1808 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1808

def r1813 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1813 : ¬ Reader r1813 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1813

def r1814 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1814 : ¬ Reader r1814 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1814

def r1816 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1816 : ¬ Reader r1816 := by
  exact head_reduct true 5 (0,8) (by decide) (by decide)
#print axioms reject1816

def r1823 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject1823 : ¬ Reader r1823 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1823

def r1826 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1826 : ¬ Reader r1826 := by
  exact head_reduct true 5 (0,8) (by decide) (by decide)
#print axioms reject1826

def r1830 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1830 : ¬ Reader r1830 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1830

def r1831 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1831 : ¬ Reader r1831 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1831

def r1832 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1832 : ¬ Reader r1832 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1832

def r1833 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1833 : ¬ Reader r1833 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1833

def r1834 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1834 : ¬ Reader r1834 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1834

def r1835 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1835 : ¬ Reader r1835 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1835

def r1836 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1836 : ¬ Reader r1836 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1836

def r1837 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1837 : ¬ Reader r1837 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1837

def r1838 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1838 : ¬ Reader r1838 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1838

def r1839 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject1839 : ¬ Reader r1839 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1839

def r1840 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1840 : ¬ Reader r1840 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1840

def r1841 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1841 : ¬ Reader r1841 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1841

def r1842 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))))) (.var 2)))
theorem reject1842 : ¬ Reader r1842 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject1842

def r1848 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1848 : ¬ Reader r1848 := by
  exact head_reduct true 6 (0,5) (by decide) (by decide)
#print axioms reject1848

def r1852 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.var 2)))
theorem reject1852 : ¬ Reader r1852 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1852

def r1853 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1853 : ¬ Reader r1853 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1853

def r1854 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))) (.var 2)))
theorem reject1854 : ¬ Reader r1854 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1854

def r1856 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.lam (.app (.var 2) (.var 2)))))))) (.var 2)))
theorem reject1856 : ¬ Reader r1856 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1856

def r1864 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 2)))
theorem reject1864 : ¬ Reader r1864 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1864

def r1865 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))) (.var 2)))
theorem reject1865 : ¬ Reader r1865 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1865

def r1866 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1866 : ¬ Reader r1866 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1866

def r1867 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))) (.var 2)))
theorem reject1867 : ¬ Reader r1867 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1867

def r1873 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 2)))
theorem reject1873 : ¬ Reader r1873 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1873

def r1874 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 3)))))) (.var 2)))
theorem reject1874 : ¬ Reader r1874 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1874

def r1875 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1875 : ¬ Reader r1875 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1875

def r1876 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1876 : ¬ Reader r1876 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1876

def r1877 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1877 : ¬ Reader r1877 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1877

def r1879 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1879 : ¬ Reader r1879 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1879

def r1880 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1880 : ¬ Reader r1880 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1880

def r1881 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.var 1))))) (.var 2)))
theorem reject1881 : ¬ Reader r1881 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject1881

def r1884 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 3)))))) (.var 2)))
theorem reject1884 : ¬ Reader r1884 := by
  exact head_reduct true 9 (3,3) (by decide) (by decide)
#print axioms reject1884

def r1889 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1889 : ¬ Reader r1889 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1889

def r1890 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 2)))
theorem reject1890 : ¬ Reader r1890 := by
  exact head_reduct true 5 (0,3) (by decide) (by decide)
#print axioms reject1890

def r1891 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1891 : ¬ Reader r1891 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1891

def r1892 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)))))) (.var 2)))
theorem reject1892 : ¬ Reader r1892 := by
  exact head_reduct true 5 (0,4) (by decide) (by decide)
#print axioms reject1892

def r1894 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1894 : ¬ Reader r1894 := by
  exact head_reduct true 6 (0,4) (by decide) (by decide)
#print axioms reject1894

def r1895 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1895 : ¬ Reader r1895 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1895

def r1896 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))))) (.var 2)))
theorem reject1896 : ¬ Reader r1896 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1896

def r1902 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1902 : ¬ Reader r1902 := by
  exact head_reduct true 6 (0,7) (by decide) (by decide)
#print axioms reject1902

def r1903 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1903 : ¬ Reader r1903 := by
  exact head_reduct true 6 (0,7) (by decide) (by decide)
#print axioms reject1903

def r1906 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1906 : ¬ Reader r1906 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1906

def r1907 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1907 : ¬ Reader r1907 := by
  exact head_reduct true 5 (0,5) (by decide) (by decide)
#print axioms reject1907

def r1908 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1908 : ¬ Reader r1908 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1908

def r1909 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 2)))
theorem reject1909 : ¬ Reader r1909 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1909

def r1922 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1922 : ¬ Reader r1922 := by
  exact head_reduct true 11 (3,4) (by decide) (by decide)
#print axioms reject1922

def r1923 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1923 : ¬ Reader r1923 := by
  exact head_reduct true 11 (3,4) (by decide) (by decide)
#print axioms reject1923

def r1924 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1924 : ¬ Reader r1924 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1924

def r1925 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1925 : ¬ Reader r1925 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1925

def r1934 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1934 : ¬ Reader r1934 := by
  exact head_reduct true 6 (0,8) (by decide) (by decide)
#print axioms reject1934

def r1935 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1935 : ¬ Reader r1935 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1935

def r1936 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1936 : ¬ Reader r1936 := by
  exact head_reduct true 11 (3,6) (by decide) (by decide)
#print axioms reject1936

def r1937 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1937 : ¬ Reader r1937 := by
  exact head_reduct true 5 (0,8) (by decide) (by decide)
#print axioms reject1937

def r1942 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1942 : ¬ Reader r1942 := by
  exact head_reduct true 11 (3,6) (by decide) (by decide)
#print axioms reject1942

def r1947 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject1947 : ¬ Reader r1947 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1947

def r1950 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)))
theorem reject1950 : ¬ Reader r1950 := by
  exact head_reduct true 5 (0,8) (by decide) (by decide)
#print axioms reject1950

def r1959 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1959 : ¬ Reader r1959 := by
  exact head_reduct true 7 (0,9) (by decide) (by decide)
#print axioms reject1959

def r1962 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1962 : ¬ Reader r1962 := by
  exact head_reduct true 7 (0,10) (by decide) (by decide)
#print axioms reject1962

def r1966 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1966 : ¬ Reader r1966 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1966

def r1967 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1967 : ¬ Reader r1967 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1967

def r1968 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1968 : ¬ Reader r1968 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1968

def r1969 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject1969 : ¬ Reader r1969 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1969

def r1971 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1971 : ¬ Reader r1971 := by
  exact head_reduct true 11 (0,5) (by decide) (by decide)
#print axioms reject1971

def r1972 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1972 : ¬ Reader r1972 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1972

def r1973 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject1973 : ¬ Reader r1973 := by
  exact head_reduct true 5 (0,6) (by decide) (by decide)
#print axioms reject1973

def r1976 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1976 : ¬ Reader r1976 := by
  exact head_reduct true 7 (0,10) (by decide) (by decide)
#print axioms reject1976

def r1977 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1977 : ¬ Reader r1977 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1977

def r1978 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1978 : ¬ Reader r1978 := by
  exact head_reduct true 11 (0,6) (by decide) (by decide)
#print axioms reject1978

def r1979 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject1979 : ¬ Reader r1979 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1979

def r1985 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject1985 : ¬ Reader r1985 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1985

def r1986 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject1986 : ¬ Reader r1986 := by
  exact head_reduct true 5 (0,7) (by decide) (by decide)
#print axioms reject1986

def r1989 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 2)))
theorem reject1989 : ¬ Reader r1989 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1989

def r1990 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1990 : ¬ Reader r1990 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1990

def r1991 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))) (.var 2)))
theorem reject1991 : ¬ Reader r1991 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1991

def r1992 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 2)))
theorem reject1992 : ¬ Reader r1992 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1992

def r1993 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1993 : ¬ Reader r1993 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1993

def r1994 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 2)))
theorem reject1994 : ¬ Reader r1994 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1994

def r1995 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject1995 : ¬ Reader r1995 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1995

def r1996 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))) (.var 2)))
theorem reject1996 : ¬ Reader r1996 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1996

def r1997 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 2)))
theorem reject1997 : ¬ Reader r1997 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1997

def r1998 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))) (.var 2)))
theorem reject1998 : ¬ Reader r1998 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1998

def r1999 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject1999 : ¬ Reader r1999 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject1999

def r2000 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))) (.var 2)))
theorem reject2000 : ¬ Reader r2000 := by
  exact head_reduct true 4 (0,4) (by decide) (by decide)
#print axioms reject2000

def r2001 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.var 2)))
theorem reject2001 : ¬ Reader r2001 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2001

def r2002 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2002 : ¬ Reader r2002 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2002

def r2003 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))) (.var 2)))
theorem reject2003 : ¬ Reader r2003 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2003

def r2004 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 2)))
theorem reject2004 : ¬ Reader r2004 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2004

def r2005 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))))) (.var 2)))
theorem reject2005 : ¬ Reader r2005 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2005

def r2006 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))) (.var 2)))
theorem reject2006 : ¬ Reader r2006 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2006

def r2007 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject2007 : ¬ Reader r2007 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2007

def r2008 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject2008 : ¬ Reader r2008 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2008

def r2009 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject2009 : ¬ Reader r2009 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2009

def r2010 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))) (.var 2)))
theorem reject2010 : ¬ Reader r2010 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2010

def r2011 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))) (.var 2)))
theorem reject2011 : ¬ Reader r2011 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2011

def r2012 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))) (.var 2)))
theorem reject2012 : ¬ Reader r2012 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2012

def r2013 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))))) (.var 2)))
theorem reject2013 : ¬ Reader r2013 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2013

def r2014 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))) (.var 2)))
theorem reject2014 : ¬ Reader r2014 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2014

def r2015 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))))) (.var 2)))
theorem reject2015 : ¬ Reader r2015 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2015

def r2016 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))))) (.var 2)))
theorem reject2016 : ¬ Reader r2016 := by
  exact head_reduct true 4 (0,5) (by decide) (by decide)
#print axioms reject2016

def r2017 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))) (.var 2)))
theorem reject2017 : ¬ Reader r2017 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2017

def r2018 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))))) (.var 2)))
theorem reject2018 : ¬ Reader r2018 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject2018

def r1970 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1970 : ¬ Reader r1970 := by
  exact head_reduct false 12 (0,7) (by decide) (by decide)
#print axioms reject1970

def r1982 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 2))))) (.var 2)))
theorem reject1982 : ¬ Reader r1982 := by
  exact head_reduct false 14 (2,6) (by decide) (by decide)
#print axioms reject1982

def r1988 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 0))))) (.var 2)))
theorem reject1988 : ¬ Reader r1988 := by
  exact head_reduct false 12 (2,9) (by decide) (by decide)
#print axioms reject1988

end Blc.FirstopNonlinear.Q1RootHead
