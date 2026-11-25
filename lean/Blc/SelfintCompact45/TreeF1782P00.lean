import Blc.SelfintCompact45.TreeF1782Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1782Tree0 on (tuf1782 sh5x0) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1782
treeCase f1782Tree1 on (tuf1782 sh5x1) withHints bank eachTags[[],[],[6],[6,6],[6,6,6],[],[],[]] except thf1782
treeCase f1782Tree2 on (tuf1782 sh5x2) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1782
treeCase f1782Tree3 on (tuf1782 sh5x3) withHints bank eachTags[[],[],[6],[6],[6],[],[],[]] except thf1782
end Blc.SelfintSingleObject.Compact45
