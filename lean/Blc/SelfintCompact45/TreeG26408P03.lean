import Blc.SelfintCompact45.TreeG26408Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26408Tree12 on (tug26408 sh6x12) withHints bank eachTags[[1,10,33],[2,6,6],[2,6],[6]] except thg26408
treeCase g26408Tree13 on (tug26408 sh6x13) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26408
treeCase g26408Tree14 on (tug26408 sh6x14) withHints bank eachTags[[8,8,8,8,8,8,8,8,8,8,2,6,6],[6,9,58,24,24,36,6,6,6,6,6,6,6],[44,73,49,18,6,6,6,6,6,6],[2,2,6,6,6,6]] except thg26408
treeCase g26408Tree15 on (tug26408 sh6x15) withHints bank eachTags[[],[],[],[]] except thg26408
end Blc.SelfintSingleObject.Compact45
