import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3456 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3457 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3458 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3459 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3460 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3461 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3462 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3463 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3464 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3465 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3466 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3467 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
