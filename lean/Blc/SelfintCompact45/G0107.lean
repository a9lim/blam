import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data11
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11998 on (row false false k94 6 4 2 4 [0,1,2,1]) using bank tags [14,1,2,1,2,2,2,20,2,2,35,2,2,14,1,2,1,2,2,2,20,2,2,20,2,2,14,1,2,1,2,2,2,20,2,2,20,2,2]
certRow g11999 on (row false true k139 6 4 2 4 [0,1,2,1]) using bank tags [2,2,14,2,2,14,2,2,14]
certRow g12000 on (row false false k94 6 4 2 4 [0,1,3,0]) using bank tags []
certRow g12001 on (row false true k139 6 4 2 4 [0,1,3,0]) using bank tags []
certRow g12002 on (row false false k94 6 4 2 4 [0,2,0,2]) using bank tags []
certRow g12003 on (row false true k139 6 4 2 4 [0,2,0,2]) using bank tags []
certRow g12004 on (row false false k94 6 4 2 4 [0,2,1,1]) using bank tags [14,1,2,1,2,2,2,35,2,2,11,2,2,14,1,2,1,2,2,2,1,2,2,35,2,2,14,1,2,1,2,2,2,1,2,2,20,2,2]
certRow g12005 on (row false true k139 6 4 2 4 [0,2,1,1]) using bank tags [2,2,14,2,2,14,2,2,14]
certRow g12006 on (row false false k94 6 4 2 4 [0,2,2,0]) using bank tags []
certRow g12007 on (row false true k139 6 4 2 4 [0,2,2,0]) using bank tags []
certRow g12008 on (row false false k94 6 4 2 4 [0,3,0,1]) using bank tags []
certRow g12009 on (row false true k139 6 4 2 4 [0,3,0,1]) using bank tags []
certRow g12010 on (row false false k94 6 4 2 4 [0,3,1,0]) using bank tags []
certRow g12011 on (row false true k139 6 4 2 4 [0,3,1,0]) using bank tags []
theorem g12012 : BadRow (row false false k94 6 4 2 4 [0,4,0,0]) := sparse_row false false k94 6 4 2 4 [0,4,0,0] (by decide)
theorem g12013 : BadRow (row false true k139 6 4 2 4 [0,4,0,0]) := sparse_row false true k139 6 4 2 4 [0,4,0,0] (by decide)
certRow g12014 on (row false false k94 6 4 2 4 [1,0,0,3]) using bank tags []
certRow g12015 on (row false true k139 6 4 2 4 [1,0,0,3]) using bank tags []
tagSlices g12016 on (row false false k94 6 4 2 4 [1,0,1,2]) byParts (fun j => piece 12 j false false k94 6 4 2 4 [1,0,1,2]) byCover (pieces_cover 12 (by decide) false false k94 6 4 2 4 [1,0,1,2]) withHints bank eachTags[[],[14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2],[14,1,2,1,2,2,2,36,2,2,23,2,2],[14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,36,2,2,46,2,2],[],[44,44,5,44,1,44,36,44,44,1,44,1,44,36,44,1,44,2,44,44,9,44,20,44,2,44,1,44,33],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
