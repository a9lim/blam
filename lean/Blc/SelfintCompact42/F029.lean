import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f406 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,3,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,18,1,9,9,14,9,14] (hard := []) (by decide +kernel) .nil)

theorem f407 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,3,3,0]) :=
  row_of_forall (discharge bank [2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f408 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,4,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,5,5] (hard := []) (by decide +kernel) .nil)

theorem f409 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,4,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f410 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,4,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,5] (hard := []) (by decide +kernel) .nil)

theorem f411 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,0,1,4]) :=
  row_of_forall (discharge bank [1,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f412 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,1,9,9,9,4,4] (hard := []) (by decide +kernel) .nil)

theorem f413 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,8,1,9,4,1,4,9,9] (hard := []) (by decide +kernel) .nil)

theorem f414 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,0,4,1]) :=
  row_of_forall (discharge bank [3,1,1,4] (hard := []) (by decide +kernel) .nil)

theorem f415 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,1,0,4]) :=
  row_of_forall (discharge bank [1,1,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f416 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,1,1,3]) :=
  row_of_forall (discharge bank [9,9,1,4,4,4,4,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f417 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f418 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,1,3,1]) :=
  row_of_forall (discharge bank [9,9,8,1,4,4,4,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f419 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,1,4,0]) :=
  row_of_forall (discharge bank [1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
