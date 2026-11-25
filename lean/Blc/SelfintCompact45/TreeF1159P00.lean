import Blc.SelfintCompact45.TreeF1159Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1159Tree0 on (tuf1159 sh6x0) withHints bank eachTags[[6],[],[6,6,6,6,6,6],[6,6,6]] except thf1159
treeCase f1159Tree1 on (tuf1159 sh6x1) withHints bank eachTags[[6],[],[6,6,6,6,6,6],[6,6,6]] except thf1159
treeCase f1159Tree2 on (tuf1159 sh6x2) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1159
treeCase f1159Tree3 on (tuf1159 sh6x3) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1159
end Blc.SelfintSingleObject.Compact45
