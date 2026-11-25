import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f420 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f421 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f422 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f423 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f424 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f425 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f426 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f427 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f428 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f429 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f430 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f431 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f432 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,1,0,4]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f433 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
