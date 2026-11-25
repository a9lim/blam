import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f672 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,3,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,2,2,4,4,2,4,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f673 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,3,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,2,2,4,4,2,2,4,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f674 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,4,0,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f675 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f676 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f677 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f678 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f679 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f680 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f681 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f682 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f683 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
