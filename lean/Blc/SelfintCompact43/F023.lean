import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f276 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,0,0,3]) :=
  row_of_forall (discharge bank [1,1,28,25,30,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f277 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f278 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,0,2,1]) :=
  row_of_forall (discharge bank [4,4,14,14,1,1,1,48,131] (hard := []) (by decide +kernel) .nil)

theorem f279 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,0,3,0]) :=
  row_of_forall (discharge bank [1,1,28,1,28,1,1,1,1,1,28,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f280 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,1,0,2]) :=
  row_of_forall (discharge bank [1,1,14,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f281 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f282 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,4,4,1,24,36] (hard := []) (by decide +kernel) .nil)

theorem f283 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,2,0,1]) :=
  row_of_forall (discharge bank [4,1,25,4,1,1,4,1,14] (hard := []) (by decide +kernel) .nil)

theorem f284 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,2,1,0]) :=
  row_of_forall (discharge bank [1,25,4,1,4,4,14] (hard := []) (by decide +kernel) .nil)

theorem f285 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,3,3,0,0]) :=
  row_of_forall (discharge bank [30,38,1,38,1,1,1,30,1,1] (hard := []) (by decide +kernel) .nil)

theorem f286 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,36,1,1,7,7,14] (hard := []) (by decide +kernel) .nil)

theorem f287 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,36,36,36,1,1,7,7,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
