import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3468 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3469 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3470 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3471 : BadRow (Grammar43.fourRow ⟨3,2,0,2,4,7⟩ [0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3472 : BadRow (Grammar43.fourRow ⟨3,2,0,2,4,7⟩ [0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3473 : BadRow (Grammar43.fourRow ⟨3,2,0,2,4,7⟩ [0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3474 : BadRow (Grammar43.fourRow ⟨3,2,0,2,4,7⟩ [0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3475 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3476 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3477 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3478 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3479 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
