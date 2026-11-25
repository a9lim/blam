import Blc.SelfintCompact45.TreeF1167Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1167Tree32 on (tuf1167 sh6x32) withHints bank eachTags[[6,6,6],[],[],[]] except thf1167
treeCase f1167Tree33 on (tuf1167 sh6x33) withHints bank eachTags[[6,6,6],[],[],[]] except thf1167
treeCase f1167Tree34 on (tuf1167 sh6x34) withHints bank eachTags[[],[],[],[]] except thf1167
treeCase f1167Tree35 on (tuf1167 sh6x35) withHints bank eachTags[[6],[],[],[]] except thf1167
end Blc.SelfintSingleObject.Compact45
