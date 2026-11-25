import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3024 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3025 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3026 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3027 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3028 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3029 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3030 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3031 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3032 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3033 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3034 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3035 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [1,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
