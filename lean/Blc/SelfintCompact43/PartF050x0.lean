import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f600 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,2,2,2,4,4,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,2,2,2,4,4,7,7,1,1,14,14,142] (hard := []) (by decide +kernel) .nil)

private abbrev bf601 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,0,2]

private theorem f601s0 : BadRow (bf601 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f601s1 : BadRow (bf601 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f601s2 : BadRow (bf601 2) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f601s3 : BadRow (bf601 3) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f601s4 : BadRow (bf601 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f601s5 : BadRow (bf601 5) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f601s6 : BadRow (bf601 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f601s7 : BadRow (bf601 7) :=
  row_of_forall (discharge bank [4,4,2,2,2,2,2,2,2,4,4,4,4,2,2,2,2,7,7,7,7,7,7,7,1,1,1,1,14,14] (hard := []) (by decide +kernel) .nil)

theorem f601 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,0,2] (.cons (f601s0) (.cons (f601s1) (.cons (f601s2) (.cons (f601s3) (.cons (f601s4) (.cons (f601s5) (.cons (f601s6) (.cons (f601s7) .nil))))))))

private abbrev bf602 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,1,1]

private theorem f602s0 : BadRow (bf602 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f602s1 : BadRow (bf602 1) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,2,4,4,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f602s2 : BadRow (bf602 2) :=
  row_of_forall (discharge bank [2,4,4,2,2,4,4,4,2,2,4,4,4,4,4,4,55,47] (hard := []) (by decide +kernel) .nil)

private theorem f602s3 : BadRow (bf602 3) :=
  row_of_forall (discharge bank [2,2,4,4,4,2,4,2,4,4,2] (hard := []) (by decide +kernel) .nil)

private theorem f602s4 : BadRow (bf602 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,2,4,2,4,4,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f602s5 : BadRow (bf602 5) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f602s6 : BadRow (bf602 6) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f602s7 : BadRow (bf602 7) :=
  row_of_forall (discharge bank [4,4,4,2,2,2,2,2,2,4,4,4,7,7,7,7,7,7,7,7,1,1,1,48,14] (hard := []) (by decide +kernel) .nil)

theorem f602 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,1,1] (.cons (f602s0) (.cons (f602s1) (.cons (f602s2) (.cons (f602s3) (.cons (f602s4) (.cons (f602s5) (.cons (f602s6) (.cons (f602s7) .nil))))))))

theorem f603 (hard : BadRow [Floor43.e2423099940410]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,2,2,2,4,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,2,2,2,4,4,7,1,1,1,0,143,40] (hard := [Floor43.e2423099940410]) (by decide +kernel) hard)

theorem f604 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,4,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,1,1,9,9,36,36] (hard := []) (by decide +kernel) .nil)

theorem f605 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,0,4,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,1,1,9,36,14,138,136] (hard := []) (by decide +kernel) .nil)

theorem f606 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

private abbrev bf607 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,1,3]

private theorem f607s0 : BadRow (bf607 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f607s1 : BadRow (bf607 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem f607s2 : BadRow (bf607 2) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f607s3 : BadRow (bf607 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,2,2,2,4,4,14,47] (hard := []) (by decide +kernel) .nil)

private theorem f607s4 : BadRow (bf607 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,2,2,2,2,4,4,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f607s5 : BadRow (bf607 5) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f607s6 : BadRow (bf607 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f607s7 : BadRow (bf607 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,7,7,7,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f607 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,1,3] (.cons (f607s0) (.cons (f607s1) (.cons (f607s2) (.cons (f607s3) (.cons (f607s4) (.cons (f607s5) (.cons (f607s6) (.cons (f607s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
