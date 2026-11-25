import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2366 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2367 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2368 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2369 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2370 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2371 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2372 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2373 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2374 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2375 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2376 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2377 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2378 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2379 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [2,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
