import Blc.SelfintCompact45.TreeF1788Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1788Tree8 on (tuf1788 sh5x8) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1788
treeCase f1788Tree9 on (tuf1788 sh5x9) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1788
treeCase f1788Tree10 on (tuf1788 sh5x10) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1788
treeCase f1788Tree11 on (tuf1788 sh5x11) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1788
end Blc.SelfintSingleObject.Compact45
