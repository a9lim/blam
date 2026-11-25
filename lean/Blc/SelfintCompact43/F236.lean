import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2832 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f2833 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [15,15,18,18,8] (hard := []) (by decide +kernel) .nil)

theorem f2834 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [15,15,18,15,18] (hard := []) (by decide +kernel) .nil)

theorem f2835 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [15,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2836 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2837 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2838 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2839 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2840 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2841 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2842 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2843 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
