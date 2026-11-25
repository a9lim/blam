import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24163 on (row false true k318 5 5 2 5 [0,1,0,2,2]) byParts (fun j => piece 12 j false true k318 5 5 2 5 [0,1,0,2,2]) byCover (pieces_cover 12 (by decide) false true k318 5 5 2 5 [0,1,0,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1],[2,14,1,1,12,19,1,2,14,1,1,12,30,1],[],[],[44,22,21,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1],[]] except []
certRow g24164 on (row false false k294 5 5 2 5 [0,1,0,3,1]) using bank tags []
certRow g24165 on (row false true k318 5 5 2 5 [0,1,0,3,1]) using bank tags []
certRow g24166 on (row false false k294 5 5 2 5 [0,1,0,4,0]) using bank tags []
certRow g24167 on (row false true k318 5 5 2 5 [0,1,0,4,0]) using bank tags []
certRow g24168 on (row false false k294 5 5 2 5 [0,1,1,0,3]) using bank tags []
certRow g24169 on (row false true k318 5 5 2 5 [0,1,1,0,3]) using bank tags []
certRow g24170 on (row false false k294 5 5 2 5 [0,1,1,1,2]) using bank tags [2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,37,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1]
certRow g24171 on (row false true k318 5 5 2 5 [0,1,1,1,2]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g24172 on (row false false k294 5 5 2 5 [0,1,1,2,1]) using bank tags [2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1]
certRow g24173 on (row false true k318 5 5 2 5 [0,1,1,2,1]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g24174 on (row false false k294 5 5 2 5 [0,1,1,3,0]) using bank tags []
certRow g24175 on (row false true k318 5 5 2 5 [0,1,1,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
