import Blc.SelfintCompact45.TreeF1810Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1810Tree4 on (tuf1810 sh5x4) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1810
treeCase f1810Tree5 on (tuf1810 sh5x5) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1810
treeCase f1810Tree6 on (tuf1810 sh5x6) withHints bank eachTags[[],[],[],[],[],[],[],[]] except thf1810
treeCase f1810Tree7 on (tuf1810 sh5x7) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1810
end Blc.SelfintSingleObject.Compact45
