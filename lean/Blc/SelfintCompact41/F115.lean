import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1610 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1611 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1612 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1613 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1614 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1615 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1616 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1617 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1618 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1619 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1620 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1621 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1622 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1623 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
