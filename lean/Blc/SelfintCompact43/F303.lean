import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3636 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3637 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3638 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3639 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3640 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3641 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3642 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3643 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3644 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3645 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3646 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3647 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
