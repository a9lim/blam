import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2417077521270 : ¬ IsSelfInterpreter e2417077521270 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2417077521270 1 = true)
theorem shared_e2417278847854 : ¬ IsSelfInterpreter e2417278847854 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2417278847854 1 = true)
end Blc.Floor43
