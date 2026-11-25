import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2628 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2629 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2630 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2631 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2632 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2633 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2634 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2635 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2636 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2637 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,15] (hard := []) (by decide +kernel) .nil)

theorem f2638 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2639 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,15,15] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
