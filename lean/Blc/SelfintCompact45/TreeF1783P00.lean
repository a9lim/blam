import Blc.SelfintCompact45.TreeF1783Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1783Tree0 on (tuf1783 sh5x0) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1783
treeCase f1783Tree1 on (tuf1783 sh5x1) withHints bank eachTags[[],[],[6],[6,6],[6,6,6],[],[],[]] except thf1783
treeCase f1783Tree2 on (tuf1783 sh5x2) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1783
treeCase f1783Tree3 on (tuf1783 sh5x3) withHints bank eachTags[[],[],[6],[6],[6],[],[],[]] except thf1783
end Blc.SelfintSingleObject.Compact45
