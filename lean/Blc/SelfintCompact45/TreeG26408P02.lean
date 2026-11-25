import Blc.SelfintCompact45.TreeG26408Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26408Tree8 on (tug26408 sh6x8) withHints bank eachTags[[45,19,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26408
treeCase g26408Tree9 on (tug26408 sh6x9) withHints bank eachTags[[],[],[],[]] except thg26408
treeCase g26408Tree10 on (tug26408 sh6x10) withHints bank eachTags[[44,0,9,10,60,20,8,21,36,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26408
treeCase g26408Tree11 on (tug26408 sh6x11) withHints bank eachTags[[],[],[],[]] except thg26408
end Blc.SelfintSingleObject.Compact45
