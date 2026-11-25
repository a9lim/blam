import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1204 : BadRow (markedRow ⟨2,2,1,2,4,6⟩ [1,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1205 : BadRow (markedRow ⟨2,2,1,2,4,6⟩ [1,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1206 : BadRow (markedRow ⟨2,2,1,2,4,6⟩ [1,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1207 : BadRow (markedRow ⟨2,2,1,2,4,6⟩ [1,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1208 : BadRow (markedRow ⟨2,2,1,2,4,6⟩ [1,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1209 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [0,1,2,2]) :=
  row_of_forall (discharge bank [58,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1210 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [0,2,1,2]) :=
  row_of_forall (discharge bank [10,10,10] (hard := []) (by decide +kernel) .nil)

theorem f1211 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [0,2,2,1]) :=
  row_of_forall (discharge bank [10,58,10] (hard := []) (by decide +kernel) .nil)

theorem f1212 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [1,0,2,2]) :=
  row_of_forall (discharge bank [58,1,58,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1213 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1214 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1215 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [1,2,0,2]) :=
  row_of_forall (discharge bank [58,23,10,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1216 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1217 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [1,2,2,0]) :=
  row_of_forall (discharge bank [58,58,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
