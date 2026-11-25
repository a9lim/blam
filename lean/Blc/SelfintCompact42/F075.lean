import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1050 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,1,0,3]) :=
  row_of_forall (discharge bank [29,29,1,1,5] (hard := []) (by decide +kernel) .nil)

theorem f1051 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1052 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1053 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,1,3,0]) :=
  row_of_forall (discharge bank [29,29,18] (hard := []) (by decide +kernel) .nil)

theorem f1054 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,2,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1055 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1056 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,2,2,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1057 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,3,0,1]) :=
  row_of_forall (discharge bank [29,29,4,29,4] (hard := []) (by decide +kernel) .nil)

theorem f1058 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [3,3,1,0]) :=
  row_of_forall (discharge bank [29,29,4] (hard := []) (by decide +kernel) .nil)

theorem f1059 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1060 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1061 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1062 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1063 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
