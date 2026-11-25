import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g23010 on (row false false k285 5 4 2 4 [0,0,1,3]) using bank tags []
certRow g23011 on (row false true k309 5 4 2 4 [0,0,1,3]) using bank tags []
certRow g23012 on (row false false k285 5 4 2 4 [0,0,2,2]) using bank tags []
certRow g23013 on (row false true k309 5 4 2 4 [0,0,2,2]) using bank tags []
certRow g23014 on (row false false k285 5 4 2 4 [0,0,3,1]) using bank tags []
certRow g23015 on (row false true k309 5 4 2 4 [0,0,3,1]) using bank tags []
certRow g23016 on (row false false k285 5 4 2 4 [0,0,4,0]) using bank tags []
certRow g23017 on (row false true k309 5 4 2 4 [0,0,4,0]) using bank tags []
certRow g23018 on (row false false k285 5 4 2 4 [0,1,0,3]) using bank tags []
certRow g23019 on (row false true k309 5 4 2 4 [0,1,0,3]) using bank tags []
certRow g23020 on (row false false k285 5 4 2 4 [0,1,1,2]) using bank tags [2,2,12,1,2,2,12,1,1,2,2,1,2,2,12,1,2,2,12,1,1,2,2,1,2,2,12,1,2,2,12,1,1,2,2,1]
tagSlices g23021 on (row false true k309 5 4 2 4 [0,1,1,2]) byParts (fun j => piece 12 j false true k309 5 4 2 4 [0,1,1,2]) byCover (pieces_cover 12 (by decide) false true k309 5 4 2 4 [0,1,1,2]) withHints bank eachTags[[],[],[2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,20,11,1,1,1,12,1,1,21,20,1,1,12,1,20,21,21,1,1,12,1,1,1,1],[2,14,2,14,2,14,37,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,28,11,1,1,1,12,37,1,21,40,1,1,12,1,28,21,40,1,1,12,1,1,1,1,2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,21,11,1,1,1,12,1,1,21,18,1,1,12,1,21,21,20,1,1,12,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g23022 on (row false false k285 5 4 2 4 [0,1,2,1]) using bank tags [2,2,12,1,2,2,12,1,1,2,2,1,2,2,12,1,2,2,12,1,1,2,2,1,2,2,12,1,2,2,12,1,1,2,2,1]
end Blc.SelfintSingleObject.Compact45
