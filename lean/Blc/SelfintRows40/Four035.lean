import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307339894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402307339894 : ¬ MinimalInterpreter v1402307339894 :=
  chain_cut false 2 (by decide)

private def v1402307339702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1402307339702 : ¬ MinimalInterpreter v1402307339702 :=
  chain_cut false 2 (by decide)

private def v1402307213942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402307213942 : ¬ MinimalInterpreter v1402307213942 :=
  chain_cut false 2 (by decide)

private def v1402307213750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1402307213750 : ¬ MinimalInterpreter v1402307213750 :=
  chain_cut false 2 (by decide)

private def v1402307182262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1402307182262 : ¬ MinimalInterpreter v1402307182262 :=
  chain_cut false 2 (by decide)

theorem four245 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,0,1,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,0,1,1] = [v1402307339894,v1402307339702,v1402307213942,v1402307213750,v1402307182262] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307339894) (.cons (no_v1402307339702) (.cons (no_v1402307213942) (.cons (no_v1402307213750) (.cons (no_v1402307182262) .nil)))))

private def v1402307339898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402307339898 : ¬ MinimalInterpreter v1402307339898 :=
  chain_cut false 2 (by decide)

private def v1402307339706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1402307339706 : ¬ MinimalInterpreter v1402307339706 :=
  chain_cut false 2 (by decide)

private def v1402307213946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402307213946 : ¬ MinimalInterpreter v1402307213946 :=
  chain_cut false 2 (by decide)

private def v1402307213754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v1402307213754 : ¬ MinimalInterpreter v1402307213754 :=
  chain_cut false 2 (by decide)

private def v1402307182266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v1402307182266 : ¬ MinimalInterpreter v1402307182266 :=
  chain_cut false 2 (by decide)

theorem four246 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,0,2,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,0,2,0] = [v1402307339898,v1402307339706,v1402307213946,v1402307213754,v1402307182266] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307339898) (.cons (no_v1402307339706) (.cons (no_v1402307213946) (.cons (no_v1402307213754) (.cons (no_v1402307182266) .nil)))))

private def v1402307340086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402307340086 : ¬ MinimalInterpreter v1402307340086 :=
  chain_cut false 2 (by decide)

private def v1402307339734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1402307339734 : ¬ MinimalInterpreter v1402307339734 :=
  chain_cut false 2 (by decide)

private def v1402307214134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402307214134 : ¬ MinimalInterpreter v1402307214134 :=
  chain_cut false 2 (by decide)

private def v1402307213782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1402307213782 : ¬ MinimalInterpreter v1402307213782 :=
  chain_cut false 2 (by decide)

private def v1402307182294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1402307182294 : ¬ MinimalInterpreter v1402307182294 :=
  chain_cut false 2 (by decide)

theorem four247 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,1,0,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,1,0,1] = [v1402307340086,v1402307339734,v1402307214134,v1402307213782,v1402307182294] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307340086) (.cons (no_v1402307339734) (.cons (no_v1402307214134) (.cons (no_v1402307213782) (.cons (no_v1402307182294) .nil)))))

private def v1402307340090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402307340090 : ¬ MinimalInterpreter v1402307340090 :=
  chain_cut false 2 (by decide)

private def v1402307339738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1402307339738 : ¬ MinimalInterpreter v1402307339738 :=
  chain_cut false 2 (by decide)

private def v1402307214138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402307214138 : ¬ MinimalInterpreter v1402307214138 :=
  chain_cut false 2 (by decide)

private def v1402307213786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1402307213786 : ¬ MinimalInterpreter v1402307213786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 3) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 3) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307182298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1402307182298 : ¬ MinimalInterpreter v1402307182298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 3) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 4) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 3) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

theorem four248 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,1,1,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,1,1,0] = [v1402307340090,v1402307339738,v1402307214138,v1402307213786,v1402307182298] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307340090) (.cons (no_v1402307339738) (.cons (no_v1402307214138) (.cons (no_v1402307213786) (.cons (no_v1402307182298) .nil)))))

private def v1402307340186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402307340186 : ¬ MinimalInterpreter v1402307340186 :=
  chain_cut false 2 (by decide)

private def v1402307339754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1402307339754 : ¬ MinimalInterpreter v1402307339754 :=
  chain_cut false 2 (by decide)

private def v1402307214234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402307214234 : ¬ MinimalInterpreter v1402307214234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 4) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307213802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v1402307213802 : ¬ MinimalInterpreter v1402307213802 :=
  chain_cut false 2 (by decide)

private def v1402307182314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v1402307182314 : ¬ MinimalInterpreter v1402307182314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 4) (.var 2)) (.var 0)) (.var 0)) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

theorem four249 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,2,0,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,2,0,0] = [v1402307340186,v1402307339754,v1402307214234,v1402307213802,v1402307182314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307340186) (.cons (no_v1402307339754) (.cons (no_v1402307214234) (.cons (no_v1402307213802) (.cons (no_v1402307182314) .nil)))))

theorem four250 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,0,4]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402306927070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))))
private theorem no_v1402306927070 : ¬ MinimalInterpreter v1402306927070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306926302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))))))))))
private theorem no_v1402306926302 : ¬ MinimalInterpreter v1402306926302 :=
  cost_cut false 2 (by decide)

private def v1402306914782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402306914782 : ¬ MinimalInterpreter v1402306914782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306914014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)))))))))
private theorem no_v1402306914014 : ¬ MinimalInterpreter v1402306914014 :=
  cost_cut false 2 (by decide)

private def v1402306910942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))))))
private theorem no_v1402306910942 : ¬ MinimalInterpreter v1402306910942 :=
  cost_cut false 2 (by decide)

private def v1402307221982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))))
private theorem no_v1402307221982 : ¬ MinimalInterpreter v1402307221982 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))))

private def v1402307221214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))))
private theorem no_v1402307221214 : ¬ MinimalInterpreter v1402307221214 :=
  cost_cut false 2 (by decide)

private def v1402307241758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))))
private theorem no_v1402307241758 : ¬ MinimalInterpreter v1402307241758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402307238686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))))
private theorem no_v1402307238686 : ¬ MinimalInterpreter v1402307238686 :=
  cost_cut false 2 (by decide)

private def v1402307192606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402307192606 : ¬ MinimalInterpreter v1402307192606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402307189534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))))
private theorem no_v1402307189534 : ¬ MinimalInterpreter v1402307189534 :=
  cost_cut false 2 (by decide)

private def v1402307177246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402307177246 : ¬ MinimalInterpreter v1402307177246 :=
  cost_cut false 2 (by decide)

private def v1402308421406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))))
private theorem no_v1402308421406 : ¬ MinimalInterpreter v1402308421406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402308418334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))))
private theorem no_v1402308418334 : ¬ MinimalInterpreter v1402308418334 :=
  cost_cut false 2 (by decide)

private def v1402313120222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))))
private theorem no_v1402313120222 : ¬ MinimalInterpreter v1402313120222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))))

private def v1402313119454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))))
private theorem no_v1402313119454 : ¬ MinimalInterpreter v1402313119454 :=
  cost_cut false 2 (by decide)

private def v1402313139998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))))
private theorem no_v1402313139998 : ¬ MinimalInterpreter v1402313139998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))))

private def v1402313136926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))))
private theorem no_v1402313136926 : ¬ MinimalInterpreter v1402313136926 :=
  cost_cut false 2 (by decide)

theorem four251 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,1,3]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,1,3] = [v1402306927070,v1402306926302,v1402306914782,v1402306914014,v1402306910942,v1402307221982,v1402307221214,v1402307241758,v1402307238686,v1402307192606,v1402307189534,v1402307177246,v1402308421406,v1402308418334,v1402313120222,v1402313119454,v1402313139998,v1402313136926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306927070) (.cons (no_v1402306926302) (.cons (no_v1402306914782) (.cons (no_v1402306914014) (.cons (no_v1402306910942) (.cons (no_v1402307221982) (.cons (no_v1402307221214) (.cons (no_v1402307241758) (.cons (no_v1402307238686) (.cons (no_v1402307192606) (.cons (no_v1402307189534) (.cons (no_v1402307177246) (.cons (no_v1402308421406) (.cons (no_v1402308418334) (.cons (no_v1402313120222) (.cons (no_v1402313119454) (.cons (no_v1402313139998) (.cons (no_v1402313136926) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
