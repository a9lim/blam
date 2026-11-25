import Blc.SelfintCompact45.TreeG22468Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22468Tree12 on (tug22468 sh5x12) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22468
treeCase g22468Tree13 on (tug22468 sh5x13) withHints bank eachTags[[2,6,6],[],[2,2],[6],[6,6,6],[6],[2,6,6],[]] except thg22468
end Blc.SelfintSingleObject.Compact45
