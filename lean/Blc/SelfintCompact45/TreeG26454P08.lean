import Blc.SelfintCompact45.TreeG26454Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26454Tree32 on (tug26454 sh6x32) withHints bank eachTags[[],[],[],[]] except thg26454
treeCase g26454Tree33 on (tug26454 sh6x33) withHints bank eachTags[[2,2,64,6,6],[],[2,2],[2,64,6]] except thg26454
treeCase g26454Tree34 on (tug26454 sh6x34) withHints bank eachTags[[2,2,2,6,6],[],[2,2],[2,2,6]] except thg26454
treeCase g26454Tree35 on (tug26454 sh6x35) withHints bank eachTags[[],[],[],[]] except thg26454
end Blc.SelfintSingleObject.Compact45
