import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f210 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,9,16,39,39,12,9,23,67,9,9,26,12,16,9,9,11,11,9,9,9,12,11,11,9,16,26,9,9,8,9,11,11,9,9,9,9,9,27,16,16,1,9,25,36,1,18,18,26,3,26,3,12,12,3] (hard := []) (by decide +kernel) .nil)

theorem f211 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,2,2,0]) :=
  row_of_forall (discharge bank [39,8,12,16,12,9,16,12,12,9,11,1,11,11,9,12,12,1,16,25,26,49] (hard := []) (by decide +kernel) .nil)

theorem f212 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,3,0,1]) :=
  row_of_forall (discharge bank [39,63,12,11,16,23,9,8,12,16,9,8,11,16,16,1,26,3,12,12] (hard := []) (by decide +kernel) .nil)

theorem f213 (hard : BadRow [Floor42.e1211203249114,Floor42.e1211584974650]) : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,3,1,0]) :=
  row_of_forall (discharge bank [63,12,16,9,8,12,9,9,8,0,16,9,12,0,12] (hard := [Floor42.e1211203249114,Floor42.e1211584974650]) (by decide +kernel) hard)

theorem f214 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f215 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,0,1,2]) :=
  row_of_forall (discharge bank [12,11,12,12,12,11,12] (hard := []) (by decide +kernel) .nil)

theorem f216 (hard : BadRow [Floor42.e1211203384566]) : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,0,2,1]) :=
  row_of_forall (discharge bank [12,12,0,12,26,1,1] (hard := [Floor42.e1211203384566]) (by decide +kernel) hard)

theorem f217 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f218 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,11,11,46] (hard := []) (by decide +kernel) .nil)

theorem f219 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,1,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f220 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,9,9,11,11,9,9,75,74] (hard := []) (by decide +kernel) .nil)

theorem f221 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,2,0,1]) :=
  row_of_forall (discharge bank [12,12,9,12,12,9,46,1] (hard := []) (by decide +kernel) .nil)

theorem f222 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,2,1,0]) :=
  row_of_forall (discharge bank [12,12,9,12,9,11,9,12,9,11] (hard := []) (by decide +kernel) .nil)

theorem f223 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
