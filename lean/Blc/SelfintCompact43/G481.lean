import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7696 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,0,0,2,1]

private theorem g7696s0 : BadRow (bg7696 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7696s1 : BadRow (bg7696 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7696s2 (h : BadRow [Floor43.e2389346945910]) : BadRow (bg7696 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,0] (hard := [Floor43.e2389346945910]) (by decide +kernel) h)

private theorem g7696s3 : BadRow (bg7696 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7696s4 : BadRow (bg7696 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,36,36,36,3,55,36,36,3,4] (hard := []) (by decide +kernel) .nil)

private theorem g7696s5 : BadRow (bg7696 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7696s6 (h : BadRow [Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606]) : BadRow (bg7696 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,30,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,36,36,3,48,36,36,3,0,3,0,3,3,37,3,0,3,4] (hard := [Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606]) (by decide +kernel) h)

private theorem g7696s7 : BadRow (bg7696 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7696 (hard : BadRow [Floor43.e2389346945910,Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,0,0,2,1] (.cons (g7696s0) (.cons (g7696s1) (.cons (g7696s2 (.cons (hard.get (by decide : Floor43.e2389346945910 ∈ [Floor43.e2389346945910,Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606])) .nil)) (.cons (g7696s3) (.cons (g7696s4) (.cons (g7696s5) (.cons (g7696s6 (.cons (hard.get (by decide : Floor43.e2389356776310 ∈ [Floor43.e2389346945910,Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606])) (.cons (hard.get (by decide : Floor43.e2804827600738 ∈ [Floor43.e2389346945910,Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606])) (.cons (hard.get (by decide : Floor43.e2392578591606 ∈ [Floor43.e2389346945910,Floor43.e2389356776310,Floor43.e2804827600738,Floor43.e2392578591606])) .nil)))) (.cons (g7696s7) .nil))))))))

private abbrev bg7697 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,0,0,2,1]

private theorem g7697s0 : BadRow (bg7697 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7697s1 : BadRow (bg7697 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7697s2 : BadRow (bg7697 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7697s3 : BadRow (bg7697 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7697s4 : BadRow (bg7697 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,36,26,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7697s5 : BadRow (bg7697 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7697s6 (h : BadRow [Floor43.e701206900186]) : BadRow (bg7697 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701206900186]) (by decide +kernel) h)

private theorem g7697s7 : BadRow (bg7697 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7697 (hard : BadRow [Floor43.e701206900186]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,0,0,2,1] (.cons (g7697s0) (.cons (g7697s1) (.cons (g7697s2) (.cons (g7697s3) (.cons (g7697s4) (.cons (g7697s5) (.cons (g7697s6 (.cons (hard.get (by decide : Floor43.e701206900186 ∈ [Floor43.e701206900186])) .nil)) (.cons (g7697s7) .nil))))))))

theorem g7698 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7699 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7700 (i : Nat) := Split43.five 16 i 8 5 3 false 3 2 5 [0,0,1,0,2]

private theorem g7700s0 : BadRow (bg7700 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s1 : BadRow (bg7700 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7700s2 : BadRow (bg7700 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7700s3 : BadRow (bg7700 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7700s4 : BadRow (bg7700 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7700s5 : BadRow (bg7700 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s6 (h : BadRow [Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662]) : BadRow (bg7700 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,30,4,4,4,30,14,3,3,17,3,14,3,7,47,3,3,17,3,47,3,7,14,3,3,17,3,14,3,7,0,3,3,17,3,0,3,7,0,3,3,17,3,0,3,7,36,36,3,48,36,36,3,0,36,36,3,57,36,36,3,66,3,0,3,3,11,3,0,3,4,3,0,3,3,11,3,0,3,4] (hard := [Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662]) (by decide +kernel) h)

private theorem g7700s7 : BadRow (bg7700 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s8 : BadRow (bg7700 8) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s9 : BadRow (bg7700 9) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s10 (h : BadRow [Floor43.e2389346946670]) : BadRow (bg7700 10) :=
  row_of_forall (discharge bank [4,4,4,0,4,4,4,47] (hard := [Floor43.e2389346946670]) (by decide +kernel) h)

private theorem g7700s11 : BadRow (bg7700 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s12 : BadRow (bg7700 12) :=
  row_of_forall (discharge bank [36,36,36,3,13,36,36,3,4,36,36,36,3,13,36,36,3,4] (hard := []) (by decide +kernel) .nil)

private theorem g7700s13 : BadRow (bg7700 13) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s14 : BadRow (bg7700 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7700s15 : BadRow (bg7700 15) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7700 (hard : BadRow [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,1,0,2]) :=
  Split43.five_cover 16 (by decide) 8 5 3 false 3 2 5 [0,0,1,0,2] (.cons (g7700s0) (.cons (g7700s1) (.cons (g7700s2) (.cons (g7700s3) (.cons (g7700s4) (.cons (g7700s5) (.cons (g7700s6 (.cons (hard.get (by decide : Floor43.e2804815706850 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2392577848238 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2804815682274 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2392577846702 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2389356777070 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2804827612898 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2392578592366 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2804827601634 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) (.cons (hard.get (by decide : Floor43.e2392578591662 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) .nil)))))))))) (.cons (g7700s7) (.cons (g7700s8) (.cons (g7700s9) (.cons (g7700s10 (.cons (hard.get (by decide : Floor43.e2389346946670 ∈ [Floor43.e2389346946670,Floor43.e2804815706850,Floor43.e2392577848238,Floor43.e2804815682274,Floor43.e2392577846702,Floor43.e2389356777070,Floor43.e2804827612898,Floor43.e2392578592366,Floor43.e2804827601634,Floor43.e2392578591662])) .nil)) (.cons (g7700s11) (.cons (g7700s12) (.cons (g7700s13) (.cons (g7700s14) (.cons (g7700s15) .nil))))))))))))))))

private abbrev bg7701 (i : Nat) := Split43.five 16 i 8 5 3 true 3 2 5 [0,0,1,0,2]

private theorem g7701s0 : BadRow (bg7701 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s1 : BadRow (bg7701 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7701s2 : BadRow (bg7701 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7701s3 : BadRow (bg7701 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7701s4 : BadRow (bg7701 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7701s5 : BadRow (bg7701 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s6 (h : BadRow [Floor43.e701206903226,Floor43.e701206900410]) : BadRow (bg7701 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,1,1,1,1,1,36,1,1,1,1,1,3,26,0,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701206903226,Floor43.e701206900410]) (by decide +kernel) h)

private theorem g7701s7 : BadRow (bg7701 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s8 : BadRow (bg7701 8) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s9 : BadRow (bg7701 9) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s10 : BadRow (bg7701 10) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7701s11 : BadRow (bg7701 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s12 : BadRow (bg7701 12) :=
  row_of_forall (discharge bank [36,26,36,1,1,1,1,1,36,26,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7701s13 : BadRow (bg7701 13) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s14 : BadRow (bg7701 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7701s15 : BadRow (bg7701 15) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7701 (hard : BadRow [Floor43.e701206903226,Floor43.e701206900410]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,1,0,2]) :=
  Split43.five_cover 16 (by decide) 8 5 3 true 3 2 5 [0,0,1,0,2] (.cons (g7701s0) (.cons (g7701s1) (.cons (g7701s2) (.cons (g7701s3) (.cons (g7701s4) (.cons (g7701s5) (.cons (g7701s6 (.cons (hard.get (by decide : Floor43.e701206903226 ∈ [Floor43.e701206903226,Floor43.e701206900410])) (.cons (hard.get (by decide : Floor43.e701206900410 ∈ [Floor43.e701206903226,Floor43.e701206900410])) .nil))) (.cons (g7701s7) (.cons (g7701s8) (.cons (g7701s9) (.cons (g7701s10) (.cons (g7701s11) (.cons (g7701s12) (.cons (g7701s13) (.cons (g7701s14) (.cons (g7701s15) .nil))))))))))))))))

theorem g7702 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7703 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7704 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,0,1,2,0]

private theorem g7704s0 : BadRow (bg7704 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7704s1 : BadRow (bg7704 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7704s2 (h : BadRow [Floor43.e2389346946682]) : BadRow (bg7704 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,0] (hard := [Floor43.e2389346946682]) (by decide +kernel) h)

private theorem g7704s3 (h : BadRow [Floor43.e2389346889146,Floor43.e2804798380962,Floor43.e2392576765370]) : BadRow (bg7704 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,0,3,0,3,3,12,3,0,3,4] (hard := [Floor43.e2389346889146,Floor43.e2804798380962,Floor43.e2392576765370]) (by decide +kernel) h)

private theorem g7704s4 : BadRow (bg7704 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,36,36,36,3,13,36,36,3,4] (hard := []) (by decide +kernel) .nil)

private theorem g7704s5 : BadRow (bg7704 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7704s6 (h : BadRow [Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378]) : BadRow (bg7704 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,30,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,79,3,3,17,3,79,3,7,36,36,3,0,36,36,3,0,3,0,3,3,11,3,0,3,4] (hard := [Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378]) (by decide +kernel) h)

private theorem g7704s7 : BadRow (bg7704 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7704 (hard : BadRow [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,0,1,2,0] (.cons (g7704s0) (.cons (g7704s1) (.cons (g7704s2 (.cons (hard.get (by decide : Floor43.e2389346946682 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) .nil)) (.cons (g7704s3 (.cons (hard.get (by decide : Floor43.e2389346889146 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) (.cons (hard.get (by decide : Floor43.e2804798380962 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) (.cons (hard.get (by decide : Floor43.e2392576765370 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) .nil)))) (.cons (g7704s4) (.cons (g7704s5) (.cons (g7704s6 (.cons (hard.get (by decide : Floor43.e2418347806330 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) (.cons (hard.get (by decide : Floor43.e2389356777082 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) (.cons (hard.get (by decide : Floor43.e2804827613090 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) (.cons (hard.get (by decide : Floor43.e2392578592378 ∈ [Floor43.e2389346946682,Floor43.e2389346889146,Floor43.e2418347806330,Floor43.e2389356777082,Floor43.e2804827613090,Floor43.e2392578592378,Floor43.e2804798380962,Floor43.e2392576765370])) .nil))))) (.cons (g7704s7) .nil))))))))

private abbrev bg7705 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,0,1,2,0]

private theorem g7705s0 : BadRow (bg7705 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7705s1 : BadRow (bg7705 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7705s2 : BadRow (bg7705 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7705s3 (h : BadRow [Floor43.e701199595242]) : BadRow (bg7705 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701199595242]) (by decide +kernel) h)

private theorem g7705s4 : BadRow (bg7705 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,36,26,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7705s5 : BadRow (bg7705 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7705s6 (h : BadRow [Floor43.e701206903274]) : BadRow (bg7705 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701206903274]) (by decide +kernel) h)

private theorem g7705s7 : BadRow (bg7705 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7705 (hard : BadRow [Floor43.e701206903274,Floor43.e701199595242]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,0,1,2,0] (.cons (g7705s0) (.cons (g7705s1) (.cons (g7705s2) (.cons (g7705s3 (.cons (hard.get (by decide : Floor43.e701199595242 ∈ [Floor43.e701206903274,Floor43.e701199595242])) .nil)) (.cons (g7705s4) (.cons (g7705s5) (.cons (g7705s6 (.cons (hard.get (by decide : Floor43.e701206903274 ∈ [Floor43.e701206903274,Floor43.e701199595242])) .nil)) (.cons (g7705s7) .nil))))))))

private abbrev bg7706 (i : Nat) := Split43.five 16 i 8 5 3 false 3 2 5 [0,0,2,0,1]

private theorem g7706s0 : BadRow (bg7706 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s1 : BadRow (bg7706 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7706s2 : BadRow (bg7706 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7706s3 : BadRow (bg7706 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7706s4 : BadRow (bg7706 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7706s5 : BadRow (bg7706 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s6 (h : BadRow [Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702]) : BadRow (bg7706 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,30,4,4,4,30,14,3,3,17,3,14,3,7,24,3,3,17,3,24,3,7,14,3,3,17,3,14,3,7,24,3,3,17,3,24,3,7,24,3,3,17,3,24,3,7,36,36,3,0,36,36,3,0,36,36,3,0,36,36,3,0,3,0,3,3,31,3,0,3,4,3,0,3,3,31,3,0,3,4] (hard := [Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702]) (by decide +kernel) h)

private theorem g7706s7 : BadRow (bg7706 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s8 : BadRow (bg7706 8) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s9 : BadRow (bg7706 9) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s10 (h : BadRow [Floor43.e2389346946870,Floor43.e2389346946006]) : BadRow (bg7706 10) :=
  row_of_forall (discharge bank [4,4,4,0,4,4,4,0] (hard := [Floor43.e2389346946870,Floor43.e2389346946006]) (by decide +kernel) h)

private theorem g7706s11 : BadRow (bg7706 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s12 : BadRow (bg7706 12) :=
  row_of_forall (discharge bank [36,36,36,3,55,36,36,3,4,36,36,36,3,55,36,36,3,4] (hard := []) (by decide +kernel) .nil)

private theorem g7706s13 : BadRow (bg7706 13) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s14 : BadRow (bg7706 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7706s15 : BadRow (bg7706 15) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7706 (hard : BadRow [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,2,0,1]) :=
  Split43.five_cover 16 (by decide) 8 5 3 false 3 2 5 [0,0,2,0,1] (.cons (g7706s0) (.cons (g7706s1) (.cons (g7706s2) (.cons (g7706s3) (.cons (g7706s4) (.cons (g7706s5) (.cons (g7706s6 (.cons (hard.get (by decide : Floor43.e2418347806518 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2389356777270 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2418347805654 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2389356776406 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2804827616098 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2392578592566 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2804827602274 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2392578591702 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) .nil))))))))) (.cons (g7706s7) (.cons (g7706s8) (.cons (g7706s9) (.cons (g7706s10 (.cons (hard.get (by decide : Floor43.e2389346946870 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) (.cons (hard.get (by decide : Floor43.e2389346946006 ∈ [Floor43.e2389346946870,Floor43.e2389346946006,Floor43.e2418347806518,Floor43.e2389356777270,Floor43.e2418347805654,Floor43.e2389356776406,Floor43.e2804827616098,Floor43.e2392578592566,Floor43.e2804827602274,Floor43.e2392578591702])) .nil))) (.cons (g7706s11) (.cons (g7706s12) (.cons (g7706s13) (.cons (g7706s14) (.cons (g7706s15) .nil))))))))))))))))

private abbrev bg7707 (i : Nat) := Split43.five 16 i 8 5 3 true 3 2 5 [0,0,2,0,1]

private theorem g7707s0 : BadRow (bg7707 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s1 : BadRow (bg7707 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7707s2 : BadRow (bg7707 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7707s3 : BadRow (bg7707 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7707s4 : BadRow (bg7707 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7707s5 : BadRow (bg7707 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s6 (h : BadRow [Floor43.e701206904026,Floor43.e701206900570]) : BadRow (bg7707 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,1,1,1,1,1,36,1,1,1,1,1,3,26,0,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701206904026,Floor43.e701206900570]) (by decide +kernel) h)

private theorem g7707s7 : BadRow (bg7707 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s8 : BadRow (bg7707 8) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s9 : BadRow (bg7707 9) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s10 : BadRow (bg7707 10) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7707s11 : BadRow (bg7707 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s12 : BadRow (bg7707 12) :=
  row_of_forall (discharge bank [36,26,36,1,1,1,1,1,36,26,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7707s13 : BadRow (bg7707 13) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s14 : BadRow (bg7707 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7707s15 : BadRow (bg7707 15) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7707 (hard : BadRow [Floor43.e701206904026,Floor43.e701206900570]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,2,0,1]) :=
  Split43.five_cover 16 (by decide) 8 5 3 true 3 2 5 [0,0,2,0,1] (.cons (g7707s0) (.cons (g7707s1) (.cons (g7707s2) (.cons (g7707s3) (.cons (g7707s4) (.cons (g7707s5) (.cons (g7707s6 (.cons (hard.get (by decide : Floor43.e701206904026 ∈ [Floor43.e701206904026,Floor43.e701206900570])) (.cons (hard.get (by decide : Floor43.e701206900570 ∈ [Floor43.e701206904026,Floor43.e701206900570])) .nil))) (.cons (g7707s7) (.cons (g7707s8) (.cons (g7707s9) (.cons (g7707s10) (.cons (g7707s11) (.cons (g7707s12) (.cons (g7707s13) (.cons (g7707s14) (.cons (g7707s15) .nil))))))))))))))))

private abbrev bg7708 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,0,2,1,0]

private theorem g7708s0 : BadRow (bg7708 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7708s1 : BadRow (bg7708 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7708s2 (h : BadRow [Floor43.e2389346946874]) : BadRow (bg7708 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,0] (hard := [Floor43.e2389346946874]) (by decide +kernel) h)

private theorem g7708s3 (h : BadRow [Floor43.e2389346889178,Floor43.e2804798381474,Floor43.e2392576765402]) : BadRow (bg7708 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,0,3,0,3,3,55,3,0,3,4] (hard := [Floor43.e2389346889178,Floor43.e2804798381474,Floor43.e2392576765402]) (by decide +kernel) h)

private theorem g7708s4 : BadRow (bg7708 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,36,36,36,3,24,36,36,3,4] (hard := []) (by decide +kernel) .nil)

private theorem g7708s5 : BadRow (bg7708 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7708s6 (h : BadRow [Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570]) : BadRow (bg7708 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,30,14,3,3,17,3,14,3,7,0,3,3,17,3,0,3,7,0,3,3,17,3,0,3,7,36,36,3,0,36,36,3,0,3,0,3,3,13,3,0,3,4] (hard := [Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570]) (by decide +kernel) h)

private theorem g7708s7 : BadRow (bg7708 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7708 (hard : BadRow [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,0,2,1,0] (.cons (g7708s0) (.cons (g7708s1) (.cons (g7708s2 (.cons (hard.get (by decide : Floor43.e2389346946874 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) .nil)) (.cons (g7708s3 (.cons (hard.get (by decide : Floor43.e2389346889178 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2804798381474 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2392576765402 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) .nil)))) (.cons (g7708s4) (.cons (g7708s5) (.cons (g7708s6 (.cons (hard.get (by decide : Floor43.e2804815721378 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2392577849146 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2804815682978 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2392577846746 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2418347806522 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2389356777274 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2804827616162 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) (.cons (hard.get (by decide : Floor43.e2392578592570 ∈ [Floor43.e2389346946874,Floor43.e2389346889178,Floor43.e2804815721378,Floor43.e2392577849146,Floor43.e2804815682978,Floor43.e2392577846746,Floor43.e2418347806522,Floor43.e2389356777274,Floor43.e2804827616162,Floor43.e2392578592570,Floor43.e2804798381474,Floor43.e2392576765402])) .nil))))))))) (.cons (g7708s7) .nil))))))))

private abbrev bg7709 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,0,2,1,0]

private theorem g7709s0 : BadRow (bg7709 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7709s1 : BadRow (bg7709 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7709s2 : BadRow (bg7709 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7709s3 (h : BadRow [Floor43.e701199595370]) : BadRow (bg7709 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701199595370]) (by decide +kernel) h)

private theorem g7709s4 : BadRow (bg7709 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,36,26,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7709s5 : BadRow (bg7709 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7709s6 (h : BadRow [Floor43.e701206904042]) : BadRow (bg7709 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701206904042]) (by decide +kernel) h)

private theorem g7709s7 : BadRow (bg7709 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7709 (hard : BadRow [Floor43.e701206904042,Floor43.e701199595370]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,0,2,1,0] (.cons (g7709s0) (.cons (g7709s1) (.cons (g7709s2) (.cons (g7709s3 (.cons (hard.get (by decide : Floor43.e701199595370 ∈ [Floor43.e701206904042,Floor43.e701199595370])) .nil)) (.cons (g7709s4) (.cons (g7709s5) (.cons (g7709s6 (.cons (hard.get (by decide : Floor43.e701206904042 ∈ [Floor43.e701206904042,Floor43.e701199595370])) .nil)) (.cons (g7709s7) .nil))))))))

theorem g7710 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7711 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
