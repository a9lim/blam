import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3672 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3673 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3674 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3675 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3676 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3677 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3678 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3679 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3680 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3681 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3682 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3683 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
