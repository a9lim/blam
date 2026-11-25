import Blc.SelfintCompact45.TreeG22460Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22460Tree4 on (tug22460 sh5x4) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22460
treeCase g22460Tree5 on (tug22460 sh5x5) withHints bank eachTags[[],[],[],[6,6],[6,6],[6,6],[2,20],[]] except thg22460
treeCase g22460Tree6 on (tug22460 sh5x6) withHints bank eachTags[[],[],[],[6,6],[6,6],[6,6],[2,2],[]] except thg22460
treeCase g22460Tree7 on (tug22460 sh5x7) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22460
end Blc.SelfintSingleObject.Compact45
