import Blc.SelfintCompact45.TreeF1787Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1787Tree4 on (tuf1787 sh5x4) withHints bank eachTags[[6],[],[6],[6]] except thf1787
treeCase f1787Tree5 on (tuf1787 sh5x5) withHints bank eachTags[[6],[],[6],[6]] except thf1787
treeCase f1787Tree6 on (tuf1787 sh5x6) withHints bank eachTags[[],[],[],[]] except thf1787
treeCase f1787Tree7 on (tuf1787 sh5x7) withHints bank eachTags[[],[],[6],[]] except thf1787
end Blc.SelfintSingleObject.Compact45
