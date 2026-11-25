import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f854 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,1,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,35] (hard := []) (by decide +kernel) .nil)

theorem f855 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,2,0,3]) :=
  row_of_forall (discharge bank [12,12,58,9,10,1,1,35,35] (hard := []) (by decide +kernel) .nil)

theorem f856 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [12,1,12,12,1,1,35] (hard := []) (by decide +kernel) .nil)

theorem f857 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [12,58,34,12,1,35] (hard := []) (by decide +kernel) .nil)

theorem f858 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,2,3,0]) :=
  row_of_forall (discharge bank [12,34,35] (hard := []) (by decide +kernel) .nil)

theorem f859 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,3,0,2]) :=
  row_of_forall (discharge bank [12,12,10,1,35,35] (hard := []) (by decide +kernel) .nil)

theorem f860 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,3,1,1]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f861 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,3,2,0]) :=
  row_of_forall (discharge bank [12,1,35] (hard := []) (by decide +kernel) .nil)

theorem f862 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,0,1,3]) :=
  row_of_forall (discharge bank [35,35,35,1,39,6] (hard := []) (by decide +kernel) .nil)

theorem f863 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [12,35,35,35,12,7,35,1,1,6] (hard := []) (by decide +kernel) .nil)

theorem f864 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,0,3,1]) :=
  row_of_forall (discharge bank [35,35,35,59] (hard := []) (by decide +kernel) .nil)

theorem f865 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,1,0,3]) :=
  row_of_forall (discharge bank [35,35,35,35,1,39,6] (hard := []) (by decide +kernel) .nil)

theorem f866 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [12,12,12,35,12,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem f867 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [12,12,12,35,35,12,7,7,12,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
