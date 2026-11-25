import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1644 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1645 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1646 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1647 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1648 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [3,0,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1649 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [3,0,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1650 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [3,0,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1651 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [3,1,0,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1652 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1653 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1654 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1655 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [1,0] [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
