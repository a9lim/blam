import Blc.SelfintCompact45.TreeF1160Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1160Tree28 on (tuf1160 sh6x28) withHints bank eachTags[[],[],[],[]] except thf1160
treeCase f1160Tree29 on (tuf1160 sh6x29) withHints bank eachTags[[6,6,6,6,6,6],[],[],[]] except thf1160
treeCase f1160Tree30 on (tuf1160 sh6x30) withHints bank eachTags[[],[],[],[]] except thf1160
treeCase f1160Tree31 on (tuf1160 sh6x31) withHints bank eachTags[[6,6,6],[],[],[]] except thf1160
end Blc.SelfintSingleObject.Compact45
