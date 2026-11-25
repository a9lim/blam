import Blc.SelfintCompact45.TreeG26431Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26431Tree12 on (tug26431 sh6x12) withHints bank eachTags[[],[],[],[]] except thg26431
treeCase g26431Tree13 on (tug26431 sh6x13) withHints bank eachTags[[],[],[],[]] except thg26431
treeCase g26431Tree14 on (tug26431 sh6x14) withHints bank eachTags[[],[14,14,14],[14,14,14],[1,1,1]] except thg26431
treeCase g26431Tree15 on (tug26431 sh6x15) withHints bank eachTags[[],[14,14,14],[14,14,14],[12,12,12]] except thg26431
end Blc.SelfintSingleObject.Compact45
