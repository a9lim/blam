import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1484 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [3,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1485 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [3,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1486 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [4,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1487 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [4,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1488 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [4,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1489 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1490 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1491 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1492 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1493 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1494 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1495 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1496 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1497 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
