import Blc.SelfintCompact45.TreeG26462Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26462Tree12 on (tug26462 sh6x12) withHints bank eachTags[[28,20,20,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26462
treeCase g26462Tree13 on (tug26462 sh6x13) withHints bank eachTags[[],[],[],[]] except thg26462
treeCase g26462Tree14 on (tug26462 sh6x14) withHints bank eachTags[[],[],[2,2,20,20,20,20],[6,6,6]] except thg26462
treeCase g26462Tree15 on (tug26462 sh6x15) withHints bank eachTags[[],[],[2,2,2,20,20,20],[6,6,6]] except thg26462
end Blc.SelfintSingleObject.Compact45
