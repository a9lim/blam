import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7952 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7953 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7954 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [39,25,39,30,39,30,39,37,39,37,39,1,39,1,39,1,1,1,39,1,39,1,39,1,1,1,39,1,39,1,39,1,39,1,39,1,39,30,39,1,39,37,39,38,39,38,11,14,11,14,13,14,13,14,14,14,3,47,3,14,3,48,3,48,3,48,3,40,3,48,3,47,3,118,3,79] (hard := []) (by decide +kernel) .nil)

theorem g7955 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7956 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7957 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7958 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 5 [0,1,0,2,0]

private theorem g7958s0 : BadRow (bg7958 0) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7958s1 (h : BadRow [Floor43.e2419186478778]) : BadRow (bg7958 1) :=
  row_of_forall (discharge bank [39,25,39,30,39,1,39,1,39,1,4,14,4,14,4,0,4,40] (hard := [Floor43.e2419186478778]) (by decide +kernel) h)

private theorem g7958s2 : BadRow (bg7958 2) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7958s3 : BadRow (bg7958 3) :=
  row_of_forall (discharge bank [39,25,39,25,39,30,39,30,39,25,39,30] (hard := []) (by decide +kernel) .nil)

private theorem g7958s4 (h : BadRow [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258]) : BadRow (bg7958 4) :=
  row_of_forall (discharge bank [39,38,39,30,39,1,39,1,39,30,39,37,11,14,11,14,13,14,11,14,13,14,3,47,3,47,3,48,3,47,3,48,3,48,3,48,3,48,3,0,3,0,3,0,3,0] (hard := [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258]) (by decide +kernel) h)

private theorem g7958s5 : BadRow (bg7958 5) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7958s6 : BadRow (bg7958 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7958s7 (h : BadRow [Floor43.e2419186525922,Floor43.e2393416722146]) : BadRow (bg7958 7) :=
  row_of_forall (discharge bank [39,1,39,1,39,55,39,40,3,0,3,0,3,68,3,33] (hard := [Floor43.e2419186525922,Floor43.e2393416722146]) (by decide +kernel) h)

theorem g7958 (hard : BadRow [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 5 [0,1,0,2,0] (.cons (g7958s0) (.cons (g7958s1 (.cons (hard.get (by decide : Floor43.e2419186478778 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) .nil)) (.cons (g7958s2) (.cons (g7958s3) (.cons (g7958s4 (.cons (hard.get (by decide : Floor43.e2419190851298 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) (.cons (hard.get (by decide : Floor43.e2393421047522 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) (.cons (hard.get (by decide : Floor43.e2419190840034 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) (.cons (hard.get (by decide : Floor43.e2393421036258 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) .nil))))) (.cons (g7958s5) (.cons (g7958s6) (.cons (g7958s7 (.cons (hard.get (by decide : Floor43.e2419186525922 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) (.cons (hard.get (by decide : Floor43.e2393416722146 ∈ [Floor43.e2419190851298,Floor43.e2393421047522,Floor43.e2419190840034,Floor43.e2393421036258,Floor43.e2419186525922,Floor43.e2393416722146,Floor43.e2419186478778])) .nil))) .nil))))))))

theorem g7959 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7960 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7961 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7962 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7963 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7964 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [39,25,39,25,39,25,39,25,23,1,39,1,39,1,39,1,1,1,39,1,39,25,39,1,39,1,39,1,39,1,39,38,39,38,39,38,39,38,39,55,11,13,11,14,11,13,3,48,3,47,3,48,3,47,3,47,3,92,3,48,3,48,3,48,3,48,4,14,4,14] (hard := []) (by decide +kernel) .nil)

theorem g7965 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7966 (hard : BadRow [Floor43.e2419190909718,Floor43.e2419190854422]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [39,25,39,30,39,30,39,37,39,37,39,1,39,1,39,1,23,1,39,1,39,1,39,1,47,1,39,1,39,1,39,1,39,1,39,1,39,38,39,44,39,31,39,37,39,37,11,9,11,9,13,11,13,11,14,14,3,0,3,48,3,14,3,14,3,0,3,93,3,48,3,48,3,47,3,91] (hard := [Floor43.e2419190909718,Floor43.e2419190854422]) (by decide +kernel) hard)

theorem g7967 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
