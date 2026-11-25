import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2352 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2353 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2354 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2355 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2356 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2357 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2358 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2359 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [0,3] [2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2360 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2361 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2362 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2363 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2364 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2365 : BadRow (markedRow ⟨3,2,3,2,4,3⟩ [1,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
