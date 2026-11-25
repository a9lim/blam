import Blc.SelfintCompact44.Linear44
import Blc.SelfintCompact44.SiblingSplit
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g7608 : BadRow (Grammar43.fiveRow 7 6 6 false 3 2 3 [0,2,1]) :=
  LinearShell.closed_linear 7 6 6 3 2 3 [0,2,1] (by decide +kernel) LinearShell.exterior44
end Blc.SelfintSingleObject.Compact44
