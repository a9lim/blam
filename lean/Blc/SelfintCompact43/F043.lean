import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f516 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,4,3,2]) :=
  row_of_forall (discharge bank [39,4,1,4,39,4,1] (hard := []) (by decide +kernel) .nil)

theorem f517 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,4,4,1]) :=
  row_of_forall (discharge bank [39,1,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f518 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,0,4,4]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f519 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,1,3,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,25,1,7] (hard := []) (by decide +kernel) .nil)

theorem f520 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,1,4,3]) :=
  row_of_forall (discharge bank [4,4,4,1,4,4,1,7] (hard := []) (by decide +kernel) .nil)

theorem f521 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,2,2,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,25,1,1] (hard := []) (by decide +kernel) .nil)

theorem f522 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,2,3,3]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f523 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,2,4,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,25,39,1,1] (hard := []) (by decide +kernel) .nil)

theorem f524 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,3,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,25,1,4,4,1,39,7,7] (hard := []) (by decide +kernel) .nil)

theorem f525 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,3,2,3]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,4,39,9] (hard := []) (by decide +kernel) .nil)

theorem f526 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,3,3,2]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,25,27,9] (hard := []) (by decide +kernel) .nil)

theorem f527 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,3,4,1]) :=
  row_of_forall (discharge bank [4,4,4,25,39,4,30,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
