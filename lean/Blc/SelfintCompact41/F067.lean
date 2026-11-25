import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f938 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,3,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f939 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [0,3,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,14] (hard := []) (by decide +kernel) .nil)

theorem f940 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,0,1,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem f941 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,12,12,12,12,12,12,4,1] (hard := []) (by decide +kernel) .nil)

theorem f942 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,0,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,1,7] (hard := []) (by decide +kernel) .nil)

theorem f943 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,1,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,1,1,9,1] (hard := []) (by decide +kernel) .nil)

theorem f944 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f945 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,9] (hard := []) (by decide +kernel) .nil)

theorem f946 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,1,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f947 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,12,12,12,12,12,26,4] (hard := []) (by decide +kernel) .nil)

theorem f948 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,14] (hard := []) (by decide +kernel) .nil)

theorem f949 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31,12,12] (hard := []) (by decide +kernel) .nil)

theorem f950 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,3,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,17] (hard := []) (by decide +kernel) .nil)

theorem f951 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [1,3,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
