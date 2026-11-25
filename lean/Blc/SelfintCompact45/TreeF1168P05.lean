import Blc.SelfintCompact45.TreeF1168Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1168Tree20 on (tuf1168 sh6x20) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree21 on (tuf1168 sh6x21) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree22 on (tuf1168 sh6x22) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree23 on (tuf1168 sh6x23) withHints bank eachTags[[6],[],[],[]] except thf1168
end Blc.SelfintSingleObject.Compact45
