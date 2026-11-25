import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f364 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,2,4,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,1,9,18] (hard := []) (by decide +kernel) .nil)

theorem f365 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,3,1,4]) :=
  row_of_forall (discharge bank [9,9,1,7,1,9,9,1,18] (hard := []) (by decide +kernel) .nil)

theorem f366 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,3,2,3]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,7,1,9,9,12,7,9,18] (hard := []) (by decide +kernel) .nil)

theorem f367 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,3,3,2]) :=
  row_of_forall (discharge bank [2,2,2,7,9,1,1,9,9,9,9,7,12,9,7,9,18] (hard := []) (by decide +kernel) .nil)

theorem f368 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,3,4,1]) :=
  row_of_forall (discharge bank [9,8,1,9,8,9,18] (hard := []) (by decide +kernel) .nil)

theorem f369 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,4,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f370 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,4,1,3]) :=
  row_of_forall (discharge bank [9,9,1,1,9,9,1,14] (hard := []) (by decide +kernel) .nil)

theorem f371 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,4,2,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f372 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,4,3,1]) :=
  row_of_forall (discharge bank [9,7,1,9,9,15] (hard := []) (by decide +kernel) .nil)

theorem f373 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [0,4,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f374 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,0,3,4]) :=
  row_of_forall (discharge bank [8,1,8,1,1,9,9,8,9,8,5] (hard := []) (by decide +kernel) .nil)

theorem f375 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,0,4,3]) :=
  row_of_forall (discharge bank [1,1,1,9,9,9,5] (hard := []) (by decide +kernel) .nil)

theorem f376 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,1,2,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,1,18,1] (hard := []) (by decide +kernel) .nil)

theorem f377 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [1,1,3,3]) :=
  row_of_forall (discharge bank [2,2,1,1,9,9,9,9,9,9,9,9,9,1,1,3,18] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
