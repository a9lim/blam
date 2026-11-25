import Blc.SelfintCompact45.TreeG26430Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26430Tree8 on (tug26430 sh6x8) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26430
treeCase g26430Tree9 on (tug26430 sh6x9) withHints bank eachTags[[44,28,9,10,20,28,8,21,36,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26430
treeCase g26430Tree10 on (tug26430 sh6x10) withHints bank eachTags[[44,0,9,10,30,20,8,27,36,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26430
treeCase g26430Tree11 on (tug26430 sh6x11) withHints bank eachTags[[1,10,33],[2,6,6],[2,6],[6]] except thg26430
end Blc.SelfintSingleObject.Compact45
