import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3012 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3013 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3014 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3015 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3016 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3017 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3018 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3019 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3020 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3021 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3022 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3023 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [0,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
