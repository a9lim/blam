import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree4 on (tug26432 sh6x4) withHints bank eachTags[[],[],[],[]] except thg26432
treeCase g26432Tree5 on (tug26432 sh6x5) withHints bank eachTags[[1,1,1,10,20,33],[2,2,1,6,6,6],[2,2,20,6,6],[6,6]] except thg26432
treeCase g26432Tree6 on (tug26432 sh6x6) withHints bank eachTags[[40,1,1,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26432
treeCase g26432Tree7 on (tug26432 sh6x7) withHints bank eachTags[[],[],[],[]] except thg26432
end Blc.SelfintSingleObject.Compact45
