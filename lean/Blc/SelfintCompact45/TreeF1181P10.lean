import Blc.SelfintCompact45.TreeF1181Base
import Blc.SelfintTreeCase45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
treeCase f1181Tree40 on (tuf1181 sh6x40) withHints bank eachTags[[],[],[],[]] except thf1181
treeCase f1181Tree41 on (tuf1181 sh6x41) withHints bank eachTags[[6],[],[],[]] except thf1181
end Blc.SelfintSingleObject.Compact45
