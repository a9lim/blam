import Blc.SelfintCompact45.TreeF1160Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1160Tree0 on (tuf1160 sh6x0) withHints bank eachTags[[6],[],[6,6,6,6,6,6],[6,6,6]] except thf1160
treeCase f1160Tree1 on (tuf1160 sh6x1) withHints bank eachTags[[],[],[],[]] except thf1160
treeCase f1160Tree2 on (tuf1160 sh6x2) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1160
treeCase f1160Tree3 on (tuf1160 sh6x3) withHints bank eachTags[[],[],[],[]] except thf1160
end Blc.SelfintSingleObject.Compact45
