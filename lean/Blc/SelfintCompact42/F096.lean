import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1344 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1345 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1346 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1347 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1348 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1349 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1350 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1351 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1352 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1353 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1354 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1355 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1356 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1357 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [1,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
