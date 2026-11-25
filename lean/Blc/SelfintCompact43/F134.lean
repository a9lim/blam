import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1608 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,1,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,101] (hard := []) (by decide +kernel) .nil)

theorem f1609 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1610 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,8,8] (hard := []) (by decide +kernel) .nil)

theorem f1611 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1612 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,4,5,5,5,5,5,8] (hard := []) (by decide +kernel) .nil)

theorem f1613 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,4,4,4,5,5,5,5,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1614 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1615 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,3,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1616 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,3,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1617 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,3,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,101] (hard := []) (by decide +kernel) .nil)

theorem f1618 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1619 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
