import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7671 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7672 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 4 [1,0,0,2]

private theorem g7672s0 : BadRow (bg7672 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7672s1 : BadRow (bg7672 1) :=
  row_of_forall (discharge bank [30,17,1,14,16,39,39,25,1,17,7,30,17,15,7,37,38,36,30,17,1,14,16,39,39,25,1,17,7,30,17,15,7,13,38,36] (hard := []) (by decide +kernel) .nil)

private theorem g7672s2 : BadRow (bg7672 2) :=
  row_of_forall (discharge bank [30,9,15,14,16,39,39,25,15,14,7,30,9,15,17,37,14,36] (hard := []) (by decide +kernel) .nil)

private theorem g7672s3 : BadRow (bg7672 3) :=
  row_of_forall (discharge bank [30,9,15,14,16,39,39,25,15,37,7,30,9,15,17,24,31,36,30,24,15,14,16,39,39,25,15,9,7,30,24,15,74,14,40,36] (hard := []) (by decide +kernel) .nil)

private theorem g7672s4 : BadRow (bg7672 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7672s5 : BadRow (bg7672 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7672s6 : BadRow (bg7672 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7672s7 : BadRow (bg7672 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7672 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 4 [1,0,0,2] (.cons (g7672s0) (.cons (g7672s1) (.cons (g7672s2) (.cons (g7672s3) (.cons (g7672s4) (.cons (g7672s5) (.cons (g7672s6) (.cons (g7672s7) .nil))))))))

private abbrev bg7673 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [1,0,0,2]

private theorem g7673s0 : BadRow (bg7673 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7673s1 : BadRow (bg7673 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7673s2 : BadRow (bg7673 2) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7673s3 : BadRow (bg7673 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,14,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7673s4 : BadRow (bg7673 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7673s5 : BadRow (bg7673 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7673s6 : BadRow (bg7673 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7673s7 : BadRow (bg7673 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7673 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [1,0,0,2] (.cons (g7673s0) (.cons (g7673s1) (.cons (g7673s2) (.cons (g7673s3) (.cons (g7673s4) (.cons (g7673s5) (.cons (g7673s6) (.cons (g7673s7) .nil))))))))

theorem g7674 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7675 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7676 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 4 [1,0,2,0]

private theorem g7676s0 : BadRow (bg7676 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7676s1 : BadRow (bg7676 1) :=
  row_of_forall (discharge bank [30,17,1,14,16,39,39,25,1,17,7,30,17,15,7,37,38,36,30,17,1,14,16,39,39,25,1,17,7,30,17,15,7,13,37,36] (hard := []) (by decide +kernel) .nil)

private theorem g7676s2 : BadRow (bg7676 2) :=
  row_of_forall (discharge bank [30,9,15,14,16,39,39,25,15,14,7,30,9,15,17,37,24,36] (hard := []) (by decide +kernel) .nil)

private theorem g7676s3 : BadRow (bg7676 3) :=
  row_of_forall (discharge bank [30,17,1,14,16,39,39,25,1,17,7,30,17,15,7,13,11,36,30,9,15,14,16,39,39,25,15,14,7,30,9,15,17,24,40,36] (hard := []) (by decide +kernel) .nil)

private theorem g7676s4 : BadRow (bg7676 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7676s5 : BadRow (bg7676 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7676s6 : BadRow (bg7676 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7676s7 : BadRow (bg7676 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7676 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 4 [1,0,2,0] (.cons (g7676s0) (.cons (g7676s1) (.cons (g7676s2) (.cons (g7676s3) (.cons (g7676s4) (.cons (g7676s5) (.cons (g7676s6) (.cons (g7676s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
