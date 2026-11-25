import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2784 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2785 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2786 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2787 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2788 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [39,39,39,39,18,1,1,1,15,34] (hard := []) (by decide +kernel) .nil)

theorem f2789 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [39,39,39,39,18,1,1,1,15,34] (hard := []) (by decide +kernel) .nil)

theorem f2790 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,18,18,28,27,1,1,1,15,15,10,73] (hard := []) (by decide +kernel) .nil)

theorem f2791 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2792 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [39,39,39,39,18,28,1,1,15,73] (hard := []) (by decide +kernel) .nil)

theorem f2793 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,18,18,25,30,1,1,1,15,15,10,10] (hard := []) (by decide +kernel) .nil)

theorem f2794 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [39,39,39,39,18,25,1,1,15,47] (hard := []) (by decide +kernel) .nil)

theorem f2795 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,0,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,15,15,18,18,8] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
