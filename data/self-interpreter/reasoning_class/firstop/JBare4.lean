import LinearCertificates
namespace Blc.Firstop.JBare4
open Term SelfintClass
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r3747 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3747 : ¬ Reader r3747 :=
  refute_zero r3747 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3747
def r3748 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3748 : ¬ Reader r3748 :=
  refute_zero r3748 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3748
def r3749 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3749 : ¬ Reader r3749 :=
  refute_zero r3749 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3749
def r3750 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3750 : ¬ Reader r3750 :=
  refute_zero r3750 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3750
def r3751 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3751 : ¬ Reader r3751 :=
  refute_zero r3751 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3751
def r3752 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3752 : ¬ Reader r3752 :=
  refute_zero r3752 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3752
def r3753 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3753 : ¬ Reader r3753 :=
  refute_zero r3753 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3753
def r3754 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3754 : ¬ Reader r3754 :=
  refute_zero r3754 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3754
def r3755 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3755 : ¬ Reader r3755 :=
  refute_zero r3755 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3755
def r3756 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3756 : ¬ Reader r3756 :=
  refute_zero r3756 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3756
def r3757 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject3757 : ¬ Reader r3757 :=
  refute_zero r3757 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3757
def r3758 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject3758 : ¬ Reader r3758 :=
  refute_zero r3758 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3758
def r3759 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject3759 : ¬ Reader r3759 :=
  refute_zero r3759 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3759
def r3760 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject3760 : ¬ Reader r3760 :=
  refute_zero r3760 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3760
def r3761 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject3761 : ¬ Reader r3761 :=
  refute_zero r3761 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3761
def r3762 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject3762 : ¬ Reader r3762 :=
  refute_zero r3762 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3762
def r3763 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)))
theorem reject3763 : ¬ Reader r3763 :=
  refute_zero r3763 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3763
def r3764 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)))
theorem reject3764 : ¬ Reader r3764 :=
  refute_zero r3764 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3764
def r3765 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)))
theorem reject3765 : ¬ Reader r3765 :=
  refute_zero r3765 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3765
def r3766 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))
theorem reject3766 : ¬ Reader r3766 :=
  refute_zero r3766 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3766
def r3767 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3767 : ¬ Reader r3767 :=
  refute_zero r3767 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3767
def r3768 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3768 : ¬ Reader r3768 :=
  refute_zero r3768 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3768
def r3769 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)) (.var 1)))
theorem reject3769 : ¬ Reader r3769 :=
  refute_zero r3769 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3769
def r3770 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.var 1)))
theorem reject3770 : ¬ Reader r3770 :=
  refute_zero r3770 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3770
def r3771 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.var 0)))
theorem reject3771 : ¬ Reader r3771 :=
  refute_zero r3771 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3771
def r3772 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3772 : ¬ Reader r3772 :=
  refute_zero r3772 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3772
def r3773 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3773 : ¬ Reader r3773 :=
  refute_zero r3773 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3773
def r3774 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3774 : ¬ Reader r3774 :=
  refute_zero r3774 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3774
def r3775 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3775 : ¬ Reader r3775 :=
  refute_zero r3775 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3775
def r3776 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject3776 : ¬ Reader r3776 :=
  refute_zero r3776 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3776
def r3777 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject3777 : ¬ Reader r3777 :=
  refute_zero r3777 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3777
def r3778 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3778 : ¬ Reader r3778 :=
  refute_zero r3778 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3778
def r3779 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.var 2))))
theorem reject3779 : ¬ Reader r3779 :=
  refute_zero r3779 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3779
def r3780 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject3780 : ¬ Reader r3780 :=
  refute_zero r3780 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3780
def r3781 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject3781 : ¬ Reader r3781 :=
  refute_zero r3781 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3781
def r3782 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject3782 : ¬ Reader r3782 :=
  refute_zero r3782 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3782
def r3783 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3783 : ¬ Reader r3783 :=
  refute_zero r3783 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3783
def r3784 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3784 : ¬ Reader r3784 :=
  refute_zero r3784 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3784
def r3785 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject3785 : ¬ Reader r3785 :=
  refute_zero r3785 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3785
def r3786 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject3786 : ¬ Reader r3786 :=
  refute_zero r3786 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3786
def r3787 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3787 : ¬ Reader r3787 :=
  refute_zero r3787 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3787
def r3788 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3788 : ¬ Reader r3788 :=
  refute_zero r3788 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3788
def r3789 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)))
theorem reject3789 : ¬ Reader r3789 :=
  refute_zero r3789 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3789
def r3790 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3790 : ¬ Reader r3790 :=
  refute_zero r3790 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3790
def r3791 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3791 : ¬ Reader r3791 :=
  refute_zero r3791 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3791
def r3792 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3792 : ¬ Reader r3792 :=
  refute_zero r3792 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3792
def r3793 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3793 : ¬ Reader r3793 :=
  refute_zero r3793 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3793
def r3794 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3794 : ¬ Reader r3794 :=
  refute_zero r3794 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3794
def r3795 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3795 : ¬ Reader r3795 :=
  refute_zero r3795 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3795
def r3796 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3796 : ¬ Reader r3796 :=
  refute_zero r3796 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3796
def r3797 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject3797 : ¬ Reader r3797 :=
  refute_zero r3797 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3797
def r3798 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject3798 : ¬ Reader r3798 :=
  refute_zero r3798 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3798
def r3799 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject3799 : ¬ Reader r3799 :=
  refute_zero r3799 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3799
def r3800 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3800 : ¬ Reader r3800 :=
  refute_zero r3800 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3800
def r3801 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3801 : ¬ Reader r3801 :=
  refute_zero r3801 (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3801
def r3802 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3802 : ¬ Reader r3802 :=
  refute_zero r3802 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3802
def r3803 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3803 : ¬ Reader r3803 :=
  refute_zero r3803 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3803
def r3804 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3804 : ¬ Reader r3804 :=
  refute_zero r3804 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3804
def r3805 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3805 : ¬ Reader r3805 :=
  refute_zero r3805 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3805
def r3806 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3806 : ¬ Reader r3806 :=
  refute_zero r3806 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3806
def r3807 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3807 : ¬ Reader r3807 :=
  refute_zero r3807 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3807
def r3808 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3808 : ¬ Reader r3808 :=
  refute_zero r3808 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3808
def r3809 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 0)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3809 : ¬ Reader r3809 :=
  refute_zero r3809 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3809
def r3810 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 0)) (.var 1)) (.var 1)))
theorem reject3810 : ¬ Reader r3810 :=
  refute_zero r3810 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3810
def r3811 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 0)) (.var 1)))
theorem reject3811 : ¬ Reader r3811 :=
  refute_zero r3811 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3811
def r3812 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 0)))
theorem reject3812 : ¬ Reader r3812 :=
  refute_zero r3812 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3812
def r3813 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3813 : ¬ Reader r3813 :=
  refute_zero r3813 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3813
def r3814 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject3814 : ¬ Reader r3814 :=
  refute_zero r3814 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3814
def r3815 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject3815 : ¬ Reader r3815 :=
  refute_zero r3815 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3815
def r3816 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject3816 : ¬ Reader r3816 :=
  refute_zero r3816 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3816
def r3817 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3817 : ¬ Reader r3817 :=
  refute_zero r3817 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3817
def r3818 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3818 : ¬ Reader r3818 :=
  refute_zero r3818 (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3818
def r3819 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3819 : ¬ Reader r3819 :=
  refute_zero r3819 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3819
def r3820 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3820 : ¬ Reader r3820 :=
  refute_zero r3820 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3820
def r3821 : Term := (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.var 1)) (.var 1)) (.var 1)))
theorem reject3821 : ¬ Reader r3821 :=
  refute_zero r3821 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3821
def r3822 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3822 : ¬ Reader r3822 :=
  refute_zero r3822 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3822
def r3823 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3823 : ¬ Reader r3823 :=
  refute_zero r3823 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3823
def r3824 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3824 : ¬ Reader r3824 :=
  refute_zero r3824 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3824
def r3825 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3825 : ¬ Reader r3825 :=
  refute_zero r3825 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3825
def r3826 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3826 : ¬ Reader r3826 :=
  refute_zero r3826 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3826
def r3827 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3827 : ¬ Reader r3827 :=
  refute_zero r3827 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3827
def r3828 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3828 : ¬ Reader r3828 :=
  refute_zero r3828 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3828
def r3829 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3829 : ¬ Reader r3829 :=
  refute_zero r3829 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3829
def r3830 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3830 : ¬ Reader r3830 :=
  refute_zero r3830 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3830
def r3831 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3831 : ¬ Reader r3831 :=
  refute_zero r3831 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3831
def r3832 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject3832 : ¬ Reader r3832 :=
  refute_zero r3832 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3832
def r3833 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject3833 : ¬ Reader r3833 :=
  refute_zero r3833 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3833
def r3834 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject3834 : ¬ Reader r3834 :=
  refute_zero r3834 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3834
def r3835 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject3835 : ¬ Reader r3835 :=
  refute_zero r3835 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3835
def r3836 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject3836 : ¬ Reader r3836 :=
  refute_zero r3836 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3836
def r3837 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject3837 : ¬ Reader r3837 :=
  refute_zero r3837 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3837
def r3838 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)))
theorem reject3838 : ¬ Reader r3838 :=
  refute_zero r3838 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3838
def r3839 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)))
theorem reject3839 : ¬ Reader r3839 :=
  refute_zero r3839 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3839
def r3840 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)))
theorem reject3840 : ¬ Reader r3840 :=
  refute_zero r3840 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3840
def r3841 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))
theorem reject3841 : ¬ Reader r3841 :=
  refute_zero r3841 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3841
def r3842 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3842 : ¬ Reader r3842 :=
  refute_zero r3842 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3842
def r3843 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3843 : ¬ Reader r3843 :=
  refute_zero r3843 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3843
def r3844 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 0)) (.var 1)) (.var 1)))
theorem reject3844 : ¬ Reader r3844 :=
  refute_zero r3844 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3844
def r3845 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)) (.var 1)))
theorem reject3845 : ¬ Reader r3845 :=
  refute_zero r3845 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3845
def r3846 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)) (.var 0)))
theorem reject3846 : ¬ Reader r3846 :=
  refute_zero r3846 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3846
def r3847 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3847 : ¬ Reader r3847 :=
  refute_zero r3847 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3847
def r3848 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3848 : ¬ Reader r3848 :=
  refute_zero r3848 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3848
def r3849 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3849 : ¬ Reader r3849 :=
  refute_zero r3849 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3849
def r3850 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3850 : ¬ Reader r3850 :=
  refute_zero r3850 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3850
def r3851 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject3851 : ¬ Reader r3851 :=
  refute_zero r3851 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3851
def r3852 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject3852 : ¬ Reader r3852 :=
  refute_zero r3852 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3852
def r3853 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3853 : ¬ Reader r3853 :=
  refute_zero r3853 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3853
def r3854 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 2))) (.lam (.var 2))))
theorem reject3854 : ¬ Reader r3854 :=
  refute_zero r3854 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3854
def r3855 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject3855 : ¬ Reader r3855 :=
  refute_zero r3855 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3855
def r3856 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject3856 : ¬ Reader r3856 :=
  refute_zero r3856 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3856
def r3857 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject3857 : ¬ Reader r3857 :=
  refute_zero r3857 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3857
def r3858 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3858 : ¬ Reader r3858 :=
  refute_zero r3858 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3858
def r3859 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3859 : ¬ Reader r3859 :=
  refute_zero r3859 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3859
def r3860 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject3860 : ¬ Reader r3860 :=
  refute_zero r3860 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3860
def r3861 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject3861 : ¬ Reader r3861 :=
  refute_zero r3861 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3861
def r3862 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3862 : ¬ Reader r3862 :=
  refute_zero r3862 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3862
def r3863 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3863 : ¬ Reader r3863 :=
  refute_zero r3863 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3863
def r3864 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)))
theorem reject3864 : ¬ Reader r3864 :=
  refute_zero r3864 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3864
def r3865 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3865 : ¬ Reader r3865 :=
  refute_zero r3865 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3865
def r3866 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3866 : ¬ Reader r3866 :=
  refute_zero r3866 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3866
def r3867 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3867 : ¬ Reader r3867 :=
  refute_zero r3867 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3867
def r3868 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3868 : ¬ Reader r3868 :=
  refute_zero r3868 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3868
def r3869 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3869 : ¬ Reader r3869 :=
  refute_zero r3869 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3869
def r3870 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3870 : ¬ Reader r3870 :=
  refute_zero r3870 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3870
def r3871 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3871 : ¬ Reader r3871 :=
  refute_zero r3871 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3871
def r3872 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject3872 : ¬ Reader r3872 :=
  refute_zero r3872 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3872
def r3873 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject3873 : ¬ Reader r3873 :=
  refute_zero r3873 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3873
def r3874 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject3874 : ¬ Reader r3874 :=
  refute_zero r3874 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3874
def r3875 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3))))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3875 : ¬ Reader r3875 :=
  refute_zero r3875 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3875
def r3876 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3876 : ¬ Reader r3876 :=
  refute_zero r3876 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3876
def r3877 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3877 : ¬ Reader r3877 :=
  refute_zero r3877 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3877
def r3878 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3878 : ¬ Reader r3878 :=
  refute_zero r3878 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3878
def r3879 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3879 : ¬ Reader r3879 :=
  refute_zero r3879 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3879
def r3880 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3880 : ¬ Reader r3880 :=
  refute_zero r3880 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3880
def r3881 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3881 : ¬ Reader r3881 :=
  refute_zero r3881 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3881
def r3882 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3882 : ¬ Reader r3882 :=
  refute_zero r3882 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3882
def r3883 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3883 : ¬ Reader r3883 :=
  refute_zero r3883 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3883
def r3884 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3884 : ¬ Reader r3884 :=
  refute_zero r3884 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3884
def r3885 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 0)) (.var 1)) (.var 1)))
theorem reject3885 : ¬ Reader r3885 :=
  refute_zero r3885 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3885
def r3886 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 0)) (.var 1)))
theorem reject3886 : ¬ Reader r3886 :=
  refute_zero r3886 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3886
def r3887 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 0)))
theorem reject3887 : ¬ Reader r3887 :=
  refute_zero r3887 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3887
def r3888 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3888 : ¬ Reader r3888 :=
  refute_zero r3888 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3888
def r3889 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject3889 : ¬ Reader r3889 :=
  refute_zero r3889 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3889
def r3890 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject3890 : ¬ Reader r3890 :=
  refute_zero r3890 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3890
def r3891 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject3891 : ¬ Reader r3891 :=
  refute_zero r3891 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3891
def r3892 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3892 : ¬ Reader r3892 :=
  refute_zero r3892 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3892
def r3893 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3893 : ¬ Reader r3893 :=
  refute_zero r3893 (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3893
def r3894 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3894 : ¬ Reader r3894 :=
  refute_zero r3894 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3894
def r3895 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3895 : ¬ Reader r3895 :=
  refute_zero r3895 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3895
def r3896 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3896 : ¬ Reader r3896 :=
  refute_zero r3896 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3896
def r3897 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3897 : ¬ Reader r3897 :=
  refute_zero r3897 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3897
def r3898 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject3898 : ¬ Reader r3898 :=
  refute_zero r3898 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3898
def r3899 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject3899 : ¬ Reader r3899 :=
  refute_zero r3899 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3899
def r3900 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject3900 : ¬ Reader r3900 :=
  refute_zero r3900 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3900
def r3901 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3901 : ¬ Reader r3901 :=
  refute_zero r3901 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3901
def r3902 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3902 : ¬ Reader r3902 :=
  refute_zero r3902 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3902
def r3903 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3903 : ¬ Reader r3903 :=
  refute_zero r3903 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3903
def r3904 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3904 : ¬ Reader r3904 :=
  refute_zero r3904 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3904
def r3905 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3905 : ¬ Reader r3905 :=
  refute_zero r3905 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3905
def r3906 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3906 : ¬ Reader r3906 :=
  refute_zero r3906 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3906
def r3907 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject3907 : ¬ Reader r3907 :=
  refute_zero r3907 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3907
def r3908 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject3908 : ¬ Reader r3908 :=
  refute_zero r3908 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3908
def r3909 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject3909 : ¬ Reader r3909 :=
  refute_zero r3909 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3909
def r3910 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject3910 : ¬ Reader r3910 :=
  refute_zero r3910 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3910
def r3911 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject3911 : ¬ Reader r3911 :=
  refute_zero r3911 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3911
def r3912 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject3912 : ¬ Reader r3912 :=
  refute_zero r3912 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3912
def r3913 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3913 : ¬ Reader r3913 :=
  refute_zero r3913 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3913
def r3914 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))) (.var 1)) (.var 1)))
theorem reject3914 : ¬ Reader r3914 :=
  refute_zero r3914 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3914
def r3915 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)) (.var 1)))
theorem reject3915 : ¬ Reader r3915 :=
  refute_zero r3915 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3915
def r3916 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)))
theorem reject3916 : ¬ Reader r3916 :=
  refute_zero r3916 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3916
def r3917 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3917 : ¬ Reader r3917 :=
  refute_zero r3917 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3917
def r3918 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3918 : ¬ Reader r3918 :=
  refute_zero r3918 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3918
def r3919 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))) (.var 1)) (.var 1)))
theorem reject3919 : ¬ Reader r3919 :=
  refute_zero r3919 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3919
def r3920 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)) (.var 1)))
theorem reject3920 : ¬ Reader r3920 :=
  refute_zero r3920 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3920
def r3921 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)) (.var 0)))
theorem reject3921 : ¬ Reader r3921 :=
  refute_zero r3921 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3921
def r3922 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3922 : ¬ Reader r3922 :=
  refute_zero r3922 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3922
def r3923 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3923 : ¬ Reader r3923 :=
  refute_zero r3923 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3923
def r3924 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3924 : ¬ Reader r3924 :=
  refute_zero r3924 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3924
def r3925 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3925 : ¬ Reader r3925 :=
  refute_zero r3925 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3925
def r3926 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject3926 : ¬ Reader r3926 :=
  refute_zero r3926 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3926
def r3927 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject3927 : ¬ Reader r3927 :=
  refute_zero r3927 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3927
def r3928 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3928 : ¬ Reader r3928 :=
  refute_zero r3928 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3928
def r3929 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 2))) (.lam (.var 2))))
theorem reject3929 : ¬ Reader r3929 :=
  refute_zero r3929 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3929
def r3930 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject3930 : ¬ Reader r3930 :=
  refute_zero r3930 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3930
def r3931 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject3931 : ¬ Reader r3931 :=
  refute_zero r3931 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3931
def r3932 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject3932 : ¬ Reader r3932 :=
  refute_zero r3932 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3932
def r3933 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3933 : ¬ Reader r3933 :=
  refute_zero r3933 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3933
def r3934 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3934 : ¬ Reader r3934 :=
  refute_zero r3934 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3934
def r3935 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.var 1)) (.lam (.var 2))))
theorem reject3935 : ¬ Reader r3935 :=
  refute_zero r3935 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3935
def r3936 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.lam (.var 2))) (.var 1)))
theorem reject3936 : ¬ Reader r3936 :=
  refute_zero r3936 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3936
def r3937 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 0))))
theorem reject3937 : ¬ Reader r3937 :=
  refute_zero r3937 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3937
def r3938 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 1)))
theorem reject3938 : ¬ Reader r3938 :=
  refute_zero r3938 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3938
def r3939 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.lam (.var 3))))) (.var 1)) (.var 1)))
theorem reject3939 : ¬ Reader r3939 :=
  refute_zero r3939 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3939
def r3940 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 1)))
theorem reject3940 : ¬ Reader r3940 :=
  refute_zero r3940 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3940
def r3941 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3941 : ¬ Reader r3941 :=
  refute_zero r3941 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3941
def r3942 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3942 : ¬ Reader r3942 :=
  refute_zero r3942 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3942
def r3943 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3943 : ¬ Reader r3943 :=
  refute_zero r3943 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3943
def r3944 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject3944 : ¬ Reader r3944 :=
  refute_zero r3944 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3944
def r3945 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject3945 : ¬ Reader r3945 :=
  refute_zero r3945 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3945
def r3946 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject3946 : ¬ Reader r3946 :=
  refute_zero r3946 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3946
def r3947 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3947 : ¬ Reader r3947 :=
  refute_zero r3947 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3947
def r3948 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3948 : ¬ Reader r3948 :=
  refute_zero r3948 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3948
def r3949 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3949 : ¬ Reader r3949 :=
  refute_zero r3949 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3949
def r3950 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3950 : ¬ Reader r3950 :=
  refute_zero r3950 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3950
def r3951 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3951 : ¬ Reader r3951 :=
  refute_zero r3951 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3951
def r3952 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3952 : ¬ Reader r3952 :=
  refute_zero r3952 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3952
def r3953 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject3953 : ¬ Reader r3953 :=
  refute_zero r3953 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3953
def r3954 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject3954 : ¬ Reader r3954 :=
  refute_zero r3954 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3954
def r3955 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject3955 : ¬ Reader r3955 :=
  refute_zero r3955 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3955
def r3956 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3956 : ¬ Reader r3956 :=
  refute_zero r3956 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3956
def r3957 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3957 : ¬ Reader r3957 :=
  refute_zero r3957 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3957
def r3958 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3958 : ¬ Reader r3958 :=
  refute_zero r3958 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3958
def r3959 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3959 : ¬ Reader r3959 :=
  refute_zero r3959 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3959
def r3960 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 0))) (.var 1)) (.var 1)))
theorem reject3960 : ¬ Reader r3960 :=
  refute_zero r3960 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3960
def r3961 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 0)) (.var 1)))
theorem reject3961 : ¬ Reader r3961 :=
  refute_zero r3961 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3961
def r3962 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 0)))
theorem reject3962 : ¬ Reader r3962 :=
  refute_zero r3962 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3962
def r3963 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3963 : ¬ Reader r3963 :=
  refute_zero r3963 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3963
def r3964 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3964 : ¬ Reader r3964 :=
  refute_zero r3964 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3964
def r3965 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3965 : ¬ Reader r3965 :=
  refute_zero r3965 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3965
def r3966 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3966 : ¬ Reader r3966 :=
  refute_zero r3966 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3966
def r3967 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3967 : ¬ Reader r3967 :=
  refute_zero r3967 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3967
def r3968 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3968 : ¬ Reader r3968 :=
  refute_zero r3968 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3968
def r3969 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3969 : ¬ Reader r3969 :=
  refute_zero r3969 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3969
def r3970 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3970 : ¬ Reader r3970 :=
  refute_zero r3970 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3970
def r3971 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3971 : ¬ Reader r3971 :=
  refute_zero r3971 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3971
def r3972 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3972 : ¬ Reader r3972 :=
  refute_zero r3972 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3972
def r3973 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject3973 : ¬ Reader r3973 :=
  refute_zero r3973 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3973
def r3974 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject3974 : ¬ Reader r3974 :=
  refute_zero r3974 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3974
def r3975 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject3975 : ¬ Reader r3975 :=
  refute_zero r3975 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3975
def r3976 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1))) (.var 1)))
theorem reject3976 : ¬ Reader r3976 :=
  refute_zero r3976 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3976
def r3977 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3977 : ¬ Reader r3977 :=
  refute_zero r3977 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3977
def r3978 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3978 : ¬ Reader r3978 :=
  refute_zero r3978 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3978
def r3979 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3979 : ¬ Reader r3979 :=
  refute_zero r3979 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3979
def r3980 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3980 : ¬ Reader r3980 :=
  refute_zero r3980 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3980
def r3981 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3981 : ¬ Reader r3981 :=
  refute_zero r3981 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3981
def r3982 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3982 : ¬ Reader r3982 :=
  refute_zero r3982 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3982
def r3983 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject3983 : ¬ Reader r3983 :=
  refute_zero r3983 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3983
def r3984 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject3984 : ¬ Reader r3984 :=
  refute_zero r3984 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3984
def r3985 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject3985 : ¬ Reader r3985 :=
  refute_zero r3985 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3985
def r3986 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject3986 : ¬ Reader r3986 :=
  refute_zero r3986 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3986
def r3987 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject3987 : ¬ Reader r3987 :=
  refute_zero r3987 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3987
def r3988 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1))) (.var 1))) (.var 1)))
theorem reject3988 : ¬ Reader r3988 :=
  refute_zero r3988 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3988
def r3989 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0))) (.var 1))) (.var 1)))
theorem reject3989 : ¬ Reader r3989 :=
  refute_zero r3989 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3989
def r3990 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0))) (.var 1)))
theorem reject3990 : ¬ Reader r3990 :=
  refute_zero r3990 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3990
def r3991 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)))
theorem reject3991 : ¬ Reader r3991 :=
  refute_zero r3991 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3991
def r3992 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1)) (.var 1))) (.var 1)))
theorem reject3992 : ¬ Reader r3992 :=
  refute_zero r3992 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3992
def r3993 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1)) (.var 1))) (.var 1)))
theorem reject3993 : ¬ Reader r3993 :=
  refute_zero r3993 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3993
def r3994 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)) (.var 1))) (.var 1)))
theorem reject3994 : ¬ Reader r3994 :=
  refute_zero r3994 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3994
def r3995 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0))) (.var 1)))
theorem reject3995 : ¬ Reader r3995 :=
  refute_zero r3995 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3995
def r3996 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))) (.var 0)))
theorem reject3996 : ¬ Reader r3996 :=
  refute_zero r3996 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3996
def r3997 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3997 : ¬ Reader r3997 :=
  refute_zero r3997 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3997
def r3998 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3998 : ¬ Reader r3998 :=
  refute_zero r3998 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3998
def r3999 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3999 : ¬ Reader r3999 :=
  refute_zero r3999 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3999
def r4000 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))) (.var 1)))
theorem reject4000 : ¬ Reader r4000 :=
  refute_zero r4000 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4000
def r4001 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject4001 : ¬ Reader r4001 :=
  refute_zero r4001 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4001
def r4002 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject4002 : ¬ Reader r4002 :=
  refute_zero r4002 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4002
def r4003 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject4003 : ¬ Reader r4003 :=
  refute_zero r4003 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4003
def r4004 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject4004 : ¬ Reader r4004 :=
  refute_zero r4004 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject4004
def r4005 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject4005 : ¬ Reader r4005 :=
  refute_zero r4005 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4005
def r4006 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject4006 : ¬ Reader r4006 :=
  refute_zero r4006 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4006
def r4007 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject4007 : ¬ Reader r4007 :=
  refute_zero r4007 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4007
def r4008 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject4008 : ¬ Reader r4008 :=
  refute_zero r4008 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4008
def r4009 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject4009 : ¬ Reader r4009 :=
  refute_zero r4009 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4009
def r4010 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1))) (.lam (.var 2))))
theorem reject4010 : ¬ Reader r4010 :=
  refute_zero r4010 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject4010
def r4011 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.lam (.var 2)))) (.var 1)))
theorem reject4011 : ¬ Reader r4011 :=
  refute_zero r4011 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4011
def r4012 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 0))))
theorem reject4012 : ¬ Reader r4012 :=
  refute_zero r4012 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4012
def r4013 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 1)))
theorem reject4013 : ¬ Reader r4013 :=
  refute_zero r4013 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4013
def r4014 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.lam (.var 3)))) (.var 1))) (.var 1)))
theorem reject4014 : ¬ Reader r4014 :=
  refute_zero r4014 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4014
def r4015 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 1)))
theorem reject4015 : ¬ Reader r4015 :=
  refute_zero r4015 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4015
def r4016 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject4016 : ¬ Reader r4016 :=
  refute_zero r4016 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4016
def r4017 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject4017 : ¬ Reader r4017 :=
  refute_zero r4017 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4017
def r4018 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject4018 : ¬ Reader r4018 :=
  refute_zero r4018 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4018
def r4019 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject4019 : ¬ Reader r4019 :=
  refute_zero r4019 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject4019
def r4020 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject4020 : ¬ Reader r4020 :=
  refute_zero r4020 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4020
def r4021 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject4021 : ¬ Reader r4021 :=
  refute_zero r4021 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4021
def r4022 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject4022 : ¬ Reader r4022 :=
  refute_zero r4022 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4022
def r4023 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject4023 : ¬ Reader r4023 :=
  refute_zero r4023 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4023
def r4024 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject4024 : ¬ Reader r4024 :=
  refute_zero r4024 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4024
def r4025 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1)) (.var 1))) (.var 1)))
theorem reject4025 : ¬ Reader r4025 :=
  refute_zero r4025 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4025
def r4026 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1))) (.var 1)))
theorem reject4026 : ¬ Reader r4026 :=
  refute_zero r4026 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4026
def r4027 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4027 : ¬ Reader r4027 :=
  refute_zero r4027 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject4027
def r4028 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject4028 : ¬ Reader r4028 :=
  refute_zero r4028 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject4028
def r4029 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject4029 : ¬ Reader r4029 :=
  refute_zero r4029 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject4029
def r4030 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject4030 : ¬ Reader r4030 :=
  refute_zero r4030 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject4030
def r4031 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1))) (.var 1)))
theorem reject4031 : ¬ Reader r4031 :=
  refute_zero r4031 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject4031
def r4032 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4032 : ¬ Reader r4032 :=
  refute_zero r4032 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4032
def r4033 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4033 : ¬ Reader r4033 :=
  refute_zero r4033 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4033
def r4034 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4034 : ¬ Reader r4034 :=
  refute_zero r4034 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4034
def r4035 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 0)) (.var 1))) (.var 1)))
theorem reject4035 : ¬ Reader r4035 :=
  refute_zero r4035 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4035
def r4036 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 0))) (.var 1)))
theorem reject4036 : ¬ Reader r4036 :=
  refute_zero r4036 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4036
def r4037 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 0)))
theorem reject4037 : ¬ Reader r4037 :=
  refute_zero r4037 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject4037
def r4038 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4038 : ¬ Reader r4038 :=
  refute_zero r4038 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4038
def r4039 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject4039 : ¬ Reader r4039 :=
  refute_zero r4039 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject4039
def r4040 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject4040 : ¬ Reader r4040 :=
  refute_zero r4040 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4040
def r4041 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject4041 : ¬ Reader r4041 :=
  refute_zero r4041 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4041
def r4042 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 1)))
theorem reject4042 : ¬ Reader r4042 :=
  refute_zero r4042 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4042
def r4043 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4043 : ¬ Reader r4043 :=
  refute_zero r4043 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject4043
def r4044 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4044 : ¬ Reader r4044 :=
  refute_zero r4044 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4044
def r4045 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4045 : ¬ Reader r4045 :=
  refute_zero r4045 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4045
def r4046 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject4046 : ¬ Reader r4046 :=
  refute_zero r4046 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject4046
def r4047 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4047 : ¬ Reader r4047 :=
  refute_zero r4047 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4047
def r4048 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject4048 : ¬ Reader r4048 :=
  refute_zero r4048 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4048
def r4049 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject4049 : ¬ Reader r4049 :=
  refute_zero r4049 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4049
def r4050 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject4050 : ¬ Reader r4050 :=
  refute_zero r4050 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4050
def r4051 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4051 : ¬ Reader r4051 :=
  refute_zero r4051 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4051
def r4052 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject4052 : ¬ Reader r4052 :=
  refute_zero r4052 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4052
def r4053 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject4053 : ¬ Reader r4053 :=
  refute_zero r4053 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4053
def r4054 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject4054 : ¬ Reader r4054 :=
  refute_zero r4054 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4054
def r4055 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject4055 : ¬ Reader r4055 :=
  refute_zero r4055 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4055
def r4056 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject4056 : ¬ Reader r4056 :=
  refute_zero r4056 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4056
def r4057 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject4057 : ¬ Reader r4057 :=
  refute_zero r4057 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4057
def r4058 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject4058 : ¬ Reader r4058 :=
  refute_zero r4058 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4058
def r4059 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject4059 : ¬ Reader r4059 :=
  refute_zero r4059 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4059
def r4060 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject4060 : ¬ Reader r4060 :=
  refute_zero r4060 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4060
def r4061 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject4061 : ¬ Reader r4061 :=
  refute_zero r4061 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4061
def r4062 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject4062 : ¬ Reader r4062 :=
  refute_zero r4062 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4062
def r4063 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)) (.var 1))))
theorem reject4063 : ¬ Reader r4063 :=
  refute_zero r4063 (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4063
def r4064 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)) (.var 1))))
theorem reject4064 : ¬ Reader r4064 :=
  refute_zero r4064 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4064
def r4065 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.var 1))))
theorem reject4065 : ¬ Reader r4065 :=
  refute_zero r4065 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4065
def r4066 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0))))
theorem reject4066 : ¬ Reader r4066 :=
  refute_zero r4066 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4066
def r4067 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4067 : ¬ Reader r4067 :=
  refute_zero r4067 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4067
def r4068 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4068 : ¬ Reader r4068 :=
  refute_zero r4068 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4068
def r4069 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)) (.var 1))))
theorem reject4069 : ¬ Reader r4069 :=
  refute_zero r4069 (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4069
def r4070 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.var 1))))
theorem reject4070 : ¬ Reader r4070 :=
  refute_zero r4070 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4070
def r4071 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.var 0))))
theorem reject4071 : ¬ Reader r4071 :=
  refute_zero r4071 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4071
def r4072 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject4072 : ¬ Reader r4072 :=
  refute_zero r4072 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4072
def r4073 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject4073 : ¬ Reader r4073 :=
  refute_zero r4073 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4073
def r4074 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject4074 : ¬ Reader r4074 :=
  refute_zero r4074 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4074
def r4075 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4075 : ¬ Reader r4075 :=
  refute_zero r4075 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4075
def r4076 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject4076 : ¬ Reader r4076 :=
  refute_zero r4076 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4076
def r4077 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject4077 : ¬ Reader r4077 :=
  refute_zero r4077 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4077
def r4078 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject4078 : ¬ Reader r4078 :=
  refute_zero r4078 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4078
def r4079 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject4079 : ¬ Reader r4079 :=
  refute_zero r4079 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4079
def r4080 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject4080 : ¬ Reader r4080 :=
  refute_zero r4080 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4080
def r4081 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject4081 : ¬ Reader r4081 :=
  refute_zero r4081 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4081
def r4082 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject4082 : ¬ Reader r4082 :=
  refute_zero r4082 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4082
def r4083 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject4083 : ¬ Reader r4083 :=
  refute_zero r4083 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4083
def r4084 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject4084 : ¬ Reader r4084 :=
  refute_zero r4084 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4084
def r4085 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1)) (.lam (.var 2)))))
theorem reject4085 : ¬ Reader r4085 :=
  refute_zero r4085 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4085
def r4086 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.lam (.var 2))) (.var 1))))
theorem reject4086 : ¬ Reader r4086 :=
  refute_zero r4086 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4086
def r4087 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0)))))
theorem reject4087 : ¬ Reader r4087 :=
  refute_zero r4087 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4087
def r4088 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1))))
theorem reject4088 : ¬ Reader r4088 :=
  refute_zero r4088 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4088
def r4089 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)) (.var 1))))
theorem reject4089 : ¬ Reader r4089 :=
  refute_zero r4089 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4089
def r4090 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1))))
theorem reject4090 : ¬ Reader r4090 :=
  refute_zero r4090 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4090
def r4091 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject4091 : ¬ Reader r4091 :=
  refute_zero r4091 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4091
def r4092 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject4092 : ¬ Reader r4092 :=
  refute_zero r4092 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4092
def r4093 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject4093 : ¬ Reader r4093 :=
  refute_zero r4093 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4093
def r4094 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject4094 : ¬ Reader r4094 :=
  refute_zero r4094 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4094
def r4095 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject4095 : ¬ Reader r4095 :=
  refute_zero r4095 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4095
def r4096 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject4096 : ¬ Reader r4096 :=
  refute_zero r4096 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4096
def r4097 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject4097 : ¬ Reader r4097 :=
  refute_zero r4097 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4097
def r4098 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject4098 : ¬ Reader r4098 :=
  refute_zero r4098 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4098
def r4099 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject4099 : ¬ Reader r4099 :=
  refute_zero r4099 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4099
def r4100 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4100 : ¬ Reader r4100 :=
  refute_zero r4100 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4100
def r4101 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4101 : ¬ Reader r4101 :=
  refute_zero r4101 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4101
def r4102 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4102 : ¬ Reader r4102 :=
  refute_zero r4102 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4102
def r4103 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject4103 : ¬ Reader r4103 :=
  refute_zero r4103 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4103
def r4104 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject4104 : ¬ Reader r4104 :=
  refute_zero r4104 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4104
def r4105 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject4105 : ¬ Reader r4105 :=
  refute_zero r4105 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4105
def r4106 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4106 : ¬ Reader r4106 :=
  refute_zero r4106 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject4106
def r4107 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4107 : ¬ Reader r4107 :=
  refute_zero r4107 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4107
def r4108 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4108 : ¬ Reader r4108 :=
  refute_zero r4108 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4108
def r4109 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4109 : ¬ Reader r4109 :=
  refute_zero r4109 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4109
def r4110 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 0)) (.var 1)) (.var 1))))
theorem reject4110 : ¬ Reader r4110 :=
  refute_zero r4110 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4110
def r4111 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 0)) (.var 1))))
theorem reject4111 : ¬ Reader r4111 :=
  refute_zero r4111 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4111
def r4112 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 0))))
theorem reject4112 : ¬ Reader r4112 :=
  refute_zero r4112 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4112
def r4113 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4113 : ¬ Reader r4113 :=
  refute_zero r4113 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4113
def r4114 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject4114 : ¬ Reader r4114 :=
  refute_zero r4114 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4114
def r4115 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject4115 : ¬ Reader r4115 :=
  refute_zero r4115 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4115
def r4116 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject4116 : ¬ Reader r4116 :=
  refute_zero r4116 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4116
def r4117 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 1))))
theorem reject4117 : ¬ Reader r4117 :=
  refute_zero r4117 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4117
def r4118 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4118 : ¬ Reader r4118 :=
  refute_zero r4118 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject4118
def r4119 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4119 : ¬ Reader r4119 :=
  refute_zero r4119 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4119
def r4120 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4120 : ¬ Reader r4120 :=
  refute_zero r4120 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4120
def r4121 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1)) (.var 1)) (.var 1))))
theorem reject4121 : ¬ Reader r4121 :=
  refute_zero r4121 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject4121
end Blc.Firstop.JBare4
