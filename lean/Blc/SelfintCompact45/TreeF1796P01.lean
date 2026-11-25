import Blc.SelfintCompact45.TreeF1796Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1796Tree4 on (tuf1796 sh5x4) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1796
treeCase f1796Tree5 on (tuf1796 sh5x5) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1796
treeCase f1796Tree6 on (tuf1796 sh5x6) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1796
treeCase f1796Tree7 on (tuf1796 sh5x7) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1796
end Blc.SelfintSingleObject.Compact45
