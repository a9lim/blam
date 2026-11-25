import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w130 : WordRow 3 0 3 4 3 1 3 0 := rowProofs%[by decide +kernel]
theorem w131 : WordRow 3 0 3 4 3 1 3 1 := rowProofs%[by decide +kernel,by decide +kernel]
theorem w132 : WordRow 3 0 3 4 3 1 3 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem w133 : WordRow 3 0 3 4 3 1 3 3 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
