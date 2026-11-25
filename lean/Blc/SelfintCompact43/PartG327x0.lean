import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5232 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5233 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5234 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5235 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5236 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7,4,4,4,4,17,4,4,11,4,4,4,4,15,4,4,7,4,4,4,4,17,4,4,68,3,15,10,3,3,3,3,3,6,3,10,3,4,3,3,3,3,5,3,15,3,4,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5237 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,3,26,15,16,14,1,1,1,1,2] (hard := []) (by decide +kernel) .nil)

theorem g5238 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7,4,4,4,4,17,4,4,13,4,4,4,4,17,4,4,14,4,4,4,4,14,4,4,17,3,15,36,3,3,3,3,3,6,36,36,3,4,3,3,3,3,5,3,15,3,4,3,3,36] (hard := []) (by decide +kernel) .nil)

theorem g5239 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,3,26,15,16,36,1,1,1,1,2] (hard := []) (by decide +kernel) .nil)

theorem g5240 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5241 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg5242 (i : Nat) := Split43.five 8 i 7 6 5 false 4 2 4 [1,1,0,2]

private theorem g5242s0 : BadRow (bg5242 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5242s1 : BadRow (bg5242 1) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7] (hard := []) (by decide +kernel) .nil)

private theorem g5242s2 : BadRow (bg5242 2) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7] (hard := []) (by decide +kernel) .nil)

private theorem g5242s3 : BadRow (bg5242 3) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7] (hard := []) (by decide +kernel) .nil)

private theorem g5242s4 : BadRow (bg5242 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5242s5 : BadRow (bg5242 5) :=
  row_of_forall (discharge bank [3,15,14,3,3,3,3,3,6,3,14,3,4,3,3,3,3,5,3,15,3,4,3,3,3,3,15,11,3,3,3,3,3,6,3,11,3,4,3,3,3,3,5,3,15,3,4,3,3,3] (hard := []) (by decide +kernel) .nil)

private theorem g5242s6 : BadRow (bg5242 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5242s7 : BadRow (bg5242 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5242 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 4 2 4 [1,1,0,2] (.cons (g5242s0) (.cons (g5242s1) (.cons (g5242s2) (.cons (g5242s3) (.cons (g5242s4) (.cons (g5242s5) (.cons (g5242s6) (.cons (g5242s7) .nil))))))))

theorem g5243 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,3,26,15,16,8,1,1,1,1,2,3,26,15,16,8,1,1,1,1,2] (hard := []) (by decide +kernel) .nil)

theorem g5244 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5245 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5246 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7,3,15,14,3,3,3,3,3,6,3,14,3,4,3,3,3,3,5,3,15,3,4,3,3,3] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
