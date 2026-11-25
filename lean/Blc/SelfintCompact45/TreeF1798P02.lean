import Blc.SelfintCompact45.TreeF1798Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1798Tree8 on (tuf1798 sh5x8) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1798
treeCase f1798Tree9 on (tuf1798 sh5x9) withHints bank eachTags[[],[],[6],[],[6],[],[6],[]] except thf1798
treeCase f1798Tree10 on (tuf1798 sh5x10) withHints bank eachTags[[],[],[6],[],[6],[],[6],[]] except thf1798
treeCase f1798Tree11 on (tuf1798 sh5x11) withHints bank eachTags[[],[],[6],[],[],[],[],[]] except thf1798
end Blc.SelfintSingleObject.Compact45
