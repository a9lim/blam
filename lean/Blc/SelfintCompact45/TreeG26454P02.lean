import Blc.SelfintCompact45.TreeG26454Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase g26454Tree8 on (tug26454 sh6x8) withHints bank eachTags[[],[],[],[]] except thg26454
treeCase g26454Tree9 on (tug26454 sh6x9) withHints bank eachTags[[20,23,20,10,10,33],[2,2,2,6,6,6],[2,2,2,6,6],[6,6]] except thg26454
treeCase g26454Tree10 on (tug26454 sh6x10) withHints bank eachTags[[20,23,23,20,27,10,10,10,33],[2,2,2,2,2,6,6,6,6],[2,2,2,2,2,6,6,6],[6,6,6]] except thg26454
treeCase g26454Tree11 on (tug26454 sh6x11) withHints bank eachTags[[],[],[],[]] except thg26454
end Blc.SelfintSingleObject.Compact45
