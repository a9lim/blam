import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2492 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2493 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2494 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2495 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2496 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2497 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2498 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2499 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2500 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2501 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2502 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2503 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2504 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2505 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
