import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8023 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,0,0,3,0,0]

private theorem bg8023p0 : BadRow (bg8023 0) := by empty43

private theorem bg8023p1 : BadRow (bg8023 1) := by empty43

private theorem bg8023p2 : BadRow (bg8023 2) := by empty43

private theorem bg8023p3 : BadRow (bg8023 3) := by empty43

private theorem bg8023p4 : BadRow (bg8023 4) := by empty43

private theorem bg8023p5 : BadRow (bg8023 5) := by empty43

private theorem bg8023p6 : BadRow (bg8023 6) := by empty43

private theorem bg8023p7 : BadRow (bg8023 7) := by empty43

private theorem bg8023p8 : BadRow (bg8023 8) := by empty43

private theorem bg8023p9 : BadRow (bg8023 9) := by empty43

private theorem bg8023p10 : BadRow (bg8023 10) := by empty43

private theorem bg8023p11 : BadRow (bg8023 11) := by empty43

theorem g8023 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,0,0,3,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,0,0,3,0,0] (.cons (bg8023p0) (.cons (bg8023p1) (.cons (bg8023p2) (.cons (bg8023p3) (.cons (bg8023p4) (.cons (bg8023p5) (.cons (bg8023p6) (.cons (bg8023p7) (.cons (bg8023p8) (.cons (bg8023p9) (.cons (bg8023p10) (.cons (bg8023p11) .nil))))))))))))

private abbrev bg8024 (i : Nat) := Split43.five 16 i 8 5 3 false 3 3 6 [0,0,1,0,0,2]

private theorem g8024s0 : BadRow (bg8024 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8024s1 : BadRow (bg8024 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,4,4,4,1,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8024s2 : BadRow (bg8024 2) :=
  row_of_forall (discharge bank [4,4,4,4,4,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem g8024s3 : BadRow (bg8024 3) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8024s4 : BadRow (bg8024 4) :=
  row_of_forall (discharge bank [1,1,1,1,1,4,4,4,4,4,1,4,1,4,1,4,1,4,1,4,14,9,14,9,14,9,14,9,14,9] (hard := []) (by decide +kernel) .nil)

private theorem g8024s5 : BadRow (bg8024 5) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8024s6 : BadRow (bg8024 6) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8024s7 : BadRow (bg8024 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8024s8 : BadRow (bg8024 8) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8024s9 : BadRow (bg8024 9) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8024s10 (h : BadRow [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310]) : BadRow (bg8024 10) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4,14,4,4,4,6,6,4,4,1,4,14,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,0,0,0,36,0,14,14,14,14,14,14,14,47,14,14,3,0,3,0,3,0,3,0,3,0] (hard := [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310]) (by decide +kernel) h)

private theorem g8024s11 : BadRow (bg8024 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8024s12 : BadRow (bg8024 12) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,4,4,4,1,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8024s13 : BadRow (bg8024 13) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8024s14 : BadRow (bg8024 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8024s15 : BadRow (bg8024 15) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8024 (hard : BadRow [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,0,1,0,0,2]) :=
  Split43.five_cover 16 (by decide) 8 5 3 false 3 3 6 [0,0,1,0,0,2] (.cons (g8024s0) (.cons (g8024s1) (.cons (g8024s2) (.cons (g8024s3) (.cons (g8024s4) (.cons (g8024s5) (.cons (g8024s6) (.cons (g8024s7) (.cons (g8024s8) (.cons (g8024s9) (.cons (g8024s10 (.cons (hard.get (by decide : Floor43.e2423179679278 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423179633262 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423179634222 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423179622574 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423217428014 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423217381998 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423217382958 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423217371694 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) (.cons (hard.get (by decide : Floor43.e2423217371310 ∈ [Floor43.e2423179679278,Floor43.e2423179633262,Floor43.e2423179634222,Floor43.e2423179622574,Floor43.e2423217428014,Floor43.e2423217381998,Floor43.e2423217382958,Floor43.e2423217371694,Floor43.e2423217371310])) .nil)))))))))) (.cons (g8024s11) (.cons (g8024s12) (.cons (g8024s13) (.cons (g8024s14) (.cons (g8024s15) .nil))))))))))))))))

theorem g8025 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,0,1,0,0,2]) :=
  row_of_forall (discharge bank [25,25,25,1,1,1,39,39,39,1,1,1,1,1,1,41,41,41,41,41,41,41,41,41,41,41,41,41,41,41] (hard := []) (by decide +kernel) .nil)

theorem g8026 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8027 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
