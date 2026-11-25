import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f36 (hard : BadRow [Floor43.e2423100701114,Floor43.e2423100694202,Floor43.e2423100513978]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,0,2,0]) :=
  row_of_forall (discharge bank [1,1,25,1,25,1,1,1,1,1,25,1,1,1,1,1,25,1,25,1,1,1,1,1,1,1,1,1,1,25,1,1,1,1,25,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,36,36,14,36,14,14,36,14,36,0,0,36,0,36] (hard := [Floor43.e2423100701114,Floor43.e2423100694202,Floor43.e2423100513978]) (by decide +kernel) hard)

private abbrev bf37 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,1,0,1]

private theorem f37s0 : BadRow (bf37 0) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem f37s1 : BadRow (bf37 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f37s2 : BadRow (bf37 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f37s3 : BadRow (bf37 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,1,1,48,48,36,48,36,36,36,36,36,14,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f37s4 : BadRow (bf37 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f37s5 : BadRow (bf37 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f37s6 : BadRow (bf37 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f37s7 : BadRow (bf37 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f37 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,1,0,1] (.cons (f37s0) (.cons (f37s1) (.cons (f37s2) (.cons (f37s3) (.cons (f37s4) (.cons (f37s5) (.cons (f37s6) (.cons (f37s7) .nil))))))))

theorem f38 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,48,36,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f39 (hard : BadRow [Floor43.e2423100701162]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,2,0,0]) :=
  row_of_forall (discharge bank [30,1,1,38,1,1,1,30,1,1,30,1,1,38,1,1,1,1,1,1,1,1,30,1,1,30,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,1,1,14,14,36,14,36,36,36,14,36,36,0,36,36] (hard := [Floor43.e2423100701162]) (by decide +kernel) hard)

theorem f40 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,0,1,2]) :=
  row_of_forall (discharge bank [14,14,48,14,48,25,25,25,14,25,25,48,48,30,14,14,47,14,47,81,47,47,47,47,47,48,48,47,14,48,47,47,30,14,48,48,47,48,47,48,48,48,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,1,1,1,1,48,48,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f41 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,0,2,1]) :=
  row_of_forall (discharge bank [47,14,48,47,47,25,25,25,14,47,47,25,25,48,47,14,47,47,47,48,81,47,47,47,47,48,48,48,47,48,25,25,48,48,48,48,47,47,47,48,48,47,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f42 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,1,0,2]) :=
  row_of_forall (discharge bank [14,14,14,14,14,25,25,25,48,25,25,48,48,30,14,14,14,14,14,81,47,14,14,14,47,14,48,47,14,14,47,14,30,14,14,47,47,14,47,14,47,47,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,1,1,48,1,48,48,1,48,1] (hard := []) (by decide +kernel) .nil)

theorem f43 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f44 (hard : BadRow [Floor43.e2423100748730,Floor43.e2423100747194,Floor43.e2423100527546,Floor43.e2423100526010,Floor43.e2423100470714]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,1,2,0]) :=
  row_of_forall (discharge bank [14,14,14,14,14,25,25,25,48,14,14,25,25,47,14,14,14,14,14,81,47,14,14,14,47,14,48,48,14,14,25,25,47,14,14,47,47,14,47,14,47,48,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,25,48,48,48,48,48,1,1,48,1,48,48,1,48,1,0,0,0,0,0] (hard := [Floor43.e2423100748730,Floor43.e2423100747194,Floor43.e2423100527546,Floor43.e2423100526010,Floor43.e2423100470714]) (by decide +kernel) hard)

theorem f45 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,2,0,1]) :=
  row_of_forall (discharge bank [47,47,14,48,48,25,25,47,25,48,48,25,14,25,48,48,48,48,47,48,48,47,47,48,25,47,48,48,48,48,25,48,25,48,48,81,47,48,25,48,48,48,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f46 (hard : BadRow [Floor43.e2423100748762,Floor43.e2423100747226,Floor43.e2423100527578,Floor43.e2423100526042,Floor43.e2423100470746]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,0,2,1,0]) :=
  row_of_forall (discharge bank [14,47,14,14,14,25,25,47,25,47,14,25,48,25,48,47,48,14,14,81,47,47,47,48,25,48,48,48,14,14,25,128,25,14,14,48,47,48,25,48,48,47,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,1,1,1,1,48,48,1,1,1,0,0,0,0,0] (hard := [Floor43.e2423100748762,Floor43.e2423100747226,Floor43.e2423100527578,Floor43.e2423100526042,Floor43.e2423100470746]) (by decide +kernel) hard)

theorem f47 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,1,0,0,2]) :=
  row_of_forall (discharge bank [14,14,14,14,14,25,25,25,48,25,25,14,48,30,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,30,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,36,36,48,36,48,48,36,48,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
