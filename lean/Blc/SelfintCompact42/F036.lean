import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f504 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f505 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f506 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f507 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f508 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f509 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [3,0,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f510 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [3,0,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f511 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [3,0,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f512 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [3,1,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f513 : BadRow (markedRow ⟨0,2,0,4,5,4⟩ [0,0] [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f514 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f515 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

theorem f516 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

theorem f517 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
