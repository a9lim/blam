import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690516761846 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v690516761846 : ¬ MinimalInterpreter v690516761846 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516760438 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v690516760438 : ¬ MinimalInterpreter v690516760438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516749558 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v690516749558 : ¬ MinimalInterpreter v690516749558 :=
  cost_cut false 1 (by decide)
private def v690516748150 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v690516748150 : ¬ MinimalInterpreter v690516748150 :=
  cost_cut false 1 (by decide)
private def v690516745078 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v690516745078 : ¬ MinimalInterpreter v690516745078 :=
  cost_cut false 1 (by decide)
theorem row480 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [0,1,2,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [0,1,2,1] = [v690516761846,v690516760438,v690516749558,v690516748150,v690516745078] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516761846) (.cons (no_v690516760438) (.cons (no_v690516749558) (.cons (no_v690516748150) (.cons (no_v690516745078) .nil)))))

theorem row481 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [0,2,0,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690516762230 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v690516762230 : ¬ MinimalInterpreter v690516762230 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516760502 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v690516760502 : ¬ MinimalInterpreter v690516760502 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516749942 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v690516749942 : ¬ MinimalInterpreter v690516749942 :=
  cost_cut false 1 (by decide)
private def v690516748214 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v690516748214 : ¬ MinimalInterpreter v690516748214 :=
  cost_cut false 1 (by decide)
private def v690516745142 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v690516745142 : ¬ MinimalInterpreter v690516745142 :=
  cost_cut false 1 (by decide)
theorem row482 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [0,2,1,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [0,2,1,1] = [v690516762230,v690516760502,v690516749942,v690516748214,v690516745142] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516762230) (.cons (no_v690516760502) (.cons (no_v690516749942) (.cons (no_v690516748214) (.cons (no_v690516745142) .nil)))))

theorem row483 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [0,2,2,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690516774126 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690516774126 : ¬ MinimalInterpreter v690516774126 :=
  cost_cut false 1 (by decide)
private def v690516773742 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690516773742 : ¬ MinimalInterpreter v690516773742 :=
  cost_cut false 1 (by decide)
private def v690516751598 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v690516751598 : ¬ MinimalInterpreter v690516751598 :=
  cost_cut false 1 (by decide)
private def v690516751214 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v690516751214 : ¬ MinimalInterpreter v690516751214 :=
  cost_cut false 1 (by decide)
private def v690516745582 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v690516745582 : ¬ MinimalInterpreter v690516745582 :=
  cost_cut false 1 (by decide)
private def v690517118190 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690517118190 : ¬ MinimalInterpreter v690517118190 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690517117806 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690517117806 : ¬ MinimalInterpreter v690517117806 :=
  cost_cut false 1 (by decide)
theorem row484 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,0,1,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,0,1,2] = [v690516774126,v690516773742,v690516751598,v690516751214,v690516745582,v690517118190,v690517117806] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516774126) (.cons (no_v690516773742) (.cons (no_v690516751598) (.cons (no_v690516751214) (.cons (no_v690516745582) (.cons (no_v690517118190) (.cons (no_v690517117806) .nil)))))))

private def v690516774134 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690516774134 : ¬ MinimalInterpreter v690516774134 :=
  cost_cut false 1 (by decide)
private def v690516773750 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690516773750 : ¬ MinimalInterpreter v690516773750 :=
  cost_cut false 1 (by decide)
private def v690516751606 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v690516751606 : ¬ MinimalInterpreter v690516751606 :=
  cost_cut false 1 (by decide)
private def v690516751222 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v690516751222 : ¬ MinimalInterpreter v690516751222 :=
  cost_cut false 1 (by decide)
private def v690516745590 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v690516745590 : ¬ MinimalInterpreter v690516745590 :=
  cost_cut false 1 (by decide)
private def v690517118198 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690517118198 : ¬ MinimalInterpreter v690517118198 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690517117814 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690517117814 : ¬ MinimalInterpreter v690517117814 :=
  cost_cut false 1 (by decide)
theorem row485 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,0,2,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,0,2,1] = [v690516774134,v690516773750,v690516751606,v690516751222,v690516745590,v690517118198,v690517117814] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516774134) (.cons (no_v690516773750) (.cons (no_v690516751606) (.cons (no_v690516751222) (.cons (no_v690516745590) (.cons (no_v690517118198) (.cons (no_v690517117814) .nil)))))))

end Blc.SelfintSingleObject.Rows39
