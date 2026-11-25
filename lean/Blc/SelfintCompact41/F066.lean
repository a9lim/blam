import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f924 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f925 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f926 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f927 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f928 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,0,2,3]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f929 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,0,3,2]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f930 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,1,1,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,39] (hard := []) (by decide +kernel) .nil)

theorem f931 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [31,31,31,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f932 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,1,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,39] (hard := []) (by decide +kernel) .nil)

theorem f933 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,2,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,7] (hard := []) (by decide +kernel) .nil)

theorem f934 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [31,31,31,12,12,12,12,12,12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f935 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [31,31,31,12,12,12,12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f936 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,2,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f937 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,3,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,17] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
