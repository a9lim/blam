import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2520 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2521 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2522 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2523 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2524 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2525 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2526 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2527 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2528 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2529 : BadRow (markedRow ⟨4,2,1,2,4,3⟩ [1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
