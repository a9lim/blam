import Blc.SelfintCompact45.TreeG26420Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26420Tree4 on (tug26420 sh6x4) withHints bank eachTags[[44,0,9,10,56,39,8,20,24,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26420
treeCase g26420Tree5 on (tug26420 sh6x5) withHints bank eachTags[[45,10,33],[2,6,6],[2,6],[6]] except thg26420
treeCase g26420Tree6 on (tug26420 sh6x6) withHints bank eachTags[[1,10,33],[2,6,6],[2,6],[6]] except thg26420
treeCase g26420Tree7 on (tug26420 sh6x7) withHints bank eachTags[[1,39,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26420
end Blc.SelfintSingleObject.Compact45
