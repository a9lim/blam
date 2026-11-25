import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f700 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f701 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34,20,19,19,9,17,49,50] (hard := []) (by decide +kernel) .nil)

theorem f702 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,20,19,19,9,17,10,4] (hard := []) (by decide +kernel) .nil)

theorem f703 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34,20,20,19,19,17,17,14,39,10] (hard := []) (by decide +kernel) .nil)

theorem f704 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f705 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [34,34,34,20,19,19,17,39] (hard := []) (by decide +kernel) .nil)

theorem f706 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,20,20,19,19,17,17,10,51,4] (hard := []) (by decide +kernel) .nil)

theorem f707 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [34,34,34,20,19,19,17,10] (hard := []) (by decide +kernel) .nil)

theorem f708 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f709 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [13,13,13,13,13,27,1,22,10,10] (hard := []) (by decide +kernel) .nil)

theorem f710 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f711 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [13,13,13,13,13,17,7,14,10,26] (hard := []) (by decide +kernel) .nil)

theorem f712 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [13,13,13,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f713 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
