import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f126 (hard : BadRow [Floor42.e1196691360630]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,3,3,3,12,12,16,1,16,1,1,12,12,46,12,12,12,12,12,12,3,3,3,12,0] (hard := [Floor42.e1196691360630]) (by decide +kernel) hard)

theorem f127 (hard : BadRow [Floor42.e1209577557614,Floor42.e1196686693998,Floor42.e1196686669230,Floor42.e1196691361390,Floor42.e1196691360686]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,0,26,12,26,12,12,12,12,12,16,27,1,1,1,11,11,12,0,12,12,11,12,0,12,26,12,26,12,26,26,0,0] (hard := [Floor42.e1209577557614,Floor42.e1196686693998,Floor42.e1196686669230,Floor42.e1196691361390,Floor42.e1196691360686]) (by decide +kernel) hard)

theorem f128 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f129 (hard : BadRow [Floor42.e1196686694010,Floor42.e1196686669242,Floor42.e1196691361402,Floor42.e1196691303866]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,26,12,12,12,12,12,16,16,1,16,1,11,12,11,0,23,12,12,12,0,26,12,12,26,0,0] (hard := [Floor42.e1196686694010,Floor42.e1196686669242,Floor42.e1196691361402,Floor42.e1196691303866]) (by decide +kernel) hard)

theorem f130 (hard : BadRow [Floor42.e1196691361590,Floor42.e1196691360726]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,26,3,3,3,3,12,12,12,12,16,27,1,1,1,12,12,12,12,12,12,12,12,12,11,3,3,3,3,26,26,0,0] (hard := [Floor42.e1196691361590,Floor42.e1196691360726]) (by decide +kernel) hard)

theorem f131 (hard : BadRow [Floor42.e1196686691802,Floor42.e1196691361594]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,26,3,3,12,12,3,16,16,1,16,1,12,12,12,12,23,12,12,0,12,26,3,3,26,0,3] (hard := [Floor42.e1196686691802,Floor42.e1196691361594]) (by decide +kernel) hard)

theorem f132 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,26,26,12,26,12,16,16,1,27,1,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f133 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f134 (hard : BadRow [Floor42.e1196691306938,Floor42.e1196691304122]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,26,26,12,26,12,12,12,16,16,1,16,25,12,12,26,12,23,25,12,11,12,12,12,12,12,12,0,0] (hard := [Floor42.e1196691306938,Floor42.e1196691304122]) (by decide +kernel) hard)

theorem f135 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f136 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f137 (hard : BadRow [Floor42.e1196686796698,Floor42.e1196686694890,Floor42.e1196691306986]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,26,26,26,12,16,16,16,16,16,0,12,23,23,0,26,26,26,0] (hard := [Floor42.e1196686796698,Floor42.e1196686694890,Floor42.e1196691306986]) (by decide +kernel) hard)

theorem f138 (hard : BadRow [Floor42.e1209577567030]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,0,3,3,3,3,16,16,1,25,1,12,12,12,12,12,12,12,12,12,26,3,3,3,3] (hard := [Floor42.e1209577567030]) (by decide +kernel) hard)

theorem f139 (hard : BadRow [Floor42.e1209577567034,Floor42.e1196686692186,Floor42.e1196691307738]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,7,0,26,3,26,3,26,3,16,16,1,16,25,12,12,11,12,23,39,12,0,12,26,26,3,12,3,0,3] (hard := [Floor42.e1209577567034,Floor42.e1196686692186,Floor42.e1196691307738]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact42
