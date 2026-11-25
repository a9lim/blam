import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2478 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2479 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2480 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2481 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2482 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2483 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2484 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2485 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2486 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2487 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2488 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2489 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2490 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2491 : BadRow (markedRow ⟨4,2,0,2,4,4⟩ [0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
