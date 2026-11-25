import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Data6

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def tab : Table := ⟨[s0,s1,s1,s2,s2,s3,s3,s4,s5,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s14,s0,s15,s16,s17,s18,s14,s0,s19,s20,s21,s0,s22,s21,s0,s0,s23,s24,s25,s26,s20,s26,s27,s27,s0,s19,s28,s28,s0,s29,s30,s31,s32,s33,s34,s32,s35,s36,s0,s37,s37,s0,s38,s39,s32,s40,s41,s37,s0,s42,s43,s43,s0,s0,s44,s44,s45,s46,s44,s0,s47,s43,s0,s48,s49,s44,s0,s50,s43,s0,s0,s0,s0,s0,s51,s52,s52,s53,s43,s54,s55,s43,s0,s56,s57,s58,s58,s0,s59,s60,s43,s0,s61,s58,s0,s44,s0,s44,s62,s58,s0,s63,s58,s0,s0,s64,s64,s65,s66,s66,s67,s68,s66,s69,s70,s0,s0,s0,s71,s72,s66,s0,s73,s0,s0,s74,s9,s0,s0,s0,s75,s0,s0,s0,s0,s0,s0,s0,s76,s77,s77,s78,s43,s79,s80,s43,s0,s81,s82,s83,s83,s0,s84,s85,s43,s0,s86,s83,s0,s87,s83,s0,s88,s83,s0,s0,s89,s90,s91,s92,s0,s0,s93,s94,s95,s0,s0,s96,s9,s0,s97,s98,s99,s100,s99,s0,s0,s101,s102,s103,s104,s105,s103,s0,s106,s107,s107,s0,s108,s9,s0,s109,s43,s0,s110,s111,s112,s113,s114,s115,s115,s0,s116,s117,s118,s115,s0,s119,s111,s0,s0,s120,s109,s121,s121,s0,s122,s123,s124,s125,s126,s127,s128,s124,s0,s129,s130,s124,s0,s131,s132,s132,s0,s133,s134,s135,s136,s134,s0,s137,s132,s0,s138,s139,s134,s0,s140,s132,s0,s141,s142,s142,s0,s143,s144,s145,s133,s142,s146,s146,s0,s131,s147,s147,s0,s148,s148,s149,s150,s151,s151,s152,s153,s151,s0,s154,s0,s155,s155,s0,s156,s157,s151,s158,s159,s155,s0,s160,s161,s161,s0,s0,s0,s132,s162,s163,s132,s0,s164,s161,s0,s165,s166,s132,s0,s167,s161,s0,s0,s0,s168,s168,s169,s161,s170,s171,s161,s0,s172,s0,s0,s0,s173,s174,s161,s0,s175,s0,s0,s132,s0,s132,s176,s0,s0,s177,s0,s0,s178,s179,s179,s180,s161,s181,s182,s161,s0,s183,s184,s184,s0,s185,s186,s161,s0,s187,s184,s0,s188,s132,s189,s184,s0,s190,s184,s0,s0,s191,s192,s193,s184,s0,s188,s0,s141,s194,s194,s0,s195,s196,s197,s197,s198,s199,s197,s0,s200,s197,s0,s201,s202,s197,s0,s203,s204,s204,s0,s205,s206,s206,s207,s197,s208,s209,s197,s210,s211,s212,s212,s0,s213,s214,s197,s0,s215,s212,s0,s216,s204,s0,s203,s217,s217,s0,s217,s218,s219,s220,s220,s221,s222,s220,s223,s224,s220,s0,s225,s226,s227,s228,s220,s0,s229,s230,s230,s0,s204,s231,s232,s204,s0,s233,s230,s0,s234,s235,s204,s0,s236,s230,s0,s237,s0,s238,s238,s239,s240,s238,s0,s241,s230,s0,s242,s243,s238,s0,s244,s230,s0,s237,s0,s0,s204,s245,s0,s0,s246,s0,s0,s0,s247,s247,s248,s230,s249,s250,s230,s0,s251,s0,s0,s0,s252,s253,s230,s0,s254,s0,s0,s204,s0,s204,s255,s0,s0,s256,s0,s0,s257,s257,s258,s204,s259,s260,s204,s0,s261,s0,s0,s0,s262,s263,s204,s0,s264,s0,s0,s0,s265,s265,s266,s267,s265,s0,s268,s204,s0,s269,s270,s265,s0,s271,s204,s0,s272,s0,s0,s206,s273,s204,s274,s275,s204,s0,s276,s212,s0,s277,s278,s204,s0,s279,s212,s0,s216,s280,s281,s282,s283,s284,s285,s285,s0,s286,s287,s212,s288,s289,s285,s0,s217,s0,s290,s290,s291,s220,s292,s293,s220,s294,s295,s0,s296,s296,s0,s297,s298,s220,s299,s300,s296,s0,s301,s230,s0,s0,s204,s302,s303,s204,s0,s304,s230,s0,s234,s235,s238,s305,s306,s238,s0,s307,s230,s0,s242,s243,s308,s309,s309,s0,s310,s311,s312,s313,s311,s0,s314,s220,s0,s315,s316,s311,s0,s317,s220,s0,s229,s318,s319,s319,s320,s230,s321,s322,s230,s0,s323,s324,s325,s325,s0,s326,s327,s230,s0,s328,s325,s0,s204,s329,s325,s0,s330,s325,s0,s0,s331,s332,s332,s0,s333,s334,s335,s336,s325,s0,s337,s338,s339,s325,s0,s0,s340,s340,s341,s342,s342,s343,s344,s342,s345,s346,s0,s0,s0,s347,s348,s342,s0,s349,s0,s0,s0,s0,s350,s0,s0,s0,s0,s351,s352,s353,s354,s355,s0,s356,s357,s358,s358,s0,s359,s0,s360,s361,s361,s0,s362,s363,s364,s365,s366,s364,s0,s367,s368,s369,s370,s364,s0,s371,s372,s372,s0,s0,s373,s374,s217,s375,s376,s372,s0,s377,s378,s217,s0,s379,s372,s0,s380,s220,s0,s381,s382,s383,s384,s385,s386,s386,s0,s387,s230,s0,s388,s389,s389,s0,s390,s391,s392,s393,s394,s395,s396,s392,s0,s397,s398,s399,s400,s392,s0,s401,s402,s402,s0,s403,s404,s405,s405,s406,s402,s407,s408,s402,s409,s410,s411,s411,s0,s412,s413,s402,s0,s414,s411,s0,s415,s0,s0,s0,s416,s0,s0,s0,s0,s417,s418,s419,s420,s421,s422,s423,s402,s0,s424,s425,s419,s0,s426,s402,s0,s427,s428,s428,s0,s0,s429,s430,s431,s428,s0,s432,s0,s0,s433,s434,s434,s0,s435,s436,s437,s438,s439,s437,s0,s440,s441,s442,s443,s437,s0,s444,s445,s445,s0,s446,s220,s0,s411,s447,s230,s0,s448,s230,s449,s0,s450,s451,s451,s0,s452,s451,s0,s0,s204,s453,s454,s455,s455,s0,s456,s455,s0,s0,s457,s458,s459,s460,s445,s0,s461,s462,s458,s0,s463,s445,s0,s464,s465,s465,s0,s466,s467,s468,s465,s0,s415,s469,s469,s0,s470,s471,s472,s473,s474,s475,s476,s472,s0,s477,s478,s472,s0,s479,s480,s480,s0,s451,s481,s480,s482,s483,s480,s484,s485,s455,s0,s486,s487,s480,s0,s488,s455,s0,s489,s451,s0,s490,s451,s0,s0,s451,s0,s491,s492,s493,s494,s480,s0,s495,s496,s451,s0,s497,s480,s0,s498,s455,s0,s499,s500,s455,s0,s489,s455,s0,s501,s501,s502,s501,s0,s503,s501,s0,s0,s504,s220,s0,s505,s375,s506,s507,s507,s0,s507,s508,s501,s509,s510,s501,s0,s511,s512,s512,s0,s513,s514,s501,s0,s515,s512,s0,s516,s517,s518,s512,s0,s388,s389,s519,s220,s0,s229,s402,s0,s230,s0,s507,s0],[s0,s11,s520,s520,s11,s521,s11,s522,s522,s11,s523,s523,s11,s5,s11,s11,s11,s7,s7,s11,s10,s11,s11,s11,s16,s16,s15,s15,s16,s16,s11,s11,s11,s524,s22,s524,s524,s11,s21,s11,s11,s24,s11,s20,s20,s20,s11,s23,s23,s11,s28,s28,s11,s11,s11,s525,s34,s29,s29,s34,s33,s34,s34,s34,s526,s39,s39,s38,s38,s32,s38,s37,s41,s14,s526,s527,s527,s527,s528,s46,s46,s45,s46,s46,s46,s529,s49,s49,s48,s46,s530,s527,s531,s526,s526,s34,s532,s532,s533,s533,s533,s534,s55,s52,s52,s55,s54,s55,s55,s55,s535,s60,s60,s59,s536,s537,s34,s538,s538,s539,s539,s539,s540,s63,s539,s538,s541,s58,s541,s542,s542,s542,s543,s68,s64,s68,s67,s68,s68,s68,s544,s72,s72,s71,s51,s51,s545,s543,s546,s546,s69,s75,s542,s547,s538,s34,s548,s525,s525,s11,s549,s549,s550,s550,s550,s551,s80,s77,s77,s80,s79,s80,s80,s80,s552,s85,s85,s84,s11,s11,s553,s553,s553,s554,s88,s553,s11,s83,s11,s89,s17,s11,s11,s94,s94,s93,s76,s76,s35,s76,s76,s76,s11,s11,s555,s100,s11,s99,s99,s11,s11,s11,s104,s104,s103,s104,s556,s98,s98,s97,s97,s97,s557,s98,s98,s11,s11,s11,s111,s11,s113,s11,s11,s117,s117,s116,s11,s11,s558,s119,s11,s110,s110,s11,s559,s11,s121,s121,s11,s11,s11,s126,s126,s125,s126,s128,s128,s129,s129,s124,s129,s560,s126,s126,s11,s11,s11,s561,s136,s136,s135,s136,s136,s136,s562,s139,s139,s138,s138,s134,s138,s563,s561,s561,s11,s11,s11,s144,s11,s133,s133,s133,s11,s143,s143,s11,s564,s147,s147,s564,s565,s565,s565,s566,s153,s148,s148,s153,s152,s153,s153,s153,s567,s157,s157,s156,s156,s151,s156,s568,s155,s159,s567,s569,s569,s569,s570,s163,s163,s162,s163,s163,s163,s571,s166,s166,s165,s569,s572,s566,s565,s573,s573,s574,s574,s574,s575,s171,s168,s171,s170,s171,s171,s171,s576,s174,s174,s173,s577,s578,s565,s579,s579,s580,s580,s176,s177,s581,s581,s564,s582,s582,s583,s583,s583,s584,s182,s179,s182,s181,s182,s182,s182,s585,s186,s186,s185,s185,s564,s586,s586,s587,s587,s587,s588,s190,s11,s11,s11,s11,s192,s192,s193,s178,s178,s11,s589,s589,s194,s194,s589,s590,s590,s590,s591,s199,s199,s198,s199,s200,s200,s201,s201,s197,s201,s592,s593,s593,s11,s594,s594,s595,s595,s595,s596,s209,s206,s209,s208,s209,s209,s209,s597,s214,s214,s213,s213,s213,s598,s205,s205,s214,s599,s600,s601,s217,s217,s601,s602,s602,s602,s603,s222,s222,s221,s222,s222,s221,s226,s226,s225,s225,s220,s225,s604,s221,s605,s605,s605,s606,s232,s232,s231,s232,s232,s607,s608,s235,s235,s234,s234,s609,s609,s603,s610,s610,s610,s611,s240,s240,s239,s240,s240,s612,s613,s243,s243,s242,s242,s238,s244,s612,s614,s614,s615,s615,s245,s246,s616,s616,s617,s618,s618,s619,s619,s619,s620,s250,s247,s250,s249,s250,s250,s250,s621,s253,s253,s252,s622,s623,s617,s624,s624,s625,s625,s255,s256,s597,s209,s626,s626,s627,s627,s627,s628,s260,s257,s260,s259,s260,s260,s260,s629,s263,s263,s262,s209,s209,s596,s630,s630,s630,s631,s267,s267,s266,s267,s267,s267,s632,s270,s270,s269,s269,s265,s271,s594,s633,s633,s634,s634,s634,s635,s275,s275,s274,s275,s275,s275,s636,s278,s278,s277,s277,s594,s594,s11,s11,s11,s281,s11,s283,s11,s11,s11,s637,s287,s287,s286,s287,s280,s280,s287,s638,s638,s639,s639,s639,s640,s293,s290,s290,s293,s292,s293,s293,s293,s641,s298,s298,s297,s297,s297,s296,s300,s641,s642,s642,s642,s643,s303,s303,s302,s303,s303,s640,s644,s644,s644,s645,s306,s306,s305,s306,s306,s637,s637,s11,s646,s11,s309,s11,s11,s11,s647,s313,s313,s312,s313,s313,s313,s648,s316,s316,s315,s315,s308,s308,s316,s649,s649,s650,s650,s650,s651,s322,s319,s319,s322,s321,s322,s322,s322,s652,s327,s327,s326,s316,s653,s653,s654,s654,s654,s655,s330,s647,s647,s11,s656,s11,s332,s11,s11,s11,s335,s11,s11,s338,s338,s337,s331,s331,s338,s657,s325,s657,s658,s658,s658,s659,s344,s340,s344,s343,s344,s344,s344,s660,s348,s348,s347,s659,s661,s661,s345,s350,s658,s662,s338,s338,s338,s11,s11,s354,s11,s11,s353,s11,s356,s356,s357,s352,s352,s11,s663,s11,s361,s361,s11,s11,s11,s365,s11,s11,s11,s368,s368,s367,s367,s364,s367,s664,s351,s11,s11,s11,s665,s374,s374,s373,s374,s374,s374,s666,s378,s378,s377,s377,s377,s667,s665,s665,s11,s11,s11,s382,s11,s384,s384,s384,s668,s381,s381,s11,s669,s11,s389,s389,s11,s11,s11,s394,s394,s393,s394,s394,s393,s398,s398,s397,s397,s392,s397,s670,s393,s393,s393,s394,s671,s671,s672,s672,s672,s673,s408,s405,s408,s407,s408,s408,s408,s674,s413,s413,s412,s412,s408,s673,s675,s675,s409,s416,s672,s676,s394,s394,s394,s11,s11,s11,s421,s421,s420,s421,s421,s421,s677,s425,s425,s424,s424,s419,s424,s678,s421,s421,s11,s11,s11,s430,s430,s429,s431,s418,s418,s11,s679,s11,s434,s434,s11,s11,s11,s438,s11,s11,s11,s441,s441,s440,s440,s437,s440,s680,s417,s417,s681,s417,s682,s682,s683,s683,s683,s684,s448,s404,s404,s684,s685,s685,s685,s686,s452,s684,s687,s451,s451,s687,s688,s688,s688,s689,s456,s417,s417,s11,s11,s11,s459,s11,s11,s11,s690,s462,s462,s461,s461,s458,s461,s691,s11,s11,s11,s11,s467,s457,s457,s11,s692,s11,s469,s469,s11,s11,s11,s474,s474,s473,s474,s476,s476,s477,s477,s472,s477,s693,s474,s694,s694,s695,s695,s695,s696,s483,s483,s482,s483,s483,s483,s697,s487,s487,s486,s486,s696,s698,s698,s698,s699,s490,s695,s700,s11,s11,s11,s492,s492,s491,s492,s492,s492,s701,s496,s496,s495,s495,s495,s702,s11,s11,s11,s499,s499,s499,s703,s455,s499,s704,s704,s705,s705,s705,s706,s503,s403,s403,s399,s403,s403,s403,s403,s707,s708,s11,s709,s709,s710,s710,s710,s711,s510,s507,s510,s509,s510,s510,s510,s712,s514,s514,s513,s11,s11,s11,s11,s517,s506,s506,s375,s375,s505,s505,s505,s713,s505,s714,s715,s716]⟩
theorem d1 : D tab 0 = s0 := by decide
theorem c1 : C tab 0 = s0 := by decide
theorem len1 : 0 < tab.dom.length := by decide
theorem d2 : D tab 1 = s1 := by decide
theorem c2 : C tab 1 = s11 := by decide
theorem len2 : 1 < tab.dom.length := by decide
theorem d3 : D tab 2 = s1 := by decide
theorem c3 : C tab 2 = s520 := by decide
theorem len3 : 2 < tab.dom.length := by decide
theorem d4 : D tab 3 = s2 := by decide
theorem c4 : C tab 3 = s520 := by decide
theorem len4 : 3 < tab.dom.length := by decide
theorem d5 : D tab 4 = s2 := by decide
theorem c5 : C tab 4 = s11 := by decide
theorem len5 : 4 < tab.dom.length := by decide
theorem d6 : D tab 5 = s3 := by decide
theorem c6 : C tab 5 = s521 := by decide
theorem len6 : 5 < tab.dom.length := by decide
theorem d7 : D tab 6 = s3 := by decide
theorem c7 : C tab 6 = s11 := by decide
theorem len7 : 6 < tab.dom.length := by decide
theorem d8 : D tab 7 = s4 := by decide
theorem c8 : C tab 7 = s522 := by decide
theorem len8 : 7 < tab.dom.length := by decide
theorem d9 : D tab 8 = s5 := by decide
theorem c9 : C tab 8 = s522 := by decide
theorem len9 : 8 < tab.dom.length := by decide
theorem d10 : D tab 9 = s5 := by decide
theorem c10 : C tab 9 = s11 := by decide
theorem len10 : 9 < tab.dom.length := by decide
theorem d11 : D tab 10 = s6 := by decide
theorem c11 : C tab 10 = s523 := by decide
theorem len11 : 10 < tab.dom.length := by decide
theorem d12 : D tab 11 = s7 := by decide
theorem c12 : C tab 11 = s523 := by decide
theorem len12 : 11 < tab.dom.length := by decide
theorem d13 : D tab 12 = s8 := by decide
theorem c13 : C tab 12 = s11 := by decide
theorem len13 : 12 < tab.dom.length := by decide
theorem d14 : D tab 13 = s9 := by decide
theorem c14 : C tab 13 = s5 := by decide
theorem len14 : 13 < tab.dom.length := by decide
theorem d15 : D tab 14 = s10 := by decide
theorem c15 : C tab 14 = s11 := by decide
theorem len15 : 14 < tab.dom.length := by decide
theorem d16 : D tab 15 = s11 := by decide
theorem c16 : C tab 15 = s11 := by decide
theorem len16 : 15 < tab.dom.length := by decide
theorem d17 : D tab 16 = s12 := by decide
theorem c17 : C tab 16 = s11 := by decide
theorem len17 : 16 < tab.dom.length := by decide
theorem d18 : D tab 17 = s13 := by decide
theorem c18 : C tab 17 = s7 := by decide
theorem len18 : 17 < tab.dom.length := by decide
theorem d19 : D tab 18 = s14 := by decide
theorem c19 : C tab 18 = s7 := by decide
theorem len19 : 18 < tab.dom.length := by decide
theorem d20 : D tab 19 = s14 := by decide
theorem c20 : C tab 19 = s11 := by decide
theorem len20 : 19 < tab.dom.length := by decide
theorem d21 : D tab 20 = s0 := by decide
theorem c21 : C tab 20 = s10 := by decide
theorem len21 : 20 < tab.dom.length := by decide
theorem d22 : D tab 21 = s15 := by decide
theorem c22 : C tab 21 = s11 := by decide
theorem len22 : 21 < tab.dom.length := by decide
theorem d23 : D tab 22 = s16 := by decide
theorem c23 : C tab 22 = s11 := by decide
theorem len23 : 22 < tab.dom.length := by decide
theorem d24 : D tab 23 = s17 := by decide
theorem c24 : C tab 23 = s11 := by decide
theorem len24 : 23 < tab.dom.length := by decide
theorem d25 : D tab 24 = s18 := by decide
theorem c25 : C tab 24 = s16 := by decide
theorem len25 : 24 < tab.dom.length := by decide
theorem d26 : D tab 25 = s14 := by decide
theorem c26 : C tab 25 = s16 := by decide
theorem len26 : 25 < tab.dom.length := by decide
theorem d27 : D tab 26 = s0 := by decide
theorem c27 : C tab 26 = s15 := by decide
theorem len27 : 26 < tab.dom.length := by decide
theorem d28 : D tab 27 = s19 := by decide
theorem c28 : C tab 27 = s15 := by decide
theorem len28 : 27 < tab.dom.length := by decide
theorem d29 : D tab 28 = s20 := by decide
theorem c29 : C tab 28 = s16 := by decide
theorem len29 : 28 < tab.dom.length := by decide
theorem d30 : D tab 29 = s21 := by decide
theorem c30 : C tab 29 = s16 := by decide
theorem len30 : 29 < tab.dom.length := by decide
theorem d31 : D tab 30 = s0 := by decide
theorem c31 : C tab 30 = s11 := by decide
theorem len31 : 30 < tab.dom.length := by decide
theorem d32 : D tab 31 = s22 := by decide
end Blc.H45.H45F9573528477238
