import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f840 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f841 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,1,2,3]) :=
  row_of_forall (discharge bank [12,12,34,1,1,12,35] (hard := []) (by decide +kernel) .nil)

theorem f842 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,1,3,2]) :=
  row_of_forall (discharge bank [12,12,1,1,12,35] (hard := []) (by decide +kernel) .nil)

theorem f843 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,2,1,3]) :=
  row_of_forall (discharge bank [12,12,10,10,10,12,12,35,35] (hard := []) (by decide +kernel) .nil)

theorem f844 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [12,10,34,34,10,12,10,10,1] (hard := []) (by decide +kernel) .nil)

theorem f845 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,2,3,1]) :=
  row_of_forall (discharge bank [12,12,34,10,12,35] (hard := []) (by decide +kernel) .nil)

theorem f846 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f847 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,3,1,2]) :=
  row_of_forall (discharge bank [12,12,10,10,12,12,35,35] (hard := []) (by decide +kernel) .nil)

theorem f848 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,3,2,1]) :=
  row_of_forall (discharge bank [12,10,12,10,12,35] (hard := []) (by decide +kernel) .nil)

theorem f849 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f850 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,0,2,3]) :=
  row_of_forall (discharge bank [12,12,34,1,12,34,1,1,35] (hard := []) (by decide +kernel) .nil)

theorem f851 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,0,3,2]) :=
  row_of_forall (discharge bank [12,12,1,12,1,1,35] (hard := []) (by decide +kernel) .nil)

theorem f852 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,1,1,3]) :=
  row_of_forall (discharge bank [12,12,12,12,35] (hard := []) (by decide +kernel) .nil)

theorem f853 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [34,12,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
