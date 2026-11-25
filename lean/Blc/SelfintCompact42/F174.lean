import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2436 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2437 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2438 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2439 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2440 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2441 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2442 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2443 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2444 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2445 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2446 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2447 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2448 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2449 : BadRow (markedRow ⟨3,2,1,3,4,3⟩ [0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
