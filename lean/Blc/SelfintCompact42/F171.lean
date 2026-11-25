import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2394 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2395 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2396 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2397 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2398 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2399 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2400 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2401 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2402 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2403 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2404 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2405 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2406 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2407 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [3,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
