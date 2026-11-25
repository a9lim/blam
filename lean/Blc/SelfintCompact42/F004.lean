import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f56 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,1,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,26,26,26,26,12,3,3,26,3,26,12,3,26,3] (hard := []) (by decide +kernel) .nil)

theorem f57 (hard : BadRow [Floor42.e1211550375130,Floor42.e1211550373722,Floor42.e1211550263130]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,1,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,1,26,26,26,26,26,3,3,26,3,26,26,3,12,3,0,0,3,0,3] (hard := [Floor42.e1211550375130,Floor42.e1211550373722,Floor42.e1211550263130]) (by decide +kernel) hard)

theorem f58 (hard : BadRow [Floor42.e1211550375146]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,1,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,3,26,3,3,3,26,3,3,0,3,3] (hard := [Floor42.e1211550375146]) (by decide +kernel) hard)

theorem f59 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f60 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,3,3,26,3,3,3,3,12,12,12,1,1,1,1,1,1,1,5] (hard := []) (by decide +kernel) .nil)

theorem f61 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,3,3,3,3,3,3,3,3,3,12,12,12,1,1,1,1,1,1,1,5] (hard := []) (by decide +kernel) .nil)

theorem f62 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,26,26,3,3,26,3,26,26,3,26,3,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,5,1,5] (hard := []) (by decide +kernel) .nil)

theorem f63 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f64 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,3,26,3,26,26,3,12,12,12,1,1,1,1,1,1,1,1,5,12,12,3,1,1] (hard := []) (by decide +kernel) .nil)

theorem f65 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,3,3,3,3,3,3,3,3,3,3,3,3,3,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,5,1,5] (hard := []) (by decide +kernel) .nil)

theorem f66 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,3,3,3,3,3,3,3,3,12,12,12,1,1,1,1,1,1,1,1,5,3,3,3,1,1] (hard := []) (by decide +kernel) .nil)

theorem f67 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,26,26,12,12,26,12,26,26,12,26,12,12,12,12,12,12,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f68 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f69 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,0,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,26,26,12,12,26,12,26,26,12,26,12,12,12,12,12,12,1,1,1,1,1,1,1,12,12,12,12,12,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
