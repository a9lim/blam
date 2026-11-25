import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2393119066990 : ¬ IsSelfInterpreter e2393119066990 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2393119066990 1 = true)
theorem shared_e2393119066998 : ¬ IsSelfInterpreter e2393119066998 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2393119066998 1 = true)
end Blc.Floor43
