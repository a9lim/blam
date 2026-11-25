import Blc.SelfintCompact45.TreeG22458Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22458Tree8 on (tug22458 sh5x8) withHints bank eachTags[[6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22458
treeCase g22458Tree9 on (tug22458 sh5x9) withHints bank eachTags[[2,2,6,6],[6],[23,2,6],[6],[6,6],[6,6],[2,9,2,6],[6,6]] except thg22458
treeCase g22458Tree10 on (tug22458 sh5x10) withHints bank eachTags[[2,2,6,6],[6],[18,2,6],[6],[6,6],[6,6],[2,9,2,6],[6,6]] except thg22458
treeCase g22458Tree11 on (tug22458 sh5x11) withHints bank eachTags[[2],[],[],[6],[6],[6],[2],[]] except thg22458
end Blc.SelfintSingleObject.Compact45
