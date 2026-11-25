import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f768 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,1,4,2]) :=
  row_of_forall (discharge bank [2,2,4,4,4,2,4,2,2,2,4,2,4,4,4,4,2,2,4,2,2,4,4,4,4,4,4,4,2,2,2,7] (hard := []) (by decide +kernel) .nil)

theorem f769 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,1,5,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f770 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,2,0,5]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,1,9] (hard := []) (by decide +kernel) .nil)

theorem f771 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,2,1,4]) :=
  row_of_forall (discharge bank [2,2,2,4,2,4,4,4,4,4,2,2,2,2,4,2,4,4,2,2,4,4,4,4,2,4,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,7,9,9] (hard := []) (by decide +kernel) .nil)

theorem f772 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,4,4,4,4,4,4,4,4,2,2,4,4,9,9] (hard := []) (by decide +kernel) .nil)

theorem f773 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,2,4,2,4,4,2,2,2,4,2,2,2,2,2,4,2,2,4,4,4,4,4,4,2,2,4,9] (hard := []) (by decide +kernel) .nil)

theorem f774 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,2,4,1]) :=
  row_of_forall (discharge bank [2,2,4,2,4,4,4,2,4,2,4,4,2,2,2,2,4,2,4,4,4,4,2,2,7] (hard := []) (by decide +kernel) .nil)

theorem f775 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,2,5,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f776 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,3,0,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,14,17] (hard := []) (by decide +kernel) .nil)

theorem f777 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4,4,2,4,4,4,4,4,2,4,4,2,2,2,4,4,4,4,4,4,4,4,2,2,2,4,7,17] (hard := []) (by decide +kernel) .nil)

theorem f778 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,2,2,2,4,2,4,4,2,2,4,4,2,2,2,2,4,4,4,4,4,4,4,2,2,4,4,7,11,17] (hard := []) (by decide +kernel) .nil)

theorem f779 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,3,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,2,4,4,2,4,2,4,4,4,4,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
