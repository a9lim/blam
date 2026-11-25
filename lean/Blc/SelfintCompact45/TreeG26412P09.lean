import Blc.SelfintCompact45.TreeG26412Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26412Tree36 on (tug26412 sh6x36) withHints bank eachTags[[],[],[],[]] except thg26412
treeCase g26412Tree37 on (tug26412 sh6x37) withHints bank eachTags[[],[],[2,2],[6]] except thg26412
treeCase g26412Tree38 on (tug26412 sh6x38) withHints bank eachTags[[2,6],[],[2,2],[2,6]] except thg26412
treeCase g26412Tree39 on (tug26412 sh6x39) withHints bank eachTags[[2,6,6],[],[2,2],[2,28,6]] except thg26412
end Blc.SelfintSingleObject.Compact45
