import Blc.SelfintCompact45.TreeF1170Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1170Tree24 on (tuf1170 sh6x24) withHints bank eachTags[[6,6,6],[],[],[]] except thf1170
treeCase f1170Tree25 on (tuf1170 sh6x25) withHints bank eachTags[[],[],[],[]] except thf1170
treeCase f1170Tree26 on (tuf1170 sh6x26) withHints bank eachTags[[6],[],[],[]] except thf1170
treeCase f1170Tree27 on (tuf1170 sh6x27) withHints bank eachTags[[6],[],[],[]] except thf1170
end Blc.SelfintSingleObject.Compact45
