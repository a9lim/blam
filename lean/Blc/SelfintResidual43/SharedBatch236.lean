import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib2

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2393373579190 : ¬ IsSelfInterpreter e2393373579190 := Lib2.excluded (by decide : SelfintRecursiveTypes.has Lib2.tab Lib2.env e2393373579190 3 = true)
end Blc.Floor43
