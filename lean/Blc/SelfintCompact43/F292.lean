import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3504 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3505 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3506 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3507 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3508 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3509 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3510 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [0,2] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3511 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3512 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3513 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3514 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3515 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [1,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
