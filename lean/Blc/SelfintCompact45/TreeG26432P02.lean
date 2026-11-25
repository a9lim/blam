import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree8 on (tug26432 sh6x8) withHints bank eachTags[[1,1,1,10,20,33],[2,2,1,6,6,6],[2,2,20,6,6],[6,6]] except thg26432
treeCase g26432Tree9 on (tug26432 sh6x9) withHints bank eachTags[[44,28,9,10,20,285,8,0,36,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26432
treeCase g26432Tree10 on (tug26432 sh6x10) withHints bank eachTags[[],[],[],[]] except thg26432
treeCase g26432Tree11 on (tug26432 sh6x11) withHints bank eachTags[[1,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26432
end Blc.SelfintSingleObject.Compact45
