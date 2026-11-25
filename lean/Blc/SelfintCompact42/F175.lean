import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2450 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2451 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2452 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2453 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2454 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2455 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2456 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2457 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2458 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2459 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2460 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2461 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2462 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2463 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
