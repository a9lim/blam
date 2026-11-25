import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3648 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3649 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3650 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3651 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3652 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3653 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3654 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3655 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3656 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3657 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3658 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3659 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
