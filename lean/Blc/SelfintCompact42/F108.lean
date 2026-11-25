import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1512 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1513 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1514 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1515 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1516 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1517 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1518 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1519 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1520 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1521 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1522 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1523 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1524 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1525 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
