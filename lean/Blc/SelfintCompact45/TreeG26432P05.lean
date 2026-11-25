import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree20 on (tug26432 sh6x20) withHints bank eachTags[[],[],[2,2,2],[6,6]] except thg26432
treeCase g26432Tree21 on (tug26432 sh6x21) withHints bank eachTags[[2,6],[],[2,2,20],[2,20,6,6]] except thg26432
treeCase g26432Tree22 on (tug26432 sh6x22) withHints bank eachTags[[2,6],[],[2,2,2],[2,2,6,6]] except thg26432
treeCase g26432Tree23 on (tug26432 sh6x23) withHints bank eachTags[[],[],[],[]] except thg26432
end Blc.SelfintSingleObject.Compact45
