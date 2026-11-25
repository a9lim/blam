import Blc.SelfintCompact45.TreeF1170Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1170Tree16 on (tuf1170 sh6x16) withHints bank eachTags[[],[],[],[]] except thf1170
treeCase f1170Tree17 on (tuf1170 sh6x17) withHints bank eachTags[[6],[],[6],[6]] except thf1170
treeCase f1170Tree18 on (tuf1170 sh6x18) withHints bank eachTags[[],[],[],[]] except thf1170
treeCase f1170Tree19 on (tuf1170 sh6x19) withHints bank eachTags[[6],[],[],[]] except thf1170
end Blc.SelfintSingleObject.Compact45
