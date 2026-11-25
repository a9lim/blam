import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w020 : WordRow 3 0 3 4 3 0 2 0 := rowProofs%[by decide +kernel]
theorem w021 : WordRow 3 0 3 4 3 0 2 1 := rowProofs%[by decide +kernel]
theorem w022 : WordRow 3 0 3 4 3 0 2 2 := rowProofs%[by decide +kernel]
theorem w023 : WordRow 3 0 3 4 3 0 2 3 := rowProofs%[by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
