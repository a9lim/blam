import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree12 on (tug26432 sh6x12) withHints bank eachTags[[],[],[],[]] except thg26432
treeCase g26432Tree13 on (tug26432 sh6x13) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26432
treeCase g26432Tree14 on (tug26432 sh6x14) withHints bank eachTags[[8,8,8,8,8,8,2,6,6],[9,24,20,6,2,6,6],[18,2,6,20,6,2,6],[2,2,6,1,6,6]] except thg26432
treeCase g26432Tree15 on (tug26432 sh6x15) withHints bank eachTags[[8,8,8,8,8,8,8,8,8,8,2,6,6],[9,9,24,59,59,6,2,2,6,6,6],[18,2,2,6,20,20,6,2,2,6,6],[2,2,2,6,1,1,6,6,6]] except thg26432
end Blc.SelfintSingleObject.Compact45
