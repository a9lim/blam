import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f126 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [27,9,27,9,9,9,14,10,26,27,27,9,22,41,41] (hard := []) (by decide +kernel) .nil)

theorem f127 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [17,17,7,7,7,7,7,14,14,54,27,27,9,9,10,7,7,10,15,15,26,15,41,42,40] (hard := []) (by decide +kernel) .nil)

theorem f128 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [17,17,7,7,7,7,7,14,7,14,27,27,9,9,29,7,7,10,14,45,26,15,41,28,40] (hard := []) (by decide +kernel) .nil)

theorem f129 : BadRow (markedRow ⟨0,4,0,2,4,3⟩ [0,0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [17,17,7,7,7,7,17,17,7,7,7,14,26,15,28] (hard := []) (by decide +kernel) .nil)

theorem f130 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [0,3,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f131 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [1,2,3,3]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f132 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [1,3,2,3]) :=
  row_of_forall (discharge bank [1,34,1] (hard := []) (by decide +kernel) .nil)

theorem f133 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [1,3,3,2]) :=
  row_of_forall (discharge bank [34,1,1] (hard := []) (by decide +kernel) .nil)

theorem f134 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [2,1,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f135 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [2,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f136 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [2,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f137 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [2,3,1,3]) :=
  row_of_forall (discharge bank [1,34,1,34,1] (hard := []) (by decide +kernel) .nil)

theorem f138 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [2,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f139 : BadRow (markedRow ⟨0,2,0,3,4,9⟩ [0,0] [2,3,3,1]) :=
  row_of_forall (discharge bank [8,1,34] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
