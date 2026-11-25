import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3480 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3481 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3482 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3483 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3484 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [0,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3485 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3486 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3487 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3488 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3489 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3490 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3491 : BadRow (Grammar43.fourRow ⟨3,2,1,2,4,6⟩ [1,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
