import Blc.SelfintCompact45.TreeG26401Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26401Tree12 on (tug26401 sh6x12) withHints bank eachTags[[],[],[],[]] except thg26401
treeCase g26401Tree13 on (tug26401 sh6x13) withHints bank eachTags[[],[],[],[]] except thg26401
treeCase g26401Tree14 on (tug26401 sh6x14) withHints bank eachTags[[],[],[],[]] except thg26401
treeCase g26401Tree15 on (tug26401 sh6x15) withHints bank eachTags[[],[1,1,1,14,14,14,14,14,14],[1,1,1,14,14,14],[11,11,11]] except thg26401
end Blc.SelfintSingleObject.Compact45
