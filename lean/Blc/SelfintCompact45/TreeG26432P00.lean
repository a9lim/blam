import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree0 on (tug26432 sh6x0) withHints bank eachTags[[44,0,9,10,47,48,0,20,24,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26432
treeCase g26432Tree1 on (tug26432 sh6x1) withHints bank eachTags[[44,0,44,0,9,10,9,10,47,48,8,0,20,21,24,30,1,10,10,33,10,10,33,33],[2,2,6,6,6,2,2,6,6,6,6,6,6,6],[2,2,6,6,6,6],[6,6]] except thg26432
treeCase g26432Tree2 on (tug26432 sh6x2) withHints bank eachTags[[],[],[],[]] except thg26432
treeCase g26432Tree3 on (tug26432 sh6x3) withHints bank eachTags[[44,0,9,10,47,48,8,20,24,1,10,33,10,33,33],[2,6,6,2,6,6,6,6,6],[2,6,6],[6]] except thg26432
end Blc.SelfintSingleObject.Compact45
