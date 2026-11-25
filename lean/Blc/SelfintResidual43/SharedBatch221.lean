import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2392578591598 : ¬ IsSelfInterpreter e2392578591598 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2392578591598 1 = true)
theorem shared_e2392578591606 : ¬ IsSelfInterpreter e2392578591606 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2392578591606 1 = true)
end Blc.Floor43
