import Blc.SelfintCompact45.TreeF1170Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1170Tree0 on (tuf1170 sh6x0) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1170
treeCase f1170Tree1 on (tuf1170 sh6x1) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1170
treeCase f1170Tree2 on (tuf1170 sh6x2) withHints bank eachTags[[],[],[],[]] except thf1170
treeCase f1170Tree3 on (tuf1170 sh6x3) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1170
end Blc.SelfintSingleObject.Compact45
