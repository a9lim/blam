import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Data1

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s1,s2,s3,s4,s5,s6,s7,s5,s8,s9,s5,s5,s10,s10,s11,s12,s10,s13,s0,s0,s14,s15,s0,s16,s17,s0,s0,s18,s19,s20,s0,s0,s19,s0,s0,s21,s22,s23,s0,s0,s22,s0,s0,s24,s0,s0,s25,s26,s27,s0,s0,s21,s28,s29,s30,s31,s0,s0,s21,s21,s32,s33,s34,s35,s36,s37,s38,s0,s0,s37,s0,s0,s21,s21,s21,s0,s39,s36,s0,s0,s39,s0,s0,s0,s40,s34,s0,s0,s40,s0,s0,s41,s42,s43,s0,s0,s32,s44,s45,s46,s47,s48,s0,s49,s50,s0,s0,s32,s32,s51,s52,s53,s54,s55,s56,s57,s0,s0,s58,s0,s0,s32,s32,s32,s0,s59,s60,s0,s0,s59,s0,s0,s55,s61,s62,s63,s0,s0,s62,s0,s0,s0,s64,s61,s0,s0,s64,s0,s0,s65,s0,s66,s67,s68,s69,s70,s71,s72,s0,s0,s71,s0,s0,s32,s32,s32,s51,s52,s53,s54,s55,s56,s57,s73,s74,s0,s75,s76,s0,s0,s32,s0,s77,s78,s0,s0,s77,s0,s0,s75,s0,s79,s55,s0,s0,s79,s0,s0,s0,s80,s81,s0,s0,s80,s0,s0,s53,s0,s82,s70,s0,s0,s82,s0,s0,s83,s0,s84,s85,s86,s87,s88,s89,s90,s91,s92,s0,s93,s94,s0,s0,s32,s32,s32,s32,s51,s52,s53,s54,s55,s56,s57,s73,s74,s95,s96,s0,s97,s98,s0,s0,s32,s99,s100,s101,s0,s0,s100,s0,s0,s0,s102,s99,s0,s0,s102,s0,s0,s75,s103,s104,s0,s0,s103,s0,s0,s0,s105,s75,s0,s0,s105,s0,s0,s0,s106,s107,s0,s0,s106,s0,s0,s108,s109,s110,s0,s0,s109,s0,s0,s0,s111,s108,s0,s0,s111,s0,s0,s112,s113,s114,s0,s0,s113,s0,s0,s0,s115,s112,s0,s0,s115,s0,s0,s0,s116,s88,s0,s0,s116,s0,s0,s117,s0,s118,s119,s32,s32,s52,s54,s56,s73,s95],[s0,s3,s3,s3,s2,s2,s3,s3,s7,s3,s3,s3,s9,s5,s3,s3,s3,s11,s3,s120,s12,s12,s12,s121,s12,s122,s122,s17,s12,s123,s123,s124,s123,s125,s125,s19,s12,s126,s126,s127,s126,s128,s128,s22,s3,s129,s3,s3,s3,s3,s130,s26,s26,s3,s3,s3,s3,s131,s30,s30,s29,s30,s132,s132,s133,s133,s134,s134,s135,s134,s136,s136,s37,s37,s35,s33,s133,s137,s137,s138,s137,s139,s139,s39,s132,s140,s140,s141,s140,s142,s142,s40,s3,s3,s3,s143,s42,s42,s3,s3,s3,s144,s144,s145,s144,s146,s146,s50,s47,s45,s47,s147,s147,s148,s148,s149,s149,s150,s149,s151,s151,s58,s56,s54,s52,s147,s152,s152,s153,s152,s154,s154,s59,s59,s144,s155,s155,s156,s155,s157,s157,s62,s144,s158,s158,s159,s158,s160,s160,s64,s3,s65,s3,s3,s3,s161,s161,s162,s162,s163,s162,s164,s164,s71,s71,s69,s67,s69,s165,s165,s166,s166,s167,s167,s168,s168,s169,s168,s170,s170,s76,s73,s167,s171,s171,s172,s171,s173,s173,s77,s77,s174,s175,s175,s176,s175,s177,s177,s79,s178,s179,s179,s180,s179,s181,s181,s80,s80,s161,s182,s182,s183,s182,s184,s184,s82,s3,s83,s3,s3,s3,s185,s185,s186,s186,s187,s187,s188,s187,s189,s189,s94,s91,s89,s87,s85,s87,s190,s190,s191,s191,s192,s192,s193,s193,s194,s194,s195,s194,s196,s196,s98,s95,s194,s197,s197,s198,s197,s199,s199,s100,s194,s200,s200,s201,s200,s202,s202,s102,s193,s203,s203,s204,s203,s205,s205,s103,s193,s206,s206,s207,s206,s208,s208,s105,s192,s209,s209,s210,s209,s211,s211,s106,s187,s212,s212,s213,s212,s214,s214,s109,s187,s215,s215,s216,s215,s217,s217,s111,s186,s218,s218,s219,s218,s220,s220,s113,s186,s221,s221,s222,s221,s223,s223,s115,s185,s224,s224,s225,s224,s226,s226,s116,s3,s117,s3,s3,s3,s119,s3,s3,s3,s3,s3]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s1 := by decide
theorem c2 : C tab 1 = s3 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s2 := by decide
theorem c3 : C tab 2 = s3 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s3 := by decide
theorem c4 : C tab 3 = s3 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s4 := by decide
theorem c5 : C tab 4 = s2 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s5 := by decide
theorem c6 : C tab 5 = s2 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s6 := by decide
theorem c7 : C tab 6 = s3 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s7 := by decide
theorem c8 : C tab 7 = s3 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s5 := by decide
theorem c9 : C tab 8 = s7 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s8 := by decide
theorem c10 : C tab 9 = s3 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s9 := by decide
theorem c11 : C tab 10 = s3 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s5 := by decide
theorem c12 : C tab 11 = s3 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s5 := by decide
theorem c13 : C tab 12 = s9 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s10 := by decide
theorem c14 : C tab 13 = s5 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s10 := by decide
theorem c15 : C tab 14 = s3 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s11 := by decide
theorem c16 : C tab 15 = s3 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s12 := by decide
theorem c17 : C tab 16 = s3 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s10 := by decide
theorem c18 : C tab 17 = s11 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s13 := by decide
theorem c19 : C tab 18 = s3 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s0 := by decide
theorem c20 : C tab 19 = s120 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s0 := by decide
theorem c21 : C tab 20 = s12 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s14 := by decide
theorem c22 : C tab 21 = s12 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s15 := by decide
theorem c23 : C tab 22 = s12 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s0 := by decide
theorem c24 : C tab 23 = s121 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s16 := by decide
theorem c25 : C tab 24 = s12 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s17 := by decide
theorem c26 : C tab 25 = s122 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s0 := by decide
theorem c27 : C tab 26 = s122 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s0 := by decide
theorem c28 : C tab 27 = s17 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem d29 : D tab 28 = s18 := by decide
theorem c29 : C tab 28 = s12 := by decide
theorem len29 : 28 < tab.dom.length := by decide
theorem d30 : D tab 29 = s19 := by decide
theorem c30 : C tab 29 = s123 := by decide
theorem len30 : 29 < tab.dom.length := by decide
theorem d31 : D tab 30 = s20 := by decide
theorem c31 : C tab 30 = s123 := by decide
theorem len31 : 30 < tab.dom.length := by decide
theorem d32 : D tab 31 = s0 := by decide
theorem c32 : C tab 31 = s124 := by decide
theorem len32 : 31 < tab.dom.length := by decide
theorem d33 : D tab 32 = s0 := by decide
theorem c33 : C tab 32 = s123 := by decide
theorem len33 : 32 < tab.dom.length := by decide
theorem d34 : D tab 33 = s19 := by decide
theorem c34 : C tab 33 = s125 := by decide
theorem len34 : 33 < tab.dom.length := by decide
theorem d35 : D tab 34 = s0 := by decide
theorem c35 : C tab 34 = s125 := by decide
theorem len35 : 34 < tab.dom.length := by decide
theorem d36 : D tab 35 = s0 := by decide
theorem c36 : C tab 35 = s19 := by decide
theorem len36 : 35 < tab.dom.length := by decide
theorem d37 : D tab 36 = s21 := by decide
theorem c37 : C tab 36 = s12 := by decide
theorem len37 : 36 < tab.dom.length := by decide
theorem d38 : D tab 37 = s22 := by decide
theorem c38 : C tab 37 = s126 := by decide
theorem len38 : 37 < tab.dom.length := by decide
theorem d39 : D tab 38 = s23 := by decide
theorem c39 : C tab 38 = s126 := by decide
theorem len39 : 38 < tab.dom.length := by decide
theorem d40 : D tab 39 = s0 := by decide
theorem c40 : C tab 39 = s127 := by decide
theorem len40 : 39 < tab.dom.length := by decide
theorem d41 : D tab 40 = s0 := by decide
theorem c41 : C tab 40 = s126 := by decide
theorem len41 : 40 < tab.dom.length := by decide
theorem d42 : D tab 41 = s22 := by decide
theorem c42 : C tab 41 = s128 := by decide
theorem len42 : 41 < tab.dom.length := by decide
theorem d43 : D tab 42 = s0 := by decide
theorem c43 : C tab 42 = s128 := by decide
theorem len43 : 42 < tab.dom.length := by decide
theorem d44 : D tab 43 = s0 := by decide
theorem c44 : C tab 43 = s22 := by decide
theorem len44 : 43 < tab.dom.length := by decide
theorem d45 : D tab 44 = s24 := by decide
theorem c45 : C tab 44 = s3 := by decide
theorem len45 : 44 < tab.dom.length := by decide
theorem d46 : D tab 45 = s0 := by decide
theorem c46 : C tab 45 = s129 := by decide
theorem len46 : 45 < tab.dom.length := by decide
theorem d47 : D tab 46 = s0 := by decide
theorem c47 : C tab 46 = s3 := by decide
theorem len47 : 46 < tab.dom.length := by decide
theorem d48 : D tab 47 = s25 := by decide
theorem c48 : C tab 47 = s3 := by decide
theorem len48 : 47 < tab.dom.length := by decide
end Blc.H44.H44F4846434772678
