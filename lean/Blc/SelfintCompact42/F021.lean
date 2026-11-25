import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f294 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,3,1,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,14,14,18] (hard := []) (by decide +kernel) .nil)

theorem f295 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f296 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f297 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f298 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f299 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f300 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,1,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f301 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f302 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f303 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f304 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f305 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f306 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,1,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f307 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
