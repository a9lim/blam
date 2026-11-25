import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2808 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [28,1,1,15,18] (hard := []) (by decide +kernel) .nil)

theorem f2809 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [28,30,1,1,1,15,15,18,18] (hard := []) (by decide +kernel) .nil)

theorem f2810 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [28,1,1,15,18] (hard := []) (by decide +kernel) .nil)

theorem f2811 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [15,15,17,17,8] (hard := []) (by decide +kernel) .nil)

theorem f2812 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2813 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [15,15,17,15,17] (hard := []) (by decide +kernel) .nil)

theorem f2814 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2815 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2816 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [15,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2817 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [15,15,17,17,8] (hard := []) (by decide +kernel) .nil)

theorem f2818 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [15,15,17,15,17] (hard := []) (by decide +kernel) .nil)

theorem f2819 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [15,15,15] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
