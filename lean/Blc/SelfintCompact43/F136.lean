import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1632 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1633 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1634 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1635 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1636 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1637 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,3,0,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1638 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1639 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1640 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1641 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1642 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1643 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
