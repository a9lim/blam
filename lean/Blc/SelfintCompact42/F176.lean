import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2464 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2465 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2466 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2467 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2468 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2469 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2470 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2471 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2472 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2473 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2474 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2475 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2476 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2477 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
