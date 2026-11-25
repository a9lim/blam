import Blc.SelfintCompact45.TreeG22448Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22448Tree4 on (tug22448 sh5x4) withHints bank eachTags[[20,33],[],[],[6],[6,6],[6,6,6,6],[2,6,6,6],[2,6,6]] except thg22448
treeCase g22448Tree5 on (tug22448 sh5x5) withHints bank eachTags[[],[],[],[6],[6],[6],[2],[]] except thg22448
treeCase g22448Tree6 on (tug22448 sh5x6) withHints bank eachTags[[],[],[],[6],[6],[6],[2],[]] except thg22448
treeCase g22448Tree7 on (tug22448 sh5x7) withHints bank eachTags[[6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22448
end Blc.SelfintSingleObject.Compact45
