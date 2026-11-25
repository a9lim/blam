import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f560 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f561 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,1,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f562 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f563 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,1,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f564 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f565 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,58,1,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f566 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,58,1,1,1,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f567 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,58,58,1,1,35,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f568 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f569 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,58,1,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f570 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,58,58,1,1,1,35,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f571 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,58,1,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f572 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f573 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
