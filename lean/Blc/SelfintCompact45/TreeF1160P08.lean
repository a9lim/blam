import Blc.SelfintCompact45.TreeF1160Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1160Tree32 on (tuf1160 sh6x32) withHints bank eachTags[[6,6,6],[],[],[]] except thf1160
treeCase f1160Tree33 on (tuf1160 sh6x33) withHints bank eachTags[[],[],[],[]] except thf1160
treeCase f1160Tree34 on (tuf1160 sh6x34) withHints bank eachTags[[6,6,6],[],[],[]] except thf1160
treeCase f1160Tree35 on (tuf1160 sh6x35) withHints bank eachTags[[],[],[],[]] except thf1160
end Blc.SelfintSingleObject.Compact45
