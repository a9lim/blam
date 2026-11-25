import Blc.SelfintCompact45.TreeF1787Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1787Tree8 on (tuf1787 sh5x8) withHints bank eachTags[[],[],[6],[]] except thf1787
treeCase f1787Tree9 on (tuf1787 sh5x9) withHints bank eachTags[[],[],[],[]] except thf1787
treeCase f1787Tree10 on (tuf1787 sh5x10) withHints bank eachTags[[6],[],[6,6],[]] except thf1787
treeCase f1787Tree11 on (tuf1787 sh5x11) withHints bank eachTags[[],[],[],[]] except thf1787
end Blc.SelfintSingleObject.Compact45
