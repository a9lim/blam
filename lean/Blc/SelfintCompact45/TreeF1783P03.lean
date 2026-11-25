import Blc.SelfintCompact45.TreeF1783Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1783Tree12 on (tuf1783 sh5x12) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1783
treeCase f1783Tree13 on (tuf1783 sh5x13) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1783
end Blc.SelfintSingleObject.Compact45
