import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3684 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3685 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3686 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3687 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3688 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3689 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3690 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3691 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3692 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3693 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3694 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3695 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
