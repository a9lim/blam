import Blc.SelfintCompact41.Base
import Blc.SelfintGradeProbes

set_option Elab.async false
namespace Blc.SelfintSingleObject.Compact41
open SelfintWireCost
theorem no605805088566 : ¬ MinimalInterpreter Floor41.e605805088566 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no605805088570 : ¬ MinimalInterpreter Floor41.e605805088570 := fun h => Blc.SelfintGradeProbes.cutM0_2 (by decide) h.1
end Blc.SelfintSingleObject.Compact41
