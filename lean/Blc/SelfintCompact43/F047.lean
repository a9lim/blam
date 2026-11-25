import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f564 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,3,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,7,7,36,4,17,36,4,4] (hard := []) (by decide +kernel) .nil)

theorem f565 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,3,2,1]) :=
  row_of_forall (discharge bank [2,2,2,7,7,7,36,36,4,4] (hard := []) (by decide +kernel) .nil)

theorem f566 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,3,3,0]) :=
  row_of_forall (discharge bank [7,6] (hard := []) (by decide +kernel) .nil)

theorem f567 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,4,0,2]) :=
  row_of_forall (discharge bank [13,36,17,9] (hard := []) (by decide +kernel) .nil)

theorem f568 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,4,1,1]) :=
  row_of_forall (discharge bank [4,4,4,17] (hard := []) (by decide +kernel) .nil)

theorem f569 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,4,2,0]) :=
  row_of_forall (discharge bank [1,17] (hard := []) (by decide +kernel) .nil)

theorem f570 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,0,1,4]) :=
  row_of_forall (discharge bank [1,1,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f571 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f572 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f573 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,0,4,1]) :=
  row_of_forall (discharge bank [25,1,6,1,6] (hard := []) (by decide +kernel) .nil)

theorem f574 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,1,0,4]) :=
  row_of_forall (discharge bank [1,1,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f575 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [4,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
