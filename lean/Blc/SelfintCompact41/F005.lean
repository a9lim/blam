import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f70 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f71 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f72 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f73 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f74 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [1,2,0,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f75 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [2,0,0,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f76 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [2,0,0,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f77 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [2,0,0,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f78 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [2,0,1,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f79 : BadRow (markedRow ⟨0,2,0,2,6,3⟩ [0,0] [2,1,0,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f80 : BadRow (markedRow ⟨0,3,0,2,4,7⟩ [0,0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f81 : BadRow (markedRow ⟨0,3,0,2,4,7⟩ [0,0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f82 : BadRow (markedRow ⟨0,3,0,2,4,7⟩ [0,0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f83 : BadRow (markedRow ⟨0,3,0,2,4,7⟩ [0,0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
