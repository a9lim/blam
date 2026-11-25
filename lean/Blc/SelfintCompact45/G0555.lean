import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data20
import Blc.SelfintCompact45.Frames.Data21
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g21864 on (row false false k247 8 3 2 4 [0,0,0,3]) using bank tags []
certRow g21865 on (row false true k262 8 3 2 4 [0,0,0,3]) using bank tags []
certRow g21866 on (row false false k247 8 3 2 4 [0,0,1,2]) using bank tags [2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,10,61,44,44,44,24,61,2,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9,44,24,44,44,2,44,61]
certRow g21867 on (row false true k262 8 3 2 4 [0,0,1,2]) using bank tags [1,1,1,1,1,1,1,1,44,22,1,1,1]
certRow g21868 on (row false false k247 8 3 2 4 [0,0,2,1]) using bank tags [2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,10,61,44,44,44,18,61,2,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9,44,18,44,44,2,44,61]
certRow g21869 on (row false true k262 8 3 2 4 [0,0,2,1]) using bank tags [1,1,1,1,1,1,1,1,44,22,1,1,1]
certRow g21870 on (row false false k247 8 3 2 4 [0,0,3,0]) using bank tags []
certRow g21871 on (row false true k262 8 3 2 4 [0,0,3,0]) using bank tags []
tagSlices g21872 on (row false false k247 8 3 2 4 [0,1,0,2]) byParts (fun j => piece 12 j false false k247 8 3 2 4 [0,1,0,2]) byCover (pieces_cover 12 (by decide) false false k247 8 3 2 4 [0,1,0,2]) withHints bank eachTags[[],[2,2,2,9,61,2,2,2,9,61],[2,2,2,9,61],[2,2,2,9,61,2,2,2,9,61],[],[2,2,2,10,61,2,2,2,10,61,44,44,44,23,61,2,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9,44,23,44,44,2,44,61,44,44,44,27,61,2,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9,44,27,44,44,2,44,61],[],[],[],[],[],[]] except []
certRow g21873 on (row false true k262 8 3 2 4 [0,1,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g21874 on (row false false k247 8 3 2 4 [0,1,1,1]) using bank tags []
certRow g21875 on (row false true k262 8 3 2 4 [0,1,1,1]) using bank tags []
certRow g21876 on (row false false k247 8 3 2 4 [0,1,2,0]) using bank tags [2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,10,61,44,44,44,23,61,2,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9,44,23,44,44,2,44,61]
certRow g21877 on (row false true k262 8 3 2 4 [0,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,44,22,1,1,1]
end Blc.SelfintSingleObject.Compact45
