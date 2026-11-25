import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g3128 on (row false false k25 5 7 2 4 [4,2,1,0]) using bank tags []
certRow g3130 on (row false false k25 5 7 2 4 [4,3,0,0]) using bank tags []
certRow g3132 on (row false false k25 5 7 2 4 [5,0,0,2]) using bank tags []
certRow g3134 on (row false false k25 5 7 2 4 [5,0,1,1]) using bank tags []
certRow g3136 on (row false false k25 5 7 2 4 [5,0,2,0]) using bank tags []
certRow g3138 on (row false false k25 5 7 2 4 [5,1,0,1]) using bank tags []
certRow g3140 on (row false false k25 5 7 2 4 [5,1,1,0]) using bank tags []
certRow g3142 on (row false false k25 5 7 2 4 [5,2,0,0]) using bank tags []
certRow g3144 on (row false false k25 5 7 2 4 [6,0,0,1]) using bank tags []
certRow g3146 on (row false false k25 5 7 2 4 [6,0,1,0]) using bank tags []
certRow g3148 on (row false false k25 5 7 2 4 [6,1,0,0]) using bank tags []
theorem g3150 : BadRow (row false false k25 5 7 2 4 [7,0,0,0]) := sparse_row false false k25 5 7 2 4 [7,0,0,0] (by decide)
theorem g4784 : BadRow (row false false k30 5 8 2 3 [0,0,8]) := sparse_row false false k30 5 8 2 3 [0,0,8] (by decide)
certRow g4786 on (row false false k30 5 8 2 3 [0,1,7]) using bank tags []
certRow g4788 on (row false false k30 5 8 2 3 [0,2,6]) using bank tags []
certRow g4790 on (row false false k30 5 8 2 3 [0,3,5]) using bank tags []
certRow g4792 on (row false false k30 5 8 2 3 [0,4,4]) using bank tags []
certRow g4794 on (row false false k30 5 8 2 3 [0,5,3]) using bank tags []
certRow g4796 on (row false false k30 5 8 2 3 [0,6,2]) using bank tags []
certRow g4798 on (row false false k30 5 8 2 3 [0,7,1]) using bank tags []
theorem g4800 : BadRow (row false false k30 5 8 2 3 [0,8,0]) := sparse_row false false k30 5 8 2 3 [0,8,0] (by decide)
certRow g4802 on (row false false k30 5 8 2 3 [1,0,7]) using bank tags []
certRow g4804 on (row false false k30 5 8 2 3 [1,1,6]) using bank tags []
certRow g4806 on (row false false k30 5 8 2 3 [1,2,5]) using bank tags []
end Blc.SelfintSingleObject.Compact45
