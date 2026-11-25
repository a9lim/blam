import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg5248 (i : Nat) := Split43.five 8 i 7 6 5 false 4 2 4 [1,2,0,1]

private theorem g5248s0 : BadRow (bg5248 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5248s1 : BadRow (bg5248 1) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7] (hard := []) (by decide +kernel) .nil)

private theorem g5248s2 : BadRow (bg5248 2) :=
  row_of_forall (discharge bank [4,4,4,4,17,4,4,14] (hard := []) (by decide +kernel) .nil)

private theorem g5248s3 : BadRow (bg5248 3) :=
  row_of_forall (discharge bank [4,4,4,4,17,4,4,14,4,4,4,4,14,4,4,17] (hard := []) (by decide +kernel) .nil)

private theorem g5248s4 : BadRow (bg5248 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5248s5 : BadRow (bg5248 5) :=
  row_of_forall (discharge bank [3,15,24,3,3,3,3,3,6,3,24,3,4,3,3,3,3,5,3,15,3,4,3,3,3,3,15,36,3,3,3,3,3,6,36,36,3,4,3,3,3,3,5,3,15,3,4,3,3,36] (hard := []) (by decide +kernel) .nil)

private theorem g5248s6 : BadRow (bg5248 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g5248s7 : BadRow (bg5248 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5248 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 4 2 4 [1,2,0,1] (.cons (g5248s0) (.cons (g5248s1) (.cons (g5248s2) (.cons (g5248s3) (.cons (g5248s4) (.cons (g5248s5) (.cons (g5248s6) (.cons (g5248s7) .nil))))))))

theorem g5249 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,3,26,15,16,24,1,1,1,1,2,3,26,15,16,36,1,1,1,1,2] (hard := []) (by decide +kernel) .nil)

theorem g5250 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,15,4,4,7,4,4,4,4,15,4,4,7,4,4,4,4,17,4,4,11,3,15,13,3,3,3,3,3,6,3,13,3,4,3,3,3,3,5,3,15,3,4,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5251 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,3,26,15,16,11,1,1,1,1,2] (hard := []) (by decide +kernel) .nil)

theorem g5252 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5253 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5254 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5255 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5256 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,27,4,4,30,4,4,4,4,1,4,4,1,4,4,4,4,27,4,4,18,4,4,4,4,1,4,4,18,4,4,4,4,1,4,4,18] (hard := []) (by decide +kernel) .nil)

theorem g5257 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5258 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5259 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5260 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,18,4,4,17,4,4,4,4,9,4,4,14,4,4,4,4,18,4,4,18,4,4,4,4,9,4,4,18,4,4,4,4,9,4,4,9] (hard := []) (by decide +kernel) .nil)

theorem g5261 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5262 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,18,4,4,17,4,4,4,4,18,4,4,17,4,4,4,4,18,4,4,18] (hard := []) (by decide +kernel) .nil)

theorem g5263 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
