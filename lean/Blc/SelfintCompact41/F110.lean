import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1540 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1541 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1542 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1543 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1544 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1545 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1546 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1547 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1548 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1549 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1550 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1551 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1552 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1553 : BadRow (markedRow ⟨3,2,0,2,4,5⟩ [0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
