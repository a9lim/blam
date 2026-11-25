import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2652 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2653 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2654 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2655 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2656 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2657 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2658 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2659 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2660 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2661 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2662 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2663 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
