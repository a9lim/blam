import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f42 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f43 (hard : BadRow [Floor42.e1211550349754,Floor42.e1211550346938,Floor42.e1211550256826]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,9,9,9,9,9,1,1,1,1,26,26,12,12,12,3,3,12,3,12,12,3,12,3,3,3,3,3,3,3,3,0,0,3,0,3,3,3] (hard := [Floor42.e1211550349754,Floor42.e1211550346938,Floor42.e1211550256826]) (by decide +kernel) hard)

theorem f44 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f45 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f46 (hard : BadRow [Floor42.e1211550349802]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,9,9,9,1,1,26,26,3,12,3,3,3,12,3,3,3,3,3,3,0,3,3,3] (hard := [Floor42.e1211550349802]) (by decide +kernel) hard)

theorem f47 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,12,12,12,3,3,12,3,12,12,3,12,3,3,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f48 (hard : BadRow [Floor42.e1211550350554,Floor42.e1211550347098,Floor42.e1211550256986]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,9,9,9,1,1,1,1,1,12,12,12,12,12,3,3,12,3,12,12,3,12,3,3,3,3,3,3,3,3,0,0,3,0,3,3,3] (hard := [Floor42.e1211550350554,Floor42.e1211550347098,Floor42.e1211550256986]) (by decide +kernel) hard)

theorem f49 (hard : BadRow [Floor42.e1211550350570]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,1,2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,9,9,9,1,1,12,12,3,12,3,3,3,12,3,3,3,3,3,3,0,3,3,3] (hard := [Floor42.e1211550350570]) (by decide +kernel) hard)

theorem f50 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f51 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,0,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f52 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f53 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,0,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f54 (hard : BadRow [Floor42.e1211550374362,Floor42.e1211550373594,Floor42.e1211550263770,Floor42.e1211550263002,Floor42.e1211550235354]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,0,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0] (hard := [Floor42.e1211550374362,Floor42.e1211550373594,Floor42.e1211550263770,Floor42.e1211550263002,Floor42.e1211550235354]) (by decide +kernel) hard)

theorem f55 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
