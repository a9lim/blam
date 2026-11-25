import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3588 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3589 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3590 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3591 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3592 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3593 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3594 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3595 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3596 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3597 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3598 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3599 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
