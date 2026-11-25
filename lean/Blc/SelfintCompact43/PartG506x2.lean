import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8107 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [2,0,0,0,1,0]

private theorem bg8107p0 : BadRow (bg8107 0) := by empty43

private theorem bg8107p1 : BadRow (bg8107 1) := by empty43

private theorem bg8107p2 : BadRow (bg8107 2) := by empty43

private theorem bg8107p3 : BadRow (bg8107 3) := by empty43

private theorem bg8107p4 : BadRow (bg8107 4) := by empty43

private theorem bg8107p5 : BadRow (bg8107 5) := by empty43

private theorem bg8107p6 : BadRow (bg8107 6) := by empty43

private theorem bg8107p7 : BadRow (bg8107 7) := by empty43

private theorem bg8107p8 : BadRow (bg8107 8) := by empty43

private theorem bg8107p9 : BadRow (bg8107 9) := by empty43

private theorem bg8107p10 : BadRow (bg8107 10) := by empty43

private theorem bg8107p11 : BadRow (bg8107 11) := by empty43

theorem g8107 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [2,0,0,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [2,0,0,0,1,0] (.cons (bg8107p0) (.cons (bg8107p1) (.cons (bg8107p2) (.cons (bg8107p3) (.cons (bg8107p4) (.cons (bg8107p5) (.cons (bg8107p6) (.cons (bg8107p7) (.cons (bg8107p8) (.cons (bg8107p9) (.cons (bg8107p10) (.cons (bg8107p11) .nil))))))))))))

private abbrev bg8108 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [2,0,0,1,0,0]

private theorem g8108s0 : BadRow (bg8108 0) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s1 : BadRow (bg8108 1) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4,1,4,4,4,7,7,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s2 : BadRow (bg8108 2) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,36,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s3 : BadRow (bg8108 3) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s4 : BadRow (bg8108 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s5 : BadRow (bg8108 5) :=
  row_of_forall (discharge bank [1,4,4,4,22,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s6 : BadRow (bg8108 6) :=
  row_of_forall (discharge bank [36,36,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8108s7 : BadRow (bg8108 7) :=
  row_of_forall (discharge bank [22,4,22,4,19,4,19,4,22,4] (hard := []) (by decide +kernel) .nil)

theorem g8108 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [2,0,0,1,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [2,0,0,1,0,0] (.cons (g8108s0) (.cons (g8108s1) (.cons (g8108s2) (.cons (g8108s3) (.cons (g8108s4) (.cons (g8108s5) (.cons (g8108s6) (.cons (g8108s7) .nil))))))))

private abbrev bg8109 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [2,0,0,1,0,0]

private theorem bg8109p0 : BadRow (bg8109 0) := by empty43

private theorem bg8109p1 : BadRow (bg8109 1) := by empty43

private theorem bg8109p2 : BadRow (bg8109 2) := by empty43

private theorem bg8109p3 : BadRow (bg8109 3) := by empty43

private theorem bg8109p4 : BadRow (bg8109 4) := by empty43

private theorem bg8109p5 : BadRow (bg8109 5) := by empty43

private theorem bg8109p6 : BadRow (bg8109 6) := by empty43

private theorem bg8109p7 : BadRow (bg8109 7) := by empty43

private theorem bg8109p8 : BadRow (bg8109 8) := by empty43

private theorem bg8109p9 : BadRow (bg8109 9) := by empty43

private theorem bg8109p10 : BadRow (bg8109 10) := by empty43

private theorem bg8109p11 : BadRow (bg8109 11) := by empty43

theorem g8109 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [2,0,0,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [2,0,0,1,0,0] (.cons (bg8109p0) (.cons (bg8109p1) (.cons (bg8109p2) (.cons (bg8109p3) (.cons (bg8109p4) (.cons (bg8109p5) (.cons (bg8109p6) (.cons (bg8109p7) (.cons (bg8109p8) (.cons (bg8109p9) (.cons (bg8109p10) (.cons (bg8109p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
