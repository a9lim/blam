import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7712 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,1,0,0,2]

private theorem g7712s0 : BadRow (bg7712 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7712s1 : BadRow (bg7712 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7712s2 : BadRow (bg7712 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7712s3 : BadRow (bg7712 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7712s4 : BadRow (bg7712 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7712s5 : BadRow (bg7712 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7712s6 (h : BadRow [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774]) : BadRow (bg7712 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,0,3,3,17,3,0,3,7,0,3,3,17,3,0,3,7,14,3,3,17,3,14,3,7] (hard := [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774]) (by decide +kernel) h)

private theorem g7712s7 : BadRow (bg7712 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7712 (hard : BadRow [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,1,0,0,2] (.cons (g7712s0) (.cons (g7712s1) (.cons (g7712s2) (.cons (g7712s3) (.cons (g7712s4) (.cons (g7712s5) (.cons (g7712s6 (.cons (hard.get (by decide : Floor43.e2804815734498 ∈ [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774])) (.cons (hard.get (by decide : Floor43.e2392577849966 ∈ [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774])) (.cons (hard.get (by decide : Floor43.e2804815731426 ∈ [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774])) (.cons (hard.get (by decide : Floor43.e2392577849774 ∈ [Floor43.e2804815734498,Floor43.e2392577849966,Floor43.e2804815731426,Floor43.e2392577849774])) .nil))))) (.cons (g7712s7) .nil))))))))

private abbrev bg7713 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,1,0,0,2]

private theorem g7713s0 : BadRow (bg7713 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7713s1 : BadRow (bg7713 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7713s2 : BadRow (bg7713 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7713s3 : BadRow (bg7713 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7713s4 : BadRow (bg7713 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7713s5 : BadRow (bg7713 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7713s6 : BadRow (bg7713 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7713s7 : BadRow (bg7713 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7713 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,1,0,0,2] (.cons (g7713s0) (.cons (g7713s1) (.cons (g7713s2) (.cons (g7713s3) (.cons (g7713s4) (.cons (g7713s5) (.cons (g7713s6) (.cons (g7713s7) .nil))))))))

theorem g7714 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7715 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7716 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,1,0,2,0]

private theorem g7716s0 : BadRow (bg7716 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7716s1 : BadRow (bg7716 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7716s2 : BadRow (bg7716 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7716s3 (h : BadRow [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626]) : BadRow (bg7716 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,0,4,4,4,0,3,0,3,3,12,3,0,3,4,3,0,3,3,12,3,0,3,4] (hard := [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626]) (by decide +kernel) h)

private theorem g7716s4 : BadRow (bg7716 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7716s5 : BadRow (bg7716 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7716s6 (h : BadRow [Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970]) : BadRow (bg7716 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,55,3,3,17,3,55,3,7,55,3,3,17,3,55,3,7,47,3,3,17,3,47,3,7,0,3,3,17,3,0,3,7,0,3,3,17,3,0,3,7] (hard := [Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970]) (by decide +kernel) h)

private theorem g7716s7 : BadRow (bg7716 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7716 (hard : BadRow [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,1,0,2,0] (.cons (g7716s0) (.cons (g7716s1) (.cons (g7716s2) (.cons (g7716s3 (.cons (hard.get (by decide : Floor43.e2389346892218 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2389346889402 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2804798430114 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2392576768442 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2804798385058 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2392576765626 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) .nil))))))) (.cons (g7716s4) (.cons (g7716s5) (.cons (g7716s6 (.cons (hard.get (by decide : Floor43.e2804815731618 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2392577849786 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2804815686562 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) (.cons (hard.get (by decide : Floor43.e2392577846970 ∈ [Floor43.e2389346892218,Floor43.e2389346889402,Floor43.e2804815731618,Floor43.e2392577849786,Floor43.e2804815686562,Floor43.e2392577846970,Floor43.e2804798430114,Floor43.e2392576768442,Floor43.e2804798385058,Floor43.e2392576765626])) .nil))))) (.cons (g7716s7) .nil))))))))

private abbrev bg7717 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,1,0,2,0]

private theorem g7717s0 : BadRow (bg7717 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7717s1 : BadRow (bg7717 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7717s2 : BadRow (bg7717 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7717s3 (h : BadRow [Floor43.e701199607530,Floor43.e701199596266]) : BadRow (bg7717 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,3,26,0,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701199607530,Floor43.e701199596266]) (by decide +kernel) h)

private theorem g7717s4 : BadRow (bg7717 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7717s5 : BadRow (bg7717 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7717s6 : BadRow (bg7717 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7717s7 : BadRow (bg7717 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7717 (hard : BadRow [Floor43.e701199607530,Floor43.e701199596266]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,1,0,2,0] (.cons (g7717s0) (.cons (g7717s1) (.cons (g7717s2) (.cons (g7717s3 (.cons (hard.get (by decide : Floor43.e701199607530 ∈ [Floor43.e701199607530,Floor43.e701199596266])) (.cons (hard.get (by decide : Floor43.e701199596266 ∈ [Floor43.e701199607530,Floor43.e701199596266])) .nil))) (.cons (g7717s4) (.cons (g7717s5) (.cons (g7717s6) (.cons (g7717s7) .nil))))))))

theorem g7718 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7719 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7720 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7721 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7722 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,1,2,0,0]

private theorem g7722s0 : BadRow (bg7722 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7722s1 : BadRow (bg7722 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7722s2 : BadRow (bg7722 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7722s3 (h : BadRow [Floor43.e2389346892266,Floor43.e2804798430882,Floor43.e2392576768490]) : BadRow (bg7722 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,0,3,0,3,3,55,3,0,3,4] (hard := [Floor43.e2389346892266,Floor43.e2804798430882,Floor43.e2392576768490]) (by decide +kernel) h)

private theorem g7722s4 : BadRow (bg7722 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7722s5 : BadRow (bg7722 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7722s6 : BadRow (bg7722 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,55,3,3,17,3,55,3,7,47,3,3,17,3,47,3,7,55,3,3,17,3,55,3,7] (hard := []) (by decide +kernel) .nil)

private theorem g7722s7 : BadRow (bg7722 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7722 (hard : BadRow [Floor43.e2389346892266,Floor43.e2804798430882,Floor43.e2392576768490]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,1,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,1,2,0,0] (.cons (g7722s0) (.cons (g7722s1) (.cons (g7722s2) (.cons (g7722s3 (.cons (hard.get (by decide : Floor43.e2389346892266 ∈ [Floor43.e2389346892266,Floor43.e2804798430882,Floor43.e2392576768490])) (.cons (hard.get (by decide : Floor43.e2804798430882 ∈ [Floor43.e2389346892266,Floor43.e2804798430882,Floor43.e2392576768490])) (.cons (hard.get (by decide : Floor43.e2392576768490 ∈ [Floor43.e2389346892266,Floor43.e2804798430882,Floor43.e2392576768490])) .nil)))) (.cons (g7722s4) (.cons (g7722s5) (.cons (g7722s6) (.cons (g7722s7) .nil))))))))

private abbrev bg7723 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,1,2,0,0]

private theorem g7723s0 : BadRow (bg7723 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7723s1 : BadRow (bg7723 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7723s2 : BadRow (bg7723 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7723s3 (h : BadRow [Floor43.e701199607722]) : BadRow (bg7723 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701199607722]) (by decide +kernel) h)

private theorem g7723s4 : BadRow (bg7723 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7723s5 : BadRow (bg7723 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7723s6 : BadRow (bg7723 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7723s7 : BadRow (bg7723 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7723 (hard : BadRow [Floor43.e701199607722]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,1,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,1,2,0,0] (.cons (g7723s0) (.cons (g7723s1) (.cons (g7723s2) (.cons (g7723s3 (.cons (hard.get (by decide : Floor43.e701199607722 ∈ [Floor43.e701199607722])) .nil)) (.cons (g7723s4) (.cons (g7723s5) (.cons (g7723s6) (.cons (g7723s7) .nil))))))))

private abbrev bg7724 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,2,0,0,1]

private theorem g7724s0 : BadRow (bg7724 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7724s1 : BadRow (bg7724 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7724s2 : BadRow (bg7724 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7724s3 : BadRow (bg7724 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7724s4 : BadRow (bg7724 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7724s5 : BadRow (bg7724 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7724s6 : BadRow (bg7724 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,47,3,3,17,3,47,3,7,48,3,3,17,3,48,3,7,13,3,3,17,3,13,3,7,24,3,3,17,3,24,3,7,48,3,3,17,3,48,3,7] (hard := []) (by decide +kernel) .nil)

private theorem g7724s7 : BadRow (bg7724 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7724 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,2,0,0,1] (.cons (g7724s0) (.cons (g7724s1) (.cons (g7724s2) (.cons (g7724s3) (.cons (g7724s4) (.cons (g7724s5) (.cons (g7724s6) (.cons (g7724s7) .nil))))))))

private abbrev bg7725 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,2,0,0,1]

private theorem g7725s0 : BadRow (bg7725 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7725s1 : BadRow (bg7725 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7725s2 : BadRow (bg7725 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7725s3 : BadRow (bg7725 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7725s4 : BadRow (bg7725 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7725s5 : BadRow (bg7725 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7725s6 : BadRow (bg7725 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7725s7 : BadRow (bg7725 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7725 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,2,0,0,1] (.cons (g7725s0) (.cons (g7725s1) (.cons (g7725s2) (.cons (g7725s3) (.cons (g7725s4) (.cons (g7725s5) (.cons (g7725s6) (.cons (g7725s7) .nil))))))))

private abbrev bg7726 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,2,0,1,0]

private theorem g7726s0 : BadRow (bg7726 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7726s1 : BadRow (bg7726 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7726s2 : BadRow (bg7726 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7726s3 (h : BadRow [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786]) : BadRow (bg7726 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,0,4,4,4,0,3,0,3,3,55,3,0,3,4,3,0,3,3,55,3,0,3,4] (hard := [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786]) (by decide +kernel) h)

private theorem g7726s4 : BadRow (bg7726 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7726s5 : BadRow (bg7726 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7726s6 (h : BadRow [Floor43.e2804815744418,Floor43.e2392577850586]) : BadRow (bg7726 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,13,3,3,17,3,13,3,7,0,3,3,17,3,0,3,7,13,3,3,17,3,13,3,7] (hard := [Floor43.e2804815744418,Floor43.e2392577850586]) (by decide +kernel) h)

private theorem g7726s7 : BadRow (bg7726 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7726 (hard : BadRow [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,2,0,1,0] (.cons (g7726s0) (.cons (g7726s1) (.cons (g7726s2) (.cons (g7726s3 (.cons (hard.get (by decide : Floor43.e2389346893018 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) (.cons (hard.get (by decide : Floor43.e2389346889562 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) (.cons (hard.get (by decide : Floor43.e2804798442914 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) (.cons (hard.get (by decide : Floor43.e2392576769242 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) (.cons (hard.get (by decide : Floor43.e2804798387618 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) (.cons (hard.get (by decide : Floor43.e2392576765786 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) .nil))))))) (.cons (g7726s4) (.cons (g7726s5) (.cons (g7726s6 (.cons (hard.get (by decide : Floor43.e2804815744418 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) (.cons (hard.get (by decide : Floor43.e2392577850586 ∈ [Floor43.e2389346893018,Floor43.e2389346889562,Floor43.e2804815744418,Floor43.e2392577850586,Floor43.e2804798442914,Floor43.e2392576769242,Floor43.e2804798387618,Floor43.e2392576765786])) .nil))) (.cons (g7726s7) .nil))))))))

private abbrev bg7727 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,2,0,1,0]

private theorem g7727s0 : BadRow (bg7727 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7727s1 : BadRow (bg7727 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7727s2 : BadRow (bg7727 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7727s3 (h : BadRow [Floor43.e701199610730,Floor43.e701199596906]) : BadRow (bg7727 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,3,26,0,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701199610730,Floor43.e701199596906]) (by decide +kernel) h)

private theorem g7727s4 : BadRow (bg7727 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7727s5 : BadRow (bg7727 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7727s6 : BadRow (bg7727 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7727s7 : BadRow (bg7727 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7727 (hard : BadRow [Floor43.e701199610730,Floor43.e701199596906]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,2,0,1,0] (.cons (g7727s0) (.cons (g7727s1) (.cons (g7727s2) (.cons (g7727s3 (.cons (hard.get (by decide : Floor43.e701199610730 ∈ [Floor43.e701199610730,Floor43.e701199596906])) (.cons (hard.get (by decide : Floor43.e701199596906 ∈ [Floor43.e701199610730,Floor43.e701199596906])) .nil))) (.cons (g7727s4) (.cons (g7727s5) (.cons (g7727s6) (.cons (g7727s7) .nil))))))))

end Blc.SelfintSingleObject.Compact43
