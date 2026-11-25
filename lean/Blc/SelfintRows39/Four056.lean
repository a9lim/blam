import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690685369454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v690685369454 : ¬ MinimalInterpreter v690685369454 :=
  cost_cut false 1 (by decide)
private def v690685185262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v690685185262 : ¬ MinimalInterpreter v690685185262 :=
  cost_cut false 1 (by decide)
private def v690685183854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v690685183854 : ¬ MinimalInterpreter v690685183854 :=
  cost_cut false 1 (by decide)
private def v690685189230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v690685189230 : ¬ MinimalInterpreter v690685189230 :=
  cost_cut false 1 (by decide)
private def v690685144174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v690685144174 : ¬ MinimalInterpreter v690685144174 :=
  cost_cut false 1 (by decide)
private def v690685141870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v690685141870 : ¬ MinimalInterpreter v690685141870 :=
  cost_cut false 1 (by decide)
private def v690688121966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v690688121966 : ¬ MinimalInterpreter v690688121966 :=
  cost_cut false 1 (by decide)
theorem row336 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,1,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,1,2] = [v690685369454,v690685185262,v690685183854,v690685189230,v690685144174,v690685141870,v690688121966] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685369454) (.cons (no_v690685185262) (.cons (no_v690685183854) (.cons (no_v690685189230) (.cons (no_v690685144174) (.cons (no_v690685141870) (.cons (no_v690688121966) .nil)))))))

private def v690685375430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v690685375430 : ¬ MinimalInterpreter v690685375430 :=
  cost_cut false 1 (by decide)
private def v690685369798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v690685369798 : ¬ MinimalInterpreter v690685369798 :=
  cost_cut false 1 (by decide)
private def v690685195206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v690685195206 : ¬ MinimalInterpreter v690685195206 :=
  cost_cut false 1 (by decide)
private def v690685185270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v690685185270 : ¬ MinimalInterpreter v690685185270 :=
  cost_cut false 1 (by decide)
private def v690685189574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v690685189574 : ¬ MinimalInterpreter v690685189574 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685144518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v690685144518 : ¬ MinimalInterpreter v690685144518 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685141878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v690685141878 : ¬ MinimalInterpreter v690685141878 :=
  cost_cut false 1 (by decide)
private def v690688127942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v690688127942 : ¬ MinimalInterpreter v690688127942 :=
  cost_cut false 1 (by decide)
private def v690688122310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v690688122310 : ¬ MinimalInterpreter v690688122310 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row337 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,2,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,2,1] = [v690685375430,v690685369798,v690685195206,v690685185270,v690685189574,v690685144518,v690685141878,v690688127942,v690688122310] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685375430) (.cons (no_v690685369798) (.cons (no_v690685195206) (.cons (no_v690685185270) (.cons (no_v690685189574) (.cons (no_v690685144518) (.cons (no_v690685141878) (.cons (no_v690688127942) (.cons (no_v690688122310) .nil)))))))))

private def v690684665082 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v690684665082 : ¬ MinimalInterpreter v690684665082 :=
  cost_cut false 1 (by decide)
private def v690684663674 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v690684663674 : ¬ MinimalInterpreter v690684663674 :=
  cost_cut false 1 (by decide)
private def v690684620026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v690684620026 : ¬ MinimalInterpreter v690684620026 :=
  cost_cut false 1 (by decide)
private def v690684618618 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v690684618618 : ¬ MinimalInterpreter v690684618618 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684607354 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v690684607354 : ¬ MinimalInterpreter v690684607354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690685369466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v690685369466 : ¬ MinimalInterpreter v690685369466 :=
  cost_cut false 1 (by decide)
private def v690685183866 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 0))))))
private theorem no_v690685183866 : ¬ MinimalInterpreter v690685183866 :=
  cost_cut false 1 (by decide)
private def v690685189242 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v690685189242 : ¬ MinimalInterpreter v690685189242 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v690685144186 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v690685144186 : ¬ MinimalInterpreter v690685144186 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v690688105722 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v690688105722 : ¬ MinimalInterpreter v690688105722 :=
  cost_cut false 1 (by decide)
private def v690688104314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v690688104314 : ¬ MinimalInterpreter v690688104314 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v690688121978 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v690688121978 : ¬ MinimalInterpreter v690688121978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row338 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,3,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,3,0] = [v690684665082,v690684663674,v690684620026,v690684618618,v690684607354,v690685369466,v690685183866,v690685189242,v690685144186,v690688105722,v690688104314,v690688121978] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684665082) (.cons (no_v690684663674) (.cons (no_v690684620026) (.cons (no_v690684618618) (.cons (no_v690684607354) (.cons (no_v690685369466) (.cons (no_v690685183866) (.cons (no_v690685189242) (.cons (no_v690685144186) (.cons (no_v690688105722) (.cons (no_v690688104314) (.cons (no_v690688121978) .nil))))))))))))

private def v690684665454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v690684665454 : ¬ MinimalInterpreter v690684665454 :=
  cost_cut false 1 (by decide)
private def v690684663726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v690684663726 : ¬ MinimalInterpreter v690684663726 :=
  cost_cut false 1 (by decide)
private def v690684620398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v690684620398 : ¬ MinimalInterpreter v690684620398 :=
  cost_cut false 1 (by decide)
private def v690684618670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v690684618670 : ¬ MinimalInterpreter v690684618670 :=
  cost_cut false 1 (by decide)
private def v690684607406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v690684607406 : ¬ MinimalInterpreter v690684607406 :=
  cost_cut false 1 (by decide)
private def v690685376910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v690685376910 : ¬ MinimalInterpreter v690685376910 :=
  cost_cut false 1 (by decide)
private def v690685369998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v690685369998 : ¬ MinimalInterpreter v690685369998 :=
  cost_cut false 1 (by decide)
private def v690685196686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v690685196686 : ¬ MinimalInterpreter v690685196686 :=
  cost_cut false 1 (by decide)
private def v690685185646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v690685185646 : ¬ MinimalInterpreter v690685185646 :=
  cost_cut false 1 (by decide)
private def v690685189774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v690685189774 : ¬ MinimalInterpreter v690685189774 :=
  cost_cut false 1 (by decide)
private def v690685144718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v690685144718 : ¬ MinimalInterpreter v690685144718 :=
  cost_cut false 1 (by decide)
private def v690685141934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v690685141934 : ¬ MinimalInterpreter v690685141934 :=
  cost_cut false 1 (by decide)
private def v690688129422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v690688129422 : ¬ MinimalInterpreter v690688129422 :=
  cost_cut false 1 (by decide)
private def v690688122510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v690688122510 : ¬ MinimalInterpreter v690688122510 :=
  cost_cut false 1 (by decide)
theorem row339 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,2,0,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,2,0,2] = [v690684665454,v690684663726,v690684620398,v690684618670,v690684607406,v690685376910,v690685369998,v690685196686,v690685185646,v690685189774,v690685144718,v690685141934,v690688129422,v690688122510] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684665454) (.cons (no_v690684663726) (.cons (no_v690684620398) (.cons (no_v690684618670) (.cons (no_v690684607406) (.cons (no_v690685376910) (.cons (no_v690685369998) (.cons (no_v690685196686) (.cons (no_v690685185646) (.cons (no_v690685189774) (.cons (no_v690685144718) (.cons (no_v690685141934) (.cons (no_v690688129422) (.cons (no_v690688122510) .nil))))))))))))))

private def v690685376630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v690685376630 : ¬ MinimalInterpreter v690685376630 :=
  cost_cut false 1 (by decide)
private def v690685376966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v690685376966 : ¬ MinimalInterpreter v690685376966 :=
  cost_cut false 1 (by decide)
private def v690685370054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v690685370054 : ¬ MinimalInterpreter v690685370054 :=
  cost_cut false 1 (by decide)
private def v690685369910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v690685369910 : ¬ MinimalInterpreter v690685369910 :=
  cost_cut false 1 (by decide)
private def v690685196406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v690685196406 : ¬ MinimalInterpreter v690685196406 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685196742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v690685196742 : ¬ MinimalInterpreter v690685196742 :=
  cost_cut false 1 (by decide)
private def v690685189830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v690685189830 : ¬ MinimalInterpreter v690685189830 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685144774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v690685144774 : ¬ MinimalInterpreter v690685144774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685189686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v690685189686 : ¬ MinimalInterpreter v690685189686 :=
  cost_cut false 1 (by decide)
private def v690685144630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v690685144630 : ¬ MinimalInterpreter v690685144630 :=
  cost_cut false 1 (by decide)
private def v690688129478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v690688129478 : ¬ MinimalInterpreter v690688129478 :=
  cost_cut false 1 (by decide)
private def v690688122566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v690688122566 : ¬ MinimalInterpreter v690688122566 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690688122422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v690688122422 : ¬ MinimalInterpreter v690688122422 :=
  cost_cut false 1 (by decide)
theorem row340 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,2,1,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,2,1,1] = [v690685376630,v690685376966,v690685370054,v690685369910,v690685196406,v690685196742,v690685189830,v690685144774,v690685189686,v690685144630,v690688129478,v690688122566,v690688122422] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685376630) (.cons (no_v690685376966) (.cons (no_v690685370054) (.cons (no_v690685369910) (.cons (no_v690685196406) (.cons (no_v690685196742) (.cons (no_v690685189830) (.cons (no_v690685144774) (.cons (no_v690685189686) (.cons (no_v690685144630) (.cons (no_v690688129478) (.cons (no_v690688122566) (.cons (no_v690688122422) .nil)))))))))))))

private def v690684665466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v690684665466 : ¬ MinimalInterpreter v690684665466 :=
  cost_cut false 1 (by decide)
private def v690684663738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v690684663738 : ¬ MinimalInterpreter v690684663738 :=
  cost_cut false 1 (by decide)
private def v690684620410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v690684620410 : ¬ MinimalInterpreter v690684620410 :=
  cost_cut false 1 (by decide)
private def v690684618682 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v690684618682 : ¬ MinimalInterpreter v690684618682 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))
private def v690684607418 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v690684607418 : ¬ MinimalInterpreter v690684607418 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690685369914 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v690685369914 : ¬ MinimalInterpreter v690685369914 :=
  cost_cut false 1 (by decide)
private def v690685185658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v690685185658 : ¬ MinimalInterpreter v690685185658 :=
  cost_cut false 1 (by decide)
private def v690685189690 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v690685189690 : ¬ MinimalInterpreter v690685189690 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685144634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v690685144634 : ¬ MinimalInterpreter v690685144634 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685141946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v690685141946 : ¬ MinimalInterpreter v690685141946 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690688122426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v690688122426 : ¬ MinimalInterpreter v690688122426 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row341 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,2,2,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,2,2,0] = [v690684665466,v690684663738,v690684620410,v690684618682,v690684607418,v690685369914,v690685185658,v690685189690,v690685144634,v690685141946,v690688122426] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684665466) (.cons (no_v690684663738) (.cons (no_v690684620410) (.cons (no_v690684618682) (.cons (no_v690684607418) (.cons (no_v690685369914) (.cons (no_v690685185658) (.cons (no_v690685189690) (.cons (no_v690685144634) (.cons (no_v690685141946) (.cons (no_v690688122426) .nil)))))))))))

end Blc.SelfintSingleObject.Rows39
