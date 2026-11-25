import Blc.SelfintCompact45.Base
import Blc.SelfintGradeProbes
import Blc.SelfintResidual43.Lib0
import Blc.SelfintResidual45.Extra009
import Blc.SelfintResidual45.Paths
import Blc.SelfintResidual45.Probe9540465259738
import Blc.SelfintResidual45.Probe9540465259754
import Blc.SelfintResidual45.R43Lib8
import Blc.SelfintResidual45.Reg9540465259370

set_option Elab.async false
namespace Blc.SelfintSingleObject.Compact45
open SelfintWireCost
theorem no9540465259370 : ¬ MinimalInterpreter Floor45.e9540465259370 := fun h => Blc.Floor45.Reg9540465259370.excluded h.1
theorem no9540465259434 : ¬ MinimalInterpreter Floor45.e9540465259434 := fun h => Blc.Floor43.Lib8.excluded (by decide) h.1
theorem no9540465259734 : ¬ MinimalInterpreter Floor45.e9540465259734 := fun h => Blc.Floor45.Paths.ex_e9540465259734 h.1
theorem no9540465259738 : ¬ MinimalInterpreter Floor45.e9540465259738 := fun h => Blc.Floor45.Probe9540465259738.ex_e9540465259738 h.1
theorem no9540465259754 : ¬ MinimalInterpreter Floor45.e9540465259754 := fun h => Blc.Floor45.Probe9540465259754.ex_e9540465259754 h.1
theorem no9540465259830 : ¬ MinimalInterpreter Floor45.e9540465259830 := fun h => Blc.Floor45.Extra009.ex_e9540465259830 h.1
theorem no9540465259834 : ¬ MinimalInterpreter Floor45.e9540465259834 := fun h => Blc.Floor45.Paths.ex_e9540465259834 h.1
theorem no9540465259930 : ¬ MinimalInterpreter Floor45.e9540465259930 := fun h => Blc.Floor45.Extra009.ex_e9540465259930 h.1
theorem no9540465308446 : ¬ MinimalInterpreter Floor45.e9540465308446 := fun h => Blc.SelfintGradeProbes.cutM10_0 (by decide) h.1
theorem no9540465308614 : ¬ MinimalInterpreter Floor45.e9540465308614 := fun h => Blc.SelfintGradeProbes.cutM10_0 (by decide) h.1
theorem no9540465315130 : ¬ MinimalInterpreter Floor45.e9540465315130 := fun h => Blc.Floor45.Paths.ex_e9540465315130 h.1
theorem no9540465373014 : ¬ MinimalInterpreter Floor45.e9540465373014 := fun h => Blc.Floor43.Lib0.excluded (by decide) h.1
theorem no9540467436986 : ¬ MinimalInterpreter Floor45.e9540467436986 := fun h => Blc.SelfintGradeProbes.cutM3_0 (by decide) h.1
theorem no9540467437018 : ¬ MinimalInterpreter Floor45.e9540467437018 := fun h => Blc.SelfintGradeProbes.cutM3_0 (by decide) h.1
theorem no9540467437242 : ¬ MinimalInterpreter Floor45.e9540467437242 := fun h => Blc.SelfintGradeProbes.cutM3_0 (by decide) h.1
theorem no9540467437402 : ¬ MinimalInterpreter Floor45.e9540467437402 := fun h => Blc.SelfintGradeProbes.cutM3_0 (by decide) h.1
end Blc.SelfintSingleObject.Compact45
