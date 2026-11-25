import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4816 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,7,4,4,3,11,3,3,3,3,3,5,3,18,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,11,3,3,3] (hard := []) (by decide +kernel) .nil)

private abbrev bg4817 (i : Nat) := Split43.five 8 i 7 6 5 true 3 2 4 [0,1,2,0]

private theorem g4817s0 : BadRow (bg4817 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4817s1 : BadRow (bg4817 1) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,3,26,11,38,1,1,2,2,22,6,19,11,30,1,31,4,18,5,1,1,2,2,18,4,28,16,1,1,1,1,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g4817s2 : BadRow (bg4817 2) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4817s3 : BadRow (bg4817 3) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4817s4 : BadRow (bg4817 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4817s5 : BadRow (bg4817 5) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,15,4,1,7,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4817s6 : BadRow (bg4817 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4817s7 : BadRow (bg4817 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4817 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 3 2 4 [0,1,2,0] (.cons (g4817s0) (.cons (g4817s1) (.cons (g4817s2) (.cons (g4817s3) (.cons (g4817s4) (.cons (g4817s5) (.cons (g4817s6) (.cons (g4817s7) .nil))))))))

private abbrev bg4818 (i : Nat) := Split43.five 8 i 7 6 5 false 3 2 4 [0,2,0,1]

private theorem g4818s0 : BadRow (bg4818 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4818s1 : BadRow (bg4818 1) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,3,14,3,3,3,3,3,5,3,1,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,14,3,3,3,3,9,3,3,3,3,3,5,3,1,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,9,3,3,3] (hard := []) (by decide +kernel) .nil)

private theorem g4818s2 : BadRow (bg4818 2) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g4818s3 : BadRow (bg4818 3) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g4818s4 : BadRow (bg4818 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4818s5 : BadRow (bg4818 5) :=
  row_of_forall (discharge bank [5,4,4,4,4,7,4,4,5,4,4,4,4,7,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g4818s6 : BadRow (bg4818 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4818s7 : BadRow (bg4818 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4818 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 3 2 4 [0,2,0,1] (.cons (g4818s0) (.cons (g4818s1) (.cons (g4818s2) (.cons (g4818s3) (.cons (g4818s4) (.cons (g4818s5) (.cons (g4818s6) (.cons (g4818s7) .nil))))))))

private abbrev bg4819 (i : Nat) := Split43.five 8 i 7 6 5 true 3 2 4 [0,2,0,1]

private theorem g4819s0 : BadRow (bg4819 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4819s1 : BadRow (bg4819 1) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,3,26,43,1,1,1,2,2,32,6,9,11,14,1,26,4,1,5,1,1,2,2,13,4,1,16,1,1,1,1,2,2,3,26,9,30,1,1,2,2,7,6,17,9,7,1,24,4,17,5,1,1,2,2,26,4,25,16,1,1,1,1,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g4819s2 : BadRow (bg4819 2) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4819s3 : BadRow (bg4819 3) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4819s4 : BadRow (bg4819 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4819s5 : BadRow (bg4819 5) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,15,4,1,7,41,1,1,5,41,1,1,4,4,4,15,4,1,7,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4819s6 : BadRow (bg4819 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4819s7 : BadRow (bg4819 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4819 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 3 2 4 [0,2,0,1] (.cons (g4819s0) (.cons (g4819s1) (.cons (g4819s2) (.cons (g4819s3) (.cons (g4819s4) (.cons (g4819s5) (.cons (g4819s6) (.cons (g4819s7) .nil))))))))

theorem g4820 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,7,4,4,3,14,3,3,3,3,3,5,3,10,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,47,3,3,3] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
