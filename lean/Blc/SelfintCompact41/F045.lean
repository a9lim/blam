import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f630 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f631 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f632 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f633 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f634 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f635 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f636 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f637 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f638 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f639 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f640 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f641 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f642 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f643 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
