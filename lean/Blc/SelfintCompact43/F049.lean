import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f588 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,0,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,1,1,1,36,9,14,160,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f589 (hard : BadRow [Floor43.e2423217380382]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,2,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,2,4,4,2,4,4,7,7,7,7,1,1,1,1,1,1,36,102,14,0,47,36,36,36] (hard := [Floor43.e2423217380382]) (by decide +kernel) hard)

theorem f590 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,2,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,2,4,4,2,4,4,7,7,7,7,1,1,1,1,1,1,64,157,14,47,48,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f591 (hard : BadRow [Floor43.e2423179624950]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,0,4,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,1,1,1,0,9,14,47,36,36,36] (hard := [Floor43.e2423179624950]) (by decide +kernel) hard)

private abbrev bf592 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,0,4]

private theorem f592s0 : BadRow (bf592 0) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem f592s1 : BadRow (bf592 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f592s2 : BadRow (bf592 2) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f592s3 : BadRow (bf592 3) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f592s4 : BadRow (bf592 4) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f592s5 : BadRow (bf592 5) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f592s6 : BadRow (bf592 6) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f592s7 (h : BadRow [Floor43.e2423179679806]) : BadRow (bf592 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,35,1,1,1,0,36,9,9,14,47,162,48] (hard := [Floor43.e2423179679806]) (by decide +kernel) h)

theorem f592 (hard : BadRow [Floor43.e2423179679806]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,0,4] (.cons (f592s0) (.cons (f592s1) (.cons (f592s2) (.cons (f592s3) (.cons (f592s4) (.cons (f592s5) (.cons (f592s6) (.cons (f592s7 (.cons (hard.get (by decide : Floor43.e2423179679806 ∈ [Floor43.e2423179679806])) .nil)) .nil))))))))

private abbrev bf593 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,1,3]

private theorem f593s0 : BadRow (bf593 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f593s1 : BadRow (bf593 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f593s2 : BadRow (bf593 2) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f593s3 : BadRow (bf593 3) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f593s4 : BadRow (bf593 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,2,2,2,2,4,4,4,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f593s5 : BadRow (bf593 5) :=
  row_of_forall (discharge bank [2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f593s6 : BadRow (bf593 6) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f593s7 : BadRow (bf593 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,2,4,2,4,7,7,7,7,7,35,1,1,1,144,103,48] (hard := []) (by decide +kernel) .nil)

theorem f593 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,1,3] (.cons (f593s0) (.cons (f593s1) (.cons (f593s2) (.cons (f593s3) (.cons (f593s4) (.cons (f593s5) (.cons (f593s6) (.cons (f593s7) .nil))))))))

private abbrev bf594 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,2,2]

private theorem f594s0 : BadRow (bf594 0) :=
  row_of_forall (discharge bank [4,4,4,14] (hard := []) (by decide +kernel) .nil)

private theorem f594s1 : BadRow (bf594 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f594s2 : BadRow (bf594 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f594s3 : BadRow (bf594 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f594s4 : BadRow (bf594 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f594s5 : BadRow (bf594 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f594s6 : BadRow (bf594 6) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f594s7 : BadRow (bf594 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,37,1,44,1,1,1,1,1,48,82,163,47] (hard := []) (by decide +kernel) .nil)

theorem f594 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,2,2] (.cons (f594s0) (.cons (f594s1) (.cons (f594s2) (.cons (f594s3) (.cons (f594s4) (.cons (f594s5) (.cons (f594s6) (.cons (f594s7) .nil))))))))

private abbrev bf595 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,3,1]

private theorem f595s0 : BadRow (bf595 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f595s1 : BadRow (bf595 1) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,2,36] (hard := []) (by decide +kernel) .nil)

private theorem f595s2 : BadRow (bf595 2) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,2,4,4,2,4,4,4,4,60,144] (hard := []) (by decide +kernel) .nil)

private theorem f595s3 : BadRow (bf595 3) :=
  row_of_forall (discharge bank [2,2,2,4,2,4,4,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem f595s4 : BadRow (bf595 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,2,4,4,2,2,2,4,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f595s5 : BadRow (bf595 5) :=
  row_of_forall (discharge bank [2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f595s6 : BadRow (bf595 6) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f595s7 : BadRow (bf595 7) :=
  row_of_forall (discharge bank [2,4,2,4,4,2,2,2,2,2,2,2,2,2,4,4,2,2,7,7,7,7,7,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f595 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,3,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,3,1] (.cons (f595s0) (.cons (f595s1) (.cons (f595s2) (.cons (f595s3) (.cons (f595s4) (.cons (f595s5) (.cons (f595s6) (.cons (f595s7) .nil))))))))

theorem f596 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,1,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,1,9,36,14,139,106] (hard := []) (by decide +kernel) .nil)

private abbrev bf597 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,0,3]

private theorem f597s0 : BadRow (bf597 0) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f597s1 : BadRow (bf597 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f597s2 : BadRow (bf597 2) :=
  row_of_forall (discharge bank [2,2,4,4,4,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f597s3 : BadRow (bf597 3) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f597s4 : BadRow (bf597 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f597s5 : BadRow (bf597 5) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem f597s6 : BadRow (bf597 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f597s7 (h : BadRow [Floor43.e2423179693086,Floor43.e2423217441822,Floor43.e2423217386526]) : BadRow (bf597 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4,4,2,2,4,4,2,2,4,4,7,7,1,31,1,1,1,1,1,0,36,0,0] (hard := [Floor43.e2423179693086,Floor43.e2423217441822,Floor43.e2423217386526]) (by decide +kernel) h)

theorem f597 (hard : BadRow [Floor43.e2423179693086,Floor43.e2423217441822,Floor43.e2423217386526]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,0,3] (.cons (f597s0) (.cons (f597s1) (.cons (f597s2) (.cons (f597s3) (.cons (f597s4) (.cons (f597s5) (.cons (f597s6) (.cons (f597s7 (.cons (hard.get (by decide : Floor43.e2423179693086 ∈ [Floor43.e2423179693086,Floor43.e2423217441822,Floor43.e2423217386526])) (.cons (hard.get (by decide : Floor43.e2423217441822 ∈ [Floor43.e2423179693086,Floor43.e2423217441822,Floor43.e2423217386526])) (.cons (hard.get (by decide : Floor43.e2423217386526 ∈ [Floor43.e2423179693086,Floor43.e2423217441822,Floor43.e2423217386526])) .nil)))) .nil))))))))

private abbrev bf598 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,1,2]

private theorem f598s0 : BadRow (bf598 0) :=
  row_of_forall (discharge bank [2,2,4,4,4,14] (hard := []) (by decide +kernel) .nil)

private theorem f598s1 : BadRow (bf598 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f598s2 : BadRow (bf598 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f598s3 : BadRow (bf598 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f598s4 : BadRow (bf598 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f598s5 : BadRow (bf598 5) :=
  row_of_forall (discharge bank [2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f598s6 : BadRow (bf598 6) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f598s7 : BadRow (bf598 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,2,4,4,2,4,4,1,38,1,1,38,1,1,1,48,40,164,48] (hard := []) (by decide +kernel) .nil)

theorem f598 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,1,2] (.cons (f598s0) (.cons (f598s1) (.cons (f598s2) (.cons (f598s3) (.cons (f598s4) (.cons (f598s5) (.cons (f598s6) (.cons (f598s7) .nil))))))))

private abbrev bf599 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,2,1]

private theorem f599s0 : BadRow (bf599 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f599s1 : BadRow (bf599 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,36] (hard := []) (by decide +kernel) .nil)

private theorem f599s2 : BadRow (bf599 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,40,106] (hard := []) (by decide +kernel) .nil)

private theorem f599s3 : BadRow (bf599 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f599s4 : BadRow (bf599 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f599s5 : BadRow (bf599 5) :=
  row_of_forall (discharge bank [2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f599s6 : BadRow (bf599 6) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f599s7 : BadRow (bf599 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,2,4,2,4,38,44,1,1,38,1,1,102,161] (hard := []) (by decide +kernel) .nil)

theorem f599 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,2,1] (.cons (f599s0) (.cons (f599s1) (.cons (f599s2) (.cons (f599s3) (.cons (f599s4) (.cons (f599s5) (.cons (f599s6) (.cons (f599s7) .nil))))))))

end Blc.SelfintSingleObject.Compact43
