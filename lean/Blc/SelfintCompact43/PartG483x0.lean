import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7728 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,2,1,0,0]

private theorem g7728s0 : BadRow (bg7728 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7728s1 : BadRow (bg7728 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7728s2 : BadRow (bg7728 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7728s3 (h : BadRow [Floor43.e2389346893034,Floor43.e2804798443170,Floor43.e2392576769258]) : BadRow (bg7728 3) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,0,3,0,3,3,55,3,0,3,4] (hard := [Floor43.e2389346893034,Floor43.e2804798443170,Floor43.e2392576769258]) (by decide +kernel) h)

private theorem g7728s4 : BadRow (bg7728 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7728s5 : BadRow (bg7728 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7728s6 (h : BadRow [Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602]) : BadRow (bg7728 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,48,3,3,17,3,48,3,7,0,3,3,17,3,0,3,7,0,3,3,17,3,0,3,7] (hard := [Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602]) (by decide +kernel) h)

private theorem g7728s7 : BadRow (bg7728 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7728 (hard : BadRow [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,2,1,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,2,1,0,0] (.cons (g7728s0) (.cons (g7728s1) (.cons (g7728s2) (.cons (g7728s3 (.cons (hard.get (by decide : Floor43.e2389346893034 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) (.cons (hard.get (by decide : Floor43.e2804798443170 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) (.cons (hard.get (by decide : Floor43.e2392576769258 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) .nil)))) (.cons (g7728s4) (.cons (g7728s5) (.cons (g7728s6 (.cons (hard.get (by decide : Floor43.e2804815965858 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) (.cons (hard.get (by decide : Floor43.e2392577864426 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) (.cons (hard.get (by decide : Floor43.e2804815744674 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) (.cons (hard.get (by decide : Floor43.e2392577850602 ∈ [Floor43.e2389346893034,Floor43.e2804815965858,Floor43.e2392577864426,Floor43.e2804815744674,Floor43.e2392577850602,Floor43.e2804798443170,Floor43.e2392576769258])) .nil))))) (.cons (g7728s7) .nil))))))))

private abbrev bg7729 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,2,1,0,0]

private theorem g7729s0 : BadRow (bg7729 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7729s1 : BadRow (bg7729 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7729s2 : BadRow (bg7729 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7729s3 (h : BadRow [Floor43.e701199610794]) : BadRow (bg7729 3) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701199610794]) (by decide +kernel) h)

private theorem g7729s4 : BadRow (bg7729 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7729s5 : BadRow (bg7729 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7729s6 : BadRow (bg7729 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7729s7 : BadRow (bg7729 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7729 (hard : BadRow [Floor43.e701199610794]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,2,1,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,2,1,0,0] (.cons (g7729s0) (.cons (g7729s1) (.cons (g7729s2) (.cons (g7729s3 (.cons (hard.get (by decide : Floor43.e701199610794 ∈ [Floor43.e701199610794])) .nil)) (.cons (g7729s4) (.cons (g7729s5) (.cons (g7729s6) (.cons (g7729s7) .nil))))))))

theorem g7730 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7731 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7732 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g7733 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7734 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7735 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7736 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g7737 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7738 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7739 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
