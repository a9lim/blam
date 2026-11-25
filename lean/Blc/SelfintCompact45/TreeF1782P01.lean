import Blc.SelfintCompact45.TreeF1782Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1782Tree4 on (tuf1782 sh5x4) withHints bank eachTags[[],[],[6],[6],[6],[],[],[]] except thf1782
treeCase f1782Tree5 on (tuf1782 sh5x5) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1782
treeCase f1782Tree6 on (tuf1782 sh5x6) withHints bank eachTags[[],[],[6],[6],[6],[],[],[]] except thf1782
treeCase f1782Tree7 on (tuf1782 sh5x7) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1782
end Blc.SelfintSingleObject.Compact45
