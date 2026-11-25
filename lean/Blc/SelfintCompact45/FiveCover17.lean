import Blc.SelfintGridCertificate45
import Blc.SelfintCompact45.Frames.Proof102
import Blc.SelfintCompact45.Frames.Proof103
import Blc.SelfintCompact45.Frames.Proof104
import Blc.SelfintCompact45.Frames.Proof105
import Blc.SelfintCompact45.Frames.Proof106
import Blc.SelfintCompact45.Frames.Proof107
import Blc.SelfintCompact45.G0110
import Blc.SelfintCompact45.G0111
import Blc.SelfintCompact45.G0112
import Blc.SelfintCompact45.G0113
import Blc.SelfintCompact45.G0114
import Blc.SelfintCompact45.G0115
import Blc.SelfintCompact45.G0116
import Blc.SelfintCompact45.G0117
import Blc.SelfintCompact45.G0118
import Blc.SelfintCompact45.G0119
import Blc.SelfintCompact45.G0120
import Blc.SelfintCompact45.G0122
import Blc.SelfintCompact45.G0123
import Blc.SelfintCompact45.G0124
import Blc.SelfintCompact45.G0125
import Blc.SelfintCompact45.G0127
import Blc.SelfintCompact45.G0128
import Blc.SelfintCompact45.G0129
import Blc.SelfintCompact45.G0135
import Blc.SelfintCompact45.G0136
import Blc.SelfintCompact45.G0137
import Blc.SelfintCompact45.G0138
import Blc.SelfintCompact45.G0139
import Blc.SelfintCompact45.G0140
import Blc.SelfintCompact45.G0141
import Blc.SelfintCompact45.G0142
import Blc.SelfintCompact45.G0143
import Blc.SelfintCompact45.G0144
import Blc.SelfintCompact45.G0145
import Blc.SelfintCompact45.G0146
import Blc.SelfintCompact45.G0147
import Blc.SelfintCompact45.G0148
import Blc.SelfintResidual45.Claims001
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fiveCell102 : Five ⟨7,6,7,false,5,2,3⟩ :=
  five_cell ⟨7,6,7,false,5,2,3⟩ k102 cf102 rowProofs%[g12674,g12676,g12678,g12680,g12682,g12684,g12686,g12688,g12690,g12692,g12694,g12696,g12698,g12700,g12702,g12704,g12706,g12708,g12710,g12712,g12714]
theorem fiveCell103 : Five ⟨7,6,7,false,5,2,4⟩ :=
  five_cell ⟨7,6,7,false,5,2,4⟩ k103 cf103 rowProofs%[g12716,g12718,g12720,g12722,g12724,g12726,g12728,g12730,g12732,g12734,g12736,g12738,g12740,g12742,g12744,g12746,g12748,g12750,g12752,g12754,g12756,g12758,g12760,g12762,g12764,g12766,g12768,g12770,g12772,g12774,g12776,g12778,g12780,g12782,g12784,g12786,g12788,g12790,g12792,g12794,g12796,g12798,g12800,g12802,g12804,g12806,g12808,g12810,g12812,g12814,g12816,g12818,g12820,g12822,g12824,g12826]
theorem fiveCell104 : Five ⟨7,6,7,false,5,2,5⟩ :=
  five_empty ⟨7,6,7,false,5,2,5⟩ cf104
theorem fiveCell105 : Five ⟨7,6,7,false,5,3,3⟩ :=
  five_cell ⟨7,6,7,false,5,3,3⟩ k105 cf105 rowProofs%[g13080,g13082,g13084,g13086,g13088,g13090,g13092,g13094,g13096,g13098,g13100,g13102,g13104,g13106,g13108,g13110,g13112,g13114,g13116,g13118,g13120]
theorem fiveCell106 : Five ⟨7,6,7,false,5,3,4⟩ :=
  five_cell ⟨7,6,7,false,5,3,4⟩ k106 cf106 rowProofs%[g13122,g13124,g13126,g13128,g13130,g13132,g13134,g13136,g13138,g13140,g13142,g13144,g13146,g13148,g13150,g13152,g13154,g13156,g13158,g13160,g13162,g13164,(g13166 rowProofs%[no8996615023390]),g13168,g13170,g13172,g13174,(g13176 rowProofs%[no8996615021422]),g13178,g13180,g13182,g13184,g13186,g13188,g13190,g13192,g13194,g13196,g13198,g13200,g13202,g13204,g13206,g13208,g13210,g13212,g13214,g13216,g13218,g13220,g13222,g13224,g13226,g13228,g13230,g13232]
theorem fiveCell107 : Five ⟨7,6,7,false,5,3,5⟩ :=
  five_cell ⟨7,6,7,false,5,3,5⟩ k107 cf107 rowProofs%[g13234,g13236,g13238,g13240,g13242,g13244,g13246,g13248,g13250,g13252,g13254,g13256,g13258,g13260,g13262,g13264,g13266,g13268,g13270,g13272,g13274,g13276,g13278,g13280,g13282,g13284,g13286,g13288,g13290,g13292,g13294,g13296,g13298,g13300,g13302,g13304,g13306,g13308,g13310,g13312,g13314,g13316,g13318,g13320,g13322,g13324,g13326,g13328,g13330,g13332,g13334,g13336,g13338,g13340,g13342,g13344,g13346,g13348,g13350,g13352,g13354,g13356,g13358,g13360,g13362,g13364,g13366,g13368,g13370,g13372,g13374,g13376,g13378,g13380,g13382,g13384,g13386,g13388,g13390,g13392,g13394,g13396,g13398,g13400,g13402,g13404,g13406,g13408,g13410,g13412,g13414,g13416,g13418,g13420,g13422,g13424,g13426,g13428,g13430,g13432,g13434,g13436,g13438,g13440,g13442,g13444,g13446,g13448,g13450,g13452,g13454,g13456,g13458,g13460,g13462,g13464,g13466,g13468,g13470,g13472,g13474,g13476,g13478,g13480,g13482,g13484]
end Blc.SelfintSingleObject.Compact45
