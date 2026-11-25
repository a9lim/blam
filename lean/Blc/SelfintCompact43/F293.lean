import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3516 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3517 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3518 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3519 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3520 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3521 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3522 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3523 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3524 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3525 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3526 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3527 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
