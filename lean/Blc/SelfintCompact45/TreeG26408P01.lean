import Blc.SelfintCompact45.TreeG26408Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26408Tree4 on (tug26408 sh6x4) withHints bank eachTags[[44,0,9,10,56,39,8,20,24,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26408
treeCase g26408Tree5 on (tug26408 sh6x5) withHints bank eachTags[[8,8,9,10,10,44,83,8,36,48,74,33,10,20,1,33,10,20,33],[6,6,6,2,6,6,6,2,6,6,6,6],[6,6,2,6,6],[6,6]] except thg26408
treeCase g26408Tree6 on (tug26408 sh6x6) withHints bank eachTags[[],[],[],[]] except thg26408
treeCase g26408Tree7 on (tug26408 sh6x7) withHints bank eachTags[[45,10,33],[2,6,6],[2,6],[6]] except thg26408
end Blc.SelfintSingleObject.Compact45
