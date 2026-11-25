import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib3

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2422407131862 : ¬ IsSelfInterpreter e2422407131862 := Lib3.excluded (by decide : SelfintRecursiveTypes.has Lib3.tab Lib3.env e2422407131862 4 = true)
end Blc.Floor43
