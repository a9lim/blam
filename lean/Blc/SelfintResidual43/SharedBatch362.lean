import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual43.Lib10

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2419190909806 : ¬ IsSelfInterpreter e2419190909806 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2419190909806 1 = true)
theorem shared_e2419190909814 : ¬ IsSelfInterpreter e2419190909814 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2419190909814 1 = true)
theorem shared_e2419190910190 : ¬ IsSelfInterpreter e2419190910190 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2419190910190 1 = true)
theorem shared_e2419190909910 : ¬ IsSelfInterpreter e2419190909910 := Lib10.excluded (by decide : SelfintRecursiveTypes.has Lib10.tab Lib10.env e2419190909910 3 = true)
end Blc.Floor43
