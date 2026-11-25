import Blc.SelfintCompact45.TreeF1160Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1160Tree36 on (tuf1160 sh6x36) withHints bank eachTags[[],[],[],[]] except thf1160
treeCase f1160Tree37 on (tuf1160 sh6x37) withHints bank eachTags[[6],[],[],[]] except thf1160
treeCase f1160Tree38 on (tuf1160 sh6x38) withHints bank eachTags[[6],[],[],[]] except thf1160
treeCase f1160Tree39 on (tuf1160 sh6x39) withHints bank eachTags[[6],[],[],[]] except thf1160
end Blc.SelfintSingleObject.Compact45
