import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Data2

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s7,s9,s6,s6,s0,s2,s1,s10,s11,s8,s11,s1,s12,s13,s2,s14,s15,s16,s6,s7,s8,s13,s17,s9,s2,s13,s18,s19,s20,s21,s6,s8,s19,s22,s23,s24,s24,s25,s0,s7,s26,s27,s27,s28,s0,s11,s29,s29,s30,s2,s19,s31,s32,s2,s33,s34,s35,s36,s37,s9,s7,s26,s36,s0,s2,s33,s35,s36,s38,s39,s40,s41,s7,s32,s2,s42,s43,s44,s45,s7,s32,s46,s46,s47,s45,s7,s2,s2,s32,s46,s48,s7,s49,s50,s51,s7,s52,s53,s54,s55,s51,s56,s11,s0,s11,s48,s46,s50,s51,s57,s45,s48,s58,s58,s59,s51,s48,s48,s60,s51,s48,s7,s45,s48,s57,s45,s45,s48,s46,s51,s51,s51,s51,s61,s61,s62,s32,s57,s7,s51,s11,s44,s63,s63,s45,s64,s65,s51,s66,s11,s67,s68,s69,s70,s32,s51,s55,s29,s44,s71,s72,s73,s48,s74,s75,s48,s71,s76,s29,s55,s49,s25,s75,s24,s0,s76,s77,s30,s0,s56,s41,s0,s29,s0,s71,s76,s27,s54,s78,s79,s55,s51,s78,s80,s70,s71,s48,s0,s56,s25,s30,s71,s0,s76,s58,s11,s0,s48,s49,s0,s71,s76,s0,s48,s70,s80,s9,s81,s78,s11,s11,s49,s60,s81,s30,s30,s81,s82,s81,s81,s32,s48,s71,s58,s48,s0,s81,s81,s83,s79,s69,s74,s70,s51,s0,s48,s56,s49,s70,s78,s30,s84,s84,s60,s85,s51,s85,s11,s0,s49,s81,s86,s11,s65,s80,s27,s61,s48,s71,s71,s63,s85,s48,s87,s86,s48,s65,s30,s11,s87,s88,s49,s54,s68,s51,s72,s63,s79,s89,s89,s68,s90,s58,s78,s81,s89,s65,s48,s51,s48,s63,s91,s91,s86,s92,s92,s86,s93,s89,s94,s95,s92,s91,s92,s0,s48,s91,s51,s86,s86,s96,s96,s56,s92,s96,s97,s71,s48,s86,s86,s48,s71,s70,s79,s11,s70,s79,s11,s11,s11,s11,s70,s70,s89,s79,s79,s11,s11,s87,s0,s0,s48,s11,s87,s87,s68,s70,s79,s11],[s0,s11,s9,s98,s99,s9,s100,s100,s101,s100,s11,s9,s9,s9,s11,s102,s6,s103,s6,s6,s6,s9,s11,s11,s104,s12,s105,s104,s106,s106,s107,s106,s103,s6,s6,s9,s108,s108,s9,s9,s109,s109,s109,s103,s6,s6,s11,s110,s111,s111,s112,s112,s113,s114,s115,s115,s26,s116,s110,s117,s11,s118,s118,s118,s18,s119,s119,s120,s120,s121,s122,s123,s123,s26,s117,s36,s124,s36,s36,s124,s124,s125,s11,s11,s39,s38,s38,s11,s11,s11,s126,s42,s127,s128,s129,s129,s130,s32,s31,s31,s131,s129,s132,s128,s11,s11,s133,s115,s114,s134,s134,s52,s135,s135,s135,s11,s51,s136,s51,s51,s136,s136,s136,s137,s138,s139,s139,s140,s141,s140,s140,s11,s142,s143,s144,s142,s144,s145,s145,s11,s129,s136,s145,s144,s11,s146,s147,s45,s51,s148,s147,s149,s45,s150,s151,s152,s153,s140,s153,s148,s136,s45,s51,s11,s11,s66,s152,s11,s154,s51,s117,s51,s11,s66,s11,s11,s111,s48,s117,s155,s136,s110,s48,s51,s136,s140,s136,s136,s155,s144,s136,s51,s136,s11,s155,s155,s155,s55,s136,s156,s136,s157,s111,s158,s159,s76,s30,s159,s159,s55,s51,s136,s141,s30,s30,s160,s55,s55,s30,s156,s161,s161,s161,s139,s139,s71,s48,s136,s162,s136,s71,s76,s138,s48,s163,s164,s165,s166,s167,s168,s169,s70,s70,s11,s136,s167,s167,s170,s171,s136,s141,s154,s172,s141,s167,s147,s147,s56,s163,s154,s11,s173,s155,s11,s136,s48,s159,s140,s56,s56,s146,s136,s70,s70,s48,s140,s11,s136,s79,s79,s84,s172,s136,s153,s11,s48,s56,s136,s79,s174,s156,s175,s151,s56,s48,s175,s56,s136,s11,s11,s156,s136,s176,s97,s97,s97,s97,s51,s176,s176,s84,s11,s48,s51,s11,s158,s156,s79,s11,s136,s177,s11,s97,s140,s11,s177,s177,s136,s177,s141,s84,s48,s140,s51,s136,s136,s11,s97,s97,s97,s86,s86,s86,s86,s86,s86,s48,s48,s48,s178,s179,s180,s79,s97,s158,s79,s97,s79,s97,s158,s176,s175,s175,s141,s97,s136,s140,s84,s84,s84]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s0 := by decide
theorem c2 : C tab 1 = s11 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s1 := by decide
theorem c3 : C tab 2 = s9 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s2 := by decide
theorem c4 : C tab 3 = s98 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s3 := by decide
theorem c5 : C tab 4 = s99 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s4 := by decide
theorem c6 : C tab 5 = s9 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s5 := by decide
theorem c7 : C tab 6 = s100 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s6 := by decide
theorem c8 : C tab 7 = s100 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s7 := by decide
theorem c9 : C tab 8 = s101 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s8 := by decide
theorem c10 : C tab 9 = s100 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s9 := by decide
theorem c11 : C tab 10 = s11 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s7 := by decide
theorem c12 : C tab 11 = s9 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s9 := by decide
theorem c13 : C tab 12 = s9 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s6 := by decide
theorem c14 : C tab 13 = s9 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s6 := by decide
theorem c15 : C tab 14 = s11 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s0 := by decide
theorem c16 : C tab 15 = s102 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s2 := by decide
theorem c17 : C tab 16 = s6 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s1 := by decide
theorem c18 : C tab 17 = s103 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s10 := by decide
theorem c19 : C tab 18 = s6 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s11 := by decide
theorem c20 : C tab 19 = s6 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s8 := by decide
theorem c21 : C tab 20 = s6 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s11 := by decide
theorem c22 : C tab 21 = s9 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s1 := by decide
theorem c23 : C tab 22 = s11 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s12 := by decide
theorem c24 : C tab 23 = s11 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s13 := by decide
theorem c25 : C tab 24 = s104 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s2 := by decide
theorem c26 : C tab 25 = s12 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s14 := by decide
theorem c27 : C tab 26 = s105 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s15 := by decide
theorem c28 : C tab 27 = s104 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem d29 : D tab 28 = s16 := by decide
theorem c29 : C tab 28 = s106 := by decide
theorem len29 : 28 < tab.dom.length := by decide
theorem d30 : D tab 29 = s6 := by decide
theorem c30 : C tab 29 = s106 := by decide
theorem len30 : 29 < tab.dom.length := by decide
theorem d31 : D tab 30 = s7 := by decide
theorem c31 : C tab 30 = s107 := by decide
theorem len31 : 30 < tab.dom.length := by decide
theorem d32 : D tab 31 = s8 := by decide
theorem c32 : C tab 31 = s106 := by decide
theorem len32 : 31 < tab.dom.length := by decide
theorem d33 : D tab 32 = s13 := by decide
theorem c33 : C tab 32 = s103 := by decide
theorem len33 : 32 < tab.dom.length := by decide
theorem d34 : D tab 33 = s17 := by decide
theorem c34 : C tab 33 = s6 := by decide
theorem len34 : 33 < tab.dom.length := by decide
theorem d35 : D tab 34 = s9 := by decide
theorem c35 : C tab 34 = s6 := by decide
theorem len35 : 34 < tab.dom.length := by decide
theorem d36 : D tab 35 = s2 := by decide
theorem c36 : C tab 35 = s9 := by decide
theorem len36 : 35 < tab.dom.length := by decide
theorem d37 : D tab 36 = s13 := by decide
theorem c37 : C tab 36 = s108 := by decide
theorem len37 : 36 < tab.dom.length := by decide
theorem d38 : D tab 37 = s18 := by decide
theorem c38 : C tab 37 = s108 := by decide
theorem len38 : 37 < tab.dom.length := by decide
theorem d39 : D tab 38 = s19 := by decide
theorem c39 : C tab 38 = s9 := by decide
theorem len39 : 38 < tab.dom.length := by decide
theorem d40 : D tab 39 = s20 := by decide
theorem c40 : C tab 39 = s9 := by decide
theorem len40 : 39 < tab.dom.length := by decide
theorem d41 : D tab 40 = s21 := by decide
theorem c41 : C tab 40 = s109 := by decide
theorem len41 : 40 < tab.dom.length := by decide
theorem d42 : D tab 41 = s6 := by decide
theorem c42 : C tab 41 = s109 := by decide
theorem len42 : 41 < tab.dom.length := by decide
theorem d43 : D tab 42 = s8 := by decide
theorem c43 : C tab 42 = s109 := by decide
theorem len43 : 42 < tab.dom.length := by decide
theorem d44 : D tab 43 = s19 := by decide
theorem c44 : C tab 43 = s103 := by decide
theorem len44 : 43 < tab.dom.length := by decide
theorem d45 : D tab 44 = s22 := by decide
theorem c45 : C tab 44 = s6 := by decide
theorem len45 : 44 < tab.dom.length := by decide
theorem d46 : D tab 45 = s23 := by decide
theorem c46 : C tab 45 = s6 := by decide
theorem len46 : 45 < tab.dom.length := by decide
theorem d47 : D tab 46 = s24 := by decide
theorem c47 : C tab 46 = s11 := by decide
theorem len47 : 46 < tab.dom.length := by decide
theorem d48 : D tab 47 = s24 := by decide
theorem c48 : C tab 47 = s110 := by decide
theorem len48 : 47 < tab.dom.length := by decide
end Blc.H45.H45F9692402957530
