import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2389293861742 : ¬ IsSelfInterpreter e2389293861742 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2389293861742 1 = true)
theorem shared_e2389293861750 : ¬ IsSelfInterpreter e2389293861750 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2389293861750 1 = true)
end Blc.Floor43
