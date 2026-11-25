import Blc.SelfintCompact45.TreeG26430Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26430Tree20 on (tug26430 sh6x20) withHints bank eachTags[[],[],[2],[6]] except thg26430
treeCase g26430Tree21 on (tug26430 sh6x21) withHints bank eachTags[[2,6],[],[2],[2,6]] except thg26430
treeCase g26430Tree22 on (tug26430 sh6x22) withHints bank eachTags[[2,6],[],[2],[2,6]] except thg26430
treeCase g26430Tree23 on (tug26430 sh6x23) withHints bank eachTags[[2,6],[],[2],[2,6]] except thg26430
end Blc.SelfintSingleObject.Compact45
