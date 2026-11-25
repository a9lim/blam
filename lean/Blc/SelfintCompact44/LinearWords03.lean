import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w030 : WordRow 3 0 3 4 3 0 3 0 := rowProofs%[by decide +kernel]
theorem w031 : WordRow 3 0 3 4 3 0 3 1 := rowProofs%[by decide +kernel]
theorem w032 : WordRow 3 0 3 4 3 0 3 2 := rowProofs%[by decide +kernel]
theorem w033 : WordRow 3 0 3 4 3 0 3 3 := rowProofs%[by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
