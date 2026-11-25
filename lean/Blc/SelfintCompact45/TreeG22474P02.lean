import Blc.SelfintCompact45.TreeG22474Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22474Tree8 on (tug22474 sh5x8) withHints bank eachTags[[],[],[],[6,6],[6,6],[6,6],[2,1],[]] except thg22474
treeCase g22474Tree9 on (tug22474 sh5x9) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22474
treeCase g22474Tree10 on (tug22474 sh5x10) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22474
treeCase g22474Tree11 on (tug22474 sh5x11) withHints bank eachTags[[2,6,6],[],[2,2],[6],[6,6,6],[6],[2,6,6],[]] except thg22474
end Blc.SelfintSingleObject.Compact45
