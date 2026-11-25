import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2380 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2381 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2382 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2383 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2384 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2385 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2386 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2387 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2388 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2389 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2390 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2391 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2392 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2393 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
