import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g16163 on (row false true k167 6 7 2 5 [0,0,1,5,1]) using bank tags []
certRow g16165 on (row false true k167 6 7 2 5 [0,0,1,6,0]) using bank tags []
certRow g16167 on (row false true k167 6 7 2 5 [0,0,2,0,5]) using bank tags []
certRow g16169 on (row false true k167 6 7 2 5 [0,0,2,1,4]) using bank tags []
certRow g16171 on (row false true k167 6 7 2 5 [0,0,2,2,3]) using bank tags []
certRow g16173 on (row false true k167 6 7 2 5 [0,0,2,3,2]) using bank tags []
certRow g16175 on (row false true k167 6 7 2 5 [0,0,2,4,1]) using bank tags []
certRow g16177 on (row false true k167 6 7 2 5 [0,0,2,5,0]) using bank tags []
certRow g16179 on (row false true k167 6 7 2 5 [0,0,3,0,4]) using bank tags []
certRow g16181 on (row false true k167 6 7 2 5 [0,0,3,1,3]) using bank tags []
certRow g16183 on (row false true k167 6 7 2 5 [0,0,3,2,2]) using bank tags []
certRow g16185 on (row false true k167 6 7 2 5 [0,0,3,3,1]) using bank tags []
certRow g16187 on (row false true k167 6 7 2 5 [0,0,3,4,0]) using bank tags []
certRow g16189 on (row false true k167 6 7 2 5 [0,0,4,0,3]) using bank tags []
certRow g16191 on (row false true k167 6 7 2 5 [0,0,4,1,2]) using bank tags []
certRow g16193 on (row false true k167 6 7 2 5 [0,0,4,2,1]) using bank tags []
certRow g16195 on (row false true k167 6 7 2 5 [0,0,4,3,0]) using bank tags []
certRow g16197 on (row false true k167 6 7 2 5 [0,0,5,0,2]) using bank tags []
certRow g16199 on (row false true k167 6 7 2 5 [0,0,5,1,1]) using bank tags []
certRow g16201 on (row false true k167 6 7 2 5 [0,0,5,2,0]) using bank tags []
certRow g16203 on (row false true k167 6 7 2 5 [0,0,6,0,1]) using bank tags []
certRow g16205 on (row false true k167 6 7 2 5 [0,0,6,1,0]) using bank tags []
theorem g16207 : BadRow (row false true k167 6 7 2 5 [0,0,7,0,0]) := sparse_row false true k167 6 7 2 5 [0,0,7,0,0] (by decide)
certRow g16209 on (row false true k167 6 7 2 5 [0,1,0,0,6]) using bank tags []
end Blc.SelfintSingleObject.Compact45
