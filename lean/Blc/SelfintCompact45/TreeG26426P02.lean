import Blc.SelfintCompact45.TreeG26426Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26426Tree8 on (tug26426 sh6x8) withHints bank eachTags[[1,1,1,10,20,33],[2,2,1,6,6,6],[2,2,1,6,6],[6,6]] except thg26426
treeCase g26426Tree9 on (tug26426 sh6x9) withHints bank eachTags[[44,0,9,10,74,83,8,58,36,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26426
treeCase g26426Tree10 on (tug26426 sh6x10) withHints bank eachTags[[],[],[],[]] except thg26426
treeCase g26426Tree11 on (tug26426 sh6x11) withHints bank eachTags[[1,19,45,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26426
end Blc.SelfintSingleObject.Compact45
