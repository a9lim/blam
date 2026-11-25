import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1596 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1597 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1598 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1599 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1600 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1601 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1602 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1603 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1604 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1605 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1606 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1607 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1608 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [0,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1609 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
