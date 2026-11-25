import Blc.SelfintCompact45.TreeG22456Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g22456Tree8 on (tug22456 sh5x8) withHints bank eachTags[[6],[],[2],[],[6],[],[6],[]] except thg22456
treeCase g22456Tree9 on (tug22456 sh5x9) withHints bank eachTags[[6,6],[],[2,64],[],[6,6],[],[6,6],[]] except thg22456
treeCase g22456Tree10 on (tug22456 sh5x10) withHints bank eachTags[[6,6],[],[2,2],[],[6,6],[],[6,6],[]] except thg22456
treeCase g22456Tree11 on (tug22456 sh5x11) withHints bank eachTags[[6,6],[],[2,20],[],[6,6],[],[6,6],[]] except thg22456
end Blc.SelfintSingleObject.Compact45
