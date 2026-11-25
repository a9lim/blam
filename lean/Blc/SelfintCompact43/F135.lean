import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1620 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1621 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1622 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1623 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1624 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1625 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1626 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1627 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1628 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1629 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1630 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1631 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
