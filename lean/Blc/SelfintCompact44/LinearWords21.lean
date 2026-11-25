import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w210 : WordRow 3 0 3 4 3 2 1 0 := rowProofs%[by decide +kernel]
theorem w211 : WordRow 3 0 3 4 3 2 1 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem w212 : WordRow 3 0 3 4 3 2 1 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
theorem w213 : WordRow 3 0 3 4 3 2 1 3 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
