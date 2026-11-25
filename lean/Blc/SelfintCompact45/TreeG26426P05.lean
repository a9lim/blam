import Blc.SelfintCompact45.TreeG26426Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26426Tree20 on (tug26426 sh6x20) withHints bank eachTags[[],[],[2,2,2],[6,6]] except thg26426
treeCase g26426Tree21 on (tug26426 sh6x21) withHints bank eachTags[[2,6],[],[2,2,64],[2,64,6,6]] except thg26426
treeCase g26426Tree22 on (tug26426 sh6x22) withHints bank eachTags[[2,6],[],[2,2,2],[2,2,6,6]] except thg26426
treeCase g26426Tree23 on (tug26426 sh6x23) withHints bank eachTags[[],[],[],[]] except thg26426
end Blc.SelfintSingleObject.Compact45
