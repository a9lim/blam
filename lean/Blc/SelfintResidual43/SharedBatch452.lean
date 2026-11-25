import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib13

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2422398561646 : ¬ IsSelfInterpreter e2422398561646 := Lib13.excluded (by decide : SelfintRecursiveTypes.has Lib13.tab Lib13.env e2422398561646 2 = true)
end Blc.Floor43
