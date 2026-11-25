import Blc.SelfintCompact45.TreeG22490Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22490Tree4 on (tug22490 sh5x4) withHints bank eachTags[[],[],[],[6,6,6],[6,6,6],[6,6,6],[2,2,2],[]] except thg22490
treeCase g22490Tree5 on (tug22490 sh5x5) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22490
treeCase g22490Tree6 on (tug22490 sh5x6) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22490
treeCase g22490Tree7 on (tug22490 sh5x7) withHints bank eachTags[[],[],[],[6,6],[6,6],[6,6],[2,16],[]] except thg22490
end Blc.SelfintSingleObject.Compact45
