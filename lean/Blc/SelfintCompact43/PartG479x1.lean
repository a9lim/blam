import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7667 (i : Nat) := Split43.five 16 i 8 5 3 true 3 2 4 [0,2,0,1]

private theorem g7667s0 : BadRow (bg7667 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s1 (h : BadRow [Floor43.e700955245786,Floor43.e700955242330,Floor43.e699344629594]) : BadRow (bg7667 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,30,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,38,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,3,26,0,1,3,26,14,1,1,1,1,1,14,1,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,38,30,30,1,1,1,1,3,26,0,1,3,26,0,1,1,1,1,1,9,30,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := [Floor43.e700955245786,Floor43.e700955242330,Floor43.e699344629594]) (by decide +kernel) h)

private theorem g7667s2 : BadRow (bg7667 2) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7667s3 : BadRow (bg7667 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7667s4 : BadRow (bg7667 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s5 : BadRow (bg7667 5) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,37,38,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,44,31,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7667s6 : BadRow (bg7667 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s7 : BadRow (bg7667 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s8 : BadRow (bg7667 8) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s9 : BadRow (bg7667 9) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s10 : BadRow (bg7667 10) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s11 : BadRow (bg7667 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s12 : BadRow (bg7667 12) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s13 : BadRow (bg7667 13) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s14 : BadRow (bg7667 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7667s15 : BadRow (bg7667 15) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7667 (hard : BadRow [Floor43.e700955245786,Floor43.e700955242330,Floor43.e699344629594]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,2,0,1]) :=
  Split43.five_cover 16 (by decide) 8 5 3 true 3 2 4 [0,2,0,1] (.cons (g7667s0) (.cons (g7667s1 (.cons (hard.get (by decide : Floor43.e700955245786 ∈ [Floor43.e700955245786,Floor43.e700955242330,Floor43.e699344629594])) (.cons (hard.get (by decide : Floor43.e700955242330 ∈ [Floor43.e700955245786,Floor43.e700955242330,Floor43.e699344629594])) (.cons (hard.get (by decide : Floor43.e699344629594 ∈ [Floor43.e700955245786,Floor43.e700955242330,Floor43.e699344629594])) .nil)))) (.cons (g7667s2) (.cons (g7667s3) (.cons (g7667s4) (.cons (g7667s5) (.cons (g7667s6) (.cons (g7667s7) (.cons (g7667s8) (.cons (g7667s9) (.cons (g7667s10) (.cons (g7667s11) (.cons (g7667s12) (.cons (g7667s13) (.cons (g7667s14) (.cons (g7667s15) .nil))))))))))))))))

private abbrev bg7668 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 4 [0,2,1,0]

private theorem g7668s0 : BadRow (bg7668 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7668s1 (h : BadRow [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354]) : BadRow (bg7668 1) :=
  row_of_forall (discharge bank [25,9,28,37,16,39,39,25,28,25,30,25,9,38,30,38,37,36,3,0,3,0,48,48,3,3,3,0,3,92,3,48,3,47,3,48,3,48,3,47,3,0,3,0,3,0,3,24,3,48,3,47,97,36] (hard := [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354]) (by decide +kernel) h)

private theorem g7668s2 : BadRow (bg7668 2) :=
  row_of_forall (discharge bank [25,9,28,1,16,39,39,25,28,1,25,25,9,28,1,14,37,36] (hard := []) (by decide +kernel) .nil)

private theorem g7668s3 : BadRow (bg7668 3) :=
  row_of_forall (discharge bank [25,9,1,1,16,39,39,25,1,1,25,25,9,1,1,61,61,36] (hard := []) (by decide +kernel) .nil)

private theorem g7668s4 : BadRow (bg7668 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7668s5 : BadRow (bg7668 5) :=
  row_of_forall (discharge bank [17,13,14,14,16,39,39,30,14,14,14,17,13,1,1,9,14,36] (hard := []) (by decide +kernel) .nil)

private theorem g7668s6 : BadRow (bg7668 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7668s7 : BadRow (bg7668 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7668 (hard : BadRow [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 4 [0,2,1,0] (.cons (g7668s0) (.cons (g7668s1 (.cons (hard.get (by decide : Floor43.e2803820983202 ∈ [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354])) (.cons (hard.get (by decide : Floor43.e2797378532258 ∈ [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354])) (.cons (hard.get (by decide : Floor43.e2418285481786 ∈ [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354])) (.cons (hard.get (by decide : Floor43.e2391509045050 ∈ [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354])) (.cons (hard.get (by decide : Floor43.e2385066594106 ∈ [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354])) (.cons (hard.get (by decide : Floor43.e2388891799354 ∈ [Floor43.e2803820983202,Floor43.e2797378532258,Floor43.e2418285481786,Floor43.e2391509045050,Floor43.e2385066594106,Floor43.e2388891799354])) .nil))))))) (.cons (g7668s2) (.cons (g7668s3) (.cons (g7668s4) (.cons (g7668s5) (.cons (g7668s6) (.cons (g7668s7) .nil))))))))

private abbrev bg7669 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [0,2,1,0]

private theorem g7669s0 : BadRow (bg7669 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7669s1 : BadRow (bg7669 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,30,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,3,26,48,1,3,26,48,1,1,1,1,1,14,1,1,1,1,1,49,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7669s2 : BadRow (bg7669 2) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7669s3 : BadRow (bg7669 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,1,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7669s4 : BadRow (bg7669 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7669s5 : BadRow (bg7669 5) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,37,38,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7669s6 : BadRow (bg7669 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7669s7 : BadRow (bg7669 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7669 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [0,2,1,0] (.cons (g7669s0) (.cons (g7669s1) (.cons (g7669s2) (.cons (g7669s3) (.cons (g7669s4) (.cons (g7669s5) (.cons (g7669s6) (.cons (g7669s7) .nil))))))))

theorem g7670 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
