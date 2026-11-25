import Blc.SelfintCompact44.G0015
import Blc.SelfintCompact44.G0016
import Blc.SelfintCompact44.G0017
import Blc.SelfintCompact44.G0018
import Blc.SelfintCompact44.G0019
import Blc.SelfintCompact44.G0020
import Blc.SelfintCompact44.G0021
import Blc.SelfintCompact44.G0022
import Blc.SelfintCompact44.G0023
import Blc.SelfintCompact44.G0024
import Blc.SelfintCompact44.G0025
import Blc.SelfintCompact44.G0026
import Blc.SelfintCompact44.G0027
import Blc.SelfintCompact44.G0028
import Blc.SelfintCompact44.G0029
import Blc.SelfintCompact44.G0030
import Blc.SelfintCompact44.G0031
import Blc.SelfintCompact44.G0032
import Blc.SelfintCompact44.G0033
import Blc.SelfintCompact44.G0034
import Blc.SelfintCompact44.G0035
import Blc.SelfintCompact44.G0036
import Blc.SelfintCompact44.G0037
import Blc.SelfintCompact44.G0038
import Blc.SelfintCompact44.G0039
import Blc.SelfintCompact44.G0040
import Blc.SelfintCompact44.G0041
import Blc.SelfintCompact44.G0042
import Blc.SelfintCompact44.G0043
import Blc.SelfintCompact44.G0044
import Blc.SelfintCompact44.G0045
import Blc.SelfintCompact44.G0046
import Blc.SelfintCompact44.G0047
import Blc.SelfintCompact44.G0048
import Blc.SelfintCompact44.G0049
import Blc.SelfintProfileGrid
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.Compact44
open OperandGrammar SourceRefutations Grammar43
set_option maxRecDepth 32000
set_option Elab.async false
theorem fiveCell8 : Five ⟨7,5,8,false,4,2,5⟩ :=
  rowProofs%[g360,g362,g364,g366,g368,g370,g372,g374,g376,g378,g380,g382,g384,g386,g388,g390,g392,g394,g396,g398,g400,g402,g404,g406,g408,g410,g412,g414,g416,g418,g420,g422,g424,g426,g428,g430,g432,g434,g436,g438,g440,g442,g444,g446,g448,g450,g452,g454,g456,g458,g460,g462,g464,g466,g468,g470,g472,g474,g476,g478,g480,g482,g484,g486,g488,g490,g492,g494,g496,g498]
theorem fiveCell9 : Five ⟨7,5,8,false,4,3,3⟩ :=
  rowProofs%[g500,g502,g504,g506,g508,g510,g512,g514,g516,g518,g520,g522,g524,g526,g528]
theorem fiveCell10 : Five ⟨7,5,8,false,4,3,4⟩ :=
  rowProofs%[g530,g532,g534,g536,g538,g540,g542,g544,g546,g548,g550,g552,g554,g556,g558,g560,g562,g564,g566,g568,g570,g572,g574,g576,g578,g580,g582,g584,g586,g588,g590,g592,g594,g596,g598]
theorem fiveCell11 : Five ⟨7,5,8,false,4,3,5⟩ :=
  rowProofs%[g600,g602,g604,g606,g608,g610,g612,g614,g616,g618,g620,g622,g624,g626,g628,g630,g632,g634,g636,g638,g640,g642,g644,g646,g648,g650,g652,g654,g656,g658,g660,g662,g664,g666,g668,g670,g672,g674,g676,g678,g680,g682,g684,g686,g688,g690,g692,g694,g696,g698,g700,g702,g704,g706,g708,g710,g712,g714,g716,g718,g720,g722,g724,g726,g728,g730,g732,g734,g736,g738]
theorem fiveCell12 : Five ⟨7,5,8,false,5,2,3⟩ :=
  rowProofs%[g740,g742,g744,g746,g748,g750,g752,g754,g756,g758,g760,g762,g764,g766,g768,g770,g772,g774,g776,g778,g780]
theorem fiveCell13 : Five ⟨7,5,8,false,5,2,4⟩ :=
  rowProofs%[g782,g784,g786,g788,g790,g792,g794,g796,g798,g800,g802,g804,g806,g808,g810,g812,g814,g816,g818,g820,g822,g824,g826,g828,g830,g832,g834,g836,g838,g840,g842,g844,g846,g848,g850,g852,g854,g856,g858,g860,g862,g864,g866,g868,g870,g872,g874,g876,g878,g880,g882,g884,g886,g888,g890,g892]
theorem fiveCell14 : Five ⟨7,5,8,false,5,2,5⟩ :=
  rowProofs%[g894,g896,g898,g900,g902,g904,g906,g908,g910,g912,g914,g916,g918,g920,g922,g924,g926,g928,g930,g932,g934,g936,g938,g940,g942,g944,g946,g948,g950,g952,g954,g956,g958,g960,g962,g964,g966,g968,g970,g972,g974,g976,g978,g980,g982,g984,g986,g988,g990,g992,g994,g996,g998,g1000,g1002,g1004,g1006,g1008,g1010,g1012,g1014,g1016,g1018,g1020,g1022,g1024,g1026,g1028,g1030,g1032,g1034,g1036,g1038,g1040,g1042,g1044,g1046,g1048,g1050,g1052,g1054,g1056,g1058,g1060,g1062,g1064,g1066,g1068,g1070,g1072,g1074,g1076,g1078,g1080,g1082,g1084,g1086,g1088,g1090,g1092,g1094,g1096,g1098,g1100,g1102,g1104,g1106,g1108,g1110,g1112,g1114,g1116,g1118,g1120,g1122,g1124,g1126,g1128,g1130,g1132,g1134,g1136,g1138,g1140,g1142,g1144]
theorem fiveCell15 : Five ⟨7,5,8,false,5,3,3⟩ :=
  rowProofs%[g1146,g1148,g1150,g1152,g1154,g1156,g1158,g1160,g1162,g1164,g1166,g1168,g1170,g1172,g1174,g1176,g1178,g1180,g1182,g1184,g1186]
end Blc.SelfintSingleObject.Compact44
