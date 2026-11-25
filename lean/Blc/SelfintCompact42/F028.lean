import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f392 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,0,2,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,5,1,1,4] (hard := []) (by decide +kernel) .nil)

theorem f393 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,0,3,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,9,3,1,9,8,9,4] (hard := []) (by decide +kernel) .nil)

theorem f394 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,0,4,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,5,18] (hard := []) (by decide +kernel) .nil)

theorem f395 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,1,1,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,1,9,9,9,9,9,1,4] (hard := []) (by decide +kernel) .nil)

theorem f396 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,1,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,4,4] (hard := []) (by decide +kernel) .nil)

theorem f397 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,1,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,8,9,4,4,14,4] (hard := []) (by decide +kernel) .nil)

theorem f398 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,1,4,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,1,9,9,9,14] (hard := []) (by decide +kernel) .nil)

theorem f399 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,2,0,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,5,5,23,1] (hard := []) (by decide +kernel) .nil)

theorem f400 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,2,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9,9,1,9,9,9,9,5,3,4,4] (hard := []) (by decide +kernel) .nil)

theorem f401 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,2,2,2]) :=
  row_of_forall (discharge bank [9,9,9,9,5,3,4] (hard := []) (by decide +kernel) .nil)

theorem f402 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,2,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,23,9,9,9,4,9] (hard := []) (by decide +kernel) .nil)

theorem f403 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,2,4,0]) :=
  row_of_forall (discharge bank [9,9,9,9,5] (hard := []) (by decide +kernel) .nil)

theorem f404 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,3,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,20,3] (hard := []) (by decide +kernel) .nil)

theorem f405 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [2,3,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9,9,18,15,9,9,9,14,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
