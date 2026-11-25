import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f420 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,2,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,4,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem f421 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f422 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f423 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,9,4] (hard := []) (by decide +kernel) .nil)

theorem f424 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,3,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,3,9,14,3,9] (hard := []) (by decide +kernel) .nil)

theorem f425 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,3,1,1]) :=
  row_of_forall (discharge bank [9,9,5,5,5,3,14,3] (hard := []) (by decide +kernel) .nil)

theorem f426 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,5,9] (hard := []) (by decide +kernel) .nil)

theorem f427 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,4,0,1]) :=
  row_of_forall (discharge bank [20,3,14,18] (hard := []) (by decide +kernel) .nil)

theorem f428 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [3,4,1,0]) :=
  row_of_forall (discharge bank [1,14] (hard := []) (by decide +kernel) .nil)

theorem f429 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [4,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f430 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [4,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f431 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [4,0,2,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f432 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [4,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f433 : BadRow (markedRow ⟨0,2,0,4,4,8⟩ [0,0] [4,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
