import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f24 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,0,2,0,2]) :=
  row_of_forall (discharge bank [1,25,1,1,1,1,25,1,1,1,1,1,1,1,1,25,1,1,1,1,25,1,25,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

private abbrev bf25 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,0,2,1,1]

private theorem f25s0 : BadRow (bf25 0) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem f25s1 : BadRow (bf25 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f25s2 : BadRow (bf25 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f25s3 : BadRow (bf25 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,48,48,48,48,48,14,14,14,14,14,14,14,14,14,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f25s4 : BadRow (bf25 4) :=
  row_of_forall (discharge bank [4,4,4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

private theorem f25s5 : BadRow (bf25 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f25s6 : BadRow (bf25 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f25s7 : BadRow (bf25 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f25 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,0,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,0,2,1,1] (.cons (f25s0) (.cons (f25s1) (.cons (f25s2) (.cons (f25s3) (.cons (f25s4) (.cons (f25s5) (.cons (f25s6) (.cons (f25s7) .nil))))))))

theorem f26 (hard : BadRow [Floor43.e2423100696506,Floor43.e2423100693434,Floor43.e2423100516282,Floor43.e2423100513210,Floor43.e2423100468154]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,0,2,2,0]) :=
  row_of_forall (discharge bank [30,1,1,1,1,30,1,1,1,1,1,1,1,1,30,1,1,1,1,30,1,30,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,14,14,14,14,14,14,14,14,14,0,0,0,0,0] (hard := [Floor43.e2423100696506,Floor43.e2423100693434,Floor43.e2423100516282,Floor43.e2423100513210,Floor43.e2423100468154]) (by decide +kernel) hard)

private abbrev bf27 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,0,1,2]

private theorem f27s0 : BadRow (bf27 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f27s1 : BadRow (bf27 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f27s2 : BadRow (bf27 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f27s3 : BadRow (bf27 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,1,1,1,48,48,48,48,48,36,36,14,36,48,14,36,14,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f27s4 : BadRow (bf27 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f27s5 : BadRow (bf27 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f27s6 : BadRow (bf27 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f27s7 : BadRow (bf27 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f27 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,0,1,2] (.cons (f27s0) (.cons (f27s1) (.cons (f27s2) (.cons (f27s3) (.cons (f27s4) (.cons (f27s5) (.cons (f27s6) (.cons (f27s7) .nil))))))))

private abbrev bf28 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,0,2,1]

private theorem f28s0 : BadRow (bf28 0) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem f28s1 : BadRow (bf28 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f28s2 : BadRow (bf28 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f28s3 : BadRow (bf28 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,1,1,1,48,48,48,48,48,36,36,14,36,14,14,36,14,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f28s4 : BadRow (bf28 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f28s5 : BadRow (bf28 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f28s6 : BadRow (bf28 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f28s7 : BadRow (bf28 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f28 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,0,2,1] (.cons (f28s0) (.cons (f28s1) (.cons (f28s2) (.cons (f28s3) (.cons (f28s4) (.cons (f28s5) (.cons (f28s6) (.cons (f28s7) .nil))))))))

private abbrev bf29 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,1,0,2]

private theorem f29s0 : BadRow (bf29 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f29s1 : BadRow (bf29 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f29s2 : BadRow (bf29 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f29s3 : BadRow (bf29 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,1,1,1,1,48,48,36,48,36,36,36,36,36,48,36,36,36,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f29s4 : BadRow (bf29 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f29s5 : BadRow (bf29 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f29s6 : BadRow (bf29 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f29s7 : BadRow (bf29 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f29 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,1,0,2] (.cons (f29s0) (.cons (f29s1) (.cons (f29s2) (.cons (f29s3) (.cons (f29s4) (.cons (f29s5) (.cons (f29s6) (.cons (f29s7) .nil))))))))

theorem f30 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f31 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,48,36,36,36,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private abbrev bf32 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,2,0,1]

private theorem f32s0 : BadRow (bf32 0) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem f32s1 : BadRow (bf32 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f32s2 : BadRow (bf32 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f32s3 : BadRow (bf32 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,1,1,1,1,48,48,36,48,36,36,36,36,36,14,36,36,36,36,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f32s4 : BadRow (bf32 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f32s5 : BadRow (bf32 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f32s6 : BadRow (bf32 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f32s7 : BadRow (bf32 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f32 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,2,0,1] (.cons (f32s0) (.cons (f32s1) (.cons (f32s2) (.cons (f32s3) (.cons (f32s4) (.cons (f32s5) (.cons (f32s6) (.cons (f32s7) .nil))))))))

theorem f33 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,48,36,36,36,36,36,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f34 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,0,0,2]) :=
  row_of_forall (discharge bank [1,1,25,25,1,1,1,1,1,1,1,1,1,1,1,1,25,25,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,36,36,14,36,14,14,36,14,36] (hard := []) (by decide +kernel) .nil)

private abbrev bf35 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,0,1,1]

private theorem f35s0 : BadRow (bf35 0) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem f35s1 : BadRow (bf35 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f35s2 : BadRow (bf35 2) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f35s3 : BadRow (bf35 3) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,1,1,1,48,48,48,48,48,36,36,14,36,14,14,36,14,36,36,36,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f35s4 : BadRow (bf35 4) :=
  row_of_forall (discharge bank [4,4,4,4,4,1] (hard := []) (by decide +kernel) .nil)

private theorem f35s5 : BadRow (bf35 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f35s6 : BadRow (bf35 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f35s7 : BadRow (bf35 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,44,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f35 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,1,2,0,1,1] (.cons (f35s0) (.cons (f35s1) (.cons (f35s2) (.cons (f35s3) (.cons (f35s4) (.cons (f35s5) (.cons (f35s6) (.cons (f35s7) .nil))))))))

end Blc.SelfintSingleObject.Compact43
