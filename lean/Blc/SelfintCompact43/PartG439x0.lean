import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7024 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [1,2,0,1,1]

private theorem g7024s0 : BadRow (bg7024 0) :=
  row_of_forall (discharge bank [1,4,4,4,55,36] (hard := []) (by decide +kernel) .nil)

private theorem g7024s1 : BadRow (bg7024 1) :=
  row_of_forall (discharge bank [2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7024s2 : BadRow (bg7024 2) :=
  row_of_forall (discharge bank [2,2,1,30,38,1,4,4,4,4,20,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7024s3 : BadRow (bg7024 3) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7024s4 : BadRow (bg7024 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7024s5 : BadRow (bg7024 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7024s6 : BadRow (bg7024 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7024s7 : BadRow (bg7024 7) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,7,7,7,13,13,13,36,17,24,36,24,36,17] (hard := []) (by decide +kernel) .nil)

theorem g7024 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,2,0,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [1,2,0,1,1] (.cons (g7024s0) (.cons (g7024s1) (.cons (g7024s2) (.cons (g7024s3) (.cons (g7024s4) (.cons (g7024s5) (.cons (g7024s6) (.cons (g7024s7) .nil))))))))

theorem g7025 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7026 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [1,2,0,2,0]

private theorem g7026s0 : BadRow (bg7026 0) :=
  row_of_forall (discharge bank [2,2,2,4,4,39,4,39] (hard := []) (by decide +kernel) .nil)

private theorem g7026s1 : BadRow (bg7026 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g7026s2 : BadRow (bg7026 2) :=
  row_of_forall (discharge bank [28,28,30,4,4,25,1,4,4,4,39,39,27,39,4,4,4,4,4,39,4,4,39,39,4,55,36] (hard := []) (by decide +kernel) .nil)

private theorem g7026s3 : BadRow (bg7026 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,1,39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7026s4 : BadRow (bg7026 4) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7026s5 : BadRow (bg7026 5) :=
  row_of_forall (discharge bank [2,2,2,4,39,14,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7026s6 : BadRow (bg7026 6) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7026s7 : BadRow (bg7026 7) :=
  row_of_forall (discharge bank [2,2,2,2,7,7,7,13,13,36,24,36] (hard := []) (by decide +kernel) .nil)

theorem g7026 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,2,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [1,2,0,2,0] (.cons (g7026s0) (.cons (g7026s1) (.cons (g7026s2) (.cons (g7026s3) (.cons (g7026s4) (.cons (g7026s5) (.cons (g7026s6) (.cons (g7026s7) .nil))))))))

theorem g7027 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7028 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,38,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,31,1,1,17,14,11,11,17,14,4,6] (hard := []) (by decide +kernel) .nil)

theorem g7029 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7030 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,1,4,4,4,4,4,4,4,4,4,4,4,53,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,31,1,1,11,17,14,11,14,13,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7031 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7032 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,28,28,25,25,25,1,4,27,130,4,4,4,30,52,4,39,39,39,4,4,4,25,1,39,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7033 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7034 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,38,1,4,4,4,4,4,4,4,4,4,2,4,4,4,4,4,4,4,4,2,4,4,53,4,4,4,4,4,4,4,15,15,15,15,15,1,17,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g7035 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
