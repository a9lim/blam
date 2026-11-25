import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f364 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,0,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f365 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f366 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f367 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f368 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f369 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f370 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,3,0,0]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f371 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f372 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f373 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f374 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f375 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f376 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f377 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
