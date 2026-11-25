import Blc.SelfintCompact45.TreeG26462Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26462Tree32 on (tug26462 sh6x32) withHints bank eachTags[[],[],[],[]] except thg26462
treeCase g26462Tree33 on (tug26462 sh6x33) withHints bank eachTags[[2,2,20,6,6],[],[2,2],[2,20,6]] except thg26462
treeCase g26462Tree34 on (tug26462 sh6x34) withHints bank eachTags[[2,2,2,6,6],[],[2,2],[2,2,6]] except thg26462
treeCase g26462Tree35 on (tug26462 sh6x35) withHints bank eachTags[[],[],[],[]] except thg26462
end Blc.SelfintSingleObject.Compact45
