import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5456 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,3,3,3,17,3,3,3,13,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5457 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,22,6,19,13,1,1,1,4,23,37,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5458 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,3,3,3,11,3,3,3,13,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5459 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,22,6,19,11,30,1,29,4,30,38,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5460 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,3,3,3,7,3,3,3,17,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5461 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,5,6,5,7,5,1,18,4,16,25,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5462 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,1,3,3,3,14,3,3,3,3,3,1,3,3,3,11,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5463 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,4,4,4,7,41,1,32,6,1,14,14,1,13,4,1,1,1,1,7,6,17,9,7,1,26,4,25,30,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5464 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,9,3,3,3,82,3,3,3,3,3,8,3,3,3,11,3,3] (hard := []) (by decide +kernel) .nil)

private abbrev bg5465 (i : Nat) := Split43.five 8 i 7 6 5 true 4 3 4 [0,2,1,1]

private theorem g5465s0 : BadRow (bg5465 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5465s1 : BadRow (bg5465 1) :=
  row_of_forall (discharge bank [4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

private theorem g5465s2 : BadRow (bg5465 2) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

private theorem g5465s3 : BadRow (bg5465 3) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1] (hard := []) (by decide +kernel) .nil)

private theorem g5465s4 : BadRow (bg5465 4) :=
  row_of_forall (discharge bank [4,4,4,7,41,1,4,4,4,7,41,1] (hard := []) (by decide +kernel) .nil)

private theorem g5465s5 : BadRow (bg5465 5) :=
  row_of_forall (discharge bank [4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

private theorem g5465s6 : BadRow (bg5465 6) :=
  row_of_forall (discharge bank [11,6,24,12,1,1,1,4,31,1,1,1,7,6,17,9,7,1,24,4,25,30,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g5465s7 : BadRow (bg5465 7) :=
  row_of_forall (discharge bank [4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5465 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,2,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 4 3 4 [0,2,1,1] (.cons (g5465s0) (.cons (g5465s1) (.cons (g5465s2) (.cons (g5465s3) (.cons (g5465s4) (.cons (g5465s5) (.cons (g5465s6) (.cons (g5465s7) .nil))))))))

theorem g5466 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5467 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5468 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,7,3,3,3,17,3,3,3,3,3,7,3,3,3,17,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5469 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,5,6,5,7,5,1,14,4,16,25,1,1,5,6,5,7,5,1,17,4,16,25,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5470 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,7,3,3,3,17,3,3] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
