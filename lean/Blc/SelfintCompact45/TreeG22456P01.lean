import Blc.SelfintCompact45.TreeG22456Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22456Tree4 on (tug22456 sh5x4) withHints bank eachTags[[36,36,33],[],[],[6,6],[6,6,6,6],[6,6,6,6,6,6,6],[2,2,6,6,6,6,6],[2,2,6,6,6]] except thg22456
treeCase g22456Tree5 on (tug22456 sh5x5) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thg22456
treeCase g22456Tree6 on (tug22456 sh5x6) withHints bank eachTags[[],[],[],[6],[6],[6],[2],[]] except thg22456
treeCase g22456Tree7 on (tug22456 sh5x7) withHints bank eachTags[[6],[],[2],[],[6],[],[6],[]] except thg22456
end Blc.SelfintSingleObject.Compact45
