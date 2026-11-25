import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1596 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1597 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,34,14] (hard := []) (by decide +kernel) .nil)

theorem f1598 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,34,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1599 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1600 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,4,4,4,4,5,5,5,68] (hard := []) (by decide +kernel) .nil)

theorem f1601 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,4,4,4,4,4,4,4,4,5,5,5,5,5,14,8,8] (hard := []) (by decide +kernel) .nil)

theorem f1602 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,101,101,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1603 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,4,4,4,4,5,5,11,47] (hard := []) (by decide +kernel) .nil)

theorem f1604 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1605 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,5,5,11,101] (hard := []) (by decide +kernel) .nil)

theorem f1606 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,4,4,4,4,4,4,5,5,5,34,47,8] (hard := []) (by decide +kernel) .nil)

theorem f1607 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,5,5,34,101] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
