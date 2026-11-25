import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7680 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7681 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7682 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [17,17,9,24,16,39,39,25,9,17,7,17,17,15,7,37,37,36,17,17,14,14,16,39,39,25,14,17,7,17,17,15,7,13,37,36,17,17,9,55,16,39,39,25,9,17,7,17,17,15,7,13,11,36] (hard := []) (by decide +kernel) .nil)

private abbrev bg7683 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [1,2,0,0]

private theorem g7683s0 : BadRow (bg7683 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7683s1 : BadRow (bg7683 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7683s2 : BadRow (bg7683 2) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7683s3 : BadRow (bg7683 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7683s4 : BadRow (bg7683 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7683s5 : BadRow (bg7683 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7683s6 : BadRow (bg7683 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7683s7 : BadRow (bg7683 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7683 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [1,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [1,2,0,0] (.cons (g7683s0) (.cons (g7683s1) (.cons (g7683s2) (.cons (g7683s3) (.cons (g7683s4) (.cons (g7683s5) (.cons (g7683s6) (.cons (g7683s7) .nil))))))))

private abbrev bg7684 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 4 [2,0,0,1]

private theorem g7684s0 : BadRow (bg7684 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7684s1 : BadRow (bg7684 1) :=
  row_of_forall (discharge bank [7,17,15,37,5,6,6,7,15,7,30,7,17,1,17,9,11,36,7,17,15,37,5,6,6,7,15,7,30,7,17,1,17,9,13,36] (hard := []) (by decide +kernel) .nil)

private theorem g7684s2 : BadRow (bg7684 2) :=
  row_of_forall (discharge bank [7,9,15,31,5,6,6,7,15,17,30,7,9,15,14,13,11,36] (hard := []) (by decide +kernel) .nil)

private theorem g7684s3 : BadRow (bg7684 3) :=
  row_of_forall (discharge bank [7,9,15,31,5,6,6,7,15,17,30,7,9,15,13,11,24,36,7,24,15,14,5,6,6,7,15,67,30,7,24,15,9,40,14,36] (hard := []) (by decide +kernel) .nil)

private theorem g7684s4 : BadRow (bg7684 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7684s5 : BadRow (bg7684 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7684s6 : BadRow (bg7684 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7684s7 : BadRow (bg7684 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7684 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 4 [2,0,0,1] (.cons (g7684s0) (.cons (g7684s1) (.cons (g7684s2) (.cons (g7684s3) (.cons (g7684s4) (.cons (g7684s5) (.cons (g7684s6) (.cons (g7684s7) .nil))))))))

private abbrev bg7685 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [2,0,0,1]

private theorem g7685s0 : BadRow (bg7685 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7685s1 : BadRow (bg7685 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7685s2 : BadRow (bg7685 2) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7685s3 : BadRow (bg7685 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,7,39,14,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7685s4 : BadRow (bg7685 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7685s5 : BadRow (bg7685 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7685s6 : BadRow (bg7685 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7685s7 : BadRow (bg7685 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7685 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [2,0,0,1] (.cons (g7685s0) (.cons (g7685s1) (.cons (g7685s2) (.cons (g7685s3) (.cons (g7685s4) (.cons (g7685s5) (.cons (g7685s6) (.cons (g7685s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
