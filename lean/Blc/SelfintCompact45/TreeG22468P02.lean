import Blc.SelfintCompact45.TreeG22468Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22468Tree8 on (tug22468 sh5x8) withHints bank eachTags[[6,6],[],[2,2],[6],[6,6,6],[6],[2,6,6],[]] except thg22468
treeCase g22468Tree9 on (tug22468 sh5x9) withHints bank eachTags[[2],[],[],[6],[6],[6],[2],[]] except thg22468
treeCase g22468Tree10 on (tug22468 sh5x10) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22468
treeCase g22468Tree11 on (tug22468 sh5x11) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22468
end Blc.SelfintSingleObject.Compact45
