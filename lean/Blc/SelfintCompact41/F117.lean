import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1638 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [2,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1639 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [2,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1640 : BadRow (markedRow ⟨3,2,2,2,4,3⟩ [2,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1641 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1642 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1643 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1644 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1645 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1646 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1647 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1648 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1649 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1650 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1651 : BadRow (markedRow ⟨3,2,0,3,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
