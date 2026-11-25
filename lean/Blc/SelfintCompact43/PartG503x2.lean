import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g8060 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8061 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg8062 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [0,1,2,0,0,0]

private theorem g8062s0 : BadRow (bg8062 0) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8062s1 : BadRow (bg8062 1) :=
  row_of_forall (discharge bank [1,4,4,4,20,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8062s2 : BadRow (bg8062 2) :=
  row_of_forall (discharge bank [4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,14,14,14,14,14,14,14,14,14,36,14,14,24,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

private theorem g8062s3 : BadRow (bg8062 3) :=
  row_of_forall (discharge bank [53,53,1,4,4,4,20,4,4,4,4,53,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8062s4 : BadRow (bg8062 4) :=
  row_of_forall (discharge bank [1,4,4,4,20,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8062s5 (h : BadRow [Floor43.e2423100701282,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450]) : BadRow (bg8062 5) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,4,4,4,4,105,3,0,0,12,0,3,0] (hard := [Floor43.e2423100701282,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450]) (by decide +kernel) h)

private theorem g8062s6 : BadRow (bg8062 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8062s7 (h : BadRow [Floor43.e2422948994714,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930]) : BadRow (bg8062 7) :=
  row_of_forall (discharge bank [1,4,1,4,1,4,1,4,4,4,4,4,4,56,0,57,14,11,14,14,14,11,14,3,0,3,0,3,48,3,0,3,135,18,48] (hard := [Floor43.e2422948994714,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930]) (by decide +kernel) h)

theorem g8062 (hard : BadRow [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,1,2,0,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [0,1,2,0,0,0] (.cons (g8062s0) (.cons (g8062s1) (.cons (g8062s2) (.cons (g8062s3) (.cons (g8062s4) (.cons (g8062s5 (.cons (hard.get (by decide : Floor43.e2423100701282 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) (.cons (hard.get (by decide : Floor43.e2423100701090 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) (.cons (hard.get (by decide : Floor43.e2423100513954 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) (.cons (hard.get (by decide : Floor43.e2423083212450 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) .nil))))) (.cons (g8062s6) (.cons (g8062s7 (.cons (hard.get (by decide : Floor43.e2422948994714 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) (.cons (hard.get (by decide : Floor43.e2423100701066 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) (.cons (hard.get (by decide : Floor43.e2423100694154 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) (.cons (hard.get (by decide : Floor43.e2423100513930 ∈ [Floor43.e2423100701282,Floor43.e2422948994714,Floor43.e2423100701090,Floor43.e2423100513954,Floor43.e2423083212450,Floor43.e2423100701066,Floor43.e2423100694154,Floor43.e2423100513930])) .nil))))) .nil))))))))

private abbrev bg8063 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,1,2,0,0,0]

private theorem bg8063p0 : BadRow (bg8063 0) := by empty43

private theorem bg8063p1 : BadRow (bg8063 1) := by empty43

private theorem bg8063p2 : BadRow (bg8063 2) := by empty43

private theorem bg8063p3 : BadRow (bg8063 3) := by empty43

private theorem bg8063p4 : BadRow (bg8063 4) := by empty43

private theorem bg8063p5 : BadRow (bg8063 5) := by empty43

private theorem bg8063p6 : BadRow (bg8063 6) := by empty43

private theorem bg8063p7 : BadRow (bg8063 7) := by empty43

private theorem bg8063p8 : BadRow (bg8063 8) := by empty43

private theorem bg8063p9 : BadRow (bg8063 9) := by empty43

private theorem bg8063p10 : BadRow (bg8063 10) := by empty43

private theorem bg8063p11 : BadRow (bg8063 11) := by empty43

theorem g8063 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,1,2,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,1,2,0,0,0] (.cons (bg8063p0) (.cons (bg8063p1) (.cons (bg8063p2) (.cons (bg8063p3) (.cons (bg8063p4) (.cons (bg8063p5) (.cons (bg8063p6) (.cons (bg8063p7) (.cons (bg8063p8) (.cons (bg8063p9) (.cons (bg8063p10) (.cons (bg8063p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
