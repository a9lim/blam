import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f780 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,3,4,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,2,2] (hard := []) (by decide +kernel) .nil)

theorem f781 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,4,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,4,4,2,2,7,7] (hard := []) (by decide +kernel) .nil)

theorem f782 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,4,1,2]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,2,4,4,2,2,4,4,4,2,4,4,4,2,4,4,4,4,4,4,2,2,7,7] (hard := []) (by decide +kernel) .nil)

theorem f783 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,4,2,1]) :=
  row_of_forall (discharge bank [2,4,4,4,4,4,2,4,4,2,4,4,4,2,4,2,4,4,2,4,4,4,4,4,2,7,7] (hard := []) (by decide +kernel) .nil)

theorem f784 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,4,3,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,2,2] (hard := []) (by decide +kernel) .nil)

theorem f785 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,5,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f786 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,5,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f787 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,5,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f788 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,0,1,5]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,1,14] (hard := []) (by decide +kernel) .nil)

theorem f789 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,0,2,4]) :=
  row_of_forall (discharge bank [2,2,4,2,4,4,2,2,2,2,2,4,2,2,2,2,2,4,4,2,2,4,4,4,4,4,4,4,4,7,1,36,14] (hard := []) (by decide +kernel) .nil)

theorem f790 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,0,3,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,4,2,4,4,4,2,2,4,4,2,2,4,4,4,4,4,4,4,4,1,1,9,11] (hard := []) (by decide +kernel) .nil)

theorem f791 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,0,4,2]) :=
  row_of_forall (discharge bank [2,2,4,4,2,4,4,4,2,2,4,4,2,2,4,4,4,2,2,2,2,4,4,4,4,4,4,7,1,9,11] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
