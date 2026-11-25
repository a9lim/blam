import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data11
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12026 on (row false false k94 6 4 2 4 [1,1,2,0]) using bank tags [14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2,44,44,5,44,1,44,1,44,44,1,44,1,44,20,44,1,44,2,44,44,9,44,24,44,2,44,1,44,33]
certRow g12027 on (row false true k139 6 4 2 4 [1,1,2,0]) using bank tags [2,2,14,2,2,14,2,2,14,26,3,26,3,1,1]
tagSlices g12028 on (row false false k94 6 4 2 4 [1,2,0,1]) byParts (fun j => piece 12 j false false k94 6 4 2 4 [1,2,0,1]) byCover (pieces_cover 12 (by decide) false false k94 6 4 2 4 [1,2,0,1]) withHints bank eachTags[[],[14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2],[14,1,2,1,2,2,2,36,2,2,1,2,2],[14,1,2,1,2,2,2,36,2,2,1,2,2,14,1,2,1,2,2,2,20,2,2,36,2,2],[],[44,44,5,44,1,44,18,44,44,1,44,59,44,18,44,1,44,2,44,44,9,44,48,44,2,44,59,44,33,44,44,5,44,1,8,8,44,44,1,8,8,8,8,44,1,44,2,44,44,9,8,8,44,2,8,8,44,33],[],[],[],[],[],[]] except []
certRow g12029 on (row false true k139 6 4 2 4 [1,2,0,1]) using bank tags [2,2,14,2,2,14,2,2,14,2,2,14,2,2,14,23,3,20,3,19,30,25,3,25,3,1,1]
certRow g12030 on (row false false k94 6 4 2 4 [1,2,1,0]) using bank tags [14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,36,2,2,23,2,2,44,44,5,44,1,44,1,44,44,1,44,1,44,20,44,1,44,2,44,44,9,44,23,44,2,44,1,44,33]
certRow g12031 on (row false true k139 6 4 2 4 [1,2,1,0]) using bank tags [2,2,14,2,2,14,2,2,14,19,3,20,3,1,1]
certRow g12032 on (row false false k94 6 4 2 4 [1,3,0,0]) using bank tags []
certRow g12033 on (row false true k139 6 4 2 4 [1,3,0,0]) using bank tags []
certRow g12034 on (row false false k94 6 4 2 4 [2,0,0,2]) using bank tags []
certRow g12035 on (row false true k139 6 4 2 4 [2,0,0,2]) using bank tags []
certRow g12036 on (row false false k94 6 4 2 4 [2,0,1,1]) using bank tags [14,1,2,1,2,2,2,35,2,2,33,2,2,14,1,2,1,2,2,2,1,2,2,33,2,2,14,1,2,1,2,2,2,35,2,2,37,2,2,14,1,2,1,2,2,2,1,2,2,33,2,2,14,1,2,1,2,2,2,1,2,2,1,2,2]
end Blc.SelfintSingleObject.Compact45
