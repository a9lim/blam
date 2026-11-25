import Blc.SelfintCompact45.TreeF1168Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1168Tree24 on (tuf1168 sh6x24) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree25 on (tuf1168 sh6x25) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree26 on (tuf1168 sh6x26) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree27 on (tuf1168 sh6x27) withHints bank eachTags[[6],[],[],[]] except thf1168
end Blc.SelfintSingleObject.Compact45
