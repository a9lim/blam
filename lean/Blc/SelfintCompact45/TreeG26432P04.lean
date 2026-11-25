import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree16 on (tug26432 sh6x16) withHints bank eachTags[[],[],[],[]] except thg26432
treeCase g26432Tree17 on (tug26432 sh6x17) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,21,6,2,6,6],[18,2,6,20,6,2,6],[2,2,6,20,6,6]] except thg26432
treeCase g26432Tree18 on (tug26432 sh6x18) withHints bank eachTags[[],[],[],[]] except thg26432
treeCase g26432Tree19 on (tug26432 sh6x19) withHints bank eachTags[[],[],[2,2,20],[6,6]] except thg26432
end Blc.SelfintSingleObject.Compact45
