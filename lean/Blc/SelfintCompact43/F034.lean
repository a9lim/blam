import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f408 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [2,0,0,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f409 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [2,0,0,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f410 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [2,0,1,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f411 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [2,1,0,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f412 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [3,0,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f413 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,14,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f414 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [39,39,39,47,14,14,14,1] (hard := []) (by decide +kernel) .nil)

theorem f415 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [39,39,39,47,14,14,14,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f416 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [1,1,1,14,25,14] (hard := []) (by decide +kernel) .nil)

theorem f417 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [39,39,39,47,14,14,14,1] (hard := []) (by decide +kernel) .nil)

theorem f418 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [0,3,3,1]) :=
  row_of_forall (discharge bank [1,1,1,47,25,14,14,1] (hard := []) (by decide +kernel) .nil)

theorem f419 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,0,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
