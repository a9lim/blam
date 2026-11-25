import Blc.SelfintCompact45.Base
import Blc.SelfintGradeProbes
import Blc.SelfintResidual43.Lib2
import Blc.SelfintResidual45.Grade026S000
import Blc.SelfintResidual45.Probe9557378839470
import Blc.SelfintResidual45.R43Lib21
import Blc.SelfintResidual45.Reg9557379028854
import Blc.SelfintResidual45.Reg9557387579002
import Blc.SelfintResidual45.Reg9557387579194

set_option Elab.async false
namespace Blc.SelfintSingleObject.Compact45
open SelfintWireCost
theorem no9557378837750 : ¬ MinimalInterpreter Floor45.e9557378837750 := fun h => Blc.Floor43.Lib2.excluded (by decide) h.1
theorem no9557378839470 : ¬ MinimalInterpreter Floor45.e9557378839470 := fun h => Blc.Floor45.Probe9557378839470.ex_e9557378839470 h.1
theorem no9557378840174 : ¬ MinimalInterpreter Floor45.e9557378840174 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no9557378840186 : ¬ MinimalInterpreter Floor45.e9557378840186 := fun h => Blc.Floor43.Lib21.excluded (by decide) h.1
theorem no9557378841398 : ¬ MinimalInterpreter Floor45.e9557378841398 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no9557378841402 : ¬ MinimalInterpreter Floor45.e9557378841402 := fun h => Blc.Floor43.Lib21.excluded (by decide) h.1
theorem no9557379028854 : ¬ MinimalInterpreter Floor45.e9557379028854 := fun h => Blc.Floor45.Reg9557379028854.excluded h.1
theorem no9557379042266 : ¬ MinimalInterpreter Floor45.e9557379042266 := fun h => Blc.Floor43.Lib21.excluded (by decide) h.1
theorem no9557379042926 : ¬ MinimalInterpreter Floor45.e9557379042926 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no9557379042938 : ¬ MinimalInterpreter Floor45.e9557379042938 := fun h => Blc.Floor43.Lib21.excluded (by decide) h.1
theorem no9557379043130 : ¬ MinimalInterpreter Floor45.e9557379043130 := fun h => Blc.Floor43.Lib21.excluded (by decide) h.1
theorem no9557379048918 : ¬ MinimalInterpreter Floor45.e9557379048918 := fun h => Blc.Floor45.Grade026S000.ex_e9557379048918 h.1
theorem no9557387578222 : ¬ MinimalInterpreter Floor45.e9557387578222 := fun h => Blc.SelfintGradeProbes.cutM5_2 (by decide) h.1
theorem no9557387578990 : ¬ MinimalInterpreter Floor45.e9557387578990 := fun h => Blc.SelfintGradeProbes.cutM13_0 (by decide) h.1
theorem no9557387579002 : ¬ MinimalInterpreter Floor45.e9557387579002 := fun h => Blc.Floor45.Reg9557387579002.excluded h.1
theorem no9557387579194 : ¬ MinimalInterpreter Floor45.e9557387579194 := fun h => Blc.Floor45.Reg9557387579194.excluded h.1
end Blc.SelfintSingleObject.Compact45
