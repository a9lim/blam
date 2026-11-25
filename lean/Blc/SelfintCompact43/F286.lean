import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3432 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3433 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3434 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3435 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3436 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3437 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3438 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3439 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3440 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3441 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3442 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3443 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
