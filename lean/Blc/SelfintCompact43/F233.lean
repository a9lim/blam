import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2796 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2797 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,15,15,18,15,18] (hard := []) (by decide +kernel) .nil)

theorem f2798 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2799 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2800 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [39,39,39,15,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2801 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f2802 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17,7,17] (hard := []) (by decide +kernel) .nil)

theorem f2803 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [6,6,6,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f2804 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,15,18] (hard := []) (by decide +kernel) .nil)

theorem f2805 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,15,18] (hard := []) (by decide +kernel) .nil)

theorem f2806 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [28,30,1,1,1,15,15,18,18] (hard := []) (by decide +kernel) .nil)

theorem f2807 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
