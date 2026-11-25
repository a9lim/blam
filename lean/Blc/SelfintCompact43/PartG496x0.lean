import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7936 (hard : BadRow [Floor43.e2393379769198,Floor43.e2393382128494,Floor43.e2419191450478,Floor43.e2393421646702,Floor43.e2393407490926]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [39,1,14,1,39,1,39,1,39,1,14,1,39,1,39,1,39,1,39,1,1,0,39,0,14,1,14,1,14,1,14,14,3,48,3,55,0,0,38,48,11,24,36,36,36,36,1,0,3,47,3,82] (hard := [Floor43.e2393379769198,Floor43.e2393382128494,Floor43.e2419191450478,Floor43.e2393421646702,Floor43.e2393407490926]) (by decide +kernel) hard)

theorem g7937 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7938 (hard : BadRow [Floor43.e2393382128502]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [39,1,47,1,39,1,39,1,48,1,39,1,14,1,39,1,39,1,39,1,39,1,36,36,39,0,14,1,14,1,14,1,14,94,3,48,3,93,119,95,37,48,11,13,36,36,36,36,1,88,3,14,3,13] (hard := [Floor43.e2393382128502]) (by decide +kernel) hard)

theorem g7939 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7940 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7941 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7942 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 5 [0,0,1,0,2]

private theorem g7942s0 : BadRow (bg7942 0) :=
  row_of_forall (discharge bank [39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7942s1 : BadRow (bg7942 1) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7942s2 : BadRow (bg7942 2) :=
  row_of_forall (discharge bank [39,1,39,1,39,1,39,1,39,1,39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7942s3 : BadRow (bg7942 3) :=
  row_of_forall (discharge bank [39,1,39,1] (hard := []) (by decide +kernel) .nil)

private theorem g7942s4 (h : BadRow [Floor43.e2393382129262,Floor43.e2393379769262,Floor43.e2419190844974]) : BadRow (bg7942 4) :=
  row_of_forall (discharge bank [39,1,39,1,1,14,39,0,1,0,39,48,37,1,31,1,14,1,14,1,14,1,31,14,14,14,3,0,3,48,3,48,3,48,47,47,120,96,9,47,24,13,9,48,40,13,36,36,36,36,36,36,36,36] (hard := [Floor43.e2393382129262,Floor43.e2393379769262,Floor43.e2419190844974]) (by decide +kernel) h)

private theorem g7942s5 : BadRow (bg7942 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7942s6 : BadRow (bg7942 6) :=
  row_of_forall (discharge bank [1,47,1,14,39,25,39,30,14,14,3,47,3,24,14,60,3,47,3,55] (hard := []) (by decide +kernel) .nil)

private theorem g7942s7 : BadRow (bg7942 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7942 (hard : BadRow [Floor43.e2393382129262,Floor43.e2393379769262,Floor43.e2419190844974]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 5 [0,0,1,0,2] (.cons (g7942s0) (.cons (g7942s1) (.cons (g7942s2) (.cons (g7942s3) (.cons (g7942s4 (.cons (hard.get (by decide : Floor43.e2393382129262 ∈ [Floor43.e2393382129262,Floor43.e2393379769262,Floor43.e2419190844974])) (.cons (hard.get (by decide : Floor43.e2393379769262 ∈ [Floor43.e2393382129262,Floor43.e2393379769262,Floor43.e2419190844974])) (.cons (hard.get (by decide : Floor43.e2419190844974 ∈ [Floor43.e2393382129262,Floor43.e2393379769262,Floor43.e2419190844974])) .nil)))) (.cons (g7942s5) (.cons (g7942s6) (.cons (g7942s7) .nil))))))))

theorem g7943 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7944 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7945 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7946 (hard : BadRow [Floor43.e2393382129274,Floor43.e2419190839010,Floor43.e2393421035234]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [39,1,39,1,1,48,39,25,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,37,39,1,1,14,39,0,39,14,37,31,14,1,14,1,44,14,3,48,3,92,3,0,3,0,47,47,9,47,24,13,36,36,36,36,47,47,3,48,3,12,3,117,3,89,4,48,4,11] (hard := [Floor43.e2393382129274,Floor43.e2419190839010,Floor43.e2393421035234]) (by decide +kernel) hard)

theorem g7947 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
