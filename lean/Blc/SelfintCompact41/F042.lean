import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f588 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f589 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f590 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f591 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f592 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f593 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f594 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f595 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f596 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f597 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f598 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f599 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f600 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f601 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
