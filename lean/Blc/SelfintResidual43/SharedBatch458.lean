import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual43.Lib3

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2422406500182 : ¬ IsSelfInterpreter e2422406500182 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2422406500182 1 = true)
theorem shared_e2422406503638 : ¬ IsSelfInterpreter e2422406503638 := Lib3.excluded (by decide : SelfintRecursiveTypes.has Lib3.tab Lib3.env e2422406503638 4 = true)
theorem shared_e2422406503734 : ¬ IsSelfInterpreter e2422406503734 := Lib3.excluded (by decide : SelfintRecursiveTypes.has Lib3.tab Lib3.env e2422406503734 4 = true)
theorem shared_e2422406503738 : ¬ IsSelfInterpreter e2422406503738 := Lib3.excluded (by decide : SelfintRecursiveTypes.has Lib3.tab Lib3.env e2422406503738 4 = true)
end Blc.Floor43
