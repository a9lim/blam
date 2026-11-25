import Blc.SelfintCompact45.TreeG26432Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26432Tree40 on (tug26432 sh6x40) withHints bank eachTags[[2,6],[],[2,2],[2,6]] except thg26432
treeCase g26432Tree41 on (tug26432 sh6x41) withHints bank eachTags[[2,2,2,6,6],[],[2,2],[2,2,6]] except thg26432
end Blc.SelfintSingleObject.Compact45
