import Blc.SelfintCompact45.TreeG26462Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26462Tree8 on (tug26462 sh6x8) withHints bank eachTags[[],[],[],[]] except thg26462
treeCase g26462Tree9 on (tug26462 sh6x9) withHints bank eachTags[[20,20,28,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26462
treeCase g26462Tree10 on (tug26462 sh6x10) withHints bank eachTags[[20,58,58,20,20,10,10,10,33],[2,2,2,2,2,6,6,6,6],[2,2,2,2,2,6,6,6],[6,6,6]] except thg26462
treeCase g26462Tree11 on (tug26462 sh6x11) withHints bank eachTags[[],[],[],[]] except thg26462
end Blc.SelfintSingleObject.Compact45
