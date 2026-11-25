import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3564 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3565 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3566 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3567 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3568 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3569 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3570 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3571 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3572 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3573 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3574 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3575 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
