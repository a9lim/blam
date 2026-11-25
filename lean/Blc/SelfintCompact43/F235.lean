import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2820 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,15] (hard := []) (by decide +kernel) .nil)

theorem f2821 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,15] (hard := []) (by decide +kernel) .nil)

theorem f2822 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [25,30,1,1,1,30,37,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2823 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2824 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [25,1,1,38,15] (hard := []) (by decide +kernel) .nil)

theorem f2825 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [28,27,1,1,1,52,35,15,15] (hard := []) (by decide +kernel) .nil)

theorem f2826 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [28,1,1,52,15] (hard := []) (by decide +kernel) .nil)

theorem f2827 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f2828 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2829 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [7,7,17,7,17] (hard := []) (by decide +kernel) .nil)

theorem f2830 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2831 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [0,2,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
