import Blc.SelfintCompact45.TreeG26430Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26430Tree16 on (tug26430 sh6x16) withHints bank eachTags[[8,8,8,8,8,8,8,8,8,8,2,6,6],[9,9,24,18,18,6,2,2,6,6,6],[18,2,2,6,8,20,6,2,2,6,6],[2,2,2,6,21,20,6,6,6]] except thg26430
treeCase g26430Tree17 on (tug26430 sh6x17) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,20,6,2,6,6],[18,2,6,49,6,2,6],[2,2,6,20,6,6]] except thg26430
treeCase g26430Tree18 on (tug26430 sh6x18) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,18,6,2,6,6],[18,2,6,8,6,2,6],[2,2,6,23,6,6]] except thg26430
treeCase g26430Tree19 on (tug26430 sh6x19) withHints bank eachTags[[],[],[2],[6]] except thg26430
end Blc.SelfintSingleObject.Compact45
