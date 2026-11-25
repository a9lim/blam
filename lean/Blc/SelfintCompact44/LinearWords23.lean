import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w230 : WordRow 3 0 3 4 3 2 3 0 := rowProofs%[by decide +kernel]
theorem w231 : WordRow 3 0 3 4 3 2 3 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem w232 : WordRow 3 0 3 4 3 2 3 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
theorem w233 : WordRow 3 0 3 4 3 2 3 3 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
