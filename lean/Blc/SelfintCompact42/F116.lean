import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1624 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1625 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1626 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1627 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1628 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1629 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1630 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [0,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1631 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1632 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1633 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1634 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1635 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1636 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1637 : BadRow (markedRow ⟨1,2,1,5,4,3⟩ [1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
