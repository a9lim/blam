import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual43.Lib12

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2389346893018 : ¬ IsSelfInterpreter e2389346893018 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2389346893018 1 = true)
theorem shared_e2389346946670 : ¬ IsSelfInterpreter e2389346946670 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2389346946670 1 = true)
theorem shared_e2389346946870 : ¬ IsSelfInterpreter e2389346946870 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2389346946870 1 = true)
theorem shared_e2389346946682 : ¬ IsSelfInterpreter e2389346946682 := Lib12.excluded (by decide : SelfintRecursiveTypes.has Lib12.tab Lib12.env e2389346946682 0 = true)
end Blc.Floor43
