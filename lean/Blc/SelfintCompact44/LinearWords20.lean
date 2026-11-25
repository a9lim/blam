import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w200 : WordRow 3 0 3 4 3 2 0 0 := rowProofs%[by decide +kernel]
theorem w201 : WordRow 3 0 3 4 3 2 0 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem w202 : WordRow 3 0 3 4 3 2 0 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
theorem w203 : WordRow 3 0 3 4 3 2 0 3 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
