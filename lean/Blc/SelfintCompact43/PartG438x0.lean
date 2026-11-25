import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7008 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [1,1,0,3,0]

private theorem g7008s0 : BadRow (bg7008 0) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7008s1 : BadRow (bg7008 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g7008s2 : BadRow (bg7008 2) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,14,47,31,1] (hard := []) (by decide +kernel) .nil)

private theorem g7008s3 : BadRow (bg7008 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,2,4,4,4,4,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g7008s4 : BadRow (bg7008 4) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7008s5 : BadRow (bg7008 5) :=
  row_of_forall (discharge bank [2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7008s6 : BadRow (bg7008 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7008s7 : BadRow (bg7008 7) :=
  row_of_forall (discharge bank [2,4,2,4,15,15,15,15,15,38,1,7,37,55,1,1,7,7,38,38,38,38,1] (hard := []) (by decide +kernel) .nil)

theorem g7008 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,0,3,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [1,1,0,3,0] (.cons (g7008s0) (.cons (g7008s1) (.cons (g7008s2) (.cons (g7008s3) (.cons (g7008s4) (.cons (g7008s5) (.cons (g7008s6) (.cons (g7008s7) .nil))))))))

theorem g7009 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7010 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,4,4,4,4,4,1,1,4,4,14,4,4,4,4,4,4,1,4,4,4,4,4,4,6,4,4,4,4,4,1,4,4,4,4,7,7,7,7,7,1,1,7,7,14,1,1,1,7,7,36,36,4,4,1,6,1,6,1,47] (hard := []) (by decide +kernel) .nil)

theorem g7011 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7012 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7013 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7014 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,31,4,4,4,4,4,1,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,7,7,7,1,7,7,38,14,1,7,36,4,1,6,37,4,11] (hard := []) (by decide +kernel) .nil)

theorem g7015 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7016 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,11,4,4,4,7,7,7,7,7,55,36,7,7,7,31,1,30,1,7,7,36,36,4,4,1,6,36,6,1,4,6,14,9] (hard := []) (by decide +kernel) .nil)

theorem g7017 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7018 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,7,7,7,1,7,7,38,37,30,38,7,36,4,1,6,37,4,14] (hard := []) (by decide +kernel) .nil)

theorem g7019 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7020 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,2,4,4,4,4,4,4,4,4,2,2,2,53,1,4,4,4,4,4,4,1,4,4,4,4,4,4,4,15,15,15,9,9,9,11,13,4] (hard := []) (by decide +kernel) .nil)

theorem g7021 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
