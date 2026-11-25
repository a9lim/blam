import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual43.Lib10

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2423217441646 : ¬ IsSelfInterpreter e2423217441646 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2423217441646 1 = true)
theorem shared_e2423217441654 : ¬ IsSelfInterpreter e2423217441654 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2423217441654 1 = true)
theorem shared_e2423217442030 : ¬ IsSelfInterpreter e2423217442030 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2423217442030 1 = true)
theorem shared_e2423217441750 : ¬ IsSelfInterpreter e2423217441750 := Lib10.excluded (by decide : SelfintRecursiveTypes.has Lib10.tab Lib10.env e2423217441750 3 = true)
end Blc.Floor43
