import Blc.SelfintCompact45.TreeG26430Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26430Tree4 on (tug26430 sh6x4) withHints bank eachTags[[44,0,9,10,47,48,8,23,24,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26430
treeCase g26430Tree5 on (tug26430 sh6x5) withHints bank eachTags[[1,10,33],[2,6,6],[2,6],[6]] except thg26430
treeCase g26430Tree6 on (tug26430 sh6x6) withHints bank eachTags[[1,10,33],[2,6,6],[2,6],[6]] except thg26430
treeCase g26430Tree7 on (tug26430 sh6x7) withHints bank eachTags[[1,37,19,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26430
end Blc.SelfintSingleObject.Compact45
