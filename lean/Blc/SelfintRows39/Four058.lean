import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684677742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v690684677742 : ¬ MinimalInterpreter v690684677742 :=
  cost_cut false 1 (by decide)
private def v690684677038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v690684677038 : ¬ MinimalInterpreter v690684677038 :=
  cost_cut false 1 (by decide)
private def v690684622446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v690684622446 : ¬ MinimalInterpreter v690684622446 :=
  cost_cut false 1 (by decide)
private def v690684621742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v690684621742 : ¬ MinimalInterpreter v690684621742 :=
  cost_cut false 1 (by decide)
private def v690684607918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v690684607918 : ¬ MinimalInterpreter v690684607918 :=
  cost_cut false 1 (by decide)
private def v690685426062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v690685426062 : ¬ MinimalInterpreter v690685426062 :=
  cost_cut false 1 (by decide)
private def v690685423246 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))))
private theorem no_v690685423246 : ¬ MinimalInterpreter v690685423246 :=
  cost_cut false 1 (by decide)
private def v690685204878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v690685204878 : ¬ MinimalInterpreter v690685204878 :=
  cost_cut false 1 (by decide)
private def v690685202062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2)))))))
private theorem no_v690685202062 : ¬ MinimalInterpreter v690685202062 :=
  cost_cut false 1 (by decide)
private def v690685146766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v690685146766 : ¬ MinimalInterpreter v690685146766 :=
  cost_cut false 1 (by decide)
theorem row348 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,1,0,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,1,0,2] = [v690684677742,v690684677038,v690684622446,v690684621742,v690684607918,v690685426062,v690685423246,v690685204878,v690685202062,v690685146766] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677742) (.cons (no_v690684677038) (.cons (no_v690684622446) (.cons (no_v690684621742) (.cons (no_v690684607918) (.cons (no_v690685426062) (.cons (no_v690685423246) (.cons (no_v690685204878) (.cons (no_v690685202062) (.cons (no_v690685146766) .nil))))))))))

private def v690685425782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v690685425782 : ¬ MinimalInterpreter v690685425782 :=
  cost_cut false 1 (by decide)
private def v690685426118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v690685426118 : ¬ MinimalInterpreter v690685426118 :=
  cost_cut false 1 (by decide)
private def v690685423302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))))
private theorem no_v690685423302 : ¬ MinimalInterpreter v690685423302 :=
  cost_cut false 1 (by decide)
private def v690685423158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))
private theorem no_v690685423158 : ¬ MinimalInterpreter v690685423158 :=
  cost_cut false 1 (by decide)
private def v690685204598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v690685204598 : ¬ MinimalInterpreter v690685204598 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685204934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v690685204934 : ¬ MinimalInterpreter v690685204934 :=
  cost_cut false 1 (by decide)
private def v690685199990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))))
private theorem no_v690685199990 : ¬ MinimalInterpreter v690685199990 :=
  cost_cut false 1 (by decide)
private def v690685202118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))
private theorem no_v690685202118 : ¬ MinimalInterpreter v690685202118 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685146822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v690685146822 : ¬ MinimalInterpreter v690685146822 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685199286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.var 1))))))
private theorem no_v690685199286 : ¬ MinimalInterpreter v690685199286 :=
  cost_cut false 1 (by decide)
private def v690685201974 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))))
private theorem no_v690685201974 : ¬ MinimalInterpreter v690685201974 :=
  cost_cut false 1 (by decide)
private def v690685146678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 1))))))
private theorem no_v690685146678 : ¬ MinimalInterpreter v690685146678 :=
  cost_cut false 1 (by decide)
private def v690685145526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 1))))))
private theorem no_v690685145526 : ¬ MinimalInterpreter v690685145526 :=
  cost_cut false 1 (by decide)
theorem row349 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,1,1,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,1,1,1] = [v690685425782,v690685426118,v690685423302,v690685423158,v690685204598,v690685204934,v690685199990,v690685202118,v690685146822,v690685199286,v690685201974,v690685146678,v690685145526] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685425782) (.cons (no_v690685426118) (.cons (no_v690685423302) (.cons (no_v690685423158) (.cons (no_v690685204598) (.cons (no_v690685204934) (.cons (no_v690685199990) (.cons (no_v690685202118) (.cons (no_v690685146822) (.cons (no_v690685199286) (.cons (no_v690685201974) (.cons (no_v690685146678) (.cons (no_v690685145526) .nil)))))))))))))

private def v690684677754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v690684677754 : ¬ MinimalInterpreter v690684677754 :=
  cost_cut false 1 (by decide)
private def v690684677050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v690684677050 : ¬ MinimalInterpreter v690684677050 :=
  cost_cut false 1 (by decide)
private def v690684622458 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v690684622458 : ¬ MinimalInterpreter v690684622458 :=
  cost_cut false 1 (by decide)
private def v690684621754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v690684621754 : ¬ MinimalInterpreter v690684621754 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690684607930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v690684607930 : ¬ MinimalInterpreter v690684607930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690685423162 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 2))) (.var 0)))))))
private theorem no_v690685423162 : ¬ MinimalInterpreter v690685423162 :=
  cost_cut false 1 (by decide)
private def v690685199290 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v690685199290 : ¬ MinimalInterpreter v690685199290 :=
  cost_cut false 1 (by decide)
private def v690685201978 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0))))))
private theorem no_v690685201978 : ¬ MinimalInterpreter v690685201978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685146682 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0))))))
private theorem no_v690685146682 : ¬ MinimalInterpreter v690685146682 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row350 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,1,2,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,1,2,0] = [v690684677754,v690684677050,v690684622458,v690684621754,v690684607930,v690685423162,v690685199290,v690685201978,v690685146682] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677754) (.cons (no_v690684677050) (.cons (no_v690684622458) (.cons (no_v690684621754) (.cons (no_v690684607930) (.cons (no_v690685423162) (.cons (no_v690685199290) (.cons (no_v690685201978) (.cons (no_v690685146682) .nil)))))))))

private def v690684677942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v690684677942 : ¬ MinimalInterpreter v690684677942 :=
  cost_cut false 1 (by decide)
private def v690684677078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v690684677078 : ¬ MinimalInterpreter v690684677078 :=
  cost_cut false 1 (by decide)
private def v690684622646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v690684622646 : ¬ MinimalInterpreter v690684622646 :=
  cost_cut false 1 (by decide)
private def v690684621782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v690684621782 : ¬ MinimalInterpreter v690684621782 :=
  cost_cut false 1 (by decide)
private def v690684607958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v690684607958 : ¬ MinimalInterpreter v690684607958 :=
  cost_cut false 1 (by decide)
private def v690685200182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v690685200182 : ¬ MinimalInterpreter v690685200182 :=
  cost_cut false 1 (by decide)
private def v690685145558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v690685145558 : ¬ MinimalInterpreter v690685145558 :=
  cost_cut false 1 (by decide)
theorem row351 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,2,0,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,2,0,1] = [v690684677942,v690684677078,v690684622646,v690684621782,v690684607958,v690685200182,v690685145558] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677942) (.cons (no_v690684677078) (.cons (no_v690684622646) (.cons (no_v690684621782) (.cons (no_v690684607958) (.cons (no_v690685200182) (.cons (no_v690685145558) .nil)))))))

private def v690684677946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v690684677946 : ¬ MinimalInterpreter v690684677946 :=
  cost_cut false 1 (by decide)
private def v690684677082 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v690684677082 : ¬ MinimalInterpreter v690684677082 :=
  cost_cut false 1 (by decide)
private def v690684622650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v690684622650 : ¬ MinimalInterpreter v690684622650 :=
  cost_cut false 1 (by decide)
private def v690684621786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v690684621786 : ¬ MinimalInterpreter v690684621786 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690684607962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v690684607962 : ¬ MinimalInterpreter v690684607962 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))
private def v690685200186 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v690685200186 : ¬ MinimalInterpreter v690685200186 :=
  cost_cut false 1 (by decide)
private def v690685199322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v690685199322 : ¬ MinimalInterpreter v690685199322 :=
  cost_cut false 1 (by decide)
private def v690685145562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v690685145562 : ¬ MinimalInterpreter v690685145562 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row352 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,2,1,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,2,1,0] = [v690684677946,v690684677082,v690684622650,v690684621786,v690684607962,v690685200186,v690685199322,v690685145562] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677946) (.cons (no_v690684677082) (.cons (no_v690684622650) (.cons (no_v690684621786) (.cons (no_v690684607962) (.cons (no_v690685200186) (.cons (no_v690685199322) (.cons (no_v690685145562) .nil))))))))

private def v690684678042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v690684678042 : ¬ MinimalInterpreter v690684678042 :=
  cost_cut false 1 (by decide)
private def v690684677098 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v690684677098 : ¬ MinimalInterpreter v690684677098 :=
  cost_cut false 1 (by decide)
private def v690684622746 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v690684622746 : ¬ MinimalInterpreter v690684622746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684621802 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v690684621802 : ¬ MinimalInterpreter v690684621802 :=
  cost_cut false 1 (by decide)
private def v690684607978 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v690684607978 : ¬ MinimalInterpreter v690684607978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row353 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,3,0,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,3,0,0] = [v690684678042,v690684677098,v690684622746,v690684621802,v690684607978] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684678042) (.cons (no_v690684677098) (.cons (no_v690684622746) (.cons (no_v690684621802) (.cons (no_v690684607978) .nil)))))

end Blc.SelfintSingleObject.Rows39
