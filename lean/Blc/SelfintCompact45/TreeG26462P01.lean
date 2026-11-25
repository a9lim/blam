import Blc.SelfintCompact45.TreeG26462Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26462Tree4 on (tug26462 sh6x4) withHints bank eachTags[[20,58,58,20,58,20,10,10,10,33],[2,2,2,2,2,2,6,6,6,6],[2,2,2,2,2,2,6,6,6],[6,6,6]] except thg26462
treeCase g26462Tree5 on (tug26462 sh6x5) withHints bank eachTags[[],[],[],[]] except thg26462
treeCase g26462Tree6 on (tug26462 sh6x6) withHints bank eachTags[[],[],[],[]] except thg26462
treeCase g26462Tree7 on (tug26462 sh6x7) withHints bank eachTags[[28,20,20,10,24,33],[2,2,17,6,6,6],[2,2,17,6,6],[6,6]] except thg26462
end Blc.SelfintSingleObject.Compact45
