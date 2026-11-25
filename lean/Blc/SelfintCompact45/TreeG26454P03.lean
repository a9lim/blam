import Blc.SelfintCompact45.TreeG26454Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26454Tree12 on (tug26454 sh6x12) withHints bank eachTags[[20,23,39,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26454
treeCase g26454Tree13 on (tug26454 sh6x13) withHints bank eachTags[[],[],[],[]] except thg26454
treeCase g26454Tree14 on (tug26454 sh6x14) withHints bank eachTags[[],[],[2,2,1,64,64,64],[6,6,6]] except thg26454
treeCase g26454Tree15 on (tug26454 sh6x15) withHints bank eachTags[[],[],[2,2,2,64,64,64],[6,6,6]] except thg26454
end Blc.SelfintSingleObject.Compact45
