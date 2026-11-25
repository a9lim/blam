import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2688 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2689 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2690 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2691 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2692 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2693 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2694 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2695 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2696 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2697 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2698 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2699 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
