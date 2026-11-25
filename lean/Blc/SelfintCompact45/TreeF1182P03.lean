import Blc.SelfintCompact45.TreeF1182Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1182Tree12 on (tuf1182 sh6x12) withHints bank eachTags[[6],[],[6],[6]] except thf1182
treeCase f1182Tree13 on (tuf1182 sh6x13) withHints bank eachTags[[6],[],[6],[6]] except thf1182
treeCase f1182Tree14 on (tuf1182 sh6x14) withHints bank eachTags[[6],[],[],[]] except thf1182
treeCase f1182Tree15 on (tuf1182 sh6x15) withHints bank eachTags[[6],[],[],[]] except thf1182
end Blc.SelfintSingleObject.Compact45
