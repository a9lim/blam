import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3660 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3661 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3662 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3663 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3664 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3665 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3666 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [3,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3667 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3668 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3669 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3670 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3671 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
