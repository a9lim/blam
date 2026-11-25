import Blc.SelfintCompact45.TreeG22440Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22440Tree12 on (tug22440 sh5x12) withHints bank eachTags[[2],[],[],[6],[6],[6],[2],[]] except thg22440
treeCase g22440Tree13 on (tug22440 sh5x13) withHints bank eachTags[[2,6],[],[2],[6],[6,6],[6],[2,6],[]] except thg22440
end Blc.SelfintSingleObject.Compact45
