import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f378 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,1,4,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,1,1,15,1] (hard := []) (by decide +kernel) .nil)

theorem f379 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,2,1,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,8,1,1,1,5,23,1] (hard := []) (by decide +kernel) .nil)

theorem f380 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,2,2,3]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,9,9,1,18] (hard := []) (by decide +kernel) .nil)

theorem f381 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,2,3,2]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,9,9,8,9,7,9,23,18] (hard := []) (by decide +kernel) .nil)

theorem f382 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,2,4,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,18,5] (hard := []) (by decide +kernel) .nil)

theorem f383 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,3,0,4]) :=
  row_of_forall (discharge bank [1,7,1,7,1,9,9,5,5] (hard := []) (by decide +kernel) .nil)

theorem f384 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,3,1,3]) :=
  row_of_forall (discharge bank [2,2,7,7,1,9,9,9,9,9,9,9,9,9,9,1,7,5,15,3] (hard := []) (by decide +kernel) .nil)

theorem f385 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,3,2,2]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,9,9,9,9,9,9,7,1,15] (hard := []) (by decide +kernel) .nil)

theorem f386 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,3,3,1]) :=
  row_of_forall (discharge bank [2,2,8,1,7,9,9,9,9,9,7,5] (hard := []) (by decide +kernel) .nil)

theorem f387 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,3,4,0]) :=
  row_of_forall (discharge bank [16,9,5] (hard := []) (by decide +kernel) .nil)

theorem f388 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,4,0,3]) :=
  row_of_forall (discharge bank [1,1,9,9,5,5] (hard := []) (by decide +kernel) .nil)

theorem f389 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,4,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,1,14] (hard := []) (by decide +kernel) .nil)

theorem f390 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,4,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem f391 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,4,3,0]) :=
  row_of_forall (discharge bank [7,9,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
