import Blc.SelfintCompact45.TreeG22440Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22440Tree4 on (tug22440 sh5x4) withHints bank eachTags[[1,33],[],[],[6],[6,6],[6,6,6,6],[2,6,6,6],[2,6,6]] except thg22440
treeCase g22440Tree5 on (tug22440 sh5x5) withHints bank eachTags[[8,8,6,6,6],[6,6],[6,2],[2],[9,6,6],[6,6,6],[6,6,6,6],[6,6,6]] except thg22440
treeCase g22440Tree6 on (tug22440 sh5x6) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22440
treeCase g22440Tree7 on (tug22440 sh5x7) withHints bank eachTags[[],[],[],[6],[6],[6],[2],[]] except thg22440
end Blc.SelfintSingleObject.Compact45
