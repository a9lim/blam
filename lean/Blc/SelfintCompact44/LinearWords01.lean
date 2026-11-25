import Blc.SelfintCompact44.LinearShell
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.LinearShell
set_option Elab.async false
set_option maxRecDepth 16000
theorem w010 : WordRow 3 0 3 4 3 0 1 0 := rowProofs%[by decide +kernel]
theorem w011 : WordRow 3 0 3 4 3 0 1 1 := rowProofs%[by decide +kernel]
theorem w012 : WordRow 3 0 3 4 3 0 1 2 := rowProofs%[by decide +kernel]
theorem w013 : WordRow 3 0 3 4 3 0 1 3 := rowProofs%[by decide +kernel]
end Blc.SelfintSingleObject.LinearShell
