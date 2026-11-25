import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846201355482Data0

set_option Elab.async false
namespace Blc.H44.H44F4846201355482
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s1,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s15,s27,s28,s29,s30,s31,s0,s25,s7,s32,s33,s34,s7,s35,s36,s37,s38,s39,s37,s40,s41,s35,s42,s21,s43,s44,s45,s34,s46,s47,s0,s44,s7,s32,s48,s33,s31,s12,s43,s44,s45,s34,s42,s49,s50,s51,s52,s53,s54,s55,s21,s56,s57,s58,s26,s50,s59,s60,s61,s62,s63,s0,s25,s7,s64,s33,s64],[s0,s35,s7,s65,s65,s66,s65,s7,s7,s7,s7,s7,s9,s7,s7,s67,s67,s67,s68,s14,s68,s67,s67,s7,s20,s20,s20,s7,s24,s23,s24,s24,s7,s7,s7,s7,s31,s31,s31,s7,s34,s34,s34,s7,s7,s7,s7,s31,s31,s7,s7,s7,s37,s7,s7,s7,s7,s34,s34,s34,s47,s47,s47,s7,s34,s31,s31,s31,s31,s31,s31,s43,s43,s43,s69,s49,s69,s43,s43,s31,s55,s55,s55,s58,s57,s58,s58,s31,s31,s31,s31,s63,s63,s63,s31,s47]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s0 := by decide
theorem c2 : C tab 1 = s35 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s1 := by decide
theorem c3 : C tab 2 = s7 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s2 := by decide
theorem c4 : C tab 3 = s65 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s3 := by decide
theorem c5 : C tab 4 = s65 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s4 := by decide
theorem c6 : C tab 5 = s66 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s5 := by decide
theorem c7 : C tab 6 = s65 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s6 := by decide
theorem c8 : C tab 7 = s7 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s7 := by decide
theorem c9 : C tab 8 = s7 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s8 := by decide
theorem c10 : C tab 9 = s7 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s9 := by decide
theorem c11 : C tab 10 = s7 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s10 := by decide
theorem c12 : C tab 11 = s7 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s1 := by decide
theorem c13 : C tab 12 = s9 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s11 := by decide
theorem c14 : C tab 13 = s7 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s12 := by decide
theorem c15 : C tab 14 = s7 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s13 := by decide
theorem c16 : C tab 15 = s67 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s14 := by decide
theorem c17 : C tab 16 = s67 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s15 := by decide
theorem c18 : C tab 17 = s67 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s16 := by decide
theorem c19 : C tab 18 = s68 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s17 := by decide
theorem c20 : C tab 19 = s14 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s18 := by decide
theorem c21 : C tab 20 = s68 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s19 := by decide
theorem c22 : C tab 21 = s67 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s20 := by decide
theorem c23 : C tab 22 = s67 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s21 := by decide
theorem c24 : C tab 23 = s7 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s22 := by decide
theorem c25 : C tab 24 = s20 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s23 := by decide
theorem c26 : C tab 25 = s20 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s24 := by decide
theorem c27 : C tab 26 = s20 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s25 := by decide
theorem c28 : C tab 27 = s7 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem d29 : D tab 28 = s26 := by decide
theorem c29 : C tab 28 = s24 := by decide
theorem len29 : 28 < tab.dom.length := by decide
theorem d30 : D tab 29 = s15 := by decide
theorem c30 : C tab 29 = s23 := by decide
theorem len30 : 29 < tab.dom.length := by decide
theorem d31 : D tab 30 = s27 := by decide
theorem c31 : C tab 30 = s24 := by decide
theorem len31 : 30 < tab.dom.length := by decide
theorem d32 : D tab 31 = s28 := by decide
theorem c32 : C tab 31 = s24 := by decide
theorem len32 : 31 < tab.dom.length := by decide
theorem d33 : D tab 32 = s29 := by decide
theorem c33 : C tab 32 = s7 := by decide
theorem len33 : 32 < tab.dom.length := by decide
theorem d34 : D tab 33 = s30 := by decide
theorem c34 : C tab 33 = s7 := by decide
theorem len34 : 33 < tab.dom.length := by decide
theorem d35 : D tab 34 = s31 := by decide
theorem c35 : C tab 34 = s7 := by decide
theorem len35 : 34 < tab.dom.length := by decide
theorem d36 : D tab 35 = s0 := by decide
theorem c36 : C tab 35 = s7 := by decide
theorem len36 : 35 < tab.dom.length := by decide
theorem d37 : D tab 36 = s25 := by decide
theorem c37 : C tab 36 = s31 := by decide
theorem len37 : 36 < tab.dom.length := by decide
theorem d38 : D tab 37 = s7 := by decide
theorem c38 : C tab 37 = s31 := by decide
theorem len38 : 37 < tab.dom.length := by decide
theorem d39 : D tab 38 = s32 := by decide
theorem c39 : C tab 38 = s31 := by decide
theorem len39 : 38 < tab.dom.length := by decide
theorem d40 : D tab 39 = s33 := by decide
theorem c40 : C tab 39 = s7 := by decide
theorem len40 : 39 < tab.dom.length := by decide
theorem d41 : D tab 40 = s34 := by decide
theorem c41 : C tab 40 = s34 := by decide
theorem len41 : 40 < tab.dom.length := by decide
theorem d42 : D tab 41 = s7 := by decide
theorem c42 : C tab 41 = s34 := by decide
theorem len42 : 41 < tab.dom.length := by decide
theorem d43 : D tab 42 = s35 := by decide
theorem c43 : C tab 42 = s34 := by decide
theorem len43 : 42 < tab.dom.length := by decide
theorem d44 : D tab 43 = s36 := by decide
theorem c44 : C tab 43 = s7 := by decide
theorem len44 : 43 < tab.dom.length := by decide
theorem d45 : D tab 44 = s37 := by decide
theorem c45 : C tab 44 = s7 := by decide
theorem len45 : 44 < tab.dom.length := by decide
theorem d46 : D tab 45 = s38 := by decide
theorem c46 : C tab 45 = s7 := by decide
theorem len46 : 45 < tab.dom.length := by decide
theorem d47 : D tab 46 = s39 := by decide
theorem c47 : C tab 46 = s7 := by decide
theorem len47 : 46 < tab.dom.length := by decide
theorem d48 : D tab 47 = s37 := by decide
theorem c48 : C tab 47 = s31 := by decide
theorem len48 : 47 < tab.dom.length := by decide
end Blc.H44.H44F4846201355482
