import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2804827600610 : ¬ IsSelfInterpreter e2804827600610 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2804827600610 1 = true)
theorem shared_e2804827600738 : ¬ IsSelfInterpreter e2804827600738 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2804827600738 1 = true)
end Blc.Floor43
