import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof50

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1794 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b73 s9 :=
  appAll len14 d14 c14 sub6 ((h1784 ρ a0) 14 mem419) (smaller (h1788 ρ a1) sub4)
theorem h1795 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b73 s9 :=
  appAll len13 d13 c13 sub6 ((h1784 ρ a0) 13 mem420) (smaller (h1789 ρ a1) sub6)
theorem h1796 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b73 s26 :=
  appAll len57 d57 c57 sub316 ((h1784 ρ a0) 57 mem421) (smaller (h1790 ρ a1) sub5)
theorem h1797 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s36 (ρ 1)) : All tab ρ b73 s26 :=
  appAll len74 d74 c74 sub316 ((h1784 ρ a0) 74 mem422) (smaller (h1791 ρ a1) sub160)
theorem h1798 (ρ : Env) (a0 : Fits s38 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b73 s39 :=
  appAll len85 d85 c85 sub259 ((h1785 ρ a0) 85 mem423) (smaller (h1792 ρ a1) sub106)
theorem h1799 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b73 s42 :=
  appAll len92 d92 c92 sub260 ((h1786 ρ a0) 92 mem424) (smaller (h1792 ρ a1) sub106)
theorem h1800 (ρ : Env) (a0 : Fits s31 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b73 s32 :=
  appAll len98 d98 c98 sub106 ((h1787 ρ a0) 98 mem425) (smaller (h1793 ρ a1) sub13)
theorem h1801 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b73 s32 :=
  appAll len98 d98 c98 sub106 ((h1786 ρ a0) 98 mem426) (smaller (h1793 ρ a1) sub13)
theorem h1802 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b74 s9 :=
  appAll len13 d13 c13 sub6 ((h1781 ρ a2) 13 mem427) (smaller (h1794 ρ a0 a1) sub6)
theorem h1803 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b74 s9 :=
  appAll len13 d13 c13 sub6 ((h1781 ρ a2) 13 mem427) (smaller (h1795 ρ a0 a1) sub6)
theorem h1804 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b74 s112 :=
  appAll len52 d52 c52 sub373 ((h1781 ρ a2) 52 mem428) (smaller (h1796 ρ a0 a1) sub316)
theorem h1805 (ρ : Env) (a0 : Fits s31 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b74 s118 :=
  appAll len64 d64 c64 sub122 ((h1782 ρ a2) 64 mem429) (smaller (h1800 ρ a0 a1) sub106)
theorem h1806 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s36 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b74 s123 :=
  appAll len73 d73 c73 sub370 ((h1781 ρ a2) 73 mem430) (smaller (h1797 ρ a0 a1) sub316)
theorem h1807 (ρ : Env) (a0 : Fits s38 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b74 s124 :=
  appAll len81 d81 c81 sub123 ((h1783 ρ a2) 81 mem431) (smaller (h1798 ρ a0 a1) sub259)
theorem h1808 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b74 s38 :=
  appAll len87 d87 c87 sub113 ((h1783 ρ a2) 87 mem432) (smaller (h1799 ρ a0 a1) sub260)
theorem h1809 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b74 s31 :=
  appAll len100 d100 c100 sub114 ((h1782 ρ a2) 100 mem433) (smaller (h1801 ρ a0 a1) sub106)
theorem h1810 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b75 s8 :=
  (consAll (lamAt d12 c12 (smaller (h1802 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub6)) Positive.none)
theorem h1811 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b75 s8 :=
  (consAll (lamAt d12 c12 (smaller (h1803 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub6)) Positive.none)
theorem h1812 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b75 s23 :=
  (consAll (lamAt d51 c51 (smaller (h1804 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub373)) Positive.none)
theorem h1813 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s18 (ρ 1)) : All tab ρ b75 s19 :=
  (consAll (lamAt d63 c63 (smaller (h1805 (SelfintRecursiveTypes.cons s31 ρ) sub114 a0 a1) sub122)) (consAll (lamAt d99 c99 (smaller (h1809 (SelfintRecursiveTypes.cons s2 ρ) sub13 a0 a1) sub114)) Positive.none))
theorem h1814 (ρ : Env) (a0 : Fits s36 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b75 s37 :=
  (consAll (lamAt d72 c72 (smaller (h1806 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub370)) Positive.none)
theorem h1815 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b75 s33 :=
  (consAll (lamAt d80 c80 (smaller (h1807 (SelfintRecursiveTypes.cons s38 ρ) sub113 a0 a1) sub123)) (consAll (lamAt d86 c86 (smaller (h1808 (SelfintRecursiveTypes.cons s2 ρ) sub13 a0 a1) sub113)) Positive.none))
theorem h1816 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b76 s106 :=
  appAll len32 d32 c32 sub185 ((h1779 ρ a2) 32 mem434) (smaller (h1810 ρ a0 a1) sub8)
theorem h1817 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b76 s6 :=
  appAll len21 d21 c21 sub4 ((h1779 ρ a2) 21 mem435) (smaller (h1811 ρ a0 a1) sub8)
theorem h1818 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s18 (ρ 1)) (a2 : Fits s12 (ρ 2)) : All tab ρ b76 s9 :=
  appAll len39 d39 c39 sub6 ((h1780 ρ a2) 39 mem436) (smaller (h1813 ρ a0 a1) sub139)
theorem h1819 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b76 s109 :=
  appAll len43 d43 c43 sub187 ((h1779 ρ a2) 43 mem437) (smaller (h1810 ρ a0 a1) sub8)
theorem h1820 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b76 s6 :=
  appAll len46 d46 c46 sub4 ((h1779 ρ a2) 46 mem438) (smaller (h1812 ρ a0 a1) sub257)
theorem h1821 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s12 (ρ 2)) : All tab ρ b76 s119 :=
  appAll len66 d66 c66 sub214 ((h1780 ρ a2) 66 mem439) (smaller (h1815 ρ a0 a1) sub140)
theorem h1822 (ρ : Env) (a0 : Fits s36 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b76 s121 :=
  appAll len70 d70 c70 sub472 ((h1779 ρ a2) 70 mem440) (smaller (h1814 ρ a0 a1) sub258)
theorem h1823 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b77 s107 :=
  (consAll (lamAt d20 c20 (smaller (h1820 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub4)) (consAll (lamAt d30 c30 (smaller (h1816 (SelfintRecursiveTypes.cons s6 ρ) sub4 a0 a1) sub185)) (consAll (lamAt d35 c35 (smaller (h1817 (SelfintRecursiveTypes.cons s9 ρ) sub6 a0 a1) sub4)) (consAll (lamAt d42 c42 (smaller (h1819 (SelfintRecursiveTypes.cons s6 ρ) sub4 a0 a1) sub187)) (consAll (lamAt d69 c69 (smaller (h1822 (SelfintRecursiveTypes.cons s36 ρ) sub160 a0 a1) sub481)) (consAll (lamAt d79 c79 (smaller (h1822 (SelfintRecursiveTypes.cons s36 ρ) sub160 a0 a1) sub482)) Positive.none))))))
theorem h1824 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b77 s108 :=
  (consAll (lamAt d36 c36 (smaller (h1818 (SelfintRecursiveTypes.cons s2 ρ) sub13 a0 a1) sub6)) Positive.none)
theorem h1825 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b77 s18 :=
  (consAll (lamAt d64 c64 (smaller (h1821 (SelfintRecursiveTypes.cons s32 ρ) sub106 a0 a1) sub483)) (consAll (lamAt d100 c100 (smaller (h1821 (SelfintRecursiveTypes.cons s32 ρ) sub106 a0 a1) sub484)) Positive.none))
theorem h1826 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b78 s14 :=
  (consAll (lamAt d31 c31 (smaller (h1823 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0) sub372)) Positive.none)
theorem h1827 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b78 s13 :=
  (consAll (lamAt d38 c38 (smaller (h1824 (SelfintRecursiveTypes.cons s18 ρ) sub112 a0) sub121)) (consAll (lamAt d65 c65 (smaller (h1825 (SelfintRecursiveTypes.cons s2 ρ) sub13 a0) sub112)) Positive.none))
theorem h1828 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b79 s104 :=
  appAll len25 d25 c25 sub212 ((h1777 ρ a0) 25 mem441) (smaller (h1827 ρ a0) sub138)
theorem h1829 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b79 s105 :=
  appAll len27 d27 c27 sub471 ((h1778 ρ a0) 27 mem442) (smaller (h1826 ρ a0) sub256)
end Blc.H45.H45F9692402957530
