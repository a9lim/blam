import Blc.SelfintCompact45.TreeF1168Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1168Tree32 on (tuf1168 sh6x32) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree33 on (tuf1168 sh6x33) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree34 on (tuf1168 sh6x34) withHints bank eachTags[[6],[],[],[]] except thf1168
treeCase f1168Tree35 on (tuf1168 sh6x35) withHints bank eachTags[[6],[],[],[]] except thf1168
end Blc.SelfintSingleObject.Compact45
