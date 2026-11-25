import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700686458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75700686458 : ¬ MinimalInterpreter v75700686458 :=
  chain_cut false 2 (by decide)

private def v75700685754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75700685754 : ¬ MinimalInterpreter v75700685754 :=
  chain_cut false 2 (by decide)

private def v75700680314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v75700680314 : ¬ MinimalInterpreter v75700680314 :=
  chain_cut false 2 (by decide)

private def v75700679610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v75700679610 : ¬ MinimalInterpreter v75700679610 :=
  chain_cut false 2 (by decide)

private def v75700678074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v75700678074 : ¬ MinimalInterpreter v75700678074 :=
  chain_cut false 2 (by decide)

private def v75700326010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v75700326010 : ¬ MinimalInterpreter v75700326010 :=
  chain_cut false 2 (by decide)

private def v75700325306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v75700325306 : ¬ MinimalInterpreter v75700325306 :=
  chain_cut false 2 (by decide)

private def v75700319866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v75700319866 : ¬ MinimalInterpreter v75700319866 :=
  chain_cut false 2 (by decide)

private def v75700229754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v75700229754 : ¬ MinimalInterpreter v75700229754 :=
  chain_cut false 2 (by decide)

private def v75700319162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v75700319162 : ¬ MinimalInterpreter v75700319162 :=
  chain_cut false 2 (by decide)

private def v75700317626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v75700317626 : ¬ MinimalInterpreter v75700317626 :=
  chain_cut false 2 (by decide)

private def v75700229050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v75700229050 : ¬ MinimalInterpreter v75700229050 :=
  chain_cut false 2 (by decide)

private def v75700227514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v75700227514 : ¬ MinimalInterpreter v75700227514 :=
  chain_cut false 2 (by decide)

private def v75700204986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v75700204986 : ¬ MinimalInterpreter v75700204986 :=
  chain_cut false 2 (by decide)

private def v75706191482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75706191482 : ¬ MinimalInterpreter v75706191482 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706190778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75706190778 : ¬ MinimalInterpreter v75706190778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706185338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v75706185338 : ¬ MinimalInterpreter v75706185338 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706184634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v75706184634 : ¬ MinimalInterpreter v75706184634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706183098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v75706183098 : ¬ MinimalInterpreter v75706183098 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706338938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75706338938 : ¬ MinimalInterpreter v75706338938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706338234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75706338234 : ¬ MinimalInterpreter v75706338234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75704897146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v75704897146 : ¬ MinimalInterpreter v75704897146 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704896442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v75704896442 : ¬ MinimalInterpreter v75704896442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704841146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0)))))
private theorem no_v75704841146 : ¬ MinimalInterpreter v75704841146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v75704839610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0)))))
private theorem no_v75704839610 : ¬ MinimalInterpreter v75704839610 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row24 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,1,2,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,1,2,0] = [v75700686458,v75700685754,v75700680314,v75700679610,v75700678074,v75700326010,v75700325306,v75700319866,v75700229754,v75700319162,v75700317626,v75700229050,v75700227514,v75700204986,v75706191482,v75706190778,v75706185338,v75706184634,v75706183098,v75706338938,v75706338234,v75704897146,v75704896442,v75704841146,v75704839610] := by decide
  rw [h]
  exact (.cons (no_v75700686458) (.cons (no_v75700685754) (.cons (no_v75700680314) (.cons (no_v75700679610) (.cons (no_v75700678074) (.cons (no_v75700326010) (.cons (no_v75700325306) (.cons (no_v75700319866) (.cons (no_v75700229754) (.cons (no_v75700319162) (.cons (no_v75700317626) (.cons (no_v75700229050) (.cons (no_v75700227514) (.cons (no_v75700204986) (.cons (no_v75706191482) (.cons (no_v75706190778) (.cons (no_v75706185338) (.cons (no_v75706184634) (.cons (no_v75706183098) (.cons (no_v75706338938) (.cons (no_v75706338234) (.cons (no_v75704897146) (.cons (no_v75704896442) (.cons (no_v75704841146) (.cons (no_v75704839610) .nil)))))))))))))))))))))))))

private def v75700686646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v75700686646 : ¬ MinimalInterpreter v75700686646 :=
  chain_cut false 2 (by decide)

private def v75700685782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v75700685782 : ¬ MinimalInterpreter v75700685782 :=
  chain_cut false 2 (by decide)

private def v75700680502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v75700680502 : ¬ MinimalInterpreter v75700680502 :=
  chain_cut false 2 (by decide)

private def v75700679638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v75700679638 : ¬ MinimalInterpreter v75700679638 :=
  chain_cut false 2 (by decide)

private def v75700678102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v75700678102 : ¬ MinimalInterpreter v75700678102 :=
  chain_cut false 2 (by decide)

private def v75700326198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v75700326198 : ¬ MinimalInterpreter v75700326198 :=
  chain_cut false 2 (by decide)

private def v75700325334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v75700325334 : ¬ MinimalInterpreter v75700325334 :=
  chain_cut false 2 (by decide)

private def v75700320054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v75700320054 : ¬ MinimalInterpreter v75700320054 :=
  chain_cut false 2 (by decide)

private def v75700229942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v75700229942 : ¬ MinimalInterpreter v75700229942 :=
  chain_cut false 2 (by decide)

private def v75700319190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v75700319190 : ¬ MinimalInterpreter v75700319190 :=
  chain_cut false 2 (by decide)

private def v75700317654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v75700317654 : ¬ MinimalInterpreter v75700317654 :=
  chain_cut false 2 (by decide)

private def v75700229078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v75700229078 : ¬ MinimalInterpreter v75700229078 :=
  chain_cut false 2 (by decide)

private def v75700227542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v75700227542 : ¬ MinimalInterpreter v75700227542 :=
  chain_cut false 2 (by decide)

private def v75700205014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v75700205014 : ¬ MinimalInterpreter v75700205014 :=
  chain_cut false 2 (by decide)

private def v75706191670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v75706191670 : ¬ MinimalInterpreter v75706191670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706190806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v75706190806 : ¬ MinimalInterpreter v75706190806 :=
  w_cut false 0 (by decide)

private def v75706185526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v75706185526 : ¬ MinimalInterpreter v75706185526 :=
  w_cut false 0 (by decide)

private def v75706184662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v75706184662 : ¬ MinimalInterpreter v75706184662 :=
  w_cut false 0 (by decide)

private def v75706183126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v75706183126 : ¬ MinimalInterpreter v75706183126 :=
  w_cut false 0 (by decide)

private def v75706339126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v75706339126 : ¬ MinimalInterpreter v75706339126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706338262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v75706338262 : ¬ MinimalInterpreter v75706338262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75704897334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v75704897334 : ¬ MinimalInterpreter v75704897334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704896470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v75704896470 : ¬ MinimalInterpreter v75704896470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row25 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,2,0,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,2,0,1] = [v75700686646,v75700685782,v75700680502,v75700679638,v75700678102,v75700326198,v75700325334,v75700320054,v75700229942,v75700319190,v75700317654,v75700229078,v75700227542,v75700205014,v75706191670,v75706190806,v75706185526,v75706184662,v75706183126,v75706339126,v75706338262,v75704897334,v75704896470] := by decide
  rw [h]
  exact (.cons (no_v75700686646) (.cons (no_v75700685782) (.cons (no_v75700680502) (.cons (no_v75700679638) (.cons (no_v75700678102) (.cons (no_v75700326198) (.cons (no_v75700325334) (.cons (no_v75700320054) (.cons (no_v75700229942) (.cons (no_v75700319190) (.cons (no_v75700317654) (.cons (no_v75700229078) (.cons (no_v75700227542) (.cons (no_v75700205014) (.cons (no_v75706191670) (.cons (no_v75706190806) (.cons (no_v75706185526) (.cons (no_v75706184662) (.cons (no_v75706183126) (.cons (no_v75706339126) (.cons (no_v75706338262) (.cons (no_v75704897334) (.cons (no_v75704896470) .nil)))))))))))))))))))))))

private def v75700686650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v75700686650 : ¬ MinimalInterpreter v75700686650 :=
  chain_cut false 2 (by decide)

private def v75700685786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v75700685786 : ¬ MinimalInterpreter v75700685786 :=
  chain_cut false 2 (by decide)

private def v75700680506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v75700680506 : ¬ MinimalInterpreter v75700680506 :=
  chain_cut false 2 (by decide)

private def v75700679642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v75700679642 : ¬ MinimalInterpreter v75700679642 :=
  chain_cut false 2 (by decide)

private def v75700678106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v75700678106 : ¬ MinimalInterpreter v75700678106 :=
  chain_cut false 2 (by decide)

private def v75700326202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v75700326202 : ¬ MinimalInterpreter v75700326202 :=
  chain_cut false 2 (by decide)

private def v75700325338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v75700325338 : ¬ MinimalInterpreter v75700325338 :=
  chain_cut false 2 (by decide)

private def v75700320058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v75700320058 : ¬ MinimalInterpreter v75700320058 :=
  chain_cut false 2 (by decide)

private def v75700229946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v75700229946 : ¬ MinimalInterpreter v75700229946 :=
  chain_cut false 2 (by decide)

private def v75700319194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v75700319194 : ¬ MinimalInterpreter v75700319194 :=
  chain_cut false 2 (by decide)

private def v75700317658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v75700317658 : ¬ MinimalInterpreter v75700317658 :=
  chain_cut false 2 (by decide)

private def v75700229082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v75700229082 : ¬ MinimalInterpreter v75700229082 :=
  chain_cut false 2 (by decide)

private def v75700227546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v75700227546 : ¬ MinimalInterpreter v75700227546 :=
  chain_cut false 2 (by decide)

private def v75700205018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v75700205018 : ¬ MinimalInterpreter v75700205018 :=
  chain_cut false 2 (by decide)

private def v75706191674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v75706191674 : ¬ MinimalInterpreter v75706191674 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706190810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v75706190810 : ¬ MinimalInterpreter v75706190810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706185530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v75706185530 : ¬ MinimalInterpreter v75706185530 :=
  w_cut false 0 (by decide)

private def v75706184666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v75706184666 : ¬ MinimalInterpreter v75706184666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706183130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v75706183130 : ¬ MinimalInterpreter v75706183130 :=
  w_cut false 0 (by decide)

private def v75706339130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v75706339130 : ¬ MinimalInterpreter v75706339130 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706338266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v75706338266 : ¬ MinimalInterpreter v75706338266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75704897338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v75704897338 : ¬ MinimalInterpreter v75704897338 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704896474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v75704896474 : ¬ MinimalInterpreter v75704896474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704841178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0)))))
private theorem no_v75704841178 : ¬ MinimalInterpreter v75704841178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v75704839642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0)))))
private theorem no_v75704839642 : ¬ MinimalInterpreter v75704839642 :=
  w_cut false 0 (by decide)

theorem row26 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,2,1,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,2,1,0] = [v75700686650,v75700685786,v75700680506,v75700679642,v75700678106,v75700326202,v75700325338,v75700320058,v75700229946,v75700319194,v75700317658,v75700229082,v75700227546,v75700205018,v75706191674,v75706190810,v75706185530,v75706184666,v75706183130,v75706339130,v75706338266,v75704897338,v75704896474,v75704841178,v75704839642] := by decide
  rw [h]
  exact (.cons (no_v75700686650) (.cons (no_v75700685786) (.cons (no_v75700680506) (.cons (no_v75700679642) (.cons (no_v75700678106) (.cons (no_v75700326202) (.cons (no_v75700325338) (.cons (no_v75700320058) (.cons (no_v75700229946) (.cons (no_v75700319194) (.cons (no_v75700317658) (.cons (no_v75700229082) (.cons (no_v75700227546) (.cons (no_v75700205018) (.cons (no_v75706191674) (.cons (no_v75706190810) (.cons (no_v75706185530) (.cons (no_v75706184666) (.cons (no_v75706183130) (.cons (no_v75706339130) (.cons (no_v75706338266) (.cons (no_v75704897338) (.cons (no_v75704896474) (.cons (no_v75704841178) (.cons (no_v75704839642) .nil)))))))))))))))))))))))))

private def v75700692590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v75700692590 : ¬ MinimalInterpreter v75700692590 :=
  chain_cut false 2 (by decide)

private def v75700692398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v75700692398 : ¬ MinimalInterpreter v75700692398 :=
  chain_cut false 2 (by decide)

private def v75700681326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v75700681326 : ¬ MinimalInterpreter v75700681326 :=
  chain_cut false 2 (by decide)

private def v75700681134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v75700681134 : ¬ MinimalInterpreter v75700681134 :=
  chain_cut false 2 (by decide)

private def v75700678318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v75700678318 : ¬ MinimalInterpreter v75700678318 :=
  chain_cut false 2 (by decide)

private def v75700332142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v75700332142 : ¬ MinimalInterpreter v75700332142 :=
  chain_cut false 2 (by decide)

private def v75700331950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v75700331950 : ¬ MinimalInterpreter v75700331950 :=
  chain_cut false 2 (by decide)

private def v75700320878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v75700320878 : ¬ MinimalInterpreter v75700320878 :=
  chain_cut false 2 (by decide)

private def v75700230766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v75700230766 : ¬ MinimalInterpreter v75700230766 :=
  chain_cut false 2 (by decide)

private def v75700320686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v75700320686 : ¬ MinimalInterpreter v75700320686 :=
  chain_cut false 2 (by decide)

private def v75700317870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))))))
private theorem no_v75700317870 : ¬ MinimalInterpreter v75700317870 :=
  chain_cut false 2 (by decide)

private def v75700230574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v75700230574 : ¬ MinimalInterpreter v75700230574 :=
  chain_cut false 2 (by decide)

private def v75700227758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v75700227758 : ¬ MinimalInterpreter v75700227758 :=
  chain_cut false 2 (by decide)

private def v75700205230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v75700205230 : ¬ MinimalInterpreter v75700205230 :=
  chain_cut false 2 (by decide)

private def v75706197614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v75706197614 : ¬ MinimalInterpreter v75706197614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706197422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v75706197422 : ¬ MinimalInterpreter v75706197422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706186350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v75706186350 : ¬ MinimalInterpreter v75706186350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706186158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v75706186158 : ¬ MinimalInterpreter v75706186158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706183342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v75706183342 : ¬ MinimalInterpreter v75706183342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row27 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,0,0,2]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,0,0,2] = [v75700692590,v75700692398,v75700681326,v75700681134,v75700678318,v75700332142,v75700331950,v75700320878,v75700230766,v75700320686,v75700317870,v75700230574,v75700227758,v75700205230,v75706197614,v75706197422,v75706186350,v75706186158,v75706183342] := by decide
  rw [h]
  exact (.cons (no_v75700692590) (.cons (no_v75700692398) (.cons (no_v75700681326) (.cons (no_v75700681134) (.cons (no_v75700678318) (.cons (no_v75700332142) (.cons (no_v75700331950) (.cons (no_v75700320878) (.cons (no_v75700230766) (.cons (no_v75700320686) (.cons (no_v75700317870) (.cons (no_v75700230574) (.cons (no_v75700227758) (.cons (no_v75700205230) (.cons (no_v75706197614) (.cons (no_v75706197422) (.cons (no_v75706186350) (.cons (no_v75706186158) (.cons (no_v75706183342) .nil)))))))))))))))))))

theorem row28 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,0,1,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v75700692602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v75700692602 : ¬ MinimalInterpreter v75700692602 :=
  chain_cut false 2 (by decide)

private def v75700692410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v75700692410 : ¬ MinimalInterpreter v75700692410 :=
  chain_cut false 2 (by decide)

private def v75700681338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v75700681338 : ¬ MinimalInterpreter v75700681338 :=
  chain_cut false 2 (by decide)

private def v75700681146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v75700681146 : ¬ MinimalInterpreter v75700681146 :=
  chain_cut false 2 (by decide)

private def v75700678330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v75700678330 : ¬ MinimalInterpreter v75700678330 :=
  chain_cut false 2 (by decide)

private def v75700332154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v75700332154 : ¬ MinimalInterpreter v75700332154 :=
  chain_cut false 2 (by decide)

private def v75700331962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v75700331962 : ¬ MinimalInterpreter v75700331962 :=
  chain_cut false 2 (by decide)

private def v75700320890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v75700320890 : ¬ MinimalInterpreter v75700320890 :=
  chain_cut false 2 (by decide)

private def v75700230778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v75700230778 : ¬ MinimalInterpreter v75700230778 :=
  chain_cut false 2 (by decide)

private def v75700320698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v75700320698 : ¬ MinimalInterpreter v75700320698 :=
  chain_cut false 2 (by decide)

private def v75700317882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v75700317882 : ¬ MinimalInterpreter v75700317882 :=
  chain_cut false 2 (by decide)

private def v75700230586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v75700230586 : ¬ MinimalInterpreter v75700230586 :=
  chain_cut false 2 (by decide)

private def v75700227770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v75700227770 : ¬ MinimalInterpreter v75700227770 :=
  chain_cut false 2 (by decide)

private def v75700205242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v75700205242 : ¬ MinimalInterpreter v75700205242 :=
  chain_cut false 2 (by decide)

private def v75706197626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v75706197626 : ¬ MinimalInterpreter v75706197626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706197434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v75706197434 : ¬ MinimalInterpreter v75706197434 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706186362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v75706186362 : ¬ MinimalInterpreter v75706186362 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706186170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v75706186170 : ¬ MinimalInterpreter v75706186170 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706183354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v75706183354 : ¬ MinimalInterpreter v75706183354 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704842682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))))
private theorem no_v75704842682 : ¬ MinimalInterpreter v75704842682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704839866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))))
private theorem no_v75704839866 : ¬ MinimalInterpreter v75704839866 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row29 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,0,2,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,0,2,0] = [v75700692602,v75700692410,v75700681338,v75700681146,v75700678330,v75700332154,v75700331962,v75700320890,v75700230778,v75700320698,v75700317882,v75700230586,v75700227770,v75700205242,v75706197626,v75706197434,v75706186362,v75706186170,v75706183354,v75704842682,v75704839866] := by decide
  rw [h]
  exact (.cons (no_v75700692602) (.cons (no_v75700692410) (.cons (no_v75700681338) (.cons (no_v75700681146) (.cons (no_v75700678330) (.cons (no_v75700332154) (.cons (no_v75700331962) (.cons (no_v75700320890) (.cons (no_v75700230778) (.cons (no_v75700320698) (.cons (no_v75700317882) (.cons (no_v75700230586) (.cons (no_v75700227770) (.cons (no_v75700205242) (.cons (no_v75706197626) (.cons (no_v75706197434) (.cons (no_v75706186362) (.cons (no_v75706186170) (.cons (no_v75706183354) (.cons (no_v75704842682) (.cons (no_v75704839866) .nil)))))))))))))))))))))

end Blc.SelfintSingleObject.Rows38
