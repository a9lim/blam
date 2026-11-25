import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f648 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,2,4,2,4,4,2,2,2,4,2,2,2,2,4,4,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f649 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f650 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f651 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f652 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,4,4,2,4,4,4,4,2,2,4,4,4,4,4,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f653 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,4,4,2,4,2,2,2,4,4,2,2,4,4,4,2,2,2,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f654 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,4,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f655 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,2,4,2,2,2,2,2,4,4,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f656 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f657 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f658 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,2,2,4,2,2,4,2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f659 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
