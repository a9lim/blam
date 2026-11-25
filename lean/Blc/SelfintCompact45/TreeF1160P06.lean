import Blc.SelfintCompact45.TreeF1160Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1160Tree24 on (tuf1160 sh6x24) withHints bank eachTags[[6],[],[],[]] except thf1160
treeCase f1160Tree25 on (tuf1160 sh6x25) withHints bank eachTags[[6],[],[],[]] except thf1160
treeCase f1160Tree26 on (tuf1160 sh6x26) withHints bank eachTags[[6],[],[],[]] except thf1160
treeCase f1160Tree27 on (tuf1160 sh6x27) withHints bank eachTags[[6],[],[],[]] except thf1160
end Blc.SelfintSingleObject.Compact45
