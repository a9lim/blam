import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2506 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2507 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2508 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2509 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2510 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2511 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2512 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2513 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2514 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2515 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2516 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2517 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2518 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2519 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
