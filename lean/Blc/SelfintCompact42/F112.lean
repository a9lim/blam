import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1568 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1569 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1570 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1571 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1572 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1573 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1574 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1575 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1576 : BadRow (markedRow ⟨1,2,0,5,4,4⟩ [0,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1577 : BadRow (markedRow ⟨1,2,0,5,4,4⟩ [0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1578 : BadRow (markedRow ⟨1,2,0,5,4,4⟩ [0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1579 : BadRow (markedRow ⟨1,2,0,5,4,4⟩ [0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1580 : BadRow (markedRow ⟨1,2,0,5,4,4⟩ [0,0] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1581 : BadRow (markedRow ⟨1,2,0,5,4,4⟩ [0,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
