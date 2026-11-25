import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f602 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f603 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f604 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f605 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f606 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f607 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f608 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f609 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f610 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f611 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f612 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f613 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f614 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f615 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
