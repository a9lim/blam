import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1386 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1387 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1388 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1389 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1390 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1391 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1392 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1393 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1394 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1395 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1396 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1397 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1398 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1399 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
