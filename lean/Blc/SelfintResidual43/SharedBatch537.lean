import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2422414761178 : ¬ IsSelfInterpreter e2422414761178 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2422414761178 1 = true)
theorem shared_e2422414761194 : ¬ IsSelfInterpreter e2422414761194 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2422414761194 1 = true)
end Blc.Floor43
