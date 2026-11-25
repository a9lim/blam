import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v688067394030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v688067394030 : ¬ MinimalInterpreter v688067394030 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v688067391214 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v688067391214 : ¬ MinimalInterpreter v688067391214 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688067369454 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v688067369454 : ¬ MinimalInterpreter v688067369454 :=
  cost_cut false 1 (by decide)
private def v688067366638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v688067366638 : ¬ MinimalInterpreter v688067366638 :=
  cost_cut false 1 (by decide)
private def v688067360494 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v688067360494 : ¬ MinimalInterpreter v688067360494 :=
  cost_cut false 1 (by decide)
theorem row462 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [0,1,2,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [0,1,2,2] = [v688067394030,v688067391214,v688067369454,v688067366638,v688067360494] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067394030) (.cons (no_v688067391214) (.cons (no_v688067369454) (.cons (no_v688067366638) (.cons (no_v688067360494) .nil)))))

private def v688067394798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v688067394798 : ¬ MinimalInterpreter v688067394798 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688067391342 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v688067391342 : ¬ MinimalInterpreter v688067391342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688067370222 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v688067370222 : ¬ MinimalInterpreter v688067370222 :=
  cost_cut false 1 (by decide)
private def v688067366766 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v688067366766 : ¬ MinimalInterpreter v688067366766 :=
  cost_cut false 1 (by decide)
private def v688067360622 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v688067360622 : ¬ MinimalInterpreter v688067360622 :=
  cost_cut false 1 (by decide)
theorem row463 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [0,2,1,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [0,2,1,2] = [v688067394798,v688067391342,v688067370222,v688067366766,v688067360622] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067394798) (.cons (no_v688067391342) (.cons (no_v688067370222) (.cons (no_v688067366766) (.cons (no_v688067360622) .nil)))))

private def v688067394806 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v688067394806 : ¬ MinimalInterpreter v688067394806 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688067391350 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v688067391350 : ¬ MinimalInterpreter v688067391350 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v688067370230 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v688067370230 : ¬ MinimalInterpreter v688067370230 :=
  cost_cut false 1 (by decide)
private def v688067366774 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v688067366774 : ¬ MinimalInterpreter v688067366774 :=
  cost_cut false 1 (by decide)
private def v688067360630 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v688067360630 : ¬ MinimalInterpreter v688067360630 :=
  cost_cut false 1 (by decide)
theorem row464 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [0,2,2,1]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [0,2,2,1] = [v688067394806,v688067391350,v688067370230,v688067366774,v688067360630] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067394806) (.cons (no_v688067391350) (.cons (no_v688067370230) (.cons (no_v688067366774) (.cons (no_v688067360630) .nil)))))

private def v688067418606 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v688067418606 : ¬ MinimalInterpreter v688067418606 :=
  cost_cut false 1 (by decide)
private def v688067417838 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v688067417838 : ¬ MinimalInterpreter v688067417838 :=
  cost_cut false 1 (by decide)
private def v688067373550 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v688067373550 : ¬ MinimalInterpreter v688067373550 :=
  cost_cut false 1 (by decide)
private def v688067372782 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v688067372782 : ¬ MinimalInterpreter v688067372782 :=
  cost_cut false 1 (by decide)
private def v688067361518 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v688067361518 : ¬ MinimalInterpreter v688067361518 :=
  cost_cut false 1 (by decide)
theorem row465 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [1,0,2,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [1,0,2,2] = [v688067418606,v688067417838,v688067373550,v688067372782,v688067361518] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067418606) (.cons (no_v688067417838) (.cons (no_v688067373550) (.cons (no_v688067372782) (.cons (no_v688067361518) .nil)))))

theorem row466 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [1,1,1,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [1,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row467 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [1,1,2,1]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [1,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
