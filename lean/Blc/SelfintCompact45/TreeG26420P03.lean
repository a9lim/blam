import Blc.SelfintCompact45.TreeG26420Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26420Tree12 on (tug26420 sh6x12) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26420
treeCase g26420Tree13 on (tug26420 sh6x13) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26420
treeCase g26420Tree14 on (tug26420 sh6x14) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,40,6,2,6,6],[18,2,6,1,6,2,6],[2,2,6,45,6,6]] except thg26420
treeCase g26420Tree15 on (tug26420 sh6x15) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,20,6,2,6,6],[18,2,6,1,6,2,6],[2,2,6,1,6,6]] except thg26420
end Blc.SelfintSingleObject.Compact45
