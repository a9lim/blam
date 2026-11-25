import Blc.SelfintCompact45.TreeF1168Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1168Tree12 on (tuf1168 sh6x12) withHints bank eachTags[[6],[],[6],[6]] except thf1168
treeCase f1168Tree13 on (tuf1168 sh6x13) withHints bank eachTags[[6],[],[6],[6]] except thf1168
treeCase f1168Tree14 on (tuf1168 sh6x14) withHints bank eachTags[[6],[],[6],[6]] except thf1168
treeCase f1168Tree15 on (tuf1168 sh6x15) withHints bank eachTags[[6],[],[6],[6]] except thf1168
end Blc.SelfintSingleObject.Compact45
