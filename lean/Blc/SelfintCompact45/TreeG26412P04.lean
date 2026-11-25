import Blc.SelfintCompact45.TreeG26412Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26412Tree16 on (tug26412 sh6x16) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,1,6,2,6,6],[18,2,6,8,6,2,6],[2,2,6,20,6,6]] except thg26412
treeCase g26412Tree17 on (tug26412 sh6x17) withHints bank eachTags[[],[],[],[]] except thg26412
treeCase g26412Tree18 on (tug26412 sh6x18) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,1,6,2,6,6],[18,2,6,8,6,2,6],[2,2,6,20,6,6]] except thg26412
treeCase g26412Tree19 on (tug26412 sh6x19) withHints bank eachTags[[8,8,2,2,20,1,6,6,6],[9,10,8,6,6],[44,48,9,52,59,6,6,6],[2,2,1,20,6,6,6]] except thg26412
end Blc.SelfintSingleObject.Compact45
