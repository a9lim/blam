import Blc.SelfintCompact45.TreeG22490Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22490Tree8 on (tug22490 sh5x8) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22490
treeCase g22490Tree9 on (tug22490 sh5x9) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22490
treeCase g22490Tree10 on (tug22490 sh5x10) withHints bank eachTags[[2,6,6],[],[2,2],[6],[6,6,6],[6],[2,6,6],[]] except thg22490
treeCase g22490Tree11 on (tug22490 sh5x11) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22490
end Blc.SelfintSingleObject.Compact45
