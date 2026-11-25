import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7948 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 5 [0,0,2,0,1]

private theorem g7948s0 : BadRow (bg7948 0) :=
  row_of_forall (discharge bank [39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7948s1 : BadRow (bg7948 1) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7948s2 : BadRow (bg7948 2) :=
  row_of_forall (discharge bank [39,1,39,1,39,1,48,14,39,1,39,1,39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7948s3 : BadRow (bg7948 3) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7948s4 (h : BadRow [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806]) : BadRow (bg7948 4) :=
  row_of_forall (discharge bank [39,44,39,1,48,48,39,14,36,36,39,0,37,38,31,37,14,1,14,1,14,1,44,44,14,94,3,48,3,92,3,48,3,48,47,14,0,0,44,14,24,14,12,48,55,82,36,36,36,36,36,36,36,36] (hard := [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806]) (by decide +kernel) h)

private theorem g7948s5 : BadRow (bg7948 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7948s6 (h : BadRow [Floor43.e2393416929078,Floor43.e2393407491030]) : BadRow (bg7948 6) :=
  row_of_forall (discharge bank [14,14,14,14,39,25,39,30,14,47,3,14,3,0,14,0,3,14,3,92] (hard := [Floor43.e2393416929078,Floor43.e2393407491030]) (by decide +kernel) h)

private theorem g7948s7 : BadRow (bg7948 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7948 (hard : BadRow [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806,Floor43.e2393416929078,Floor43.e2393407491030]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 5 [0,0,2,0,1] (.cons (g7948s0) (.cons (g7948s1) (.cons (g7948s2) (.cons (g7948s3) (.cons (g7948s4 (.cons (hard.get (by decide : Floor43.e2393382128598 ∈ [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806,Floor43.e2393416929078,Floor43.e2393407491030])) (.cons (hard.get (by decide : Floor43.e2419191450582 ∈ [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806,Floor43.e2393416929078,Floor43.e2393407491030])) (.cons (hard.get (by decide : Floor43.e2393421646806 ∈ [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806,Floor43.e2393416929078,Floor43.e2393407491030])) .nil)))) (.cons (g7948s5) (.cons (g7948s6 (.cons (hard.get (by decide : Floor43.e2393416929078 ∈ [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806,Floor43.e2393416929078,Floor43.e2393407491030])) (.cons (hard.get (by decide : Floor43.e2393407491030 ∈ [Floor43.e2393382128598,Floor43.e2419191450582,Floor43.e2393421646806,Floor43.e2393416929078,Floor43.e2393407491030])) .nil))) (.cons (g7948s7) .nil))))))))

theorem g7949 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7950 (hard : BadRow [Floor43.e2393382129466,Floor43.e2419190839138,Floor43.e2393421035362,Floor43.e2419186513762]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [39,1,39,1,14,14,39,25,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,14,48,39,0,39,12,37,38,14,1,14,1,44,14,3,48,3,48,3,0,3,0,48,47,24,14,12,12,36,36,36,36,47,48,3,48,3,12,3,0,3,90,4,48,4,11] (hard := [Floor43.e2393382129466,Floor43.e2419190839138,Floor43.e2393421035362,Floor43.e2419186513762]) (by decide +kernel) hard)

theorem g7951 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
