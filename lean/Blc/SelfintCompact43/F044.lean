import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f528 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,4,0,4]) :=
  row_of_forall (discharge bank [1,39,1,39,1] (hard := []) (by decide +kernel) .nil)

theorem f529 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,4,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,39,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f530 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,4,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,39] (hard := []) (by decide +kernel) .nil)

theorem f531 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,4,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f532 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [1,4,4,0]) :=
  row_of_forall (discharge bank [25,1,39] (hard := []) (by decide +kernel) .nil)

theorem f533 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,0,3,4]) :=
  row_of_forall (discharge bank [4,4,25,1,4,25,1,1,7,1,6] (hard := []) (by decide +kernel) .nil)

theorem f534 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,0,4,3]) :=
  row_of_forall (discharge bank [4,4,1,4,1,1,7,25,6] (hard := []) (by decide +kernel) .nil)

theorem f535 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,1,2,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,9,4,4,4,4,4,4,4,7,7,1,6] (hard := []) (by decide +kernel) .nil)

theorem f536 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,1,3,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,1,4,1,4,4,4,4,4,4,4,4,4,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f537 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,1,4,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,36,4,4,4,4,4,7,25,6] (hard := []) (by decide +kernel) .nil)

theorem f538 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,2,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,1,1,1,4,4,4,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f539 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,2,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,7,7,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
