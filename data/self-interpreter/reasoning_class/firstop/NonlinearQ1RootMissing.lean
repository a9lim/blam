import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1RootMissing
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r820 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject820 : ¬ Reader r820 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject820

def r821 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject821 : ¬ Reader r821 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject821

def r822 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject822 : ¬ Reader r822 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject822

def r823 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject823 : ¬ Reader r823 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject823

def r824 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.app (.var 0) (.var 1)))))
theorem reject824 : ¬ Reader r824 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject824

def r825 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.app (.var 1) (.var 0)))))
theorem reject825 : ¬ Reader r825 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject825

def r826 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.app (.var 2) (.var 1)))))
theorem reject826 : ¬ Reader r826 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject826

def r827 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.app (.var 1) (.var 2)))))
theorem reject827 : ¬ Reader r827 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject827

def r828 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.app (.var 2) (.var 0)))))
theorem reject828 : ¬ Reader r828 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject828

def r829 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.app (.var 0) (.var 2)))))
theorem reject829 : ¬ Reader r829 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject829

def r830 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 2) (.var 0)) (.var 1))))
theorem reject830 : ¬ Reader r830 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject830

def r831 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 0) (.var 2)) (.var 1))))
theorem reject831 : ¬ Reader r831 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject831

def r832 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.var 0))))
theorem reject832 : ¬ Reader r832 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject832

def r833 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.var 0))))
theorem reject833 : ¬ Reader r833 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject833

def r834 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 0) (.var 1)) (.var 2))))
theorem reject834 : ¬ Reader r834 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject834

def r835 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 1) (.var 0)) (.var 2))))
theorem reject835 : ¬ Reader r835 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject835

def r836 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.app (.var 1) (.var 1)))))
theorem reject836 : ¬ Reader r836 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject836

def r837 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.app (.var 2) (.var 1)))))
theorem reject837 : ¬ Reader r837 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject837

def r838 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.app (.var 1) (.var 2)))))
theorem reject838 : ¬ Reader r838 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject838

def r839 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.var 1))))
theorem reject839 : ¬ Reader r839 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject839

def r840 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.var 1))))
theorem reject840 : ¬ Reader r840 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject840

def r841 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 1) (.var 1)) (.var 2))))
theorem reject841 : ¬ Reader r841 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject841

def r842 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.lam (.lam (.var 3))))))
theorem reject842 : ¬ Reader r842 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject842

def r843 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))
theorem reject843 : ¬ Reader r843 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject843

def r844 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.app (.lam (.var 0)) (.var 1)))))
theorem reject844 : ¬ Reader r844 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject844

def r845 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))
theorem reject845 : ¬ Reader r845 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject845

def r846 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.app (.lam (.var 0)) (.var 2)))))
theorem reject846 : ¬ Reader r846 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject846

def r847 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.lam (.var 0)) (.app (.var 2) (.var 1)))))
theorem reject847 : ¬ Reader r847 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject847

def r848 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.lam (.var 0)) (.app (.var 1) (.var 2)))))
theorem reject848 : ¬ Reader r848 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject848

def r849 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))
theorem reject849 : ¬ Reader r849 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject849

def r850 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))
theorem reject850 : ¬ Reader r850 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject850

def r851 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))
theorem reject851 : ¬ Reader r851 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject851

def r852 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.lam (.var 0)) (.var 2)) (.var 1))))
theorem reject852 : ¬ Reader r852 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject852

def r853 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.lam (.lam (.var 3))) (.var 2))))
theorem reject853 : ¬ Reader r853 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject853

def r854 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))
theorem reject854 : ¬ Reader r854 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject854

def r855 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.app (.lam (.var 0)) (.var 1)) (.var 2))))
theorem reject855 : ¬ Reader r855 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject855

def r856 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject856 : ¬ Reader r856 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject856

def r857 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject857 : ¬ Reader r857 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject857

def r858 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject858 : ¬ Reader r858 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject858

def r859 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject859 : ¬ Reader r859 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject859

def r860 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject860 : ¬ Reader r860 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject860

def r861 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject861 : ¬ Reader r861 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject861

def r862 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject862 : ¬ Reader r862 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject862

def r863 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject863 : ¬ Reader r863 := by
  exact absent_reduct true 12 3 (by decide) (by decide)
#print axioms reject863

def r864 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject864 : ¬ Reader r864 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject864

def r865 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 0))))
theorem reject865 : ¬ Reader r865 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject865

def r866 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 0) (.var 2))))
theorem reject866 : ¬ Reader r866 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject866

def r867 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject867 : ¬ Reader r867 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject867

def r868 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject868 : ¬ Reader r868 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject868

def r869 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 2) (.var 1))))
theorem reject869 : ¬ Reader r869 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject869

def r870 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.app (.var 1) (.var 2))))
theorem reject870 : ¬ Reader r870 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject870

def r871 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject871 : ¬ Reader r871 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject871

def r872 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject872 : ¬ Reader r872 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject872

def r874 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject874 : ¬ Reader r874 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject874

def r875 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject875 : ¬ Reader r875 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject875

def r876 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject876 : ¬ Reader r876 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject876

def r877 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject877 : ¬ Reader r877 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject877

def r878 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject878 : ¬ Reader r878 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject878

def r879 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject879 : ¬ Reader r879 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject879

def r880 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject880 : ¬ Reader r880 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject880

def r881 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject881 : ¬ Reader r881 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject881

def r882 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject882 : ¬ Reader r882 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject882

def r883 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject883 : ¬ Reader r883 := by
  exact absent_reduct true 14 3 (by decide) (by decide)
#print axioms reject883

def r886 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)))
theorem reject886 : ¬ Reader r886 := by
  exact absent_reduct true 14 3 (by decide) (by decide)
#print axioms reject886

def r1360 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))) (.app (.var 2) (.var 1))))
theorem reject1360 : ¬ Reader r1360 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject1360

def r1361 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))) (.app (.var 1) (.var 2))))
theorem reject1361 : ¬ Reader r1361 := by
  exact absent_reduct true 6 3 (by decide) (by decide)
#print axioms reject1361

def r1365 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.lam (.app (.var 2) (.var 2))))))) (.var 2)))
theorem reject1365 : ¬ Reader r1365 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1365

def r1371 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1371 : ¬ Reader r1371 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1371

def r1372 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1372 : ¬ Reader r1372 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1372

def r1398 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 2) (.var 1))))
theorem reject1398 : ¬ Reader r1398 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1398

def r1399 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.var 2))))
theorem reject1399 : ¬ Reader r1399 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1399

def r1426 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1426 : ¬ Reader r1426 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1426

def r1427 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1427 : ¬ Reader r1427 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1427

def r1430 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))))) (.var 2)))
theorem reject1430 : ¬ Reader r1430 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject1430

def r1469 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 2) (.var 1))))
theorem reject1469 : ¬ Reader r1469 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1469

def r1470 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1)))))))) (.app (.var 1) (.var 2))))
theorem reject1470 : ¬ Reader r1470 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject1470

def r1649 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 1)))))) (.var 2)))
theorem reject1649 : ¬ Reader r1649 := by
  exact absent_reduct true 8 3 (by decide) (by decide)
#print axioms reject1649

def r1882 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))))))) (.var 2)))
theorem reject1882 : ¬ Reader r1882 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1882

def r1883 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))))))) (.var 2)))
theorem reject1883 : ¬ Reader r1883 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject1883

end Blc.FirstopNonlinear.Q1RootMissing
