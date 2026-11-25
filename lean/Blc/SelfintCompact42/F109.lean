import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1526 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1527 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1528 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1529 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1530 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1531 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1532 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1533 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1534 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1535 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1536 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1537 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1538 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1539 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [1,0] [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
