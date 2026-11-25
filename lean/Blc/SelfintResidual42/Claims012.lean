import Blc.SelfintCompact42.Base
import Blc.SelfintGradeProbes

set_option Elab.async false
namespace Blc.SelfintSingleObject.Compact42
open SelfintWireCost
theorem no1211608720822 : ¬ MinimalInterpreter Floor42.e1211608720822 := fun h => Blc.SelfintGradeProbes.cutM8_1 (by decide) h.1
theorem no1211608720854 : ¬ MinimalInterpreter Floor42.e1211608720854 := fun h => Blc.SelfintGradeProbes.cutM0_2 (by decide) h.1
theorem no1211608721014 : ¬ MinimalInterpreter Floor42.e1211608721014 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no1211608721206 : ¬ MinimalInterpreter Floor42.e1211608721206 := fun h => Blc.SelfintGradeProbes.cutM0_2 (by decide) h.1
theorem no1211608721210 : ¬ MinimalInterpreter Floor42.e1211608721210 := fun h => Blc.SelfintGradeProbes.cutM0_2 (by decide) h.1
end Blc.SelfintSingleObject.Compact42
