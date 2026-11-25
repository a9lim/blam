import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3624 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3625 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3626 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3627 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3628 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3629 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3630 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3631 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3632 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3633 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3634 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3635 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [2,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
