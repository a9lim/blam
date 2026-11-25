import Blc.SelfintCompact45.TreeF1185Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1185Tree36 on (tuf1185 sh6x36) withHints bank eachTags[[6],[],[],[]] except thf1185
treeCase f1185Tree37 on (tuf1185 sh6x37) withHints bank eachTags[[6,6,6],[],[],[]] except thf1185
treeCase f1185Tree38 on (tuf1185 sh6x38) withHints bank eachTags[[],[],[],[]] except thf1185
treeCase f1185Tree39 on (tuf1185 sh6x39) withHints bank eachTags[[6],[],[],[]] except thf1185
end Blc.SelfintSingleObject.Compact45
