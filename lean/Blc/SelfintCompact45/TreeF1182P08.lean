import Blc.SelfintCompact45.TreeF1182Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1182Tree32 on (tuf1182 sh6x32) withHints bank eachTags[[6],[],[],[]] except thf1182
treeCase f1182Tree33 on (tuf1182 sh6x33) withHints bank eachTags[[6],[],[],[]] except thf1182
treeCase f1182Tree34 on (tuf1182 sh6x34) withHints bank eachTags[[6],[],[],[]] except thf1182
treeCase f1182Tree35 on (tuf1182 sh6x35) withHints bank eachTags[[6],[],[],[]] except thf1182
end Blc.SelfintSingleObject.Compact45
