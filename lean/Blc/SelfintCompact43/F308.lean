import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3696 : BadRow (Grammar43.fourRow ⟨3,2,0,2,5,3⟩ [0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3697 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3698 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3699 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3700 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3701 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3702 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3703 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3704 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3705 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3706 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3707 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
