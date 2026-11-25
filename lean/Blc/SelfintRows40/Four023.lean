import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1401904275254 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401904275254 : ¬ MinimalInterpreter v1401904275254 :=
  chain_cut true 3 (by decide)

private def v1401904273366 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1401904273366 : ¬ MinimalInterpreter v1401904273366 :=
  chain_cut true 3 (by decide)

private def v1401904262966 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v1401904262966 : ¬ MinimalInterpreter v1401904262966 :=
  chain_cut true 3 (by decide)

private def v1401904261078 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v1401904261078 : ¬ MinimalInterpreter v1401904261078 :=
  chain_cut true 3 (by decide)

private def v1401904258006 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v1401904258006 : ¬ MinimalInterpreter v1401904258006 :=
  chain_cut true 3 (by decide)

private def v1401904570166 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401904570166 : ¬ MinimalInterpreter v1401904570166 :=
  chain_cut true 3 (by decide)

private def v1401904568278 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1401904568278 : ¬ MinimalInterpreter v1401904568278 :=
  chain_cut true 3 (by decide)

private def v1401904533302 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1401904533302 : ¬ MinimalInterpreter v1401904533302 :=
  chain_cut true 3 (by decide)

private def v1401904522198 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1401904522198 : ¬ MinimalInterpreter v1401904522198 :=
  chain_cut true 3 (by decide)

private def v1401910468406 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401910468406 : ¬ MinimalInterpreter v1401910468406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401910466518 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1401910466518 : ¬ MinimalInterpreter v1401910466518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398683049782 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398683049782 : ¬ MinimalInterpreter v1398683049782 :=
  chain_cut false 3 (by decide)

private def v1398683047894 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1398683047894 : ¬ MinimalInterpreter v1398683047894 :=
  chain_cut false 3 (by decide)

private def v1398683037494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v1398683037494 : ¬ MinimalInterpreter v1398683037494 :=
  chain_cut false 3 (by decide)

private def v1398683035606 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v1398683035606 : ¬ MinimalInterpreter v1398683035606 :=
  chain_cut false 3 (by decide)

private def v1398683032534 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v1398683032534 : ¬ MinimalInterpreter v1398683032534 :=
  chain_cut false 3 (by decide)

private def v1398683344694 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398683344694 : ¬ MinimalInterpreter v1398683344694 :=
  chain_cut false 3 (by decide)

private def v1398683342806 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1398683342806 : ¬ MinimalInterpreter v1398683342806 :=
  chain_cut false 3 (by decide)

private def v1398683307830 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1398683307830 : ¬ MinimalInterpreter v1398683307830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683296726 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1398683296726 : ¬ MinimalInterpreter v1398683296726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689242934 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398689242934 : ¬ MinimalInterpreter v1398689242934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398689241046 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1398689241046 : ¬ MinimalInterpreter v1398689241046 :=
  chain_cut false 6 (by decide)

theorem four161 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,3,0,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,3,0,1] = [v1401904275254,v1401904273366,v1401904262966,v1401904261078,v1401904258006,v1401904570166,v1401904568278,v1401904533302,v1401904522198,v1401910468406,v1401910466518,v1398683049782,v1398683047894,v1398683037494,v1398683035606,v1398683032534,v1398683344694,v1398683342806,v1398683307830,v1398683296726,v1398689242934,v1398689241046] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904275254) (.cons (no_v1401904273366) (.cons (no_v1401904262966) (.cons (no_v1401904261078) (.cons (no_v1401904258006) (.cons (no_v1401904570166) (.cons (no_v1401904568278) (.cons (no_v1401904533302) (.cons (no_v1401904522198) (.cons (no_v1401910468406) (.cons (no_v1401910466518) (.cons (no_v1398683049782) (.cons (no_v1398683047894) (.cons (no_v1398683037494) (.cons (no_v1398683035606) (.cons (no_v1398683032534) (.cons (no_v1398683344694) (.cons (no_v1398683342806) (.cons (no_v1398683307830) (.cons (no_v1398683296726) (.cons (no_v1398689242934) (.cons (no_v1398689241046) .nil))))))))))))))))))))))

private def v1401904275258 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401904275258 : ¬ MinimalInterpreter v1401904275258 :=
  chain_cut true 3 (by decide)

private def v1401904273370 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1401904273370 : ¬ MinimalInterpreter v1401904273370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904262970 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v1401904262970 : ¬ MinimalInterpreter v1401904262970 :=
  chain_cut true 3 (by decide)

private def v1401904261082 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v1401904261082 : ¬ MinimalInterpreter v1401904261082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904258010 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v1401904258010 : ¬ MinimalInterpreter v1401904258010 :=
  chain_cut true 3 (by decide)

private def v1401904570170 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401904570170 : ¬ MinimalInterpreter v1401904570170 :=
  chain_cut true 3 (by decide)

private def v1401904568282 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1401904568282 : ¬ MinimalInterpreter v1401904568282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1401904533306 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1401904533306 : ¬ MinimalInterpreter v1401904533306 :=
  chain_cut true 3 (by decide)

private def v1401904522202 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1401904522202 : ¬ MinimalInterpreter v1401904522202 :=
  chain_cut true 3 (by decide)

private def v1401910468410 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401910468410 : ¬ MinimalInterpreter v1401910468410 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401910466522 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1401910466522 : ¬ MinimalInterpreter v1401910466522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1398683049786 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398683049786 : ¬ MinimalInterpreter v1398683049786 :=
  chain_cut false 3 (by decide)

private def v1398683047898 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1398683047898 : ¬ MinimalInterpreter v1398683047898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683037498 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v1398683037498 : ¬ MinimalInterpreter v1398683037498 :=
  chain_cut false 3 (by decide)

private def v1398683035610 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v1398683035610 : ¬ MinimalInterpreter v1398683035610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683032538 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v1398683032538 : ¬ MinimalInterpreter v1398683032538 :=
  chain_cut false 3 (by decide)

private def v1398683344698 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398683344698 : ¬ MinimalInterpreter v1398683344698 :=
  chain_cut false 3 (by decide)

private def v1398683342810 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1398683342810 : ¬ MinimalInterpreter v1398683342810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1398683307834 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1398683307834 : ¬ MinimalInterpreter v1398683307834 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683296730 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1398683296730 : ¬ MinimalInterpreter v1398683296730 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689242938 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398689242938 : ¬ MinimalInterpreter v1398689242938 :=
  chain_cut false 7 (by decide)

private def v1398689241050 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1398689241050 : ¬ MinimalInterpreter v1398689241050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem four162 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,3,1,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,3,1,0] = [v1401904275258,v1401904273370,v1401904262970,v1401904261082,v1401904258010,v1401904570170,v1401904568282,v1401904533306,v1401904522202,v1401910468410,v1401910466522,v1398683049786,v1398683047898,v1398683037498,v1398683035610,v1398683032538,v1398683344698,v1398683342810,v1398683307834,v1398683296730,v1398689242938,v1398689241050] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904275258) (.cons (no_v1401904273370) (.cons (no_v1401904262970) (.cons (no_v1401904261082) (.cons (no_v1401904258010) (.cons (no_v1401904570170) (.cons (no_v1401904568282) (.cons (no_v1401904533306) (.cons (no_v1401904522202) (.cons (no_v1401910468410) (.cons (no_v1401910466522) (.cons (no_v1398683049786) (.cons (no_v1398683047898) (.cons (no_v1398683037498) (.cons (no_v1398683035610) (.cons (no_v1398683032538) (.cons (no_v1398683344698) (.cons (no_v1398683342810) (.cons (no_v1398683307834) (.cons (no_v1398683296730) (.cons (no_v1398689242938) (.cons (no_v1398689241050) .nil))))))))))))))))))))))

private def v1401904286942 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1401904286942 : ¬ MinimalInterpreter v1401904286942 :=
  chain_cut true 3 (by decide)

private def v1401904286558 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1401904286558 : ¬ MinimalInterpreter v1401904286558 :=
  chain_cut true 3 (by decide)

private def v1401904264414 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v1401904264414 : ¬ MinimalInterpreter v1401904264414 :=
  chain_cut true 3 (by decide)

private def v1401904264030 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v1401904264030 : ¬ MinimalInterpreter v1401904264030 :=
  chain_cut true 3 (by decide)

private def v1401904258398 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v1401904258398 : ¬ MinimalInterpreter v1401904258398 :=
  chain_cut true 3 (by decide)

private def v1401904640798 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1401904640798 : ¬ MinimalInterpreter v1401904640798 :=
  chain_cut true 3 (by decide)

private def v1401904639262 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1401904639262 : ¬ MinimalInterpreter v1401904639262 :=
  chain_cut true 3 (by decide)

private def v1401904550686 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1401904550686 : ¬ MinimalInterpreter v1401904550686 :=
  chain_cut true 3 (by decide)

private def v1401904549150 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1401904549150 : ¬ MinimalInterpreter v1401904549150 :=
  chain_cut true 3 (by decide)

private def v1401904526622 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1401904526622 : ¬ MinimalInterpreter v1401904526622 :=
  chain_cut true 3 (by decide)

private def v1398683061470 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1398683061470 : ¬ MinimalInterpreter v1398683061470 :=
  chain_cut false 3 (by decide)

private def v1398683061086 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1398683061086 : ¬ MinimalInterpreter v1398683061086 :=
  chain_cut false 3 (by decide)

private def v1398683038942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v1398683038942 : ¬ MinimalInterpreter v1398683038942 :=
  chain_cut false 3 (by decide)

private def v1398683038558 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v1398683038558 : ¬ MinimalInterpreter v1398683038558 :=
  chain_cut false 3 (by decide)

private def v1398683032926 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v1398683032926 : ¬ MinimalInterpreter v1398683032926 :=
  chain_cut false 3 (by decide)

private def v1398683415326 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1398683415326 : ¬ MinimalInterpreter v1398683415326 :=
  chain_cut false 4 (by decide)

private def v1398683413790 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1398683413790 : ¬ MinimalInterpreter v1398683413790 :=
  chain_cut false 4 (by decide)

private def v1398683325214 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1398683325214 : ¬ MinimalInterpreter v1398683325214 :=
  chain_cut false 5 (by decide)

private def v1398683323678 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1398683323678 : ¬ MinimalInterpreter v1398683323678 :=
  chain_cut false 5 (by decide)

private def v1398683301150 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1398683301150 : ¬ MinimalInterpreter v1398683301150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four163 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,0,3]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,0,3] = [v1401904286942,v1401904286558,v1401904264414,v1401904264030,v1401904258398,v1401904640798,v1401904639262,v1401904550686,v1401904549150,v1401904526622,v1398683061470,v1398683061086,v1398683038942,v1398683038558,v1398683032926,v1398683415326,v1398683413790,v1398683325214,v1398683323678,v1398683301150] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904286942) (.cons (no_v1401904286558) (.cons (no_v1401904264414) (.cons (no_v1401904264030) (.cons (no_v1401904258398) (.cons (no_v1401904640798) (.cons (no_v1401904639262) (.cons (no_v1401904550686) (.cons (no_v1401904549150) (.cons (no_v1401904526622) (.cons (no_v1398683061470) (.cons (no_v1398683061086) (.cons (no_v1398683038942) (.cons (no_v1398683038558) (.cons (no_v1398683032926) (.cons (no_v1398683415326) (.cons (no_v1398683413790) (.cons (no_v1398683325214) (.cons (no_v1398683323678) (.cons (no_v1398683301150) .nil))))))))))))))))))))

private def v1401904286958 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1401904286958 : ¬ MinimalInterpreter v1401904286958 :=
  cost_cut false 2 (by decide)

private def v1401904286574 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1401904286574 : ¬ MinimalInterpreter v1401904286574 :=
  cost_cut false 2 (by decide)

private def v1401904264430 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1401904264430 : ¬ MinimalInterpreter v1401904264430 :=
  cost_cut false 2 (by decide)

private def v1401904264046 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1401904264046 : ¬ MinimalInterpreter v1401904264046 :=
  cost_cut false 2 (by decide)

private def v1401904258414 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1401904258414 : ¬ MinimalInterpreter v1401904258414 :=
  cost_cut false 2 (by decide)

private def v1401904631022 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1401904631022 : ¬ MinimalInterpreter v1401904631022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1401904630638 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1401904630638 : ¬ MinimalInterpreter v1401904630638 :=
  cost_cut false 2 (by decide)

private def v1401904639086 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1401904639086 : ¬ MinimalInterpreter v1401904639086 :=
  chain_cut true 3 (by decide)

private def v1401904548974 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1401904548974 : ¬ MinimalInterpreter v1401904548974 :=
  chain_cut true 3 (by decide)

private def v1401904526446 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1401904526446 : ¬ MinimalInterpreter v1401904526446 :=
  chain_cut true 3 (by decide)

private def v1398683061486 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1398683061486 : ¬ MinimalInterpreter v1398683061486 :=
  chain_cut false 3 (by decide)

private def v1398683061102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1398683061102 : ¬ MinimalInterpreter v1398683061102 :=
  chain_cut false 3 (by decide)

private def v1398683038958 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1398683038958 : ¬ MinimalInterpreter v1398683038958 :=
  chain_cut false 3 (by decide)

private def v1398683038574 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1398683038574 : ¬ MinimalInterpreter v1398683038574 :=
  chain_cut false 3 (by decide)

private def v1398683032942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1398683032942 : ¬ MinimalInterpreter v1398683032942 :=
  chain_cut false 3 (by decide)

private def v1398683405550 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1398683405550 : ¬ MinimalInterpreter v1398683405550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1398683405166 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1398683405166 : ¬ MinimalInterpreter v1398683405166 :=
  cost_cut false 4 (by decide)

private def v1398683413614 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1398683413614 : ¬ MinimalInterpreter v1398683413614 :=
  chain_cut false 4 (by decide)

private def v1398683323502 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1398683323502 : ¬ MinimalInterpreter v1398683323502 :=
  chain_cut false 5 (by decide)

private def v1398683300974 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1398683300974 : ¬ MinimalInterpreter v1398683300974 :=
  cost_cut false 7 (by decide)

theorem four164 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,1,2]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,1,2] = [v1401904286958,v1401904286574,v1401904264430,v1401904264046,v1401904258414,v1401904631022,v1401904630638,v1401904639086,v1401904548974,v1401904526446,v1398683061486,v1398683061102,v1398683038958,v1398683038574,v1398683032942,v1398683405550,v1398683405166,v1398683413614,v1398683323502,v1398683300974] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904286958) (.cons (no_v1401904286574) (.cons (no_v1401904264430) (.cons (no_v1401904264046) (.cons (no_v1401904258414) (.cons (no_v1401904631022) (.cons (no_v1401904630638) (.cons (no_v1401904639086) (.cons (no_v1401904548974) (.cons (no_v1401904526446) (.cons (no_v1398683061486) (.cons (no_v1398683061102) (.cons (no_v1398683038958) (.cons (no_v1398683038574) (.cons (no_v1398683032942) (.cons (no_v1398683405550) (.cons (no_v1398683405166) (.cons (no_v1398683413614) (.cons (no_v1398683323502) (.cons (no_v1398683300974) .nil))))))))))))))))))))

private def v1401904286966 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1401904286966 : ¬ MinimalInterpreter v1401904286966 :=
  cost_cut false 2 (by decide)

private def v1401904286582 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1401904286582 : ¬ MinimalInterpreter v1401904286582 :=
  cost_cut false 2 (by decide)

private def v1401904264438 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1401904264438 : ¬ MinimalInterpreter v1401904264438 :=
  cost_cut false 2 (by decide)

private def v1401904264054 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1401904264054 : ¬ MinimalInterpreter v1401904264054 :=
  cost_cut false 2 (by decide)

private def v1401904258422 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1401904258422 : ¬ MinimalInterpreter v1401904258422 :=
  cost_cut false 2 (by decide)

private def v1401904631030 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1401904631030 : ¬ MinimalInterpreter v1401904631030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1401904630646 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1401904630646 : ¬ MinimalInterpreter v1401904630646 :=
  cost_cut false 2 (by decide)

private def v1401904640966 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1401904640966 : ¬ MinimalInterpreter v1401904640966 :=
  chain_cut true 3 (by decide)

private def v1401904639430 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1401904639430 : ¬ MinimalInterpreter v1401904639430 :=
  chain_cut true 3 (by decide)

private def v1401904550854 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1401904550854 : ¬ MinimalInterpreter v1401904550854 :=
  chain_cut true 3 (by decide)

private def v1401904549318 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1401904549318 : ¬ MinimalInterpreter v1401904549318 :=
  chain_cut true 3 (by decide)

private def v1401904526790 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1401904526790 : ¬ MinimalInterpreter v1401904526790 :=
  chain_cut true 3 (by decide)

private def v1398683061494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1398683061494 : ¬ MinimalInterpreter v1398683061494 :=
  chain_cut false 3 (by decide)

private def v1398683061110 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1398683061110 : ¬ MinimalInterpreter v1398683061110 :=
  chain_cut false 3 (by decide)

private def v1398683038966 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1398683038966 : ¬ MinimalInterpreter v1398683038966 :=
  chain_cut false 3 (by decide)

private def v1398683038582 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1398683038582 : ¬ MinimalInterpreter v1398683038582 :=
  chain_cut false 3 (by decide)

private def v1398683032950 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1398683032950 : ¬ MinimalInterpreter v1398683032950 :=
  chain_cut false 3 (by decide)

private def v1398683405558 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1398683405558 : ¬ MinimalInterpreter v1398683405558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1398683405174 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1398683405174 : ¬ MinimalInterpreter v1398683405174 :=
  cost_cut false 4 (by decide)

private def v1398683415494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1398683415494 : ¬ MinimalInterpreter v1398683415494 :=
  chain_cut false 4 (by decide)

private def v1398683413958 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1398683413958 : ¬ MinimalInterpreter v1398683413958 :=
  chain_cut false 4 (by decide)

private def v1398683325382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1398683325382 : ¬ MinimalInterpreter v1398683325382 :=
  chain_cut false 5 (by decide)

private def v1398683323846 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1398683323846 : ¬ MinimalInterpreter v1398683323846 :=
  chain_cut false 4 (by decide)

private def v1398683301318 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1398683301318 : ¬ MinimalInterpreter v1398683301318 :=
  chain_cut false 5 (by decide)

theorem four165 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,2,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,2,1] = [v1401904286966,v1401904286582,v1401904264438,v1401904264054,v1401904258422,v1401904631030,v1401904630646,v1401904640966,v1401904639430,v1401904550854,v1401904549318,v1401904526790,v1398683061494,v1398683061110,v1398683038966,v1398683038582,v1398683032950,v1398683405558,v1398683405174,v1398683415494,v1398683413958,v1398683325382,v1398683323846,v1398683301318] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904286966) (.cons (no_v1401904286582) (.cons (no_v1401904264438) (.cons (no_v1401904264054) (.cons (no_v1401904258422) (.cons (no_v1401904631030) (.cons (no_v1401904630646) (.cons (no_v1401904640966) (.cons (no_v1401904639430) (.cons (no_v1401904550854) (.cons (no_v1401904549318) (.cons (no_v1401904526790) (.cons (no_v1398683061494) (.cons (no_v1398683061110) (.cons (no_v1398683038966) (.cons (no_v1398683038582) (.cons (no_v1398683032950) (.cons (no_v1398683405558) (.cons (no_v1398683405174) (.cons (no_v1398683415494) (.cons (no_v1398683413958) (.cons (no_v1398683325382) (.cons (no_v1398683323846) (.cons (no_v1398683301318) .nil))))))))))))))))))))))))

private def v1401904286970 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1401904286970 : ¬ MinimalInterpreter v1401904286970 :=
  chain_cut true 3 (by decide)

private def v1401904286586 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1401904286586 : ¬ MinimalInterpreter v1401904286586 :=
  chain_cut true 3 (by decide)

private def v1401904264442 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v1401904264442 : ¬ MinimalInterpreter v1401904264442 :=
  chain_cut true 3 (by decide)

private def v1401904264058 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v1401904264058 : ¬ MinimalInterpreter v1401904264058 :=
  chain_cut true 3 (by decide)

private def v1401904258426 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v1401904258426 : ¬ MinimalInterpreter v1401904258426 :=
  chain_cut true 3 (by decide)

private def v1401904639098 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1401904639098 : ¬ MinimalInterpreter v1401904639098 :=
  chain_cut true 3 (by decide)

private def v1401904548986 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1401904548986 : ¬ MinimalInterpreter v1401904548986 :=
  chain_cut true 3 (by decide)

private def v1401904526458 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1401904526458 : ¬ MinimalInterpreter v1401904526458 :=
  chain_cut true 3 (by decide)

private def v1398683061498 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1398683061498 : ¬ MinimalInterpreter v1398683061498 :=
  chain_cut false 3 (by decide)

private def v1398683061114 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1398683061114 : ¬ MinimalInterpreter v1398683061114 :=
  chain_cut false 3 (by decide)

private def v1398683038970 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v1398683038970 : ¬ MinimalInterpreter v1398683038970 :=
  chain_cut false 3 (by decide)

private def v1398683038586 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v1398683038586 : ¬ MinimalInterpreter v1398683038586 :=
  chain_cut false 3 (by decide)

private def v1398683032954 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v1398683032954 : ¬ MinimalInterpreter v1398683032954 :=
  chain_cut false 3 (by decide)

private def v1398683413626 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1398683413626 : ¬ MinimalInterpreter v1398683413626 :=
  chain_cut false 4 (by decide)

private def v1398683323514 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1398683323514 : ¬ MinimalInterpreter v1398683323514 :=
  chain_cut false 4 (by decide)

private def v1398683300986 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1398683300986 : ¬ MinimalInterpreter v1398683300986 :=
  chain_cut false 5 (by decide)

theorem four166 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,3,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,0,3,0] = [v1401904286970,v1401904286586,v1401904264442,v1401904264058,v1401904258426,v1401904639098,v1401904548986,v1401904526458,v1398683061498,v1398683061114,v1398683038970,v1398683038586,v1398683032954,v1398683413626,v1398683323514,v1398683300986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904286970) (.cons (no_v1401904286586) (.cons (no_v1401904264442) (.cons (no_v1401904264058) (.cons (no_v1401904258426) (.cons (no_v1401904639098) (.cons (no_v1401904548986) (.cons (no_v1401904526458) (.cons (no_v1398683061498) (.cons (no_v1398683061114) (.cons (no_v1398683038970) (.cons (no_v1398683038586) (.cons (no_v1398683032954) (.cons (no_v1398683413626) (.cons (no_v1398683323514) (.cons (no_v1398683300986) .nil))))))))))))))))

private def v1401904287342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1401904287342 : ¬ MinimalInterpreter v1401904287342 :=
  cost_cut false 2 (by decide)

private def v1401904286638 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1401904286638 : ¬ MinimalInterpreter v1401904286638 :=
  cost_cut false 2 (by decide)

private def v1401904264814 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1401904264814 : ¬ MinimalInterpreter v1401904264814 :=
  cost_cut false 2 (by decide)

private def v1401904264110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1401904264110 : ¬ MinimalInterpreter v1401904264110 :=
  cost_cut false 2 (by decide)

private def v1401904258478 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1401904258478 : ¬ MinimalInterpreter v1401904258478 :=
  cost_cut false 2 (by decide)

private def v1401904631406 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1401904631406 : ¬ MinimalInterpreter v1401904631406 :=
  cost_cut false 2 (by decide)

private def v1401904630702 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1401904630702 : ¬ MinimalInterpreter v1401904630702 :=
  cost_cut false 2 (by decide)

private def v1401904547438 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1401904547438 : ¬ MinimalInterpreter v1401904547438 :=
  chain_cut true 3 (by decide)

private def v1401904525742 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1401904525742 : ¬ MinimalInterpreter v1401904525742 :=
  chain_cut true 3 (by decide)

private def v1398683061870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1398683061870 : ¬ MinimalInterpreter v1398683061870 :=
  chain_cut false 3 (by decide)

private def v1398683061166 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1398683061166 : ¬ MinimalInterpreter v1398683061166 :=
  chain_cut false 3 (by decide)

private def v1398683039342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1398683039342 : ¬ MinimalInterpreter v1398683039342 :=
  chain_cut false 3 (by decide)

private def v1398683038638 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1398683038638 : ¬ MinimalInterpreter v1398683038638 :=
  chain_cut false 3 (by decide)

private def v1398683033006 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1398683033006 : ¬ MinimalInterpreter v1398683033006 :=
  chain_cut false 3 (by decide)

private def v1398683405934 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1398683405934 : ¬ MinimalInterpreter v1398683405934 :=
  cost_cut false 4 (by decide)

private def v1398683405230 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1398683405230 : ¬ MinimalInterpreter v1398683405230 :=
  cost_cut false 4 (by decide)

private def v1398683321966 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1398683321966 : ¬ MinimalInterpreter v1398683321966 :=
  chain_cut false 5 (by decide)

private def v1398683300270 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1398683300270 : ¬ MinimalInterpreter v1398683300270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four167 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,1,0,2]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,1,0,2] = [v1401904287342,v1401904286638,v1401904264814,v1401904264110,v1401904258478,v1401904631406,v1401904630702,v1401904547438,v1401904525742,v1398683061870,v1398683061166,v1398683039342,v1398683038638,v1398683033006,v1398683405934,v1398683405230,v1398683321966,v1398683300270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904287342) (.cons (no_v1401904286638) (.cons (no_v1401904264814) (.cons (no_v1401904264110) (.cons (no_v1401904258478) (.cons (no_v1401904631406) (.cons (no_v1401904630702) (.cons (no_v1401904547438) (.cons (no_v1401904525742) (.cons (no_v1398683061870) (.cons (no_v1398683061166) (.cons (no_v1398683039342) (.cons (no_v1398683038638) (.cons (no_v1398683033006) (.cons (no_v1398683405934) (.cons (no_v1398683405230) (.cons (no_v1398683321966) (.cons (no_v1398683300270) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
