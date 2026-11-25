import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib2

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2393373386606 : ¬ IsSelfInterpreter e2393373386606 := Lib2.excluded (by decide : SelfintRecursiveTypes.has Lib2.tab Lib2.env e2393373386606 3 = true)
theorem shared_e2393373386678 : ¬ IsSelfInterpreter e2393373386678 := Lib2.excluded (by decide : SelfintRecursiveTypes.has Lib2.tab Lib2.env e2393373386678 3 = true)
theorem shared_e2393373388022 : ¬ IsSelfInterpreter e2393373388022 := Lib2.excluded (by decide : SelfintRecursiveTypes.has Lib2.tab Lib2.env e2393373388022 3 = true)
end Blc.Floor43
