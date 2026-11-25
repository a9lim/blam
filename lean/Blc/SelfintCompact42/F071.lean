import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f994 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [1,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f995 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [1,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f996 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [1,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f997 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f998 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f999 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1000 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1001 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1002 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1003 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1004 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1005 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1006 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [2,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1007 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
