import Blc.SelfintCompact45.TreeG26454Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26454Tree4 on (tug26454 sh6x4) withHints bank eachTags[[20,18,18,20,18,23,10,10,10,33],[2,2,2,2,2,2,6,6,6,6],[2,2,2,2,2,2,6,6,6],[6,6,6]] except thg26454
treeCase g26454Tree5 on (tug26454 sh6x5) withHints bank eachTags[[],[],[],[]] except thg26454
treeCase g26454Tree6 on (tug26454 sh6x6) withHints bank eachTags[[],[],[],[]] except thg26454
treeCase g26454Tree7 on (tug26454 sh6x7) withHints bank eachTags[[20,23,20,10,1,33],[2,2,1,6,6,6],[2,2,1,6,6],[6,6]] except thg26454
end Blc.SelfintSingleObject.Compact45
