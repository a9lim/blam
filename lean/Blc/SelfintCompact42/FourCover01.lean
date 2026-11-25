import Blc.SelfintCompact42.F000
import Blc.SelfintCompact42.F001
import Blc.SelfintCoverGrids
namespace Blc.SelfintSingleObject.Compact42
open OperandGrammar SourceRefutations CoverGrids
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell8 : Four ⟨0,2,8,2,4,4⟩ :=
  .nil
theorem fourCell9 : Four ⟨0,2,9,2,4,3⟩ :=
  .nil
theorem fourCell10 : Four ⟨0,2,0,2,5,8⟩ :=
  (.cons ((.cons (f0) (.cons (f1) (.cons (f2) (.cons (f3) (.cons (f4) (.cons (f5) (.cons (f6) (.cons (f7) (.cons (f8) (.cons (f9) (.cons (f10) (.cons (f11) (.cons (f12) (.cons (f13) (.cons (f14) .nil)))))))))))))))) .nil)
theorem fourCell11 : Four ⟨0,2,1,2,5,7⟩ :=
  .nil
theorem fourCell12 : Four ⟨0,2,2,2,5,6⟩ :=
  .nil
theorem fourCell13 : Four ⟨0,2,3,2,5,5⟩ :=
  .nil
theorem fourCell14 : Four ⟨0,2,4,2,5,4⟩ :=
  .nil
theorem fourCell15 : Four ⟨0,2,5,2,5,3⟩ :=
  .nil
end Blc.SelfintSingleObject.Compact42
