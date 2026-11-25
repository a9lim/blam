import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1008 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1009 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1010 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1011 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1012 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1013 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1014 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1015 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1016 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1017 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1018 : BadRow (markedRow ⟨1,2,0,3,4,8⟩ [0,0] [3,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1019 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [0,1,3,3]) :=
  row_of_forall (discharge bank [7,1,1,7] (hard := []) (by decide +kernel) .nil)

theorem f1020 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [0,2,2,3]) :=
  row_of_forall (discharge bank [9,9,9,12] (hard := []) (by decide +kernel) .nil)

theorem f1021 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [0,2,3,2]) :=
  row_of_forall (discharge bank [9,9,9,12,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
