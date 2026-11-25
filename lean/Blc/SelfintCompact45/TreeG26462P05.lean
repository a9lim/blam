import Blc.SelfintCompact45.TreeG26462Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26462Tree20 on (tug26462 sh6x20) withHints bank eachTags[[],[],[],[]] except thg26462
treeCase g26462Tree21 on (tug26462 sh6x21) withHints bank eachTags[[],[],[2,2,20,20,20,20],[6,6,6]] except thg26462
treeCase g26462Tree22 on (tug26462 sh6x22) withHints bank eachTags[[],[],[2,2,2,20,20,20],[6,6,6]] except thg26462
treeCase g26462Tree23 on (tug26462 sh6x23) withHints bank eachTags[[3,20,6,6],[],[44,28,0,272,74,2,33,2,2,1,2,2,33,2,2,20],[2,9,24,36,6,6,6,6,6,6]] except thg26462
end Blc.SelfintSingleObject.Compact45
