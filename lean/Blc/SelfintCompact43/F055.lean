import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f660 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f661 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f662 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f663 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f664 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,1,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,4,2,4,2,4,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f665 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f666 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f667 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f668 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f669 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f670 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f671 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,3,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,4,2,4,4,4,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
