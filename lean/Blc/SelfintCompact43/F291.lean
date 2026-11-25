import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3492 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3493 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3494 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3495 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3496 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3497 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3498 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3499 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3500 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3501 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3502 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3503 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
