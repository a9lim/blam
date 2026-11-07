import LinearCertificates
namespace Blc.Firstop.JBare3
open Term SelfintClass
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r2887 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2887 : ¬ Reader r2887 :=
  refute_zero r2887 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2887
def r2888 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2888 : ¬ Reader r2888 :=
  refute_zero r2888 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2888
def r2889 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject2889 : ¬ Reader r2889 :=
  refute_zero r2889 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2889
def r2890 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject2890 : ¬ Reader r2890 :=
  refute_zero r2890 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2890
def r2891 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject2891 : ¬ Reader r2891 :=
  refute_zero r2891 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2891
def r2892 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject2892 : ¬ Reader r2892 :=
  refute_zero r2892 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2892
def r2893 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject2893 : ¬ Reader r2893 :=
  refute_zero r2893 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2893
def r2894 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2894 : ¬ Reader r2894 :=
  refute_zero r2894 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2894
def r2895 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2895 : ¬ Reader r2895 :=
  refute_zero r2895 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2895
def r2896 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject2896 : ¬ Reader r2896 :=
  refute_zero r2896 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2896
def r2897 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject2897 : ¬ Reader r2897 :=
  refute_zero r2897 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2897
def r2898 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject2898 : ¬ Reader r2898 :=
  refute_zero r2898 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2898
def r2899 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2899 : ¬ Reader r2899 :=
  refute_zero r2899 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2899
def r2900 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2900 : ¬ Reader r2900 :=
  refute_zero r2900 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2900
def r2901 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2901 : ¬ Reader r2901 :=
  refute_zero r2901 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2901
def r2902 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2902 : ¬ Reader r2902 :=
  refute_zero r2902 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2902
def r2903 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject2903 : ¬ Reader r2903 :=
  refute_zero r2903 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2903
def r2904 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2904 : ¬ Reader r2904 :=
  refute_zero r2904 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2904
def r2905 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2905 : ¬ Reader r2905 :=
  refute_zero r2905 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2905
def r2906 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.lam (.app (.var 2) (.var 2)))))
theorem reject2906 : ¬ Reader r2906 :=
  refute_zero r2906 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2906
def r2907 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject2907 : ¬ Reader r2907 :=
  refute_zero r2907 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2907
def r2908 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject2908 : ¬ Reader r2908 :=
  refute_zero r2908 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2908
def r2909 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject2909 : ¬ Reader r2909 :=
  refute_zero r2909 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2909
def r2910 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject2910 : ¬ Reader r2910 :=
  refute_zero r2910 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2910
def r2911 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject2911 : ¬ Reader r2911 :=
  refute_zero r2911 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2911
def r2912 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject2912 : ¬ Reader r2912 :=
  refute_zero r2912 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2912
def r2913 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2913 : ¬ Reader r2913 :=
  refute_zero r2913 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2913
def r2914 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject2914 : ¬ Reader r2914 :=
  refute_zero r2914 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2914
def r2915 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject2915 : ¬ Reader r2915 :=
  refute_zero r2915 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2915
def r2916 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject2916 : ¬ Reader r2916 :=
  refute_zero r2916 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2916
def r2917 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.app (.var 2) (.var 2)))) (.var 1)))
theorem reject2917 : ¬ Reader r2917 :=
  refute_zero r2917 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.var 1) (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2917
def r2918 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2918 : ¬ Reader r2918 :=
  refute_zero r2918 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2918
def r2919 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)))
theorem reject2919 : ¬ Reader r2919 :=
  refute_zero r2919 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2919
def r2920 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject2920 : ¬ Reader r2920 :=
  refute_zero r2920 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2920
def r2921 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject2921 : ¬ Reader r2921 :=
  refute_zero r2921 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2921
def r2922 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)))
theorem reject2922 : ¬ Reader r2922 :=
  refute_zero r2922 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2922
def r2923 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)))
theorem reject2923 : ¬ Reader r2923 :=
  refute_zero r2923 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2923
def r2924 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject2924 : ¬ Reader r2924 :=
  refute_zero r2924 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2924
def r2925 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))
theorem reject2925 : ¬ Reader r2925 :=
  refute_zero r2925 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2925
def r2926 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2926 : ¬ Reader r2926 :=
  refute_zero r2926 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2926
def r2927 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2927 : ¬ Reader r2927 :=
  refute_zero r2927 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2927
def r2928 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2928 : ¬ Reader r2928 :=
  refute_zero r2928 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2928
def r2929 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2929 : ¬ Reader r2929 :=
  refute_zero r2929 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2929
def r2930 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject2930 : ¬ Reader r2930 :=
  refute_zero r2930 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2930
def r2931 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject2931 : ¬ Reader r2931 :=
  refute_zero r2931 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2931
def r2932 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject2932 : ¬ Reader r2932 :=
  refute_zero r2932 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2932
def r2933 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject2933 : ¬ Reader r2933 :=
  refute_zero r2933 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2933
def r2934 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject2934 : ¬ Reader r2934 :=
  refute_zero r2934 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2934
def r2935 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject2935 : ¬ Reader r2935 :=
  refute_zero r2935 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2935
def r2936 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.var 2) (.var 2)))) (.var 1)) (.var 1)))
theorem reject2936 : ¬ Reader r2936 :=
  refute_zero r2936 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2936
def r2937 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject2937 : ¬ Reader r2937 :=
  refute_zero r2937 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2937
def r2938 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject2938 : ¬ Reader r2938 :=
  refute_zero r2938 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2938
def r2939 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)) (.var 1)))
theorem reject2939 : ¬ Reader r2939 :=
  refute_zero r2939 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2939
def r2940 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)) (.var 1)))
theorem reject2940 : ¬ Reader r2940 :=
  refute_zero r2940 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2940
def r2941 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)) (.var 1)))
theorem reject2941 : ¬ Reader r2941 :=
  refute_zero r2941 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2941
def r2942 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)) (.var 1)))
theorem reject2942 : ¬ Reader r2942 :=
  refute_zero r2942 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2942
def r2943 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.var 1)))
theorem reject2943 : ¬ Reader r2943 :=
  refute_zero r2943 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2943
def r2944 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)))
theorem reject2944 : ¬ Reader r2944 :=
  refute_zero r2944 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2944
def r2945 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.var 1)))
theorem reject2945 : ¬ Reader r2945 :=
  refute_zero r2945 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2945
def r2946 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 0)))
theorem reject2946 : ¬ Reader r2946 :=
  refute_zero r2946 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2946
def r2947 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2947 : ¬ Reader r2947 :=
  refute_zero r2947 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2947
def r2948 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2948 : ¬ Reader r2948 :=
  refute_zero r2948 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2948
def r2949 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2949 : ¬ Reader r2949 :=
  refute_zero r2949 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2949
def r2950 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2950 : ¬ Reader r2950 :=
  refute_zero r2950 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2950
def r2951 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject2951 : ¬ Reader r2951 :=
  refute_zero r2951 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2951
def r2952 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2952 : ¬ Reader r2952 :=
  refute_zero r2952 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2952
def r2953 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2953 : ¬ Reader r2953 :=
  refute_zero r2953 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2953
def r2954 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject2954 : ¬ Reader r2954 :=
  refute_zero r2954 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2954
def r2955 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 1)))
theorem reject2955 : ¬ Reader r2955 :=
  refute_zero r2955 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2955
def r2956 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject2956 : ¬ Reader r2956 :=
  refute_zero r2956 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2956
def r2957 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject2957 : ¬ Reader r2957 :=
  refute_zero r2957 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2957
def r2958 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject2958 : ¬ Reader r2958 :=
  refute_zero r2958 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2958
def r2959 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject2959 : ¬ Reader r2959 :=
  refute_zero r2959 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2959
def r2960 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2960 : ¬ Reader r2960 :=
  refute_zero r2960 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2960
def r2961 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2961 : ¬ Reader r2961 :=
  refute_zero r2961 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2961
def r2962 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2962 : ¬ Reader r2962 :=
  refute_zero r2962 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2962
def r2963 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject2963 : ¬ Reader r2963 :=
  refute_zero r2963 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2963
def r2964 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject2964 : ¬ Reader r2964 :=
  refute_zero r2964 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2964
def r2965 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))))
theorem reject2965 : ¬ Reader r2965 :=
  refute_zero r2965 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2965
def r2966 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject2966 : ¬ Reader r2966 :=
  refute_zero r2966 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2966
def r2967 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject2967 : ¬ Reader r2967 :=
  refute_zero r2967 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2967
def r2968 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject2968 : ¬ Reader r2968 :=
  refute_zero r2968 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2968
def r2969 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject2969 : ¬ Reader r2969 :=
  refute_zero r2969 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2969
def r2970 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject2970 : ¬ Reader r2970 :=
  refute_zero r2970 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2970
def r2971 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject2971 : ¬ Reader r2971 :=
  refute_zero r2971 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2971
def r2972 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject2972 : ¬ Reader r2972 :=
  refute_zero r2972 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2972
def r2973 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject2973 : ¬ Reader r2973 :=
  refute_zero r2973 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2973
def r2974 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2974 : ¬ Reader r2974 :=
  refute_zero r2974 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2974
def r2975 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2975 : ¬ Reader r2975 :=
  refute_zero r2975 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2975
def r2976 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2976 : ¬ Reader r2976 :=
  refute_zero r2976 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2976
def r2977 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2977 : ¬ Reader r2977 :=
  refute_zero r2977 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2977
def r2978 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject2978 : ¬ Reader r2978 :=
  refute_zero r2978 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2978
def r2979 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject2979 : ¬ Reader r2979 :=
  refute_zero r2979 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2979
def r2980 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject2980 : ¬ Reader r2980 :=
  refute_zero r2980 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2980
def r2981 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject2981 : ¬ Reader r2981 :=
  refute_zero r2981 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2981
def r2982 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject2982 : ¬ Reader r2982 :=
  refute_zero r2982 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2982
def r2983 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject2983 : ¬ Reader r2983 :=
  refute_zero r2983 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2983
def r2984 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject2984 : ¬ Reader r2984 :=
  refute_zero r2984 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2984
def r2985 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject2985 : ¬ Reader r2985 :=
  refute_zero r2985 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2985
def r2986 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.var 2))))
theorem reject2986 : ¬ Reader r2986 :=
  refute_zero r2986 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2986
def r2987 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject2987 : ¬ Reader r2987 :=
  refute_zero r2987 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2987
def r2988 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject2988 : ¬ Reader r2988 :=
  refute_zero r2988 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2988
def r2989 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject2989 : ¬ Reader r2989 :=
  refute_zero r2989 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2989
def r2990 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.lam (.var 3)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2990 : ¬ Reader r2990 :=
  refute_zero r2990 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2990
def r2991 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2991 : ¬ Reader r2991 :=
  refute_zero r2991 (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2991
def r2992 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject2992 : ¬ Reader r2992 :=
  refute_zero r2992 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2992
def r2993 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject2993 : ¬ Reader r2993 :=
  refute_zero r2993 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2993
def r2994 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.var 2))))
theorem reject2994 : ¬ Reader r2994 :=
  refute_zero r2994 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2994
def r2995 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))) (.var 1)))
theorem reject2995 : ¬ Reader r2995 :=
  refute_zero r2995 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2995
def r2996 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 0))))
theorem reject2996 : ¬ Reader r2996 :=
  refute_zero r2996 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2996
def r2997 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 1)))
theorem reject2997 : ¬ Reader r2997 :=
  refute_zero r2997 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2997
def r2998 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject2998 : ¬ Reader r2998 :=
  refute_zero r2998 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2998
def r2999 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject2999 : ¬ Reader r2999 :=
  refute_zero r2999 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2999
def r3000 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)) (.var 1)))
theorem reject3000 : ¬ Reader r3000 :=
  refute_zero r3000 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3000
def r3001 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 1)))
theorem reject3001 : ¬ Reader r3001 :=
  refute_zero r3001 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3001
def r3002 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3002 : ¬ Reader r3002 :=
  refute_zero r3002 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3002
def r3003 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 1)))
theorem reject3003 : ¬ Reader r3003 :=
  refute_zero r3003 (.app (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3003
def r3004 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3004 : ¬ Reader r3004 :=
  refute_zero r3004 (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3004
def r3005 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3005 : ¬ Reader r3005 :=
  refute_zero r3005 (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3005
def r3006 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3006 : ¬ Reader r3006 :=
  refute_zero r3006 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3006
def r3007 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject3007 : ¬ Reader r3007 :=
  refute_zero r3007 (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject3007
def r3008 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject3008 : ¬ Reader r3008 :=
  refute_zero r3008 (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3008
def r3009 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject3009 : ¬ Reader r3009 :=
  refute_zero r3009 (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3009
def r3010 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject3010 : ¬ Reader r3010 :=
  refute_zero r3010 (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3010
def r3011 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3011 : ¬ Reader r3011 :=
  refute_zero r3011 (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3011
def r3012 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3012 : ¬ Reader r3012 :=
  refute_zero r3012 (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3012
def r3013 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject3013 : ¬ Reader r3013 :=
  refute_zero r3013 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3013
def r3014 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject3014 : ¬ Reader r3014 :=
  refute_zero r3014 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3014
def r3015 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject3015 : ¬ Reader r3015 :=
  refute_zero r3015 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3015
def r3016 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3016 : ¬ Reader r3016 :=
  refute_zero r3016 (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject3016
def r3017 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3017 : ¬ Reader r3017 :=
  refute_zero r3017 (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3017
def r3018 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3018 : ¬ Reader r3018 :=
  refute_zero r3018 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3018
def r3019 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3019 : ¬ Reader r3019 :=
  refute_zero r3019 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3019
def r3020 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3020 : ¬ Reader r3020 :=
  refute_zero r3020 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3020
def r3021 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3021 : ¬ Reader r3021 :=
  refute_zero r3021 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3021
def r3022 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3022 : ¬ Reader r3022 :=
  refute_zero r3022 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3022
def r3023 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3023 : ¬ Reader r3023 :=
  refute_zero r3023 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3023
def r3024 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3024 : ¬ Reader r3024 :=
  refute_zero r3024 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3024
def r3025 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3025 : ¬ Reader r3025 :=
  refute_zero r3025 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3025
def r3026 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 0)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3026 : ¬ Reader r3026 :=
  refute_zero r3026 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3026
def r3027 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 0)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3027 : ¬ Reader r3027 :=
  refute_zero r3027 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3027
def r3028 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject3028 : ¬ Reader r3028 :=
  refute_zero r3028 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3028
def r3029 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject3029 : ¬ Reader r3029 :=
  refute_zero r3029 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3029
def r3030 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject3030 : ¬ Reader r3030 :=
  refute_zero r3030 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3030
def r3031 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject3031 : ¬ Reader r3031 :=
  refute_zero r3031 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3031
def r3032 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject3032 : ¬ Reader r3032 :=
  refute_zero r3032 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3032
def r3033 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject3033 : ¬ Reader r3033 :=
  refute_zero r3033 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3033
def r3034 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 0) (.var 1))) (.var 1)) (.var 1)))
theorem reject3034 : ¬ Reader r3034 :=
  refute_zero r3034 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3034
def r3035 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 0))) (.var 1)) (.var 1)))
theorem reject3035 : ¬ Reader r3035 :=
  refute_zero r3035 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3035
def r3036 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 0)) (.var 1)))
theorem reject3036 : ¬ Reader r3036 :=
  refute_zero r3036 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3036
def r3037 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))
theorem reject3037 : ¬ Reader r3037 :=
  refute_zero r3037 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3037
def r3038 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3038 : ¬ Reader r3038 :=
  refute_zero r3038 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3038
def r3039 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3039 : ¬ Reader r3039 :=
  refute_zero r3039 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3039
def r3040 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3040 : ¬ Reader r3040 :=
  refute_zero r3040 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3040
def r3041 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject3041 : ¬ Reader r3041 :=
  refute_zero r3041 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3041
def r3042 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject3042 : ¬ Reader r3042 :=
  refute_zero r3042 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3042
def r3043 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3043 : ¬ Reader r3043 :=
  refute_zero r3043 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3043
def r3044 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 2))) (.lam (.var 2))))
theorem reject3044 : ¬ Reader r3044 :=
  refute_zero r3044 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3044
def r3045 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject3045 : ¬ Reader r3045 :=
  refute_zero r3045 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3045
def r3046 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject3046 : ¬ Reader r3046 :=
  refute_zero r3046 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3046
def r3047 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject3047 : ¬ Reader r3047 :=
  refute_zero r3047 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3047
def r3048 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3048 : ¬ Reader r3048 :=
  refute_zero r3048 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3048
def r3049 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3049 : ¬ Reader r3049 :=
  refute_zero r3049 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3049
def r3050 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject3050 : ¬ Reader r3050 :=
  refute_zero r3050 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1))) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3050
def r3051 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject3051 : ¬ Reader r3051 :=
  refute_zero r3051 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3051
def r3052 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3052 : ¬ Reader r3052 :=
  refute_zero r3052 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3052
def r3053 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3053 : ¬ Reader r3053 :=
  refute_zero r3053 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3053
def r3054 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.lam (.var 3)))) (.var 1)) (.var 1)))
theorem reject3054 : ¬ Reader r3054 :=
  refute_zero r3054 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3054
def r3055 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3055 : ¬ Reader r3055 :=
  refute_zero r3055 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3055
def r3056 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3056 : ¬ Reader r3056 :=
  refute_zero r3056 (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject3056
def r3057 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3057 : ¬ Reader r3057 :=
  refute_zero r3057 (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3057
def r3058 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3058 : ¬ Reader r3058 :=
  refute_zero r3058 (.app (.app (.var 1) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3058
def r3059 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3059 : ¬ Reader r3059 :=
  refute_zero r3059 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3059
def r3060 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3060 : ¬ Reader r3060 :=
  refute_zero r3060 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3060
def r3061 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3061 : ¬ Reader r3061 :=
  refute_zero r3061 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3061
def r3062 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3062 : ¬ Reader r3062 :=
  refute_zero r3062 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3062
def r3063 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3063 : ¬ Reader r3063 :=
  refute_zero r3063 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3063
def r3064 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3064 : ¬ Reader r3064 :=
  refute_zero r3064 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3064
def r3065 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3065 : ¬ Reader r3065 :=
  refute_zero r3065 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3065
def r3066 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3066 : ¬ Reader r3066 :=
  refute_zero r3066 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3066
def r3067 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)) (.var 1)))
theorem reject3067 : ¬ Reader r3067 :=
  refute_zero r3067 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3067
def r3068 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3068 : ¬ Reader r3068 :=
  refute_zero r3068 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3068
def r3069 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 2))))
theorem reject3069 : ¬ Reader r3069 :=
  refute_zero r3069 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3069
def r3070 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.var 1)) (.lam (.var 2))) (.var 1)))
theorem reject3070 : ¬ Reader r3070 :=
  refute_zero r3070 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3070
def r3071 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.lam (.var 2))) (.var 1)) (.var 1)))
theorem reject3071 : ¬ Reader r3071 :=
  refute_zero r3071 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.lam (.var 1))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3071
def r3072 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3072 : ¬ Reader r3072 :=
  refute_zero r3072 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3072
def r3073 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3073 : ¬ Reader r3073 :=
  refute_zero r3073 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3073
def r3074 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3074 : ¬ Reader r3074 :=
  refute_zero r3074 (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3074
def r3075 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3075 : ¬ Reader r3075 :=
  refute_zero r3075 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3075
def r3076 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3076 : ¬ Reader r3076 :=
  refute_zero r3076 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3076
def r3077 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3077 : ¬ Reader r3077 :=
  refute_zero r3077 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3077
def r3078 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3078 : ¬ Reader r3078 :=
  refute_zero r3078 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3078
def r3079 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 0)) (.var 1)) (.var 1)))
theorem reject3079 : ¬ Reader r3079 :=
  refute_zero r3079 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3079
def r3080 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 0)) (.var 1)))
theorem reject3080 : ¬ Reader r3080 :=
  refute_zero r3080 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3080
def r3081 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)) (.var 0)))
theorem reject3081 : ¬ Reader r3081 :=
  refute_zero r3081 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3081
def r3082 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 0)) (.var 1)) (.var 1)))
theorem reject3082 : ¬ Reader r3082 :=
  refute_zero r3082 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3082
def r3083 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 0)) (.var 1)))
theorem reject3083 : ¬ Reader r3083 :=
  refute_zero r3083 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3083
def r3084 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 0)))
theorem reject3084 : ¬ Reader r3084 :=
  refute_zero r3084 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3084
def r3085 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3085 : ¬ Reader r3085 :=
  refute_zero r3085 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3085
def r3086 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3086 : ¬ Reader r3086 :=
  refute_zero r3086 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3086
def r3087 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject3087 : ¬ Reader r3087 :=
  refute_zero r3087 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3087
def r3088 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject3088 : ¬ Reader r3088 :=
  refute_zero r3088 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3088
def r3089 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject3089 : ¬ Reader r3089 :=
  refute_zero r3089 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3089
def r3090 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.lam (.var 0))))
theorem reject3090 : ¬ Reader r3090 :=
  refute_zero r3090 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3090
def r3091 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 0))) (.var 1)))
theorem reject3091 : ¬ Reader r3091 :=
  refute_zero r3091 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3091
def r3092 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 0))) (.var 1)) (.var 1)))
theorem reject3092 : ¬ Reader r3092 :=
  refute_zero r3092 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3092
def r3093 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3093 : ¬ Reader r3093 :=
  refute_zero r3093 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3093
def r3094 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3094 : ¬ Reader r3094 :=
  refute_zero r3094 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3094
def r3095 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3095 : ¬ Reader r3095 :=
  refute_zero r3095 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3095
def r3096 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3096 : ¬ Reader r3096 :=
  refute_zero r3096 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3096
def r3097 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3097 : ¬ Reader r3097 :=
  refute_zero r3097 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3097
def r3098 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3098 : ¬ Reader r3098 :=
  refute_zero r3098 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3098
def r3099 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3099 : ¬ Reader r3099 :=
  refute_zero r3099 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3099
def r3100 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3100 : ¬ Reader r3100 :=
  refute_zero r3100 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3100
def r3101 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)) (.var 1)))
theorem reject3101 : ¬ Reader r3101 :=
  refute_zero r3101 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3101
def r3102 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3102 : ¬ Reader r3102 :=
  refute_zero r3102 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3102
def r3103 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3103 : ¬ Reader r3103 :=
  refute_zero r3103 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3103
def r3104 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3104 : ¬ Reader r3104 :=
  refute_zero r3104 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3104
def r3105 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject3105 : ¬ Reader r3105 :=
  refute_zero r3105 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3105
def r3106 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject3106 : ¬ Reader r3106 :=
  refute_zero r3106 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3106
def r3107 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject3107 : ¬ Reader r3107 :=
  refute_zero r3107 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3107
def r3108 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject3108 : ¬ Reader r3108 :=
  refute_zero r3108 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3108
def r3109 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3109 : ¬ Reader r3109 :=
  refute_zero r3109 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3109
def r3110 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3110 : ¬ Reader r3110 :=
  refute_zero r3110 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3110
def r3111 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 2))))
theorem reject3111 : ¬ Reader r3111 :=
  refute_zero r3111 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3111
def r3112 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.var 1)))
theorem reject3112 : ¬ Reader r3112 :=
  refute_zero r3112 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3112
def r3113 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.var 1)))
theorem reject3113 : ¬ Reader r3113 :=
  refute_zero r3113 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3113
def r3114 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3114 : ¬ Reader r3114 :=
  refute_zero r3114 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3114
def r3115 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3115 : ¬ Reader r3115 :=
  refute_zero r3115 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3115
def r3116 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3116 : ¬ Reader r3116 :=
  refute_zero r3116 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3116
def r3117 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3117 : ¬ Reader r3117 :=
  refute_zero r3117 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3117
def r3118 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject3118 : ¬ Reader r3118 :=
  refute_zero r3118 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3118
def r3119 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3119 : ¬ Reader r3119 :=
  refute_zero r3119 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3119
def r3120 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3120 : ¬ Reader r3120 :=
  refute_zero r3120 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3120
def r3121 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.lam (.app (.var 2) (.var 2)))))
theorem reject3121 : ¬ Reader r3121 :=
  refute_zero r3121 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3121
def r3122 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject3122 : ¬ Reader r3122 :=
  refute_zero r3122 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3122
def r3123 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject3123 : ¬ Reader r3123 :=
  refute_zero r3123 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3123
def r3124 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject3124 : ¬ Reader r3124 :=
  refute_zero r3124 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject3124
def r3125 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject3125 : ¬ Reader r3125 :=
  refute_zero r3125 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3125
def r3126 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject3126 : ¬ Reader r3126 :=
  refute_zero r3126 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3126
def r3127 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject3127 : ¬ Reader r3127 :=
  refute_zero r3127 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3127
def r3128 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3128 : ¬ Reader r3128 :=
  refute_zero r3128 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3128
def r3129 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3129 : ¬ Reader r3129 :=
  refute_zero r3129 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3129
def r3130 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject3130 : ¬ Reader r3130 :=
  refute_zero r3130 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3130
def r3131 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject3131 : ¬ Reader r3131 :=
  refute_zero r3131 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3131
def r3132 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.app (.var 2) (.var 2)))) (.var 1)))
theorem reject3132 : ¬ Reader r3132 :=
  refute_zero r3132 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3132
def r3133 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3133 : ¬ Reader r3133 :=
  refute_zero r3133 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3133
def r3134 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)))
theorem reject3134 : ¬ Reader r3134 :=
  refute_zero r3134 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3134
def r3135 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject3135 : ¬ Reader r3135 :=
  refute_zero r3135 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3135
def r3136 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject3136 : ¬ Reader r3136 :=
  refute_zero r3136 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3136
def r3137 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)))
theorem reject3137 : ¬ Reader r3137 :=
  refute_zero r3137 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3137
def r3138 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)))
theorem reject3138 : ¬ Reader r3138 :=
  refute_zero r3138 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3138
def r3139 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject3139 : ¬ Reader r3139 :=
  refute_zero r3139 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3139
def r3140 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))
theorem reject3140 : ¬ Reader r3140 :=
  refute_zero r3140 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3140
def r3141 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3141 : ¬ Reader r3141 :=
  refute_zero r3141 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3141
def r3142 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3142 : ¬ Reader r3142 :=
  refute_zero r3142 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3142
def r3143 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3143 : ¬ Reader r3143 :=
  refute_zero r3143 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3143
def r3144 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3144 : ¬ Reader r3144 :=
  refute_zero r3144 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3144
def r3145 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject3145 : ¬ Reader r3145 :=
  refute_zero r3145 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3145
def r3146 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject3146 : ¬ Reader r3146 :=
  refute_zero r3146 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3146
def r3147 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject3147 : ¬ Reader r3147 :=
  refute_zero r3147 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3147
def r3148 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject3148 : ¬ Reader r3148 :=
  refute_zero r3148 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3148
def r3149 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject3149 : ¬ Reader r3149 :=
  refute_zero r3149 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3149
def r3150 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject3150 : ¬ Reader r3150 :=
  refute_zero r3150 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3150
def r3151 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.var 2))))) (.var 1)) (.var 1)))
theorem reject3151 : ¬ Reader r3151 :=
  refute_zero r3151 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3151
def r3152 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 1)) (.var 1)))
theorem reject3152 : ¬ Reader r3152 :=
  refute_zero r3152 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3152
def r3153 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3153 : ¬ Reader r3153 :=
  refute_zero r3153 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3153
def r3154 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1)) (.var 1)))
theorem reject3154 : ¬ Reader r3154 :=
  refute_zero r3154 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3154
def r3155 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)) (.var 1)))
theorem reject3155 : ¬ Reader r3155 :=
  refute_zero r3155 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3155
def r3156 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3156 : ¬ Reader r3156 :=
  refute_zero r3156 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3156
def r3157 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 1)) (.var 1)))
theorem reject3157 : ¬ Reader r3157 :=
  refute_zero r3157 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3157
def r3158 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) (.var 1)))
theorem reject3158 : ¬ Reader r3158 :=
  refute_zero r3158 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3158
def r3159 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)) (.var 0)))
theorem reject3159 : ¬ Reader r3159 :=
  refute_zero r3159 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3159
def r3160 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) (.var 1)))
theorem reject3160 : ¬ Reader r3160 :=
  refute_zero r3160 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3160
def r3161 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)) (.var 0)))
theorem reject3161 : ¬ Reader r3161 :=
  refute_zero r3161 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3161
def r3162 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3162 : ¬ Reader r3162 :=
  refute_zero r3162 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3162
def r3163 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3163 : ¬ Reader r3163 :=
  refute_zero r3163 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3163
def r3164 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3164 : ¬ Reader r3164 :=
  refute_zero r3164 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3164
def r3165 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3165 : ¬ Reader r3165 :=
  refute_zero r3165 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3165
def r3166 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject3166 : ¬ Reader r3166 :=
  refute_zero r3166 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3166
def r3167 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3167 : ¬ Reader r3167 :=
  refute_zero r3167 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3167
def r3168 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3168 : ¬ Reader r3168 :=
  refute_zero r3168 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3168
def r3169 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)) (.var 1)))
theorem reject3169 : ¬ Reader r3169 :=
  refute_zero r3169 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3169
def r3170 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3170 : ¬ Reader r3170 :=
  refute_zero r3170 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3170
def r3171 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject3171 : ¬ Reader r3171 :=
  refute_zero r3171 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3171
def r3172 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject3172 : ¬ Reader r3172 :=
  refute_zero r3172 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3172
def r3173 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject3173 : ¬ Reader r3173 :=
  refute_zero r3173 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3173
def r3174 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject3174 : ¬ Reader r3174 :=
  refute_zero r3174 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3174
def r3175 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3175 : ¬ Reader r3175 :=
  refute_zero r3175 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3175
def r3176 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3176 : ¬ Reader r3176 :=
  refute_zero r3176 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3176
def r3177 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject3177 : ¬ Reader r3177 :=
  refute_zero r3177 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3177
def r3178 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject3178 : ¬ Reader r3178 :=
  refute_zero r3178 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3178
def r3179 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject3179 : ¬ Reader r3179 :=
  refute_zero r3179 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3179
def r3180 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))))
theorem reject3180 : ¬ Reader r3180 :=
  refute_zero r3180 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3180
def r3181 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject3181 : ¬ Reader r3181 :=
  refute_zero r3181 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3181
def r3182 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject3182 : ¬ Reader r3182 :=
  refute_zero r3182 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3182
def r3183 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject3183 : ¬ Reader r3183 :=
  refute_zero r3183 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3183
def r3184 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject3184 : ¬ Reader r3184 :=
  refute_zero r3184 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3184
def r3185 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject3185 : ¬ Reader r3185 :=
  refute_zero r3185 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3185
def r3186 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject3186 : ¬ Reader r3186 :=
  refute_zero r3186 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3186
def r3187 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject3187 : ¬ Reader r3187 :=
  refute_zero r3187 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3187
def r3188 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject3188 : ¬ Reader r3188 :=
  refute_zero r3188 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3188
def r3189 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3189 : ¬ Reader r3189 :=
  refute_zero r3189 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3189
def r3190 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3190 : ¬ Reader r3190 :=
  refute_zero r3190 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3190
def r3191 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3191 : ¬ Reader r3191 :=
  refute_zero r3191 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3191
def r3192 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3192 : ¬ Reader r3192 :=
  refute_zero r3192 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3192
def r3193 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject3193 : ¬ Reader r3193 :=
  refute_zero r3193 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3193
def r3194 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject3194 : ¬ Reader r3194 :=
  refute_zero r3194 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3194
def r3195 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject3195 : ¬ Reader r3195 :=
  refute_zero r3195 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3195
def r3196 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject3196 : ¬ Reader r3196 :=
  refute_zero r3196 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3196
def r3197 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject3197 : ¬ Reader r3197 :=
  refute_zero r3197 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3197
def r3198 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject3198 : ¬ Reader r3198 :=
  refute_zero r3198 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3198
def r3199 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject3199 : ¬ Reader r3199 :=
  refute_zero r3199 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3199
def r3200 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3200 : ¬ Reader r3200 :=
  refute_zero r3200 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3200
def r3201 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.lam (.var 2))))
theorem reject3201 : ¬ Reader r3201 :=
  refute_zero r3201 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3201
def r3202 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject3202 : ¬ Reader r3202 :=
  refute_zero r3202 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3202
def r3203 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject3203 : ¬ Reader r3203 :=
  refute_zero r3203 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3203
def r3204 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject3204 : ¬ Reader r3204 :=
  refute_zero r3204 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3204
def r3205 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3))))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3205 : ¬ Reader r3205 :=
  refute_zero r3205 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3205
def r3206 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3))))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3206 : ¬ Reader r3206 :=
  refute_zero r3206 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3206
def r3207 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3207 : ¬ Reader r3207 :=
  refute_zero r3207 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3207
def r3208 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3208 : ¬ Reader r3208 :=
  refute_zero r3208 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3208
def r3209 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.lam (.var 2))))
theorem reject3209 : ¬ Reader r3209 :=
  refute_zero r3209 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3209
def r3210 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.lam (.var 2))) (.var 1)))
theorem reject3210 : ¬ Reader r3210 :=
  refute_zero r3210 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3210
def r3211 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)) (.lam (.var 0))))
theorem reject3211 : ¬ Reader r3211 :=
  refute_zero r3211 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3211
def r3212 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 0))) (.var 1)))
theorem reject3212 : ¬ Reader r3212 :=
  refute_zero r3212 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3212
def r3213 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)) (.lam (.var 0))))
theorem reject3213 : ¬ Reader r3213 :=
  refute_zero r3213 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3213
def r3214 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 0))) (.var 1)))
theorem reject3214 : ¬ Reader r3214 :=
  refute_zero r3214 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3214
def r3215 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 1)) (.var 1)))
theorem reject3215 : ¬ Reader r3215 :=
  refute_zero r3215 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3215
def r3216 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 1)) (.var 1)))
theorem reject3216 : ¬ Reader r3216 :=
  refute_zero r3216 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3216
def r3217 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 1)) (.var 1)))
theorem reject3217 : ¬ Reader r3217 :=
  refute_zero r3217 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3217
def r3218 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3218 : ¬ Reader r3218 :=
  refute_zero r3218 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3218
def r3219 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3219 : ¬ Reader r3219 :=
  refute_zero r3219 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3219
def r3220 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3220 : ¬ Reader r3220 :=
  refute_zero r3220 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3220
def r3221 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3221 : ¬ Reader r3221 :=
  refute_zero r3221 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3221
def r3222 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject3222 : ¬ Reader r3222 :=
  refute_zero r3222 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject3222
def r3223 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject3223 : ¬ Reader r3223 :=
  refute_zero r3223 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3223
def r3224 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject3224 : ¬ Reader r3224 :=
  refute_zero r3224 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3224
def r3225 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject3225 : ¬ Reader r3225 :=
  refute_zero r3225 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3225
def r3226 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3226 : ¬ Reader r3226 :=
  refute_zero r3226 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3226
def r3227 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3227 : ¬ Reader r3227 :=
  refute_zero r3227 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3227
def r3228 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 2))))
theorem reject3228 : ¬ Reader r3228 :=
  refute_zero r3228 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3228
def r3229 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 2))) (.var 1)))
theorem reject3229 : ¬ Reader r3229 :=
  refute_zero r3229 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3229
def r3230 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.var 1)) (.var 1)))
theorem reject3230 : ¬ Reader r3230 :=
  refute_zero r3230 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3230
def r3231 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3231 : ¬ Reader r3231 :=
  refute_zero r3231 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3231
def r3232 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3232 : ¬ Reader r3232 :=
  refute_zero r3232 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3232
def r3233 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3233 : ¬ Reader r3233 :=
  refute_zero r3233 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3233
def r3234 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3234 : ¬ Reader r3234 :=
  refute_zero r3234 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3234
def r3235 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3235 : ¬ Reader r3235 :=
  refute_zero r3235 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3235
def r3236 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3236 : ¬ Reader r3236 :=
  refute_zero r3236 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3236
def r3237 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3237 : ¬ Reader r3237 :=
  refute_zero r3237 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3237
def r3238 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject3238 : ¬ Reader r3238 :=
  refute_zero r3238 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3238
def r3239 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject3239 : ¬ Reader r3239 :=
  refute_zero r3239 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3239
def r3240 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject3240 : ¬ Reader r3240 :=
  refute_zero r3240 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3240
def r3241 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3241 : ¬ Reader r3241 :=
  refute_zero r3241 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3241
def r3242 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3242 : ¬ Reader r3242 :=
  refute_zero r3242 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3242
def r3243 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject3243 : ¬ Reader r3243 :=
  refute_zero r3243 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3243
def r3244 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject3244 : ¬ Reader r3244 :=
  refute_zero r3244 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3244
def r3245 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject3245 : ¬ Reader r3245 :=
  refute_zero r3245 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3245
def r3246 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject3246 : ¬ Reader r3246 :=
  refute_zero r3246 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3246
def r3247 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject3247 : ¬ Reader r3247 :=
  refute_zero r3247 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3247
def r3248 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject3248 : ¬ Reader r3248 :=
  refute_zero r3248 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3248
def r3249 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3249 : ¬ Reader r3249 :=
  refute_zero r3249 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3249
def r3250 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0)))) (.var 1)) (.var 1)))
theorem reject3250 : ¬ Reader r3250 :=
  refute_zero r3250 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3250
def r3251 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 0)) (.var 1)))
theorem reject3251 : ¬ Reader r3251 :=
  refute_zero r3251 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3251
def r3252 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0)))
theorem reject3252 : ¬ Reader r3252 :=
  refute_zero r3252 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3252
def r3253 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3253 : ¬ Reader r3253 :=
  refute_zero r3253 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3253
def r3254 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3254 : ¬ Reader r3254 :=
  refute_zero r3254 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3254
def r3255 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3255 : ¬ Reader r3255 :=
  refute_zero r3255 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3255
def r3256 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject3256 : ¬ Reader r3256 :=
  refute_zero r3256 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3256
def r3257 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject3257 : ¬ Reader r3257 :=
  refute_zero r3257 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3257
def r3258 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3258 : ¬ Reader r3258 :=
  refute_zero r3258 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3258
def r3259 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 2))) (.lam (.var 2))))
theorem reject3259 : ¬ Reader r3259 :=
  refute_zero r3259 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3259
def r3260 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject3260 : ¬ Reader r3260 :=
  refute_zero r3260 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3260
def r3261 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject3261 : ¬ Reader r3261 :=
  refute_zero r3261 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3261
def r3262 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject3262 : ¬ Reader r3262 :=
  refute_zero r3262 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3262
def r3263 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3263 : ¬ Reader r3263 :=
  refute_zero r3263 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3263
def r3264 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3264 : ¬ Reader r3264 :=
  refute_zero r3264 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3264
def r3265 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.lam (.var 2))))
theorem reject3265 : ¬ Reader r3265 :=
  refute_zero r3265 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3265
def r3266 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.lam (.var 2))) (.var 1)))
theorem reject3266 : ¬ Reader r3266 :=
  refute_zero r3266 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3266
def r3267 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 0))))
theorem reject3267 : ¬ Reader r3267 :=
  refute_zero r3267 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3267
def r3268 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 1)))
theorem reject3268 : ¬ Reader r3268 :=
  refute_zero r3268 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3268
def r3269 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.lam (.var 3))))) (.var 1)) (.var 1)))
theorem reject3269 : ¬ Reader r3269 :=
  refute_zero r3269 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3269
def r3270 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 1)))
theorem reject3270 : ¬ Reader r3270 :=
  refute_zero r3270 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3270
def r3271 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3271 : ¬ Reader r3271 :=
  refute_zero r3271 (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject3271
def r3272 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3272 : ¬ Reader r3272 :=
  refute_zero r3272 (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3272
def r3273 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3273 : ¬ Reader r3273 :=
  refute_zero r3273 (.app (.app (.var 1) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3273
def r3274 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3274 : ¬ Reader r3274 :=
  refute_zero r3274 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3274
def r3275 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3275 : ¬ Reader r3275 :=
  refute_zero r3275 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3275
def r3276 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3276 : ¬ Reader r3276 :=
  refute_zero r3276 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3276
def r3277 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3277 : ¬ Reader r3277 :=
  refute_zero r3277 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3277
def r3278 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3278 : ¬ Reader r3278 :=
  refute_zero r3278 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3278
def r3279 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3279 : ¬ Reader r3279 :=
  refute_zero r3279 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3279
def r3280 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject3280 : ¬ Reader r3280 :=
  refute_zero r3280 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3280
def r3281 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject3281 : ¬ Reader r3281 :=
  refute_zero r3281 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3281
def r3282 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1)))
theorem reject3282 : ¬ Reader r3282 :=
  refute_zero r3282 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3282
def r3283 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3283 : ¬ Reader r3283 :=
  refute_zero r3283 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3283
def r3284 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 2))))
theorem reject3284 : ¬ Reader r3284 :=
  refute_zero r3284 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3284
def r3285 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1))) (.lam (.var 2))) (.var 1)))
theorem reject3285 : ¬ Reader r3285 :=
  refute_zero r3285 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3285
def r3286 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.lam (.var 2)))) (.var 1)) (.var 1)))
theorem reject3286 : ¬ Reader r3286 :=
  refute_zero r3286 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3286
def r3287 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3287 : ¬ Reader r3287 :=
  refute_zero r3287 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3287
def r3288 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3288 : ¬ Reader r3288 :=
  refute_zero r3288 (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3288
def r3289 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3289 : ¬ Reader r3289 :=
  refute_zero r3289 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3289
def r3290 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3290 : ¬ Reader r3290 :=
  refute_zero r3290 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3290
def r3291 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3291 : ¬ Reader r3291 :=
  refute_zero r3291 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3291
def r3292 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3292 : ¬ Reader r3292 :=
  refute_zero r3292 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3292
def r3293 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3293 : ¬ Reader r3293 :=
  refute_zero r3293 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3293
def r3294 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0))) (.var 1)) (.var 1)))
theorem reject3294 : ¬ Reader r3294 :=
  refute_zero r3294 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3294
def r3295 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 0)) (.var 1)))
theorem reject3295 : ¬ Reader r3295 :=
  refute_zero r3295 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3295
def r3296 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)) (.var 0)))
theorem reject3296 : ¬ Reader r3296 :=
  refute_zero r3296 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3296
def r3297 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 0))) (.var 1)) (.var 1)))
theorem reject3297 : ¬ Reader r3297 :=
  refute_zero r3297 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3297
def r3298 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 0)) (.var 1)))
theorem reject3298 : ¬ Reader r3298 :=
  refute_zero r3298 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3298
def r3299 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 0)))
theorem reject3299 : ¬ Reader r3299 :=
  refute_zero r3299 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3299
def r3300 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3300 : ¬ Reader r3300 :=
  refute_zero r3300 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3300
def r3301 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3301 : ¬ Reader r3301 :=
  refute_zero r3301 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3301
def r3302 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3302 : ¬ Reader r3302 :=
  refute_zero r3302 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3302
def r3303 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3303 : ¬ Reader r3303 :=
  refute_zero r3303 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3303
def r3304 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3304 : ¬ Reader r3304 :=
  refute_zero r3304 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3304
def r3305 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.lam (.var 0))))
theorem reject3305 : ¬ Reader r3305 :=
  refute_zero r3305 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3305
def r3306 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 0))) (.var 1)))
theorem reject3306 : ¬ Reader r3306 :=
  refute_zero r3306 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3306
def r3307 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.var 1)) (.var 1)))
theorem reject3307 : ¬ Reader r3307 :=
  refute_zero r3307 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3307
def r3308 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3308 : ¬ Reader r3308 :=
  refute_zero r3308 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3308
def r3309 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3309 : ¬ Reader r3309 :=
  refute_zero r3309 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3309
def r3310 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3310 : ¬ Reader r3310 :=
  refute_zero r3310 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3310
def r3311 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3311 : ¬ Reader r3311 :=
  refute_zero r3311 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3311
def r3312 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3312 : ¬ Reader r3312 :=
  refute_zero r3312 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3312
def r3313 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3313 : ¬ Reader r3313 :=
  refute_zero r3313 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3313
def r3314 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3314 : ¬ Reader r3314 :=
  refute_zero r3314 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3314
def r3315 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3315 : ¬ Reader r3315 :=
  refute_zero r3315 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3315
def r3316 : Term := (.lam (.app (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)) (.var 1)))
theorem reject3316 : ¬ Reader r3316 :=
  refute_zero r3316 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3316
def r3317 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3317 : ¬ Reader r3317 :=
  refute_zero r3317 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3317
def r3318 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3318 : ¬ Reader r3318 :=
  refute_zero r3318 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3318
def r3319 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3319 : ¬ Reader r3319 :=
  refute_zero r3319 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3319
def r3320 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject3320 : ¬ Reader r3320 :=
  refute_zero r3320 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3320
def r3321 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject3321 : ¬ Reader r3321 :=
  refute_zero r3321 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3321
def r3322 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject3322 : ¬ Reader r3322 :=
  refute_zero r3322 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3322
def r3323 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject3323 : ¬ Reader r3323 :=
  refute_zero r3323 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3323
def r3324 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3324 : ¬ Reader r3324 :=
  refute_zero r3324 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3324
def r3325 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3325 : ¬ Reader r3325 :=
  refute_zero r3325 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3325
def r3326 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 2))))
theorem reject3326 : ¬ Reader r3326 :=
  refute_zero r3326 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3326
def r3327 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.var 1)))
theorem reject3327 : ¬ Reader r3327 :=
  refute_zero r3327 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3327
def r3328 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.var 1)))
theorem reject3328 : ¬ Reader r3328 :=
  refute_zero r3328 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3328
def r3329 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3329 : ¬ Reader r3329 :=
  refute_zero r3329 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3329
def r3330 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3330 : ¬ Reader r3330 :=
  refute_zero r3330 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3330
def r3331 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject3331 : ¬ Reader r3331 :=
  refute_zero r3331 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3331
def r3332 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject3332 : ¬ Reader r3332 :=
  refute_zero r3332 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3332
def r3333 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject3333 : ¬ Reader r3333 :=
  refute_zero r3333 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3333
def r3334 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3334 : ¬ Reader r3334 :=
  refute_zero r3334 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3334
def r3335 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3335 : ¬ Reader r3335 :=
  refute_zero r3335 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3335
def r3336 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.lam (.app (.var 2) (.var 2)))))
theorem reject3336 : ¬ Reader r3336 :=
  refute_zero r3336 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3336
def r3337 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject3337 : ¬ Reader r3337 :=
  refute_zero r3337 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3337
def r3338 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject3338 : ¬ Reader r3338 :=
  refute_zero r3338 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3338
def r3339 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject3339 : ¬ Reader r3339 :=
  refute_zero r3339 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject3339
def r3340 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject3340 : ¬ Reader r3340 :=
  refute_zero r3340 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3340
def r3341 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject3341 : ¬ Reader r3341 :=
  refute_zero r3341 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3341
def r3342 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject3342 : ¬ Reader r3342 :=
  refute_zero r3342 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3342
def r3343 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject3343 : ¬ Reader r3343 :=
  refute_zero r3343 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3343
def r3344 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject3344 : ¬ Reader r3344 :=
  refute_zero r3344 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3344
def r3345 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))))
theorem reject3345 : ¬ Reader r3345 :=
  refute_zero r3345 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3345
def r3346 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0))))
theorem reject3346 : ¬ Reader r3346 :=
  refute_zero r3346 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3346
def r3347 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.app (.var 2) (.var 2))))) (.var 1)))
theorem reject3347 : ¬ Reader r3347 :=
  refute_zero r3347 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3347
def r3348 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject3348 : ¬ Reader r3348 :=
  refute_zero r3348 (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3348
def r3349 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 1)))
theorem reject3349 : ¬ Reader r3349 :=
  refute_zero r3349 (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3349
def r3350 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1)))
theorem reject3350 : ¬ Reader r3350 :=
  refute_zero r3350 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3350
def r3351 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))
theorem reject3351 : ¬ Reader r3351 :=
  refute_zero r3351 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3351
def r3352 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))
theorem reject3352 : ¬ Reader r3352 :=
  refute_zero r3352 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3352
def r3353 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 1)))
theorem reject3353 : ¬ Reader r3353 :=
  refute_zero r3353 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3353
def r3354 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)))
theorem reject3354 : ¬ Reader r3354 :=
  refute_zero r3354 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3354
def r3355 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)))
theorem reject3355 : ¬ Reader r3355 :=
  refute_zero r3355 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3355
def r3356 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3356 : ¬ Reader r3356 :=
  refute_zero r3356 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3356
def r3357 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3357 : ¬ Reader r3357 :=
  refute_zero r3357 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3357
def r3358 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3358 : ¬ Reader r3358 :=
  refute_zero r3358 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3358
def r3359 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3359 : ¬ Reader r3359 :=
  refute_zero r3359 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3359
def r3360 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3360 : ¬ Reader r3360 :=
  refute_zero r3360 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3360
def r3361 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject3361 : ¬ Reader r3361 :=
  refute_zero r3361 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3361
def r3362 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject3362 : ¬ Reader r3362 :=
  refute_zero r3362 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3362
def r3363 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject3363 : ¬ Reader r3363 :=
  refute_zero r3363 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3363
def r3364 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject3364 : ¬ Reader r3364 :=
  refute_zero r3364 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3364
def r3365 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject3365 : ¬ Reader r3365 :=
  refute_zero r3365 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3365
def r3366 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.var 2)))) (.var 1))) (.var 1)))
theorem reject3366 : ¬ Reader r3366 :=
  refute_zero r3366 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3366
def r3367 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1))) (.var 1)))
theorem reject3367 : ¬ Reader r3367 :=
  refute_zero r3367 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3367
def r3368 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1))) (.var 1)))
theorem reject3368 : ¬ Reader r3368 :=
  refute_zero r3368 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3368
def r3369 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1))) (.var 1)))
theorem reject3369 : ¬ Reader r3369 :=
  refute_zero r3369 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3369
def r3370 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1))) (.var 1)))
theorem reject3370 : ¬ Reader r3370 :=
  refute_zero r3370 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3370
def r3371 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1))) (.var 1)))
theorem reject3371 : ¬ Reader r3371 :=
  refute_zero r3371 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3371
def r3372 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1))) (.var 1)))
theorem reject3372 : ¬ Reader r3372 :=
  refute_zero r3372 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3372
def r3373 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0))) (.var 1)))
theorem reject3373 : ¬ Reader r3373 :=
  refute_zero r3373 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3373
def r3374 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))) (.var 0)))
theorem reject3374 : ¬ Reader r3374 :=
  refute_zero r3374 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3374
def r3375 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0))) (.var 1)))
theorem reject3375 : ¬ Reader r3375 :=
  refute_zero r3375 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3375
def r3376 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))) (.var 0)))
theorem reject3376 : ¬ Reader r3376 :=
  refute_zero r3376 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3376
def r3377 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3377 : ¬ Reader r3377 :=
  refute_zero r3377 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3377
def r3378 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3378 : ¬ Reader r3378 :=
  refute_zero r3378 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3378
def r3379 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject3379 : ¬ Reader r3379 :=
  refute_zero r3379 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3379
def r3380 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject3380 : ¬ Reader r3380 :=
  refute_zero r3380 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3380
def r3381 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject3381 : ¬ Reader r3381 :=
  refute_zero r3381 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3381
def r3382 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3382 : ¬ Reader r3382 :=
  refute_zero r3382 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3382
def r3383 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3383 : ¬ Reader r3383 :=
  refute_zero r3383 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3383
def r3384 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))) (.var 1)))
theorem reject3384 : ¬ Reader r3384 :=
  refute_zero r3384 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3384
def r3385 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))) (.var 1)))
theorem reject3385 : ¬ Reader r3385 :=
  refute_zero r3385 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3385
def r3386 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject3386 : ¬ Reader r3386 :=
  refute_zero r3386 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3386
def r3387 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject3387 : ¬ Reader r3387 :=
  refute_zero r3387 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3387
def r3388 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject3388 : ¬ Reader r3388 :=
  refute_zero r3388 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3388
def r3389 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject3389 : ¬ Reader r3389 :=
  refute_zero r3389 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3389
def r3390 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3390 : ¬ Reader r3390 :=
  refute_zero r3390 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3390
def r3391 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3391 : ¬ Reader r3391 :=
  refute_zero r3391 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3391
def r3392 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.app (.var 1) (.lam (.var 2)))))
theorem reject3392 : ¬ Reader r3392 :=
  refute_zero r3392 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3392
def r3393 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 3)))))
theorem reject3393 : ¬ Reader r3393 :=
  refute_zero r3393 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3393
def r3394 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 0)))))
theorem reject3394 : ¬ Reader r3394 :=
  refute_zero r3394 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3394
def r3395 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.lam (.var 3))))) (.app (.var 1) (.var 1))))
theorem reject3395 : ¬ Reader r3395 :=
  refute_zero r3395 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3395
def r3396 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 1))))
theorem reject3396 : ¬ Reader r3396 :=
  refute_zero r3396 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3396
def r3397 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.lam (.var 2))))
theorem reject3397 : ¬ Reader r3397 :=
  refute_zero r3397 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3397
def r3398 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 0))))
theorem reject3398 : ¬ Reader r3398 :=
  refute_zero r3398 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3398
def r3399 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 0))))
theorem reject3399 : ¬ Reader r3399 :=
  refute_zero r3399 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3399
def r3400 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 1)))
theorem reject3400 : ¬ Reader r3400 :=
  refute_zero r3400 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3400
def r3401 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 1)))
theorem reject3401 : ¬ Reader r3401 :=
  refute_zero r3401 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3401
def r3402 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 1)))
theorem reject3402 : ¬ Reader r3402 :=
  refute_zero r3402 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3402
def r3403 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 1)))
theorem reject3403 : ¬ Reader r3403 :=
  refute_zero r3403 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3403
def r3404 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject3404 : ¬ Reader r3404 :=
  refute_zero r3404 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3404
def r3405 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject3405 : ¬ Reader r3405 :=
  refute_zero r3405 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3405
def r3406 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject3406 : ¬ Reader r3406 :=
  refute_zero r3406 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3406
def r3407 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject3407 : ¬ Reader r3407 :=
  refute_zero r3407 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3407
def r3408 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject3408 : ¬ Reader r3408 :=
  refute_zero r3408 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3408
def r3409 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject3409 : ¬ Reader r3409 :=
  refute_zero r3409 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3409
def r3410 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject3410 : ¬ Reader r3410 :=
  refute_zero r3410 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3410
def r3411 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject3411 : ¬ Reader r3411 :=
  refute_zero r3411 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3411
def r3412 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject3412 : ¬ Reader r3412 :=
  refute_zero r3412 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3412
def r3413 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject3413 : ¬ Reader r3413 :=
  refute_zero r3413 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3413
def r3414 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject3414 : ¬ Reader r3414 :=
  refute_zero r3414 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3414
def r3415 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject3415 : ¬ Reader r3415 :=
  refute_zero r3415 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3415
def r3416 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject3416 : ¬ Reader r3416 :=
  refute_zero r3416 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3416
def r3417 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject3417 : ¬ Reader r3417 :=
  refute_zero r3417 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3417
def r3418 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject3418 : ¬ Reader r3418 :=
  refute_zero r3418 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3418
def r3419 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject3419 : ¬ Reader r3419 :=
  refute_zero r3419 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3419
def r3420 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3420 : ¬ Reader r3420 :=
  refute_zero r3420 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3420
def r3421 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3421 : ¬ Reader r3421 :=
  refute_zero r3421 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3421
def r3422 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3422 : ¬ Reader r3422 :=
  refute_zero r3422 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3422
def r3423 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3423 : ¬ Reader r3423 :=
  refute_zero r3423 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3423
def r3424 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.lam (.var 2))))
theorem reject3424 : ¬ Reader r3424 :=
  refute_zero r3424 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3424
def r3425 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2)))) (.var 1)))
theorem reject3425 : ¬ Reader r3425 :=
  refute_zero r3425 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3425
def r3426 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.var 0))))
theorem reject3426 : ¬ Reader r3426 :=
  refute_zero r3426 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3426
def r3427 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.var 1)))
theorem reject3427 : ¬ Reader r3427 :=
  refute_zero r3427 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3427
def r3428 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))) (.lam (.var 0))))
theorem reject3428 : ¬ Reader r3428 :=
  refute_zero r3428 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3428
def r3429 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0)))) (.var 1)))
theorem reject3429 : ¬ Reader r3429 :=
  refute_zero r3429 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3429
def r3430 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1))) (.var 1)))
theorem reject3430 : ¬ Reader r3430 :=
  refute_zero r3430 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3430
def r3431 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1))) (.var 1)))
theorem reject3431 : ¬ Reader r3431 :=
  refute_zero r3431 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3431
def r3432 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1))) (.var 1)))
theorem reject3432 : ¬ Reader r3432 :=
  refute_zero r3432 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3432
def r3433 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1))) (.var 1)))
theorem reject3433 : ¬ Reader r3433 :=
  refute_zero r3433 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3433
def r3434 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3434 : ¬ Reader r3434 :=
  refute_zero r3434 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3434
def r3435 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3435 : ¬ Reader r3435 :=
  refute_zero r3435 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3435
def r3436 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3436 : ¬ Reader r3436 :=
  refute_zero r3436 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3436
def r3437 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject3437 : ¬ Reader r3437 :=
  refute_zero r3437 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject3437
def r3438 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject3438 : ¬ Reader r3438 :=
  refute_zero r3438 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3438
def r3439 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject3439 : ¬ Reader r3439 :=
  refute_zero r3439 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3439
def r3440 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject3440 : ¬ Reader r3440 :=
  refute_zero r3440 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3440
def r3441 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3441 : ¬ Reader r3441 :=
  refute_zero r3441 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject3441
def r3442 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3442 : ¬ Reader r3442 :=
  refute_zero r3442 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3442
def r3443 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 2))))
theorem reject3443 : ¬ Reader r3443 :=
  refute_zero r3443 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject3443
def r3444 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2)))) (.var 1)))
theorem reject3444 : ¬ Reader r3444 :=
  refute_zero r3444 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3444
def r3445 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1))) (.var 1)))
theorem reject3445 : ¬ Reader r3445 :=
  refute_zero r3445 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3445
def r3446 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3446 : ¬ Reader r3446 :=
  refute_zero r3446 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3446
def r3447 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3447 : ¬ Reader r3447 :=
  refute_zero r3447 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3447
def r3448 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3448 : ¬ Reader r3448 :=
  refute_zero r3448 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3448
def r3449 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3449 : ¬ Reader r3449 :=
  refute_zero r3449 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3449
def r3450 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3450 : ¬ Reader r3450 :=
  refute_zero r3450 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3450
def r3451 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3451 : ¬ Reader r3451 :=
  refute_zero r3451 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3451
def r3452 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3452 : ¬ Reader r3452 :=
  refute_zero r3452 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3452
def r3453 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject3453 : ¬ Reader r3453 :=
  refute_zero r3453 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3453
def r3454 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject3454 : ¬ Reader r3454 :=
  refute_zero r3454 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3454
def r3455 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject3455 : ¬ Reader r3455 :=
  refute_zero r3455 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3455
def r3456 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3456 : ¬ Reader r3456 :=
  refute_zero r3456 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3456
def r3457 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3457 : ¬ Reader r3457 :=
  refute_zero r3457 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3457
def r3458 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject3458 : ¬ Reader r3458 :=
  refute_zero r3458 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3458
def r3459 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject3459 : ¬ Reader r3459 :=
  refute_zero r3459 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject3459
def r3460 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject3460 : ¬ Reader r3460 :=
  refute_zero r3460 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject3460
def r3461 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject3461 : ¬ Reader r3461 :=
  refute_zero r3461 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3461
def r3462 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject3462 : ¬ Reader r3462 :=
  refute_zero r3462 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3462
def r3463 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject3463 : ¬ Reader r3463 :=
  refute_zero r3463 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3463
def r3464 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))) (.var 1)))
theorem reject3464 : ¬ Reader r3464 :=
  refute_zero r3464 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3464
def r3465 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))) (.var 1)))
theorem reject3465 : ¬ Reader r3465 :=
  refute_zero r3465 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3465
def r3466 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))) (.var 1)))
theorem reject3466 : ¬ Reader r3466 :=
  refute_zero r3466 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3466
def r3467 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)))
theorem reject3467 : ¬ Reader r3467 :=
  refute_zero r3467 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3467
def r3468 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3468 : ¬ Reader r3468 :=
  refute_zero r3468 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3468
def r3469 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3469 : ¬ Reader r3469 :=
  refute_zero r3469 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3469
def r3470 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3470 : ¬ Reader r3470 :=
  refute_zero r3470 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3470
def r3471 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject3471 : ¬ Reader r3471 :=
  refute_zero r3471 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3471
def r3472 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject3472 : ¬ Reader r3472 :=
  refute_zero r3472 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3472
def r3473 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject3473 : ¬ Reader r3473 :=
  refute_zero r3473 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3473
def r3474 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject3474 : ¬ Reader r3474 :=
  refute_zero r3474 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3474
def r3475 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject3475 : ¬ Reader r3475 :=
  refute_zero r3475 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3475
def r3476 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject3476 : ¬ Reader r3476 :=
  refute_zero r3476 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3476
def r3477 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject3477 : ¬ Reader r3477 :=
  refute_zero r3477 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3477
def r3478 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3478 : ¬ Reader r3478 :=
  refute_zero r3478 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3478
def r3479 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3479 : ¬ Reader r3479 :=
  refute_zero r3479 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3479
def r3480 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.var 1))) (.lam (.var 2))))
theorem reject3480 : ¬ Reader r3480 :=
  refute_zero r3480 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3480
def r3481 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.lam (.var 2)))) (.var 1)))
theorem reject3481 : ¬ Reader r3481 :=
  refute_zero r3481 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3481
def r3482 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 0))))
theorem reject3482 : ¬ Reader r3482 :=
  refute_zero r3482 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3482
def r3483 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 1)))
theorem reject3483 : ¬ Reader r3483 :=
  refute_zero r3483 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3483
def r3484 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1))) (.var 1)))
theorem reject3484 : ¬ Reader r3484 :=
  refute_zero r3484 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3484
def r3485 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 1)))
theorem reject3485 : ¬ Reader r3485 :=
  refute_zero r3485 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3485
def r3486 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3486 : ¬ Reader r3486 :=
  refute_zero r3486 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject3486
def r3487 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3487 : ¬ Reader r3487 :=
  refute_zero r3487 (.app (.app (.var 1) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3487
def r3488 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3488 : ¬ Reader r3488 :=
  refute_zero r3488 (.app (.app (.var 1) (.var 3)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject3488
def r3489 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3489 : ¬ Reader r3489 :=
  refute_zero r3489 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3489
def r3490 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3490 : ¬ Reader r3490 :=
  refute_zero r3490 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3490
def r3491 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3491 : ¬ Reader r3491 :=
  refute_zero r3491 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3491
def r3492 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3492 : ¬ Reader r3492 :=
  refute_zero r3492 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3492
def r3493 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3493 : ¬ Reader r3493 :=
  refute_zero r3493 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3493
def r3494 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3494 : ¬ Reader r3494 :=
  refute_zero r3494 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3494
def r3495 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject3495 : ¬ Reader r3495 :=
  refute_zero r3495 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3495
def r3496 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject3496 : ¬ Reader r3496 :=
  refute_zero r3496 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3496
def r3497 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject3497 : ¬ Reader r3497 :=
  refute_zero r3497 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3497
def r3498 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3498 : ¬ Reader r3498 :=
  refute_zero r3498 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3498
def r3499 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject3499 : ¬ Reader r3499 :=
  refute_zero r3499 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject3499
def r3500 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject3500 : ¬ Reader r3500 :=
  refute_zero r3500 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3500
def r3501 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject3501 : ¬ Reader r3501 :=
  refute_zero r3501 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3501
def r3502 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3502 : ¬ Reader r3502 :=
  refute_zero r3502 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject3502
def r3503 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3503 : ¬ Reader r3503 :=
  refute_zero r3503 (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3503
def r3504 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3504 : ¬ Reader r3504 :=
  refute_zero r3504 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3504
def r3505 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3505 : ¬ Reader r3505 :=
  refute_zero r3505 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3505
def r3506 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3506 : ¬ Reader r3506 :=
  refute_zero r3506 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3506
def r3507 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3507 : ¬ Reader r3507 :=
  refute_zero r3507 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3507
def r3508 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3508 : ¬ Reader r3508 :=
  refute_zero r3508 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3508
def r3509 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0)) (.var 1))) (.var 1)))
theorem reject3509 : ¬ Reader r3509 :=
  refute_zero r3509 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3509
def r3510 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 0))) (.var 1)))
theorem reject3510 : ¬ Reader r3510 :=
  refute_zero r3510 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3510
def r3511 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))) (.var 0)))
theorem reject3511 : ¬ Reader r3511 :=
  refute_zero r3511 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3511
def r3512 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 0)) (.var 1))) (.var 1)))
theorem reject3512 : ¬ Reader r3512 :=
  refute_zero r3512 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3512
def r3513 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 0))) (.var 1)))
theorem reject3513 : ¬ Reader r3513 :=
  refute_zero r3513 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3513
def r3514 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 0)))
theorem reject3514 : ¬ Reader r3514 :=
  refute_zero r3514 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject3514
def r3515 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3515 : ¬ Reader r3515 :=
  refute_zero r3515 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3515
def r3516 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3516 : ¬ Reader r3516 :=
  refute_zero r3516 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3516
def r3517 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject3517 : ¬ Reader r3517 :=
  refute_zero r3517 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3517
def r3518 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject3518 : ¬ Reader r3518 :=
  refute_zero r3518 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3518
def r3519 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject3519 : ¬ Reader r3519 :=
  refute_zero r3519 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3519
def r3520 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject3520 : ¬ Reader r3520 :=
  refute_zero r3520 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject3520
def r3521 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject3521 : ¬ Reader r3521 :=
  refute_zero r3521 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3521
def r3522 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject3522 : ¬ Reader r3522 :=
  refute_zero r3522 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3522
def r3523 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3523 : ¬ Reader r3523 :=
  refute_zero r3523 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3523
def r3524 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3524 : ¬ Reader r3524 :=
  refute_zero r3524 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3524
def r3525 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3525 : ¬ Reader r3525 :=
  refute_zero r3525 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3525
def r3526 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3526 : ¬ Reader r3526 :=
  refute_zero r3526 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3526
def r3527 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3527 : ¬ Reader r3527 :=
  refute_zero r3527 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3527
def r3528 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3528 : ¬ Reader r3528 :=
  refute_zero r3528 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3528
def r3529 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3529 : ¬ Reader r3529 :=
  refute_zero r3529 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3529
def r3530 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3530 : ¬ Reader r3530 :=
  refute_zero r3530 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3530
def r3531 : Term := (.lam (.app (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))) (.var 1)))
theorem reject3531 : ¬ Reader r3531 :=
  refute_zero r3531 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject3531
def r3532 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3532 : ¬ Reader r3532 :=
  refute_zero r3532 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3532
def r3533 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3533 : ¬ Reader r3533 :=
  refute_zero r3533 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3533
def r3534 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3534 : ¬ Reader r3534 :=
  refute_zero r3534 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3534
def r3535 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject3535 : ¬ Reader r3535 :=
  refute_zero r3535 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3535
def r3536 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject3536 : ¬ Reader r3536 :=
  refute_zero r3536 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3536
def r3537 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject3537 : ¬ Reader r3537 :=
  refute_zero r3537 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3537
def r3538 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject3538 : ¬ Reader r3538 :=
  refute_zero r3538 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3538
def r3539 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3539 : ¬ Reader r3539 :=
  refute_zero r3539 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3539
def r3540 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3540 : ¬ Reader r3540 :=
  refute_zero r3540 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3540
def r3541 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2)))))
theorem reject3541 : ¬ Reader r3541 :=
  refute_zero r3541 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3541
def r3542 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1))))
theorem reject3542 : ¬ Reader r3542 :=
  refute_zero r3542 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3542
def r3543 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1))))
theorem reject3543 : ¬ Reader r3543 :=
  refute_zero r3543 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3543
def r3544 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject3544 : ¬ Reader r3544 :=
  refute_zero r3544 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3544
def r3545 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject3545 : ¬ Reader r3545 :=
  refute_zero r3545 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3545
def r3546 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject3546 : ¬ Reader r3546 :=
  refute_zero r3546 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3546
def r3547 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject3547 : ¬ Reader r3547 :=
  refute_zero r3547 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3547
def r3548 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject3548 : ¬ Reader r3548 :=
  refute_zero r3548 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3548
def r3549 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject3549 : ¬ Reader r3549 :=
  refute_zero r3549 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3549
def r3550 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject3550 : ¬ Reader r3550 :=
  refute_zero r3550 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3550
def r3551 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.lam (.app (.var 2) (.var 2))))))
theorem reject3551 : ¬ Reader r3551 :=
  refute_zero r3551 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3551
def r3552 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject3552 : ¬ Reader r3552 :=
  refute_zero r3552 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3552
def r3553 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject3553 : ¬ Reader r3553 :=
  refute_zero r3553 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3553
def r3554 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject3554 : ¬ Reader r3554 :=
  refute_zero r3554 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3554
def r3555 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject3555 : ¬ Reader r3555 :=
  refute_zero r3555 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3555
def r3556 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject3556 : ¬ Reader r3556 :=
  refute_zero r3556 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3556
def r3557 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject3557 : ¬ Reader r3557 :=
  refute_zero r3557 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3557
def r3558 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject3558 : ¬ Reader r3558 :=
  refute_zero r3558 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3558
def r3559 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject3559 : ¬ Reader r3559 :=
  refute_zero r3559 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3559
def r3560 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1)))))
theorem reject3560 : ¬ Reader r3560 :=
  refute_zero r3560 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3560
def r3561 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0)))))
theorem reject3561 : ¬ Reader r3561 :=
  refute_zero r3561 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3561
def r3562 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.app (.var 2) (.var 2)))) (.var 1))))
theorem reject3562 : ¬ Reader r3562 :=
  refute_zero r3562 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3562
def r3563 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject3563 : ¬ Reader r3563 :=
  refute_zero r3563 (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3563
def r3564 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1))))
theorem reject3564 : ¬ Reader r3564 :=
  refute_zero r3564 (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3564
def r3565 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject3565 : ¬ Reader r3565 :=
  refute_zero r3565 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3565
def r3566 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject3566 : ¬ Reader r3566 :=
  refute_zero r3566 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3566
def r3567 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1))))
theorem reject3567 : ¬ Reader r3567 :=
  refute_zero r3567 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3567
def r3568 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1))))
theorem reject3568 : ¬ Reader r3568 :=
  refute_zero r3568 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3568
def r3569 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0))))
theorem reject3569 : ¬ Reader r3569 :=
  refute_zero r3569 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3569
def r3570 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0))))
theorem reject3570 : ¬ Reader r3570 :=
  refute_zero r3570 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3570
def r3571 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3571 : ¬ Reader r3571 :=
  refute_zero r3571 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3571
def r3572 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3572 : ¬ Reader r3572 :=
  refute_zero r3572 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3572
def r3573 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3573 : ¬ Reader r3573 :=
  refute_zero r3573 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3573
def r3574 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3574 : ¬ Reader r3574 :=
  refute_zero r3574 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3574
def r3575 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject3575 : ¬ Reader r3575 :=
  refute_zero r3575 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3575
def r3576 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject3576 : ¬ Reader r3576 :=
  refute_zero r3576 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3576
def r3577 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject3577 : ¬ Reader r3577 :=
  refute_zero r3577 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3577
def r3578 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject3578 : ¬ Reader r3578 :=
  refute_zero r3578 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3578
def r3579 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject3579 : ¬ Reader r3579 :=
  refute_zero r3579 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3579
def r3580 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject3580 : ¬ Reader r3580 :=
  refute_zero r3580 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3580
def r3581 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.var 2)))) (.var 1)) (.var 1))))
theorem reject3581 : ¬ Reader r3581 :=
  refute_zero r3581 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3581
def r3582 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1))))
theorem reject3582 : ¬ Reader r3582 :=
  refute_zero r3582 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3582
def r3583 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)) (.var 1))))
theorem reject3583 : ¬ Reader r3583 :=
  refute_zero r3583 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3583
def r3584 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)) (.var 1))))
theorem reject3584 : ¬ Reader r3584 :=
  refute_zero r3584 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3584
def r3585 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)) (.var 1))))
theorem reject3585 : ¬ Reader r3585 :=
  refute_zero r3585 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3585
def r3586 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)) (.var 1))))
theorem reject3586 : ¬ Reader r3586 :=
  refute_zero r3586 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3586
def r3587 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)) (.var 1))))
theorem reject3587 : ¬ Reader r3587 :=
  refute_zero r3587 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3587
def r3588 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.var 1))))
theorem reject3588 : ¬ Reader r3588 :=
  refute_zero r3588 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3588
def r3589 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 0))))
theorem reject3589 : ¬ Reader r3589 :=
  refute_zero r3589 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3589
def r3590 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.var 1))))
theorem reject3590 : ¬ Reader r3590 :=
  refute_zero r3590 (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3590
def r3591 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 0))))
theorem reject3591 : ¬ Reader r3591 :=
  refute_zero r3591 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3591
def r3592 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject3592 : ¬ Reader r3592 :=
  refute_zero r3592 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3592
def r3593 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject3593 : ¬ Reader r3593 :=
  refute_zero r3593 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3593
def r3594 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject3594 : ¬ Reader r3594 :=
  refute_zero r3594 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3594
def r3595 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject3595 : ¬ Reader r3595 :=
  refute_zero r3595 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3595
def r3596 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject3596 : ¬ Reader r3596 :=
  refute_zero r3596 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3596
def r3597 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3597 : ¬ Reader r3597 :=
  refute_zero r3597 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3597
def r3598 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3598 : ¬ Reader r3598 :=
  refute_zero r3598 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3598
def r3599 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.var 1))))
theorem reject3599 : ¬ Reader r3599 :=
  refute_zero r3599 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3599
def r3600 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.var 1))))
theorem reject3600 : ¬ Reader r3600 :=
  refute_zero r3600 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3600
def r3601 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject3601 : ¬ Reader r3601 :=
  refute_zero r3601 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3601
def r3602 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject3602 : ¬ Reader r3602 :=
  refute_zero r3602 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3602
def r3603 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject3603 : ¬ Reader r3603 :=
  refute_zero r3603 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3603
def r3604 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject3604 : ¬ Reader r3604 :=
  refute_zero r3604 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3604
def r3605 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject3605 : ¬ Reader r3605 :=
  refute_zero r3605 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3605
def r3606 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject3606 : ¬ Reader r3606 :=
  refute_zero r3606 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3606
def r3607 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2))))))
theorem reject3607 : ¬ Reader r3607 :=
  refute_zero r3607 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3607
def r3608 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3))))))
theorem reject3608 : ¬ Reader r3608 :=
  refute_zero r3608 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3608
def r3609 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0))))))
theorem reject3609 : ¬ Reader r3609 :=
  refute_zero r3609 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3609
def r3610 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1)))))
theorem reject3610 : ¬ Reader r3610 :=
  refute_zero r3610 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3610
def r3611 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1)))))
theorem reject3611 : ¬ Reader r3611 :=
  refute_zero r3611 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3611
def r3612 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2)))))
theorem reject3612 : ¬ Reader r3612 :=
  refute_zero r3612 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3612
def r3613 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0)))))
theorem reject3613 : ¬ Reader r3613 :=
  refute_zero r3613 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3613
def r3614 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0)))))
theorem reject3614 : ¬ Reader r3614 :=
  refute_zero r3614 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3614
def r3615 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1))))
theorem reject3615 : ¬ Reader r3615 :=
  refute_zero r3615 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3615
def r3616 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1))))
theorem reject3616 : ¬ Reader r3616 :=
  refute_zero r3616 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3616
def r3617 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1))))
theorem reject3617 : ¬ Reader r3617 :=
  refute_zero r3617 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3617
def r3618 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1))))
theorem reject3618 : ¬ Reader r3618 :=
  refute_zero r3618 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3618
def r3619 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject3619 : ¬ Reader r3619 :=
  refute_zero r3619 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3619
def r3620 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject3620 : ¬ Reader r3620 :=
  refute_zero r3620 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3620
def r3621 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject3621 : ¬ Reader r3621 :=
  refute_zero r3621 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3621
def r3622 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject3622 : ¬ Reader r3622 :=
  refute_zero r3622 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3622
def r3623 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject3623 : ¬ Reader r3623 :=
  refute_zero r3623 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3623
def r3624 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject3624 : ¬ Reader r3624 :=
  refute_zero r3624 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3624
def r3625 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject3625 : ¬ Reader r3625 :=
  refute_zero r3625 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3625
def r3626 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject3626 : ¬ Reader r3626 :=
  refute_zero r3626 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3626
def r3627 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject3627 : ¬ Reader r3627 :=
  refute_zero r3627 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3627
def r3628 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject3628 : ¬ Reader r3628 :=
  refute_zero r3628 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3628
def r3629 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject3629 : ¬ Reader r3629 :=
  refute_zero r3629 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3629
def r3630 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject3630 : ¬ Reader r3630 :=
  refute_zero r3630 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3630
def r3631 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject3631 : ¬ Reader r3631 :=
  refute_zero r3631 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3631
def r3632 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject3632 : ¬ Reader r3632 :=
  refute_zero r3632 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3632
def r3633 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject3633 : ¬ Reader r3633 :=
  refute_zero r3633 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3633
def r3634 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject3634 : ¬ Reader r3634 :=
  refute_zero r3634 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3634
def r3635 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3635 : ¬ Reader r3635 :=
  refute_zero r3635 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3635
def r3636 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3636 : ¬ Reader r3636 :=
  refute_zero r3636 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3636
def r3637 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3637 : ¬ Reader r3637 :=
  refute_zero r3637 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3637
def r3638 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3638 : ¬ Reader r3638 :=
  refute_zero r3638 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3638
def r3639 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.lam (.var 2)))))
theorem reject3639 : ¬ Reader r3639 :=
  refute_zero r3639 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3639
def r3640 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))) (.var 1))))
theorem reject3640 : ¬ Reader r3640 :=
  refute_zero r3640 (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3640
def r3641 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.var 0)))))
theorem reject3641 : ¬ Reader r3641 :=
  refute_zero r3641 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3641
def r3642 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 1))))
theorem reject3642 : ¬ Reader r3642 :=
  refute_zero r3642 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3642
def r3643 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)) (.lam (.var 0)))))
theorem reject3643 : ¬ Reader r3643 :=
  refute_zero r3643 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3643
def r3644 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 1))))
theorem reject3644 : ¬ Reader r3644 :=
  refute_zero r3644 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3644
def r3645 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)) (.var 1))))
theorem reject3645 : ¬ Reader r3645 :=
  refute_zero r3645 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3645
def r3646 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 1))))
theorem reject3646 : ¬ Reader r3646 :=
  refute_zero r3646 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3646
def r3647 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 1))))
theorem reject3647 : ¬ Reader r3647 :=
  refute_zero r3647 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3647
def r3648 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 1))))
theorem reject3648 : ¬ Reader r3648 :=
  refute_zero r3648 (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3648
def r3649 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3649 : ¬ Reader r3649 :=
  refute_zero r3649 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3649
def r3650 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3650 : ¬ Reader r3650 :=
  refute_zero r3650 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3650
def r3651 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3651 : ¬ Reader r3651 :=
  refute_zero r3651 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3651
def r3652 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject3652 : ¬ Reader r3652 :=
  refute_zero r3652 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3652
def r3653 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject3653 : ¬ Reader r3653 :=
  refute_zero r3653 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3653
def r3654 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject3654 : ¬ Reader r3654 :=
  refute_zero r3654 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3654
def r3655 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject3655 : ¬ Reader r3655 :=
  refute_zero r3655 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3655
def r3656 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3656 : ¬ Reader r3656 :=
  refute_zero r3656 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3656
def r3657 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3657 : ¬ Reader r3657 :=
  refute_zero r3657 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3657
def r3658 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 2)))))
theorem reject3658 : ¬ Reader r3658 :=
  refute_zero r3658 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3658
def r3659 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2))) (.var 1))))
theorem reject3659 : ¬ Reader r3659 :=
  refute_zero r3659 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3659
def r3660 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1)) (.var 1))))
theorem reject3660 : ¬ Reader r3660 :=
  refute_zero r3660 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3660
def r3661 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3661 : ¬ Reader r3661 :=
  refute_zero r3661 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3661
def r3662 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3662 : ¬ Reader r3662 :=
  refute_zero r3662 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3662
def r3663 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3663 : ¬ Reader r3663 :=
  refute_zero r3663 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3663
def r3664 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3664 : ¬ Reader r3664 :=
  refute_zero r3664 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3664
def r3665 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3665 : ¬ Reader r3665 :=
  refute_zero r3665 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3665
def r3666 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3666 : ¬ Reader r3666 :=
  refute_zero r3666 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3666
def r3667 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3667 : ¬ Reader r3667 :=
  refute_zero r3667 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3667
def r3668 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject3668 : ¬ Reader r3668 :=
  refute_zero r3668 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3668
def r3669 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject3669 : ¬ Reader r3669 :=
  refute_zero r3669 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3669
def r3670 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject3670 : ¬ Reader r3670 :=
  refute_zero r3670 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3670
def r3671 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3671 : ¬ Reader r3671 :=
  refute_zero r3671 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3671
def r3672 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3672 : ¬ Reader r3672 :=
  refute_zero r3672 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3672
def r3673 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject3673 : ¬ Reader r3673 :=
  refute_zero r3673 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3673
def r3674 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject3674 : ¬ Reader r3674 :=
  refute_zero r3674 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3674
def r3675 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject3675 : ¬ Reader r3675 :=
  refute_zero r3675 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3675
def r3676 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject3676 : ¬ Reader r3676 :=
  refute_zero r3676 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3676
def r3677 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject3677 : ¬ Reader r3677 :=
  refute_zero r3677 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3677
def r3678 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject3678 : ¬ Reader r3678 :=
  refute_zero r3678 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3678
def r3679 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1)) (.var 1))))
theorem reject3679 : ¬ Reader r3679 :=
  refute_zero r3679 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3679
def r3680 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1)) (.var 1))))
theorem reject3680 : ¬ Reader r3680 :=
  refute_zero r3680 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3680
def r3681 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)) (.var 1))))
theorem reject3681 : ¬ Reader r3681 :=
  refute_zero r3681 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3681
def r3682 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0))))
theorem reject3682 : ¬ Reader r3682 :=
  refute_zero r3682 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3682
def r3683 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3683 : ¬ Reader r3683 :=
  refute_zero r3683 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3683
def r3684 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3684 : ¬ Reader r3684 :=
  refute_zero r3684 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3684
def r3685 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3685 : ¬ Reader r3685 :=
  refute_zero r3685 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3685
def r3686 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject3686 : ¬ Reader r3686 :=
  refute_zero r3686 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3686
def r3687 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject3687 : ¬ Reader r3687 :=
  refute_zero r3687 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3687
def r3688 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject3688 : ¬ Reader r3688 :=
  refute_zero r3688 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3688
def r3689 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject3689 : ¬ Reader r3689 :=
  refute_zero r3689 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3689
def r3690 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject3690 : ¬ Reader r3690 :=
  refute_zero r3690 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3690
def r3691 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject3691 : ¬ Reader r3691 :=
  refute_zero r3691 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3691
def r3692 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject3692 : ¬ Reader r3692 :=
  refute_zero r3692 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3692
def r3693 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3693 : ¬ Reader r3693 :=
  refute_zero r3693 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3693
def r3694 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3694 : ¬ Reader r3694 :=
  refute_zero r3694 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3694
def r3695 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.var 1)) (.lam (.var 2)))))
theorem reject3695 : ¬ Reader r3695 :=
  refute_zero r3695 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3695
def r3696 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.lam (.var 2))) (.var 1))))
theorem reject3696 : ¬ Reader r3696 :=
  refute_zero r3696 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3696
def r3697 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0)))))
theorem reject3697 : ¬ Reader r3697 :=
  refute_zero r3697 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3697
def r3698 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 1))))
theorem reject3698 : ¬ Reader r3698 :=
  refute_zero r3698 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3698
def r3699 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1)) (.var 1))))
theorem reject3699 : ¬ Reader r3699 :=
  refute_zero r3699 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3699
def r3700 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 1))))
theorem reject3700 : ¬ Reader r3700 :=
  refute_zero r3700 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3700
def r3701 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3701 : ¬ Reader r3701 :=
  refute_zero r3701 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject3701
def r3702 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3702 : ¬ Reader r3702 :=
  refute_zero r3702 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject3702
def r3703 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3703 : ¬ Reader r3703 :=
  refute_zero r3703 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject3703
def r3704 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3704 : ¬ Reader r3704 :=
  refute_zero r3704 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3704
def r3705 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3705 : ¬ Reader r3705 :=
  refute_zero r3705 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3705
def r3706 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3706 : ¬ Reader r3706 :=
  refute_zero r3706 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3706
def r3707 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3707 : ¬ Reader r3707 :=
  refute_zero r3707 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3707
def r3708 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3708 : ¬ Reader r3708 :=
  refute_zero r3708 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3708
def r3709 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3709 : ¬ Reader r3709 :=
  refute_zero r3709 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3709
def r3710 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject3710 : ¬ Reader r3710 :=
  refute_zero r3710 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3710
def r3711 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject3711 : ¬ Reader r3711 :=
  refute_zero r3711 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3711
def r3712 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1)) (.var 1))))
theorem reject3712 : ¬ Reader r3712 :=
  refute_zero r3712 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3712
def r3713 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3713 : ¬ Reader r3713 :=
  refute_zero r3713 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3713
def r3714 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 2)))))
theorem reject3714 : ¬ Reader r3714 :=
  refute_zero r3714 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3714
def r3715 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.lam (.var 2))) (.var 1))))
theorem reject3715 : ¬ Reader r3715 :=
  refute_zero r3715 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3715
def r3716 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.lam (.var 2))) (.var 1)) (.var 1))))
theorem reject3716 : ¬ Reader r3716 :=
  refute_zero r3716 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3716
def r3717 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3717 : ¬ Reader r3717 :=
  refute_zero r3717 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject3717
def r3718 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3718 : ¬ Reader r3718 :=
  refute_zero r3718 (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3718
def r3719 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3719 : ¬ Reader r3719 :=
  refute_zero r3719 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3719
def r3720 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3720 : ¬ Reader r3720 :=
  refute_zero r3720 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3720
def r3721 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3721 : ¬ Reader r3721 :=
  refute_zero r3721 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3721
def r3722 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3722 : ¬ Reader r3722 :=
  refute_zero r3722 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3722
def r3723 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3723 : ¬ Reader r3723 :=
  refute_zero r3723 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3723
def r3724 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0)) (.var 1)) (.var 1))))
theorem reject3724 : ¬ Reader r3724 :=
  refute_zero r3724 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3724
def r3725 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 0)) (.var 1))))
theorem reject3725 : ¬ Reader r3725 :=
  refute_zero r3725 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3725
def r3726 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1)) (.var 0))))
theorem reject3726 : ¬ Reader r3726 :=
  refute_zero r3726 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3726
def r3727 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 0)) (.var 1)) (.var 1))))
theorem reject3727 : ¬ Reader r3727 :=
  refute_zero r3727 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3727
def r3728 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 0)) (.var 1))))
theorem reject3728 : ¬ Reader r3728 :=
  refute_zero r3728 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3728
def r3729 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 0))))
theorem reject3729 : ¬ Reader r3729 :=
  refute_zero r3729 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3729
def r3730 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3730 : ¬ Reader r3730 :=
  refute_zero r3730 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3730
def r3731 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3731 : ¬ Reader r3731 :=
  refute_zero r3731 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3731
def r3732 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject3732 : ¬ Reader r3732 :=
  refute_zero r3732 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3732
def r3733 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject3733 : ¬ Reader r3733 :=
  refute_zero r3733 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3733
def r3734 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject3734 : ¬ Reader r3734 :=
  refute_zero r3734 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3734
def r3735 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject3735 : ¬ Reader r3735 :=
  refute_zero r3735 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3735
def r3736 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject3736 : ¬ Reader r3736 :=
  refute_zero r3736 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3736
def r3737 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject3737 : ¬ Reader r3737 :=
  refute_zero r3737 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3737
def r3738 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3738 : ¬ Reader r3738 :=
  refute_zero r3738 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3738
def r3739 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3739 : ¬ Reader r3739 :=
  refute_zero r3739 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3739
def r3740 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3740 : ¬ Reader r3740 :=
  refute_zero r3740 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3740
def r3741 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3741 : ¬ Reader r3741 :=
  refute_zero r3741 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3741
def r3742 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3742 : ¬ Reader r3742 :=
  refute_zero r3742 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3742
def r3743 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3743 : ¬ Reader r3743 :=
  refute_zero r3743 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3743
def r3744 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3744 : ¬ Reader r3744 :=
  refute_zero r3744 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3744
def r3745 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3745 : ¬ Reader r3745 :=
  refute_zero r3745 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3745
def r3746 : Term := (.lam (.app (.var 0) (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1)) (.var 1)) (.var 1))))
theorem reject3746 : ¬ Reader r3746 :=
  refute_zero r3746 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject3746
end Blc.Firstop.JBare3
