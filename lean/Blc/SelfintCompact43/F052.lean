import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f624 (hard : BadRow [Floor43.e2423100747898,Floor43.e2423100526714]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,2,2,4,4,1,1,1,0,0] (hard := [Floor43.e2423100747898,Floor43.e2423100526714]) (by decide +kernel) hard)

private abbrev bf625 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,0,2]

private theorem f625s0 (h : BadRow [Floor43.e2423100750350]) : BadRow (bf625 0) :=
  row_of_forall (discharge bank [2,2,4,4,0] (hard := [Floor43.e2423100750350]) (by decide +kernel) h)

private theorem f625s1 : BadRow (bf625 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f625s2 : BadRow (bf625 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f625s3 : BadRow (bf625 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f625s4 : BadRow (bf625 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f625s5 : BadRow (bf625 5) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,24,55] (hard := []) (by decide +kernel) .nil)

private theorem f625s6 : BadRow (bf625 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f625s7 : BadRow (bf625 7) :=
  row_of_forall (discharge bank [2,2,2,4,4,2,2,2,2,2,4,4,4,4,4,48,14,9,14,9] (hard := []) (by decide +kernel) .nil)

theorem f625 (hard : BadRow [Floor43.e2423100750350]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,0,2] (.cons (f625s0 (.cons (hard.get (by decide : Floor43.e2423100750350 ∈ [Floor43.e2423100750350])) .nil)) (.cons (f625s1) (.cons (f625s2) (.cons (f625s3) (.cons (f625s4) (.cons (f625s5) (.cons (f625s6) (.cons (f625s7) .nil))))))))

private abbrev bf626 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,1,1]

private theorem f626s0 : BadRow (bf626 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f626s1 : BadRow (bf626 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f626s2 (h : BadRow [Floor43.e2423100750022]) : BadRow (bf626 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,0,148] (hard := [Floor43.e2423100750022]) (by decide +kernel) h)

private theorem f626s3 : BadRow (bf626 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f626s4 : BadRow (bf626 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f626s5 : BadRow (bf626 5) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f626s6 : BadRow (bf626 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f626s7 : BadRow (bf626 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,14,9,48,9,9] (hard := []) (by decide +kernel) .nil)

theorem f626 (hard : BadRow [Floor43.e2423100750022]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,1,1] (.cons (f626s0) (.cons (f626s1) (.cons (f626s2 (.cons (hard.get (by decide : Floor43.e2423100750022 ∈ [Floor43.e2423100750022])) .nil)) (.cons (f626s3) (.cons (f626s4) (.cons (f626s5) (.cons (f626s6) (.cons (f626s7) .nil))))))))

theorem f627 (hard : BadRow [Floor43.e2423100749882]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,4,4,4,4,2,4,4,14,48,9,24,0,47] (hard := [Floor43.e2423100749882]) (by decide +kernel) hard)

theorem f628 (hard : BadRow [Floor43.e2423101591350,Floor43.e2423101590486]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,4,4,4,4,9,9,0,0] (hard := [Floor43.e2423101591350,Floor43.e2423101590486]) (by decide +kernel) hard)

theorem f629 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,4,4,4,2,4,9,9,48,48] (hard := []) (by decide +kernel) .nil)

theorem f630 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,2,2,4,4,4,4,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f631 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,3,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,7,7,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f632 (hard : BadRow [Floor43.e2423100008134]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,3,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,2,2,4,4,2,4,4,4,4,4,4,4,4,2,4,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,7,7,7,7,7,7,7,7,0,64] (hard := [Floor43.e2423100008134]) (by decide +kernel) hard)

theorem f633 (hard : BadRow [Floor43.e2423100007994,Floor43.e2423099947578]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,3,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,2,2,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,7,7,7,0,0] (hard := [Floor43.e2423100007994,Floor43.e2423099947578]) (by decide +kernel) hard)

theorem f634 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,3,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,2,2,4,2,4,4,2,4,4,4,4,2,2,4,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,7,7,7,7,7,47] (hard := []) (by decide +kernel) .nil)

theorem f635 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,3,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,2,4,4,2,4,4,4,2,4,2,4,4,2,4,4,4,4,4,4,4,4,4,4,4,2,2,2,7,7,7,7,48,138] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
