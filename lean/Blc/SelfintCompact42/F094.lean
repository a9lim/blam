import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1316 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

theorem f1317 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1318 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1319 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1320 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1321 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1322 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1323 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1324 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1325 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1326 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1327 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1328 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1329 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
