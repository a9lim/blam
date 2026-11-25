import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f684 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f685 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f686 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f687 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f688 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f689 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f690 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f691 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f692 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f693 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f694 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,3,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f695 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,0,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
