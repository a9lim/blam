import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f308 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,1,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f309 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,1,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f310 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f311 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f312 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f313 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f314 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f315 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f316 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,1,2,3]) :=
  row_of_forall (discharge bank [7,7,1,1,1,7,12,1,1,1,1,1,1,12] (hard := []) (by decide +kernel) .nil)

theorem f317 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,1,3,2]) :=
  row_of_forall (discharge bank [7,7,1,1,7,12,1,1,1,1,1,12] (hard := []) (by decide +kernel) .nil)

theorem f318 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,2,1,3]) :=
  row_of_forall (discharge bank [7,7,11,11,11,7,7,12,12,8,16,1,1,1,16,27,12,12] (hard := []) (by decide +kernel) .nil)

theorem f319 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [7,11,12,12,11,7,11,11,12,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f320 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,2,3,1]) :=
  row_of_forall (discharge bank [7,7,12,11,7,12,8,1,1,1,23,12] (hard := []) (by decide +kernel) .nil)

theorem f321 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
