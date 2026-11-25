import Blc.SelfintGridCertificate45
import Blc.SelfintCompact45.Frames.Proof324
import Blc.SelfintCompact45.Frames.Proof325
import Blc.SelfintCompact45.Frames.Proof326
import Blc.SelfintCompact45.Frames.Proof327
import Blc.SelfintCompact45.Frames.Proof328
import Blc.SelfintCompact45.Frames.Proof329
import Blc.SelfintCompact45.G0939
import Blc.SelfintCompact45.G0940
import Blc.SelfintCompact45.G0941
import Blc.SelfintCompact45.G0942
import Blc.SelfintCompact45.G0944
import Blc.SelfintCompact45.G0945
import Blc.SelfintCompact45.G0946
import Blc.SelfintCompact45.G0948
import Blc.SelfintCompact45.G0950
import Blc.SelfintCompact45.G0952
import Blc.SelfintCompact45.G0953
import Blc.SelfintCompact45.G0954
import Blc.SelfintCompact45.G0955
import Blc.SelfintCompact45.G0956
import Blc.SelfintCompact45.G0957
import Blc.SelfintCompact45.G0958
import Blc.SelfintCompact45.G0959
import Blc.SelfintCompact45.G0961
import Blc.SelfintCompact45.G0963
import Blc.SelfintCompact45.G0964
import Blc.SelfintCompact45.G0965
import Blc.SelfintCompact45.G0966
import Blc.SelfintCompact45.G0967
import Blc.SelfintCompact45.G0968
import Blc.SelfintCompact45.G0969
import Blc.SelfintCompact45.G0970
import Blc.SelfintCompact45.G0971
import Blc.SelfintCompact45.G0972
import Blc.SelfintCompact45.G0973
import Blc.SelfintCompact45.G0974
import Blc.SelfintCompact45.G0975
import Blc.SelfintCompact45.G0976
import Blc.SelfintCompact45.G0977
import Blc.SelfintCompact45.G0978
import Blc.SelfintCompact45.G0979
import Blc.SelfintCompact45.G0980
import Blc.SelfintCompact45.G0981
import Blc.SelfintCompact45.G0982
import Blc.SelfintCompact45.G0983
import Blc.SelfintCompact45.G0984
import Blc.SelfintCompact45.G0985
import Blc.SelfintCompact45.G0986
import Blc.SelfintCompact45.G0988
import Blc.SelfintCompact45.G0989
import Blc.SelfintCompact45.G0990
import Blc.SelfintCompact45.G0991
import Blc.SelfintCompact45.G0992
import Blc.SelfintCompact45.G0993
import Blc.SelfintResidual45.Claims005
import Blc.SelfintResidual45.Claims016
import Blc.SelfintResidual45.Claims017
import Blc.SelfintResidual45.Claims018
import Blc.SelfintResidual45.Claims022
import Blc.SelfintResidual45.Claims028
import Blc.SelfintResidual45.Claims029
import Blc.SelfintResidual45.Claims034
import Blc.SelfintResidual45.Claims251
import Blc.SelfintResidual45.Claims252
import Blc.SelfintResidual45.Claims253
import Blc.SelfintResidual45.Claims254
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem eightCell0 : Size45.Eight ⟨8,6,3,false,3,2,3⟩ :=
  eight_cell ⟨8,6,3,false,3,2,3⟩ k324 cf324 rowProofs%[g25782,g25784,g25786,g25788,g25790,g25792,g25794,g25796,g25798,g25800]
theorem eightCell1 : Size45.Eight ⟨8,6,3,false,3,2,4⟩ :=
  eight_cell ⟨8,6,3,false,3,2,4⟩ k325 cf325 rowProofs%[g25802,(g25804 rowProofs%[no9572425337710,no9557124516718,no9553299311470,no11215283870594,no11189514066818,no9565983476590,no9540213672814]),(g25806 rowProofs%[no9572425337718]),g25808,(g25810 rowProofs%[no9572425337774,no9557124516782,no9553299311534]),g25812,(g25814 rowProofs%[no9557124517498]),(g25816 rowProofs%[no11215283932546,no9565983477558,no11215283877250,no11189514073474,no9565983476694,no9540213672918]),(g25818 rowProofs%[no9557124517690,no11215283932802,no11189514129026,no9565983477562,no9540213673786]),g25820,g25822,g25824,g25826,g25828,g25830,g25832,g25834,g25836,g25838,g25840]
theorem eightCell2 : Size45.Eight ⟨8,6,3,false,3,2,5⟩ :=
  eight_cell ⟨8,6,3,false,3,2,5⟩ k326 cf326 rowProofs%[g25842,(g25844 rowProofs%[no11219310402434,no9569468943214]),(g25846 rowProofs%[no9553352395638,no11219310402946,no9569468943222]),g25848,(g25850 rowProofs%[no9553352396398,no11219310451586,no9569468943982,no11219310406530,no9569468943278]),g25852,(g25854 rowProofs%[no9553352338874,no11219193523842,no9569467116986,no9553352396410,no11219310452354,no9569468943994]),(g25856 rowProofs%[no11219310464386,no9569468944182,no11219310409090,no9569468943318]),(g25858 rowProofs%[no9553352338906,no11219193525890,no9569467117018,no11219310464642,no9569468944186]),g25860,(g25862 rowProofs%[no11219262925698,no9569468201390]),g25864,(g25866 rowProofs%[no9553352341946,no9553352339130,no11219193720450,no9569467120058,no11219193540226,no9569467117242]),g25868,g25870,(g25872 rowProofs%[no9553352341994,no11219193723522,no9569467120106]),g25874,(g25876 rowProofs%[no9553352342746,no9553352339290,no11219193771650,no9569467120858,no11219193550466,no9569467117402]),(g25878 rowProofs%[no9553352342762,no11219193772674,no9569467120874,no11219262978690,no9569468202218]),g25880,g25882,g25884,g25886,g25888,g25890,g25892,g25894,g25896,g25898,g25900,g25902,g25904,g25906,g25908,g25910]
theorem eightCell3 : Size45.Eight ⟨8,6,3,false,3,2,6⟩ :=
  eight_cell ⟨8,6,3,false,3,2,6⟩ k327 cf327 rowProofs%[g25912,g25914,g25916,g25918,g25920,g25922,g25924,g25926,g25928,g25930,g25932,g25934,g25936,g25938,g25940,g25942,g25944,g25946,g25948,g25950,g25952,g25954,g25956,g25958,g25960,g25962,g25964,g25966,g25968,g25970,g25972,g25974,g25976,g25978,g25980,g25982,g25984,g25986,g25988,g25990,g25992,g25994,g25996,g25998,g26000,g26002,g26004,g26006,g26008,g26010,g26012,g26014,g26016,g26018,g26020,g26022]
theorem eightCell4 : Size45.Eight ⟨8,6,3,false,3,3,3⟩ :=
  eight_cell ⟨8,6,3,false,3,3,3⟩ k328 cf328 rowProofs%[g26024,g26026,g26028,g26030,g26032,g26034,g26036,g26038,g26040,g26042]
theorem eightCell5 : Size45.Eight ⟨8,6,3,false,3,3,4⟩ :=
  eight_cell ⟨8,6,3,false,3,3,4⟩ k329 cf329 rowProofs%[g26044,g26046,g26048,g26050,g26052,g26054,g26056,g26058,g26060,g26062,g26064,g26066,g26068,g26070,g26072,g26074,g26076,g26078,g26080,g26082]
end Blc.SelfintSingleObject.Compact45
