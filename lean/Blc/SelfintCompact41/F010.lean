import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f140 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f141 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,1,2,3]) :=
  row_of_forall (discharge bank [1,1,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f142 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,1,3,2]) :=
  row_of_forall (discharge bank [8,1,13,1,13] (hard := []) (by decide +kernel) .nil)

theorem f143 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,2,1,3]) :=
  row_of_forall (discharge bank [1,1,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f144 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f145 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,2,3,1]) :=
  row_of_forall (discharge bank [8,1,13] (hard := []) (by decide +kernel) .nil)

theorem f146 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f147 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,3,1,2]) :=
  row_of_forall (discharge bank [6,6,4,17,4] (hard := []) (by decide +kernel) .nil)

theorem f148 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,3,2,1]) :=
  row_of_forall (discharge bank [6,6,4] (hard := []) (by decide +kernel) .nil)

theorem f149 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [3,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f150 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,0,2,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,72,11,11,10,10,4] (hard := []) (by decide +kernel) .nil)

theorem f151 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,0,3,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,11,10,10,10,4] (hard := []) (by decide +kernel) .nil)

theorem f152 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,1,1,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,9,1,1,1,1,4,77,4] (hard := []) (by decide +kernel) .nil)

theorem f153 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,12,12,12,12,12,12,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
