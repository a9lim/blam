import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2640 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,15] (hard := []) (by decide +kernel) .nil)

theorem f2641 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2642 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2643 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2644 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2645 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2646 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2647 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2648 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2649 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2650 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2651 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [0,2] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
