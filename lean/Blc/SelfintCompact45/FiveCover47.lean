import Blc.SelfintGridCertificate45
import Blc.SelfintCompact45.Frames.Proof282
import Blc.SelfintCompact45.Frames.Proof283
import Blc.SelfintCompact45.Frames.Proof284
import Blc.SelfintCompact45.Frames.Proof285
import Blc.SelfintCompact45.Frames.Proof286
import Blc.SelfintCompact45.Frames.Proof287
import Blc.SelfintCompact45.G0659
import Blc.SelfintCompact45.G0660
import Blc.SelfintCompact45.G0661
import Blc.SelfintCompact45.G0662
import Blc.SelfintCompact45.G0664
import Blc.SelfintCompact45.G0665
import Blc.SelfintCompact45.G0666
import Blc.SelfintCompact45.G0668
import Blc.SelfintCompact45.G0669
import Blc.SelfintCompact45.G0671
import Blc.SelfintCompact45.G0672
import Blc.SelfintCompact45.G0673
import Blc.SelfintCompact45.G0674
import Blc.SelfintCompact45.G0675
import Blc.SelfintCompact45.G0676
import Blc.SelfintCompact45.G0677
import Blc.SelfintCompact45.G0679
import Blc.SelfintCompact45.G0680
import Blc.SelfintCompact45.G0681
import Blc.SelfintCompact45.G0682
import Blc.SelfintCompact45.G0683
import Blc.SelfintCompact45.G0685
import Blc.SelfintCompact45.G0687
import Blc.SelfintCompact45.G0688
import Blc.SelfintCompact45.G0689
import Blc.SelfintCompact45.G0690
import Blc.SelfintCompact45.G0691
import Blc.SelfintCompact45.G0692
import Blc.SelfintCompact45.G0693
import Blc.SelfintCompact45.G0694
import Blc.SelfintCompact45.G0695
import Blc.SelfintCompact45.G0696
import Blc.SelfintCompact45.G0697
import Blc.SelfintCompact45.G0698
import Blc.SelfintCompact45.G0700
import Blc.SelfintCompact45.G0702
import Blc.SelfintCompact45.G0703
import Blc.SelfintCompact45.G0704
import Blc.SelfintCompact45.G0705
import Blc.SelfintCompact45.G0706
import Blc.SelfintCompact45.G0707
import Blc.SelfintCompact45.G0709
import Blc.SelfintCompact45.G0710
import Blc.SelfintCompact45.G0711
import Blc.SelfintCompact45.G0712
import Blc.SelfintCompact45.G0713
import Blc.SelfintCompact45.G0714
import Blc.SelfintCompact45.G0715
import Blc.SelfintCompact45.G0716
import Blc.SelfintCompact45.G0717
import Blc.SelfintCompact45.G0718
import Blc.SelfintCompact45.G0719
import Blc.SelfintCompact45.G0720
import Blc.SelfintCompact45.G0721
import Blc.SelfintCompact45.G0722
import Blc.SelfintCompact45.G0723
import Blc.SelfintCompact45.G0724
import Blc.SelfintResidual45.Claims017
import Blc.SelfintResidual45.Claims029
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fiveCell282 : Five ⟨8,5,5,false,3,3,5⟩ :=
  five_empty ⟨8,5,5,false,3,3,5⟩ cf282
theorem fiveCell283 : Five ⟨8,5,5,false,3,3,6⟩ :=
  five_empty ⟨8,5,5,false,3,3,6⟩ cf283
theorem fiveCell284 : Five ⟨8,5,5,false,4,2,3⟩ :=
  five_cell ⟨8,5,5,false,4,2,3⟩ k284 cf284 rowProofs%[g22978,g22980,g22982,g22984,g22986,g22988,g22990,g22992,g22994,g22996,g22998,g23000,g23002,g23004,g23006]
theorem fiveCell285 : Five ⟨8,5,5,false,4,2,4⟩ :=
  five_cell ⟨8,5,5,false,4,2,4⟩ k285 cf285 rowProofs%[g23008,g23010,g23012,g23014,g23016,g23018,g23020,g23022,g23024,g23026,g23028,g23030,g23032,g23034,g23036,g23038,g23040,g23042,g23044,g23046,g23048,(g23050 rowProofs%[no9570093201018,no9570160309882,no9555933230714]),g23052,g23054,g23056,g23058,g23060,g23062,g23064,g23066,g23068,g23070,g23072,g23074,g23076]
theorem fiveCell286 : Five ⟨8,5,5,false,4,2,5⟩ :=
  five_cell ⟨8,5,5,false,4,2,5⟩ k286 cf286 rowProofs%[g23078,g23080,g23082,g23084,g23086,g23088,g23090,g23092,g23094,g23096,g23098,g23100,g23102,g23104,g23106,g23108,g23110,g23112,g23114,g23116,g23118,g23120,g23122,g23124,g23126,g23128,g23130,g23132,g23134,g23136,g23138,g23140,g23142,g23144,g23146,g23148,g23150,g23152,g23154,g23156,g23158,g23160,g23162,g23164,g23166,g23168,g23170,g23172,g23174,g23176,g23178,g23180,g23182,g23184,g23186,g23188,g23190,g23192,g23194,g23196,g23198,g23200,g23202,g23204,g23206,g23208,g23210,g23212,g23214,g23216]
theorem fiveCell287 : Five ⟨8,5,5,false,4,2,6⟩ :=
  five_cell ⟨8,5,5,false,4,2,6⟩ k287 cf287 rowProofs%[g23218,g23220,g23222,g23224,g23226,g23228,g23230,g23232,g23234,g23236,g23238,g23240,g23242,g23244,g23246,g23248,g23250,g23252,g23254,g23256,g23258,g23260,g23262,g23264,g23266,g23268,g23270,g23272,g23274,g23276,g23278,g23280,g23282,g23284,g23286,g23288,g23290,g23292,g23294,g23296,g23298,g23300,g23302,g23304,g23306,g23308,g23310,g23312,g23314,g23316,g23318,g23320,g23322,g23324,g23326,g23328,g23330,g23332,g23334,g23336,g23338,g23340,g23342,g23344,g23346,g23348,g23350,g23352,g23354,g23356,g23358,g23360,g23362,g23364,g23366,g23368,g23370,g23372,g23374,g23376,g23378,g23380,g23382,g23384,g23386,g23388,g23390,g23392,g23394,g23396,g23398,g23400,g23402,g23404,g23406,g23408,g23410,g23412,g23414,g23416,g23418,g23420,g23422,g23424,g23426,g23428,g23430,g23432,g23434,g23436,g23438,g23440,g23442,g23444,g23446,g23448,g23450,g23452,g23454,g23456,g23458,g23460,g23462,g23464,g23466,g23468]
end Blc.SelfintSingleObject.Compact45
