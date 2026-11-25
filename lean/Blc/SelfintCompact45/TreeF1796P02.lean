import Blc.SelfintCompact45.TreeF1796Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1796Tree8 on (tuf1796 sh5x8) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1796
treeCase f1796Tree9 on (tuf1796 sh5x9) withHints bank eachTags[[],[],[6],[],[6],[],[6],[]] except thf1796
treeCase f1796Tree10 on (tuf1796 sh5x10) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1796
treeCase f1796Tree11 on (tuf1796 sh5x11) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1796
end Blc.SelfintSingleObject.Compact45
