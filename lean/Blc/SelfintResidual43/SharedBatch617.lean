import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2423083224482 : ¬ IsSelfInterpreter e2423083224482 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2423083224482 1 = true)
end Blc.Floor43
