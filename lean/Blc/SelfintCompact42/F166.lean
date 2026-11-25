import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2324 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2325 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2326 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2327 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2328 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2329 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2330 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2331 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2332 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2333 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2334 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2335 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2336 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2337 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
