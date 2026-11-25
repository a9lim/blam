import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3036 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3037 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3038 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3039 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3040 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3041 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3042 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3043 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3044 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3045 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [2,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3046 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [3,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3047 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [3,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
