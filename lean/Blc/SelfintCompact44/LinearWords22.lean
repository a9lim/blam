import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w220 : WordRow 3 0 3 4 3 2 2 0 := rowProofs%[by decide +kernel]
theorem w221 : WordRow 3 0 3 4 3 2 2 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem w222 : WordRow 3 0 3 4 3 2 2 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
theorem w223 : WordRow 3 0 3 4 3 2 2 3 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
