import Blc.SelfintCompact43.Base
import Blc.SelfintGradeProbes

set_option Elab.async false
namespace Blc.SelfintSingleObject.Compact43
open SelfintWireCost
theorem no2804827616098 : ¬ MinimalInterpreter Floor43.e2804827616098 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no2804827616162 : ¬ MinimalInterpreter Floor43.e2804827616162 := fun h => Blc.SelfintGradeProbes.cutM1_2 (by decide) h.1
end Blc.SelfintSingleObject.Compact43
