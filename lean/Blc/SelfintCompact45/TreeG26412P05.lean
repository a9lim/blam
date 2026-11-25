import Blc.SelfintCompact45.TreeG26412Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26412Tree20 on (tug26412 sh6x20) withHints bank eachTags[[],[],[],[]] except thg26412
treeCase g26412Tree21 on (tug26412 sh6x21) withHints bank eachTags[[8,8,2,2,2,20,20,6,6,6],[8,8,6,9,6,6],[8,8,9,44,88,0,28,6,6,6],[2,2,2,20,20,6,6,6]] except thg26412
treeCase g26412Tree22 on (tug26412 sh6x22) withHints bank eachTags[[],[],[],[]] except thg26412
treeCase g26412Tree23 on (tug26412 sh6x23) withHints bank eachTags[[],[],[2],[6]] except thg26412
end Blc.SelfintSingleObject.Compact45
