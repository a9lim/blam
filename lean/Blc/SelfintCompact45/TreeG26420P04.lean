import Blc.SelfintCompact45.TreeG26420Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26420Tree16 on (tug26420 sh6x16) withHints bank eachTags[[8,8,8,8,8,8,8,8,8,8,2,6,6],[9,9,24,30,88,6,2,2,6,6,6],[18,2,2,6,1,1,6,2,2,6,6],[2,2,2,6,45,1,6,6,6]] except thg26420
treeCase g26420Tree17 on (tug26420 sh6x17) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,20,6,2,6,6],[18,2,6,1,6,2,6],[2,2,6,1,6,6]] except thg26420
treeCase g26420Tree18 on (tug26420 sh6x18) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,20,6,2,6,6],[18,2,6,1,6,2,6],[2,2,6,1,6,6]] except thg26420
treeCase g26420Tree19 on (tug26420 sh6x19) withHints bank eachTags[[],[],[2],[6]] except thg26420
end Blc.SelfintSingleObject.Compact45
