import Blc.SelfintCompact45.TreeF1798Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1798Tree12 on (tuf1798 sh5x12) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1798
treeCase f1798Tree13 on (tuf1798 sh5x13) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1798
end Blc.SelfintSingleObject.Compact45
