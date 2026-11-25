import Blc.SelfintCompact45.TreeG26412Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26412Tree4 on (tug26412 sh6x4) withHints bank eachTags[[44,0,9,10,56,39,8,20,24,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26412
treeCase g26412Tree5 on (tug26412 sh6x5) withHints bank eachTags[[8,8,9,10,10,44,28,8,36,21,95,33,10,20,1,33,10,20,33],[6,6,6,2,6,6,6,2,6,6,6,6],[6,6,2,6,6],[6,6]] except thg26412
treeCase g26412Tree6 on (tug26412 sh6x6) withHints bank eachTags[[],[],[],[]] except thg26412
treeCase g26412Tree7 on (tug26412 sh6x7) withHints bank eachTags[[1,10,33],[2,6,6],[2,6],[6]] except thg26412
end Blc.SelfintSingleObject.Compact45
