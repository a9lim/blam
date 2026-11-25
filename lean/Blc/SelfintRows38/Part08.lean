import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75598241014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v75598241014 : ¬ MinimalInterpreter v75598241014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598239606 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v75598239606 : ¬ MinimalInterpreter v75598239606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598228726 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v75598228726 : ¬ MinimalInterpreter v75598228726 :=
  chain_cut true 3 (by decide)

private def v75598227318 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v75598227318 : ¬ MinimalInterpreter v75598227318 :=
  chain_cut true 3 (by decide)

private def v75598224246 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v75598224246 : ¬ MinimalInterpreter v75598224246 :=
  chain_cut true 3 (by decide)

private def v74792934646 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v74792934646 : ¬ MinimalInterpreter v74792934646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792933238 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v74792933238 : ¬ MinimalInterpreter v74792933238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792922358 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v74792922358 : ¬ MinimalInterpreter v74792922358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792920950 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v74792920950 : ¬ MinimalInterpreter v74792920950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792917878 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v74792917878 : ¬ MinimalInterpreter v74792917878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row48 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,1,2,1]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,1,2,1] = [v75598241014,v75598239606,v75598228726,v75598227318,v75598224246,v74792934646,v74792933238,v74792922358,v74792920950,v74792917878] := by decide
  rw [h]
  exact (.cons (no_v75598241014) (.cons (no_v75598239606) (.cons (no_v75598228726) (.cons (no_v75598227318) (.cons (no_v75598224246) (.cons (no_v74792934646) (.cons (no_v74792933238) (.cons (no_v74792922358) (.cons (no_v74792920950) (.cons (no_v74792917878) .nil))))))))))

theorem row49 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,2,0,2]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,2,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v75598241398 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v75598241398 : ¬ MinimalInterpreter v75598241398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598239670 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v75598239670 : ¬ MinimalInterpreter v75598239670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598229110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v75598229110 : ¬ MinimalInterpreter v75598229110 :=
  chain_cut true 3 (by decide)

private def v75598227382 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v75598227382 : ¬ MinimalInterpreter v75598227382 :=
  chain_cut true 3 (by decide)

private def v75598224310 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v75598224310 : ¬ MinimalInterpreter v75598224310 :=
  chain_cut true 3 (by decide)

private def v74792935030 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v74792935030 : ¬ MinimalInterpreter v74792935030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792933302 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v74792933302 : ¬ MinimalInterpreter v74792933302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792922742 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v74792922742 : ¬ MinimalInterpreter v74792922742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792921014 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v74792921014 : ¬ MinimalInterpreter v74792921014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792917942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v74792917942 : ¬ MinimalInterpreter v74792917942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row50 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,2,1,1]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,2,1,1] = [v75598241398,v75598239670,v75598229110,v75598227382,v75598224310,v74792935030,v74792933302,v74792922742,v74792921014,v74792917942] := by decide
  rw [h]
  exact (.cons (no_v75598241398) (.cons (no_v75598239670) (.cons (no_v75598229110) (.cons (no_v75598227382) (.cons (no_v75598224310) (.cons (no_v74792935030) (.cons (no_v74792933302) (.cons (no_v74792922742) (.cons (no_v74792921014) (.cons (no_v74792917942) .nil))))))))))

theorem row51 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,2,2,0]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,2,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v75598253294 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75598253294 : ¬ MinimalInterpreter v75598253294 :=
  chain_cut true 3 (by decide)

private def v75598252910 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75598252910 : ¬ MinimalInterpreter v75598252910 :=
  chain_cut true 3 (by decide)

private def v75598230766 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v75598230766 : ¬ MinimalInterpreter v75598230766 :=
  chain_cut true 3 (by decide)

private def v75598230382 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v75598230382 : ¬ MinimalInterpreter v75598230382 :=
  chain_cut true 3 (by decide)

private def v75598224750 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v75598224750 : ¬ MinimalInterpreter v75598224750 :=
  chain_cut true 3 (by decide)

private def v75598597358 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75598597358 : ¬ MinimalInterpreter v75598597358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75598596974 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75598596974 : ¬ MinimalInterpreter v75598596974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792946926 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v74792946926 : ¬ MinimalInterpreter v74792946926 :=
  chain_cut true 5 (by decide)

private def v74792946542 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v74792946542 : ¬ MinimalInterpreter v74792946542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792924398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v74792924398 : ¬ MinimalInterpreter v74792924398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v74792924014 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v74792924014 : ¬ MinimalInterpreter v74792924014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792918382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v74792918382 : ¬ MinimalInterpreter v74792918382 :=
  cycle_cut 3 6 (by decide) (by decide)

private def v74793290990 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v74793290990 : ¬ MinimalInterpreter v74793290990 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v74793290606 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v74793290606 : ¬ MinimalInterpreter v74793290606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row52 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [1,0,1,2]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [1,0,1,2] = [v75598253294,v75598252910,v75598230766,v75598230382,v75598224750,v75598597358,v75598596974,v74792946926,v74792946542,v74792924398,v74792924014,v74792918382,v74793290990,v74793290606] := by decide
  rw [h]
  exact (.cons (no_v75598253294) (.cons (no_v75598252910) (.cons (no_v75598230766) (.cons (no_v75598230382) (.cons (no_v75598224750) (.cons (no_v75598597358) (.cons (no_v75598596974) (.cons (no_v74792946926) (.cons (no_v74792946542) (.cons (no_v74792924398) (.cons (no_v74792924014) (.cons (no_v74792918382) (.cons (no_v74793290990) (.cons (no_v74793290606) .nil))))))))))))))

private def v75598253302 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75598253302 : ¬ MinimalInterpreter v75598253302 :=
  chain_cut true 3 (by decide)

private def v75598252918 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75598252918 : ¬ MinimalInterpreter v75598252918 :=
  chain_cut true 3 (by decide)

private def v75598230774 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v75598230774 : ¬ MinimalInterpreter v75598230774 :=
  chain_cut true 3 (by decide)

private def v75598230390 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v75598230390 : ¬ MinimalInterpreter v75598230390 :=
  chain_cut true 3 (by decide)

private def v75598224758 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v75598224758 : ¬ MinimalInterpreter v75598224758 :=
  chain_cut true 3 (by decide)

private def v75598597366 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75598597366 : ¬ MinimalInterpreter v75598597366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75598596982 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75598596982 : ¬ MinimalInterpreter v75598596982 :=
  w_cut false 0 (by decide)

private def v74792946934 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v74792946934 : ¬ MinimalInterpreter v74792946934 :=
  chain_cut true 5 (by decide)

private def v74792946550 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v74792946550 : ¬ MinimalInterpreter v74792946550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792924406 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v74792924406 : ¬ MinimalInterpreter v74792924406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792924022 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v74792924022 : ¬ MinimalInterpreter v74792924022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792918390 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v74792918390 : ¬ MinimalInterpreter v74792918390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74793290998 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v74793290998 : ¬ MinimalInterpreter v74793290998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v74793290614 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v74793290614 : ¬ MinimalInterpreter v74793290614 :=
  w_cut false 0 (by decide)

theorem row53 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [1,0,2,1]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [1,0,2,1] = [v75598253302,v75598252918,v75598230774,v75598230390,v75598224758,v75598597366,v75598596982,v74792946934,v74792946550,v74792924406,v74792924022,v74792918390,v74793290998,v74793290614] := by decide
  rw [h]
  exact (.cons (no_v75598253302) (.cons (no_v75598252918) (.cons (no_v75598230774) (.cons (no_v75598230390) (.cons (no_v75598224758) (.cons (no_v75598597366) (.cons (no_v75598596982) (.cons (no_v74792946934) (.cons (no_v74792946550) (.cons (no_v74792924406) (.cons (no_v74792924022) (.cons (no_v74792918390) (.cons (no_v74793290998) (.cons (no_v74793290614) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows38
