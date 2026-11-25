import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2664 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2665 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2666 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2667 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2668 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2669 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2670 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2671 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2672 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2673 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2674 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2675 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
