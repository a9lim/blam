import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1498 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1499 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1500 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1501 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1502 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1503 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1504 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1505 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1506 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1507 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1508 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1509 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1510 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1511 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
