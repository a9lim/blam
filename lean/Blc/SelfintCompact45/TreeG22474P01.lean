import Blc.SelfintCompact45.TreeG22474Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22474Tree4 on (tug22474 sh5x4) withHints bank eachTags[[],[],[],[6,6],[6,6],[6,6],[2,2],[]] except thg22474
treeCase g22474Tree5 on (tug22474 sh5x5) withHints bank eachTags[[6],[],[2],[6,6],[6,6,6],[6,6],[2,64,6],[]] except thg22474
treeCase g22474Tree6 on (tug22474 sh5x6) withHints bank eachTags[[6],[],[2],[6,6],[6,6,6],[6,6],[2,2,6],[]] except thg22474
treeCase g22474Tree7 on (tug22474 sh5x7) withHints bank eachTags[[],[],[],[6,6],[6,6],[6,6],[2,1],[]] except thg22474
end Blc.SelfintSingleObject.Compact45
