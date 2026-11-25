import Blc.SelfintCompact45.TreeF1169Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1169Tree4 on (tuf1169 sh6x4) withHints bank eachTags[[6],[],[6,6,6],[6,6]] except thf1169
treeCase f1169Tree5 on (tuf1169 sh6x5) withHints bank eachTags[[6],[],[6],[6]] except thf1169
treeCase f1169Tree6 on (tuf1169 sh6x6) withHints bank eachTags[[6],[],[6],[6]] except thf1169
treeCase f1169Tree7 on (tuf1169 sh6x7) withHints bank eachTags[[6],[],[6],[6]] except thf1169
end Blc.SelfintSingleObject.Compact45
