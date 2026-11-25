import Blc.SelfintCompact45.TreeF1185Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1185Tree8 on (tuf1185 sh6x8) withHints bank eachTags[[],[],[],[]] except thf1185
treeCase f1185Tree9 on (tuf1185 sh6x9) withHints bank eachTags[[6],[],[6],[6]] except thf1185
treeCase f1185Tree10 on (tuf1185 sh6x10) withHints bank eachTags[[6],[],[6],[6]] except thf1185
treeCase f1185Tree11 on (tuf1185 sh6x11) withHints bank eachTags[[],[],[],[]] except thf1185
end Blc.SelfintSingleObject.Compact45
