import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2338 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2339 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2340 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2341 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2342 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2343 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [2,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2344 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2345 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2346 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2347 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2348 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2349 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2350 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2351 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
