import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1274 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [1,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1275 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [1,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1276 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [1,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1277 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [1,0] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1278 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1279 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1280 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1281 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1282 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1283 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1284 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1285 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1286 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1287 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
