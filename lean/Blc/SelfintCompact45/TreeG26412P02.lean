import Blc.SelfintCompact45.TreeG26412Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26412Tree8 on (tug26412 sh6x8) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26412
treeCase g26412Tree9 on (tug26412 sh6x9) withHints bank eachTags[[],[],[],[]] except thg26412
treeCase g26412Tree10 on (tug26412 sh6x10) withHints bank eachTags[[44,20,9,10,60,20,8,21,36,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26412
treeCase g26412Tree11 on (tug26412 sh6x11) withHints bank eachTags[[],[],[],[]] except thg26412
end Blc.SelfintSingleObject.Compact45
