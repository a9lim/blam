import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23067 on (row false true k309 5 4 2 4 [2,1,1,0]) byParts (fun j => piece 12 j false true k309 5 4 2 4 [2,1,1,0]) byCover (pieces_cover 12 (by decide) false true k309 5 4 2 4 [2,1,1,0]) withHints bank eachTags[[],[2,14,2,14,2,14,37,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,39,10,18,1,1,9,19,1,1,36,1,1,12,1,1,1,19,1,1,12,37,1,1,1,2,14,2,14,2,14,37,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,1,10,18,1,1,9,19,1,1,36,1,1,12,1,1,20,30,1,1,12,37,1,1,1],[2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,1,10,20,1,1,9,1,1,20,20,1,1,12,1,20,1,1,1,1,12,1,1,1,1],[],[],[],[],[],[],[],[],[]] except []
certRow g23068 on (row false false k285 5 4 2 4 [2,2,0,0]) using bank tags []
certRow g23069 on (row false true k309 5 4 2 4 [2,2,0,0]) using bank tags []
certRow g23070 on (row false false k285 5 4 2 4 [3,0,0,1]) using bank tags []
certRow g23071 on (row false true k309 5 4 2 4 [3,0,0,1]) using bank tags []
certRow g23072 on (row false false k285 5 4 2 4 [3,0,1,0]) using bank tags []
certRow g23073 on (row false true k309 5 4 2 4 [3,0,1,0]) using bank tags []
certRow g23074 on (row false false k285 5 4 2 4 [3,1,0,0]) using bank tags []
certRow g23075 on (row false true k309 5 4 2 4 [3,1,0,0]) using bank tags []
theorem g23076 : BadRow (row false false k285 5 4 2 4 [4,0,0,0]) := sparse_row false false k285 5 4 2 4 [4,0,0,0] (by decide)
theorem g23077 : BadRow (row false true k309 5 4 2 4 [4,0,0,0]) := sparse_row false true k309 5 4 2 4 [4,0,0,0] (by decide)
theorem g23078 : BadRow (row false false k286 5 4 2 5 [0,0,0,0,4]) := sparse_row false false k286 5 4 2 5 [0,0,0,0,4] (by decide)
theorem g23079 : BadRow (row false true k310 5 4 2 5 [0,0,0,0,4]) := sparse_row false true k310 5 4 2 5 [0,0,0,0,4] (by decide)
certRow g23080 on (row false false k286 5 4 2 5 [0,0,0,1,3]) using bank tags []
certRow g23081 on (row false true k310 5 4 2 5 [0,0,0,1,3]) using bank tags []
certRow g23082 on (row false false k286 5 4 2 5 [0,0,0,2,2]) using bank tags []
certRow g23083 on (row false true k310 5 4 2 5 [0,0,0,2,2]) using bank tags []
certRow g23084 on (row false false k286 5 4 2 5 [0,0,0,3,1]) using bank tags []
certRow g23085 on (row false true k310 5 4 2 5 [0,0,0,3,1]) using bank tags []
theorem g23086 : BadRow (row false false k286 5 4 2 5 [0,0,0,4,0]) := sparse_row false false k286 5 4 2 5 [0,0,0,4,0] (by decide)
theorem g23087 : BadRow (row false true k310 5 4 2 5 [0,0,0,4,0]) := sparse_row false true k310 5 4 2 5 [0,0,0,4,0] (by decide)
certRow g23088 on (row false false k286 5 4 2 5 [0,0,1,0,3]) using bank tags []
certRow g23089 on (row false true k310 5 4 2 5 [0,0,1,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
