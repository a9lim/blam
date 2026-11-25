import Blc.SelfintCompact45.TreeF1185Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1185Tree20 on (tuf1185 sh6x20) withHints bank eachTags[[],[],[],[]] except thf1185
treeCase f1185Tree21 on (tuf1185 sh6x21) withHints bank eachTags[[6],[],[],[]] except thf1185
treeCase f1185Tree22 on (tuf1185 sh6x22) withHints bank eachTags[[6],[],[],[]] except thf1185
treeCase f1185Tree23 on (tuf1185 sh6x23) withHints bank eachTags[[6,6,6],[],[],[]] except thf1185
end Blc.SelfintSingleObject.Compact45
