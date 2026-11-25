import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2408 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2409 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2410 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2411 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2412 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2413 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2414 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2415 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2416 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2417 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2418 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2419 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2420 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2421 : BadRow (markedRow ⟨3,2,0,3,4,4⟩ [0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
