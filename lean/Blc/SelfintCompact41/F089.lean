import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1246 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1247 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1248 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1249 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1250 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1251 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1252 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1253 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1254 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1255 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1256 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1257 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1258 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [0,1,1,2]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f1259 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [0,1,2,1]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
