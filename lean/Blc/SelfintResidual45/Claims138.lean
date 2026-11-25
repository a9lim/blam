import Blc.SelfintCompact45.Base
import Blc.SelfintGradeProbes
import Blc.SelfintResidual43.Lib2
import Blc.SelfintResidual45.Grade054S000
import Blc.SelfintResidual45.Probe9690028559758
import Blc.SelfintResidual45.Probe9690032590222
import Blc.SelfintResidual45.Reg9690028498318
import Blc.SelfintResidual45.Reg9690028504462
import Blc.SelfintResidual45.Reg9690028651918
import Blc.SelfintResidual45.Reg9690029020558
import Blc.SelfintResidual45.Reg9690032559502
import Blc.SelfintResidual45.Reg9690032584078

set_option Elab.async false
namespace Blc.SelfintSingleObject.Compact45
open SelfintWireCost
theorem no9690028498318 : ¬ MinimalInterpreter Floor45.e9690028498318 := fun h => Blc.Floor45.Reg9690028498318.excluded h.1
theorem no9690028504462 : ¬ MinimalInterpreter Floor45.e9690028504462 := fun h => Blc.Floor45.Reg9690028504462.excluded h.1
theorem no9690028559758 : ¬ MinimalInterpreter Floor45.e9690028559758 := fun h => Blc.Floor45.Probe9690028559758.ex_e9690028559758 h.1
theorem no9690028560014 : ¬ MinimalInterpreter Floor45.e9690028560014 := fun h => Blc.SelfintGradeProbes.cutM14_0 (by decide) h.1
theorem no9690028651918 : ¬ MinimalInterpreter Floor45.e9690028651918 := fun h => Blc.Floor45.Reg9690028651918.excluded h.1
theorem no9690028652174 : ¬ MinimalInterpreter Floor45.e9690028652174 := fun h => Blc.Floor45.Grade054S000.ex_e9690028652174 h.1
theorem no9690029020558 : ¬ MinimalInterpreter Floor45.e9690029020558 := fun h => Blc.Floor45.Reg9690029020558.excluded h.1
theorem no9690029020814 : ¬ MinimalInterpreter Floor45.e9690029020814 := fun h => Blc.Floor45.Grade054S000.ex_e9690029020814 h.1
theorem no9690029021838 : ¬ MinimalInterpreter Floor45.e9690029021838 := fun h => Blc.Floor45.Grade054S000.ex_e9690029021838 h.1
theorem no9690029045134 : ¬ MinimalInterpreter Floor45.e9690029045134 := fun h => Blc.Floor43.Lib2.excluded (by decide) h.1
theorem no9690029045390 : ¬ MinimalInterpreter Floor45.e9690029045390 := fun h => Blc.Floor45.Grade054S000.ex_e9690029045390 h.1
theorem no9690032559502 : ¬ MinimalInterpreter Floor45.e9690032559502 := fun h => Blc.Floor45.Reg9690032559502.excluded h.1
theorem no9690032584078 : ¬ MinimalInterpreter Floor45.e9690032584078 := fun h => Blc.Floor45.Reg9690032584078.excluded h.1
theorem no9690032584334 : ¬ MinimalInterpreter Floor45.e9690032584334 := fun h => Blc.Floor45.Grade054S000.ex_e9690032584334 h.1
theorem no9690032585358 : ¬ MinimalInterpreter Floor45.e9690032585358 := fun h => Blc.SelfintGradeProbes.cutM14_0 (by decide) h.1
theorem no9690032590222 : ¬ MinimalInterpreter Floor45.e9690032590222 := fun h => Blc.Floor45.Probe9690032590222.ex_e9690032590222 h.1
end Blc.SelfintSingleObject.Compact45
