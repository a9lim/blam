import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g24009 on (row false true k317 5 5 2 4 [0,0,2,3]) using bank tags []
certRow g24010 on (row false false k293 5 5 2 4 [0,0,3,2]) using bank tags []
certRow g24011 on (row false true k317 5 5 2 4 [0,0,3,2]) using bank tags []
certRow g24012 on (row false false k293 5 5 2 4 [0,0,4,1]) using bank tags []
certRow g24013 on (row false true k317 5 5 2 4 [0,0,4,1]) using bank tags []
theorem g24014 : BadRow (row false false k293 5 5 2 4 [0,0,5,0]) := sparse_row false false k293 5 5 2 4 [0,0,5,0] (by decide)
theorem g24015 : BadRow (row false true k317 5 5 2 4 [0,0,5,0]) := sparse_row false true k317 5 5 2 4 [0,0,5,0] (by decide)
certRow g24016 on (row false false k293 5 5 2 4 [0,1,0,4]) using bank tags []
certRow g24017 on (row false true k317 5 5 2 4 [0,1,0,4]) using bank tags []
certRow g24018 on (row false false k293 5 5 2 4 [0,1,1,3]) using bank tags []
certRow g24019 on (row false true k317 5 5 2 4 [0,1,1,3]) using bank tags []
tagSlices g24020 on (row false false k293 5 5 2 4 [0,1,2,2]) byParts (fun j => piece 12 j false false k293 5 5 2 4 [0,1,2,2]) byCover (pieces_cover 12 (by decide) false false k293 5 5 2 4 [0,1,2,2]) withHints bank eachTags[[],[],[44,1,44,20,1,1,44,44,44,29,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,19,44,20,44,20,44,8],[44,1,44,20,1,1,44,44,44,17,44,40,44,1,44,19,44,1,44,19,44,1,44,1,44,20,44,17,44,19,44,20,44,30,44,8,44,1,44,20,1,1,44,44,44,17,44,40,44,1,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,37,44,21,44,20,44,8],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
