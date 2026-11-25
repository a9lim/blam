import Blc.SelfintCompact45.TreeF1782Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1782Tree8 on (tuf1782 sh5x8) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1782
treeCase f1782Tree9 on (tuf1782 sh5x9) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1782
treeCase f1782Tree10 on (tuf1782 sh5x10) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1782
treeCase f1782Tree11 on (tuf1782 sh5x11) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1782
end Blc.SelfintSingleObject.Compact45
