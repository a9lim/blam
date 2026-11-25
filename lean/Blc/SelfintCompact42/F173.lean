import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2422 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2423 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2424 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2425 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2426 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2427 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2428 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2429 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2430 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2431 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2432 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2433 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2434 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2435 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
