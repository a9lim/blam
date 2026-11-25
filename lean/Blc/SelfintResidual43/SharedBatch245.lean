import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual43.Lib10

set_option Elab.async false
namespace Blc.Floor43
open Term
theorem shared_e2393421106030 : ¬ IsSelfInterpreter e2393421106030 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2393421106030 1 = true)
theorem shared_e2393421106038 : ¬ IsSelfInterpreter e2393421106038 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2393421106038 1 = true)
theorem shared_e2393421106414 : ¬ IsSelfInterpreter e2393421106414 := Lib0.excluded (by decide : SelfintRecursiveTypes.has Lib0.tab Lib0.env e2393421106414 1 = true)
theorem shared_e2393421106134 : ¬ IsSelfInterpreter e2393421106134 := Lib10.excluded (by decide : SelfintRecursiveTypes.has Lib10.tab Lib10.env e2393421106134 3 = true)
end Blc.Floor43
