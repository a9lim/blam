import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7968 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 5 [0,2,0,1,0]

private theorem g7968s0 : BadRow (bg7968 0) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7968s1 : BadRow (bg7968 1) :=
  row_of_forall (discharge bank [39,25,39,30,39,1,39,1,39,1,4,92,4,24,4,48,4,12] (hard := []) (by decide +kernel) .nil)

private theorem g7968s2 : BadRow (bg7968 2) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7968s3 : BadRow (bg7968 3) :=
  row_of_forall (discharge bank [39,25,39,25,39,30,39,30,39,25,39,30] (hard := []) (by decide +kernel) .nil)

private theorem g7968s4 (h : BadRow [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898]) : BadRow (bg7968 4) :=
  row_of_forall (discharge bank [39,38,39,38,39,1,39,1,39,38,39,31,11,9,11,9,13,11,11,9,13,11,3,0,3,0,3,0,3,0,3,48,3,48,3,48,3,91,3,0,3,0,3,0,3,0] (hard := [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898]) (by decide +kernel) h)

private theorem g7968s5 : BadRow (bg7968 5) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7968s6 : BadRow (bg7968 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7968s7 (h : BadRow [Floor43.e2419186529122]) : BadRow (bg7968 7) :=
  row_of_forall (discharge bank [39,1,39,1,39,24,39,12,3,0,3,47,3,48,3,91] (hard := [Floor43.e2419186529122]) (by decide +kernel) h)

theorem g7968 (hard : BadRow [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 5 [0,2,0,1,0] (.cons (g7968s0) (.cons (g7968s1) (.cons (g7968s2) (.cons (g7968s3) (.cons (g7968s4 (.cons (hard.get (by decide : Floor43.e2419190910178 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2393421106402 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2419190909794 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2393421106018 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2419190854498 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2393421050722 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2419190840674 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) (.cons (hard.get (by decide : Floor43.e2393421036898 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) .nil))))))))) (.cons (g7968s5) (.cons (g7968s6) (.cons (g7968s7 (.cons (hard.get (by decide : Floor43.e2419186529122 ∈ [Floor43.e2419190910178,Floor43.e2393421106402,Floor43.e2419190909794,Floor43.e2393421106018,Floor43.e2419190854498,Floor43.e2393421050722,Floor43.e2419190840674,Floor43.e2393421036898,Floor43.e2419186529122])) .nil)) .nil))))))))

theorem g7969 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7970 (hard : BadRow [Floor43.e2419190910562,Floor43.e2419190909858,Floor43.e2419190909834,Floor43.e2393421106058,Floor43.e2419190854562,Floor43.e2393421050786,Floor43.e2419186529186,Floor43.e2393416725410]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [39,25,39,25,39,25,39,25,81,1,39,1,39,1,39,1,47,1,39,1,39,25,39,1,39,1,39,1,39,1,39,38,39,38,39,38,39,38,39,24,11,9,11,9,11,9,3,0,3,48,3,0,3,48,3,0,3,0,3,0,3,0,3,0,3,0,4,48,4,40] (hard := [Floor43.e2419190910562,Floor43.e2419190909858,Floor43.e2419190909834,Floor43.e2393421106058,Floor43.e2419190854562,Floor43.e2393421050786,Floor43.e2419186529186,Floor43.e2393416725410]) (by decide +kernel) hard)

theorem g7971 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7972 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7973 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7974 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [39,7,1,1,39,7,1,1,39,7,39,7,39,7,39,17,39,17,39,17,1,14,39,17,39,14,39,14,1,14,39,17,39,17,39,17,1,14,39,14,39,37,39,13,39,9,1,14,39,14,39,9,39,9] (hard := []) (by decide +kernel) .nil)

theorem g7975 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7976 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7977 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7978 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [39,7,39,7,39,7,1,1,39,7,39,7,39,7,39,7,39,17,39,17,39,17,39,17,39,17,39,67,1,80,39,17,39,14,39,14,39,7,39,7,39,17,39,17,39,14,39,7,39,17,39,17,39,14,39,14] (hard := []) (by decide +kernel) .nil)

theorem g7979 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7980 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7981 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7982 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
