import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f0 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [0,2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [1,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [1,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [1,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [1,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f5 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f6 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f7 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f8 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f9 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f10 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f11 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f12 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f13 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
