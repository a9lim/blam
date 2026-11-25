import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Data1

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s0,s1,s0,s2,s3,s4,s5,s6,s5,s7,s8,s9,s10,s11,s5,s12,s5,s13,s14,s5,s15,s16,s17,s18,s19,s20,s21,s22,s23,s16,s24,s16,s17,s25,s5,s16,s26,s27,s28,s29,s30,s5,s31,s3,s18,s20,s32,s33,s34,s35,s36,s37,s38,s5,s39,s40,s41,s5,s42,s43,s16,s43,s44,s45,s46,s47,s48,s5,s44,s49,s50,s51,s46,s52,s53,s54,s16,s54,s55,s56,s57,s58,s5,s59,s20,s60,s61,s62,s16,s63,s48,s25,s26,s30,s64,s58,s20,s65,s66,s67,s0,s68,s69,s70,s71,s66,s72,s73,s74,s67,s75,s76,s75,s77,s78,s71,s79,s5,s80,s81,s82,s5,s83,s20,s84,s85,s86,s87,s88,s87,s82,s20,s89,s90,s90,s91,s69,s71,s79,s82,s92,s93,s0,s94,s95,s95,s96,s0,s0,s94,s79,s97,s98,s99,s100,s101,s82,s99,s6,s97,s102,s17,s6,s103,s104,s105,s17,s17,s95,s106,s17,s98,s99,s107],[s0,s17,s6,s6,s3,s3,s6,s108,s6,s6,s11,s11,s109,s109,s11,s11,s12,s5,s6,s6,s110,s3,s3,s6,s6,s111,s111,s112,s112,s111,s111,s24,s16,s17,s6,s113,s6,s30,s30,s114,s114,s30,s30,s31,s6,s17,s23,s6,s6,s38,s38,s115,s115,s38,s38,s39,s6,s6,s116,s3,s6,s117,s17,s6,s118,s6,s3,s6,s46,s46,s46,s119,s119,s46,s52,s6,s6,s120,s17,s6,s6,s3,s6,s121,s121,s121,s122,s122,s121,s121,s63,s123,s17,s6,s6,s3,s17,s62,s6,s3,s3,s3,s69,s69,s3,s124,s67,s67,s125,s125,s67,s67,s76,s75,s67,s3,s71,s6,s126,s127,s126,s6,s81,s128,s128,s129,s129,s128,s128,s88,s87,s17,s86,s6,s3,s67,s67,s3,s69,s82,s82,s82,s82,s82,s82,s92,s95,s130,s102,s94,s94,s102,s131,s132,s131,s98,s131,s102,s101,s102,s99,s102,s102,s17,s6,s69,s92,s3,s82,s130,s107,s94,s98,s99,s107]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s0 := by decide
theorem c2 : C tab 1 = s17 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s1 := by decide
theorem c3 : C tab 2 = s6 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s0 := by decide
theorem c4 : C tab 3 = s6 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s2 := by decide
theorem c5 : C tab 4 = s3 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s3 := by decide
theorem c6 : C tab 5 = s3 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s4 := by decide
theorem c7 : C tab 6 = s6 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s5 := by decide
theorem c8 : C tab 7 = s108 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s6 := by decide
theorem c9 : C tab 8 = s6 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s5 := by decide
theorem c10 : C tab 9 = s6 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s7 := by decide
theorem c11 : C tab 10 = s11 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s8 := by decide
theorem c12 : C tab 11 = s11 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s9 := by decide
theorem c13 : C tab 12 = s109 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s10 := by decide
theorem c14 : C tab 13 = s109 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s11 := by decide
theorem c15 : C tab 14 = s11 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s5 := by decide
theorem c16 : C tab 15 = s11 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s12 := by decide
theorem c17 : C tab 16 = s12 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s5 := by decide
theorem c18 : C tab 17 = s5 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s13 := by decide
theorem c19 : C tab 18 = s6 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s14 := by decide
theorem c20 : C tab 19 = s6 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s5 := by decide
theorem c21 : C tab 20 = s110 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s15 := by decide
theorem c22 : C tab 21 = s3 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s16 := by decide
theorem c23 : C tab 22 = s3 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s17 := by decide
theorem c24 : C tab 23 = s6 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s18 := by decide
theorem c25 : C tab 24 = s6 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s19 := by decide
theorem c26 : C tab 25 = s111 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s20 := by decide
theorem c27 : C tab 26 = s111 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s21 := by decide
theorem c28 : C tab 27 = s112 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem d29 : D tab 28 = s22 := by decide
theorem c29 : C tab 28 = s112 := by decide
theorem len29 : 28 < tab.dom.length := by decide
theorem d30 : D tab 29 = s23 := by decide
theorem c30 : C tab 29 = s111 := by decide
theorem len30 : 29 < tab.dom.length := by decide
theorem d31 : D tab 30 = s16 := by decide
theorem c31 : C tab 30 = s111 := by decide
theorem len31 : 30 < tab.dom.length := by decide
theorem d32 : D tab 31 = s24 := by decide
theorem c32 : C tab 31 = s24 := by decide
theorem len32 : 31 < tab.dom.length := by decide
theorem d33 : D tab 32 = s16 := by decide
theorem c33 : C tab 32 = s16 := by decide
theorem len33 : 32 < tab.dom.length := by decide
theorem d34 : D tab 33 = s17 := by decide
theorem c34 : C tab 33 = s17 := by decide
theorem len34 : 33 < tab.dom.length := by decide
theorem d35 : D tab 34 = s25 := by decide
theorem c35 : C tab 34 = s6 := by decide
theorem len35 : 34 < tab.dom.length := by decide
theorem d36 : D tab 35 = s5 := by decide
theorem c36 : C tab 35 = s113 := by decide
theorem len36 : 35 < tab.dom.length := by decide
theorem d37 : D tab 36 = s16 := by decide
theorem c37 : C tab 36 = s6 := by decide
theorem len37 : 36 < tab.dom.length := by decide
theorem d38 : D tab 37 = s26 := by decide
theorem c38 : C tab 37 = s30 := by decide
theorem len38 : 37 < tab.dom.length := by decide
theorem d39 : D tab 38 = s27 := by decide
theorem c39 : C tab 38 = s30 := by decide
theorem len39 : 38 < tab.dom.length := by decide
theorem d40 : D tab 39 = s28 := by decide
theorem c40 : C tab 39 = s114 := by decide
theorem len40 : 39 < tab.dom.length := by decide
theorem d41 : D tab 40 = s29 := by decide
theorem c41 : C tab 40 = s114 := by decide
theorem len41 : 40 < tab.dom.length := by decide
theorem d42 : D tab 41 = s30 := by decide
theorem c42 : C tab 41 = s30 := by decide
theorem len42 : 41 < tab.dom.length := by decide
theorem d43 : D tab 42 = s5 := by decide
theorem c43 : C tab 42 = s30 := by decide
theorem len43 : 42 < tab.dom.length := by decide
theorem d44 : D tab 43 = s31 := by decide
theorem c44 : C tab 43 = s31 := by decide
theorem len44 : 43 < tab.dom.length := by decide
theorem d45 : D tab 44 = s3 := by decide
theorem c45 : C tab 44 = s6 := by decide
theorem len45 : 44 < tab.dom.length := by decide
theorem d46 : D tab 45 = s18 := by decide
theorem c46 : C tab 45 = s17 := by decide
theorem len46 : 45 < tab.dom.length := by decide
theorem d47 : D tab 46 = s20 := by decide
theorem c47 : C tab 46 = s23 := by decide
theorem len47 : 46 < tab.dom.length := by decide
theorem d48 : D tab 47 = s32 := by decide
theorem c48 : C tab 47 = s6 := by decide
theorem len48 : 47 < tab.dom.length := by decide
end Blc.H45.H45F9692715709398
