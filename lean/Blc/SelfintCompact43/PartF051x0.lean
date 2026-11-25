import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f612 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,4,4,14,155] (hard := []) (by decide +kernel) .nil)

theorem f613 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,4,4,4,4,14,14,47,103] (hard := []) (by decide +kernel) .nil)

theorem f614 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,4,2,4,4,4,4,2,4,2,2,2,2,4,4,4,2,4,2,4,4,2,4,4,4,4,4,4,2,2,2,2,2,2,4,2,4,7,7,14,24,24,145] (hard := []) (by decide +kernel) .nil)

private abbrev bf615 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,1,2,0,2]

private theorem f615s0 : BadRow (bf615 0) :=
  row_of_forall (discharge bank [2,2,2,4,4,144] (hard := []) (by decide +kernel) .nil)

private theorem f615s1 : BadRow (bf615 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f615s2 : BadRow (bf615 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f615s3 (h : BadRow [Floor43.e2423106075022]) : BadRow (bf615 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,0,92] (hard := [Floor43.e2423106075022]) (by decide +kernel) h)

private theorem f615s4 : BadRow (bf615 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f615s5 : BadRow (bf615 5) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f615s6 : BadRow (bf615 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f615s7 : BadRow (bf615 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,14,14,10,44,14] (hard := []) (by decide +kernel) .nil)

theorem f615 (hard : BadRow [Floor43.e2423106075022]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,1,2,0,2] (.cons (f615s0) (.cons (f615s1) (.cons (f615s2) (.cons (f615s3 (.cons (hard.get (by decide : Floor43.e2423106075022 ∈ [Floor43.e2423106075022])) .nil)) (.cons (f615s4) (.cons (f615s5) (.cons (f615s6) (.cons (f615s7) .nil))))))))

theorem f616 (hard : BadRow [Floor43.e2423106075078]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,2,2,4,4,4,4,4,11,13,0,47,144] (hard := [Floor43.e2423106075078]) (by decide +kernel) hard)

theorem f617 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,4,4,4,4,4,4,11,10,13,13,144,12] (hard := []) (by decide +kernel) .nil)

theorem f618 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,4,2,4,4,4,4,4,2,2,2,4,4,4,4,2,4,2,2,2,4,4,4,2,4,2,4,4,4,4,4,4,4,2,2,2,2,2,2,2,2,2,7,7,7,73,47,11] (hard := []) (by decide +kernel) .nil)

theorem f619 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,4,4,4,2,2,2,4,2,4,2,4,4,2,2,2,4,4,2,2,4,4,2,4,4,4,4,2,2,2,2,2,2,2,7,7,73,11] (hard := []) (by decide +kernel) .nil)

theorem f620 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,4,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,44] (hard := []) (by decide +kernel) .nil)

theorem f621 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private abbrev bf622 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,1,2]

private theorem f622s0 (h : BadRow [Floor43.e2423100528142]) : BadRow (bf622 0) :=
  row_of_forall (discharge bank [2,4,4,4,4,151,0] (hard := [Floor43.e2423100528142]) (by decide +kernel) h)

private theorem f622s1 : BadRow (bf622 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f622s2 : BadRow (bf622 2) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f622s3 : BadRow (bf622 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f622s4 : BadRow (bf622 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f622s5 : BadRow (bf622 5) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,47] (hard := []) (by decide +kernel) .nil)

private theorem f622s6 : BadRow (bf622 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem f622s7 : BadRow (bf622 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f622 (hard : BadRow [Floor43.e2423100528142]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,1,2] (.cons (f622s0 (.cons (hard.get (by decide : Floor43.e2423100528142 ∈ [Floor43.e2423100528142])) .nil)) (.cons (f622s1) (.cons (f622s2) (.cons (f622s3) (.cons (f622s4) (.cons (f622s5) (.cons (f622s6) (.cons (f622s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
