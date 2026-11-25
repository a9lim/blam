import Blc.SelfintCompact45.TreeG26430Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26430Tree32 on (tug26430 sh6x32) withHints bank eachTags[[44,20,2,9,3,20,2,6,6,2,6,6],[],[18,2,2,2],[23,10,2,6,2,6,6]] except thg26430
treeCase g26430Tree33 on (tug26430 sh6x33) withHints bank eachTags[[8,8,6,9,9,44,52,6,6,6,2,6,6,2,6,6],[],[8,8,2,2,2,2],[8,8,9,21,6,2,20,6,2,20,6]] except thg26430
treeCase g26430Tree34 on (tug26430 sh6x34) withHints bank eachTags[[8,8,6,9,9,44,27,6,6,6,2,6,6,2,6,6],[],[8,8,2,2,2,2],[8,8,9,23,6,2,8,6,2,21,6]] except thg26430
treeCase g26430Tree35 on (tug26430 sh6x35) withHints bank eachTags[[],[],[2,2],[6]] except thg26430
end Blc.SelfintSingleObject.Compact45
