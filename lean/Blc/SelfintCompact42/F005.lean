import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f70 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f71 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f72 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,12,12,12,26,12,12,12,12,12,1,1,71,1,12,12,12,12,1,1,12] (hard := []) (by decide +kernel) .nil)

theorem f73 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,3,3,3,3,3,3,3,3,3,3,3,3,3,12,12,12,12,12,1,1,1,1,70] (hard := []) (by decide +kernel) .nil)

theorem f74 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,3,26,3,3,3,3,3,26,3,3,3,3,12,12,12,12,12,1,1,1,1,1,1,1,12,3,3,3,3,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f75 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,3,3,3,26,3,3,12,12,12,1,1,1,1,3,12,3,3,1,1,3] (hard := []) (by decide +kernel) .nil)

theorem f76 (hard : BadRow [Floor42.e1211298978414]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,0,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,12,12,0,12,1,1,1,1,1] (hard := [Floor42.e1211298978414]) (by decide +kernel) hard)

theorem f77 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f78 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,0,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,12,12,12,12,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f79 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f80 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f81 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,0,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f82 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f83 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
