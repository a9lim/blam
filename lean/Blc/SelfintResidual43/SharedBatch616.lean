import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual43.Lib15

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2422949006746 : ¬ IsSelfInterpreter e2422949006746 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2422949006746 1 = true)
theorem shared_e2422945877818 : ¬ IsSelfInterpreter e2422945877818 := Lib15.excluded (by decide : SelfintRecursiveTypes.has Lib15.tab Lib15.env e2422945877818 1 = true)
end Blc.Floor43
