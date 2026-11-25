import Blc.SelfintGridCertificate45
import Blc.SelfintCompact45.Frames.Proof198
import Blc.SelfintCompact45.Frames.Proof199
import Blc.SelfintCompact45.Frames.Proof200
import Blc.SelfintCompact45.Frames.Proof201
import Blc.SelfintCompact45.Frames.Proof202
import Blc.SelfintCompact45.Frames.Proof203
import Blc.SelfintCompact45.G0409
import Blc.SelfintCompact45.G0410
import Blc.SelfintCompact45.G0411
import Blc.SelfintCompact45.G0412
import Blc.SelfintCompact45.G0413
import Blc.SelfintCompact45.G0414
import Blc.SelfintCompact45.G0415
import Blc.SelfintCompact45.G0416
import Blc.SelfintCompact45.G0422
import Blc.SelfintCompact45.G0423
import Blc.SelfintCompact45.G0424
import Blc.SelfintCompact45.G0425
import Blc.SelfintCompact45.G0426
import Blc.SelfintCompact45.G0427
import Blc.SelfintCompact45.G0428
import Blc.SelfintCompact45.G0429
import Blc.SelfintCompact45.G0430
import Blc.SelfintCompact45.G0431
import Blc.SelfintCompact45.G0432
import Blc.SelfintCompact45.G0433
import Blc.SelfintCompact45.G0434
import Blc.SelfintCompact45.G0435
import Blc.SelfintCompact45.G0436
import Blc.SelfintCompact45.G0437
import Blc.SelfintCompact45.G0438
import Blc.SelfintCompact45.G0439
import Blc.SelfintCompact45.G0440
import Blc.SelfintResidual45.Claims017
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fiveCell198 : Five ⟨7,7,5,false,5,2,3⟩ :=
  five_cell ⟨7,7,5,false,5,2,3⟩ k198 cf198 rowProofs%[g20220,g20222,g20224,g20226,g20228,g20230,g20232,g20234,g20236,g20238,g20240,g20242,g20244,g20246,g20248,g20250,g20252,g20254,g20256,g20258,g20260]
theorem fiveCell199 : Five ⟨7,7,5,false,5,2,4⟩ :=
  five_cell ⟨7,7,5,false,5,2,4⟩ k199 cf199 rowProofs%[g20262,g20264,g20266,g20268,g20270,g20272,g20274,g20276,g20278,g20280,g20282,g20284,g20286,g20288,g20290,g20292,g20294,g20296,g20298,g20300,g20302,g20304,g20306,g20308,g20310,g20312,g20314,g20316,g20318,g20320,g20322,g20324,g20326,g20328,g20330,g20332,g20334,g20336,g20338,g20340,g20342,g20344,g20346,g20348,g20350,g20352,g20354,g20356,g20358,g20360,g20362,g20364,g20366,g20368,g20370,g20372]
theorem fiveCell200 : Five ⟨7,7,5,false,5,2,5⟩ :=
  five_empty ⟨7,7,5,false,5,2,5⟩ cf200
theorem fiveCell201 : Five ⟨7,7,5,false,5,3,3⟩ :=
  five_cell ⟨7,7,5,false,5,3,3⟩ k201 cf201 rowProofs%[g20626,g20628,g20630,g20632,g20634,g20636,g20638,g20640,g20642,g20644,g20646,g20648,g20650,g20652,g20654,g20656,g20658,g20660,g20662,g20664,g20666]
theorem fiveCell202 : Five ⟨7,7,5,false,5,3,4⟩ :=
  five_cell ⟨7,7,5,false,5,3,4⟩ k202 cf202 rowProofs%[g20668,g20670,g20672,g20674,g20676,g20678,g20680,g20682,g20684,g20686,g20688,g20690,g20692,g20694,g20696,g20698,g20700,g20702,g20704,g20706,g20708,g20710,(g20712 rowProofs%[no9553350159134]),g20714,g20716,g20718,g20720,(g20722 rowProofs%[no9553350157166]),g20724,g20726,g20728,g20730,g20732,g20734,g20736,g20738,g20740,g20742,g20744,g20746,g20748,g20750,g20752,g20754,g20756,g20758,g20760,g20762,g20764,g20766,g20768,g20770,g20772,g20774,g20776,g20778]
theorem fiveCell203 : Five ⟨7,7,5,false,5,3,5⟩ :=
  five_cell ⟨7,7,5,false,5,3,5⟩ k203 cf203 rowProofs%[g20780,g20782,g20784,g20786,g20788,g20790,g20792,g20794,g20796,g20798,g20800,g20802,g20804,g20806,g20808,g20810,g20812,g20814,g20816,g20818,g20820,g20822,g20824,g20826,g20828,g20830,g20832,g20834,g20836,g20838,g20840,g20842,g20844,g20846,g20848,g20850,g20852,g20854,g20856,g20858,g20860,g20862,g20864,g20866,g20868,g20870,g20872,g20874,g20876,g20878,g20880,g20882,g20884,g20886,g20888,g20890,g20892,g20894,g20896,g20898,g20900,g20902,g20904,g20906,g20908,g20910,g20912,g20914,g20916,g20918,g20920,g20922,g20924,g20926,g20928,g20930,g20932,g20934,g20936,g20938,g20940,g20942,g20944,g20946,g20948,g20950,g20952,g20954,g20956,g20958,g20960,g20962,g20964,g20966,g20968,g20970,g20972,g20974,g20976,g20978,g20980,g20982,g20984,g20986,g20988,g20990,g20992,g20994,g20996,g20998,g21000,g21002,g21004,g21006,g21008,g21010,g21012,g21014,g21016,g21018,g21020,g21022,g21024,g21026,g21028,g21030]
end Blc.SelfintSingleObject.Compact45
