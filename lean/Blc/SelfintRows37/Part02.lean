import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row12 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,0,1,1]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v37850244730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v37850244730 : ¬ MinimalInterpreter v37850244730 :=
  chain_cut false 2 (by decide)

private def v37850244538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v37850244538 : ¬ MinimalInterpreter v37850244538 :=
  chain_cut false 2 (by decide)

private def v37850233466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v37850233466 : ¬ MinimalInterpreter v37850233466 :=
  chain_cut false 2 (by decide)

private def v37850233274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v37850233274 : ¬ MinimalInterpreter v37850233274 :=
  chain_cut false 2 (by decide)

private def v37850230458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v37850230458 : ¬ MinimalInterpreter v37850230458 :=
  chain_cut false 2 (by decide)

private def v37850146426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v37850146426 : ¬ MinimalInterpreter v37850146426 :=
  chain_cut false 2 (by decide)

private def v37850146234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v37850146234 : ¬ MinimalInterpreter v37850146234 :=
  chain_cut false 2 (by decide)

private def v37850135162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v37850135162 : ¬ MinimalInterpreter v37850135162 :=
  chain_cut false 2 (by decide)

private def v37850110586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v37850110586 : ¬ MinimalInterpreter v37850110586 :=
  chain_cut false 2 (by decide)

private def v37850134970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v37850134970 : ¬ MinimalInterpreter v37850134970 :=
  chain_cut false 2 (by decide)

private def v37850132154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v37850132154 : ¬ MinimalInterpreter v37850132154 :=
  chain_cut false 2 (by decide)

private def v37850110394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v37850110394 : ¬ MinimalInterpreter v37850110394 :=
  chain_cut false 2 (by decide)

private def v37850107578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v37850107578 : ¬ MinimalInterpreter v37850107578 :=
  chain_cut false 2 (by decide)

private def v37850101434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v37850101434 : ¬ MinimalInterpreter v37850101434 :=
  chain_cut false 2 (by decide)

private def v37852604026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v37852604026 : ¬ MinimalInterpreter v37852604026 :=
  chain_cut false 2 (by decide)

private def v37852603834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v37852603834 : ¬ MinimalInterpreter v37852603834 :=
  chain_cut false 2 (by decide)

private def v37852592762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v37852592762 : ¬ MinimalInterpreter v37852592762 :=
  chain_cut false 2 (by decide)

private def v37852592570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v37852592570 : ¬ MinimalInterpreter v37852592570 :=
  chain_cut false 2 (by decide)

private def v37852589754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v37852589754 : ¬ MinimalInterpreter v37852589754 :=
  chain_cut false 2 (by decide)

private def v37852297658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))))
private theorem no_v37852297658 : ¬ MinimalInterpreter v37852297658 :=
  chain_cut false 2 (by decide)

private def v37852294842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))))
private theorem no_v37852294842 : ¬ MinimalInterpreter v37852294842 :=
  chain_cut false 2 (by decide)

private def v37862041210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v37862041210 : ¬ MinimalInterpreter v37862041210 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862041018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v37862041018 : ¬ MinimalInterpreter v37862041018 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862029946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v37862029946 : ¬ MinimalInterpreter v37862029946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862029754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v37862029754 : ¬ MinimalInterpreter v37862029754 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862026938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v37862026938 : ¬ MinimalInterpreter v37862026938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37860948410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))
private theorem no_v37860948410 : ¬ MinimalInterpreter v37860948410 :=
  (fun he => Round3Floor38.residuals_excluded _ (by decide) he.1)

private def v37860945594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 0))))
private theorem no_v37860945594 : ¬ MinimalInterpreter v37860945594 :=
  TwoPending.excluded .leftPair .yzx .n (.j .n) .n 2 (by decide)

theorem row13 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,0,2,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,0,2,0] = [v37850244730,v37850244538,v37850233466,v37850233274,v37850230458,v37850146426,v37850146234,v37850135162,v37850110586,v37850134970,v37850132154,v37850110394,v37850107578,v37850101434,v37852604026,v37852603834,v37852592762,v37852592570,v37852589754,v37852297658,v37852294842,v37862041210,v37862041018,v37862029946,v37862029754,v37862026938,v37860948410,v37860945594] := by decide
  rw [h]
  exact (.cons (no_v37850244730) (.cons (no_v37850244538) (.cons (no_v37850233466) (.cons (no_v37850233274) (.cons (no_v37850230458) (.cons (no_v37850146426) (.cons (no_v37850146234) (.cons (no_v37850135162) (.cons (no_v37850110586) (.cons (no_v37850134970) (.cons (no_v37850132154) (.cons (no_v37850110394) (.cons (no_v37850107578) (.cons (no_v37850101434) (.cons (no_v37852604026) (.cons (no_v37852603834) (.cons (no_v37852592762) (.cons (no_v37852592570) (.cons (no_v37852589754) (.cons (no_v37852297658) (.cons (no_v37852294842) (.cons (no_v37862041210) (.cons (no_v37862041018) (.cons (no_v37862029946) (.cons (no_v37862029754) (.cons (no_v37862026938) (.cons (no_v37860948410) (.cons (no_v37860945594) .nil))))))))))))))))))))))))))))

theorem row14 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,1,0,1]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row15 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v37850245018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v37850245018 : ¬ MinimalInterpreter v37850245018 :=
  chain_cut false 2 (by decide)

private def v37850244586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v37850244586 : ¬ MinimalInterpreter v37850244586 :=
  chain_cut false 2 (by decide)

private def v37850233754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v37850233754 : ¬ MinimalInterpreter v37850233754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850233322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v37850233322 : ¬ MinimalInterpreter v37850233322 :=
  chain_cut false 2 (by decide)

private def v37850230506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v37850230506 : ¬ MinimalInterpreter v37850230506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850146714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v37850146714 : ¬ MinimalInterpreter v37850146714 :=
  chain_cut false 2 (by decide)

private def v37850146282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v37850146282 : ¬ MinimalInterpreter v37850146282 :=
  chain_cut false 2 (by decide)

private def v37850135450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v37850135450 : ¬ MinimalInterpreter v37850135450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850110874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v37850110874 : ¬ MinimalInterpreter v37850110874 :=
  chain_cut false 2 (by decide)

private def v37850135018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v37850135018 : ¬ MinimalInterpreter v37850135018 :=
  chain_cut false 2 (by decide)

private def v37850132202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v37850132202 : ¬ MinimalInterpreter v37850132202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850110442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v37850110442 : ¬ MinimalInterpreter v37850110442 :=
  chain_cut false 2 (by decide)

private def v37850107626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v37850107626 : ¬ MinimalInterpreter v37850107626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850101482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v37850101482 : ¬ MinimalInterpreter v37850101482 :=
  chain_cut false 2 (by decide)

private def v37852604314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v37852604314 : ¬ MinimalInterpreter v37852604314 :=
  chain_cut false 2 (by decide)

private def v37852603882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v37852603882 : ¬ MinimalInterpreter v37852603882 :=
  chain_cut false 2 (by decide)

private def v37852593050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v37852593050 : ¬ MinimalInterpreter v37852593050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37852592618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v37852592618 : ¬ MinimalInterpreter v37852592618 :=
  chain_cut false 2 (by decide)

private def v37852589802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v37852589802 : ¬ MinimalInterpreter v37852589802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37852297706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
private theorem no_v37852297706 : ¬ MinimalInterpreter v37852297706 :=
  chain_cut false 2 (by decide)

private def v37852294890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))
private theorem no_v37852294890 : ¬ MinimalInterpreter v37852294890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v37862041498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v37862041498 : ¬ MinimalInterpreter v37862041498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862041066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v37862041066 : ¬ MinimalInterpreter v37862041066 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862030234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v37862030234 : ¬ MinimalInterpreter v37862030234 :=
  w_cut false 0 (by decide)

private def v37862029802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v37862029802 : ¬ MinimalInterpreter v37862029802 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862026986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v37862026986 : ¬ MinimalInterpreter v37862026986 :=
  w_cut false 0 (by decide)

private def v37860948458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))
private theorem no_v37860948458 : ¬ MinimalInterpreter v37860948458 :=
  (fun he => Round3Floor38.residuals_excluded _ (by decide) he.1)

private def v37860945642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))))
private theorem no_v37860945642 : ¬ MinimalInterpreter v37860945642 :=
  w_cut false 0 (by decide)

theorem row16 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [0,1,2,0,0] = [v37850245018,v37850244586,v37850233754,v37850233322,v37850230506,v37850146714,v37850146282,v37850135450,v37850110874,v37850135018,v37850132202,v37850110442,v37850107626,v37850101482,v37852604314,v37852603882,v37852593050,v37852592618,v37852589802,v37852297706,v37852294890,v37862041498,v37862041066,v37862030234,v37862029802,v37862026986,v37860948458,v37860945642] := by decide
  rw [h]
  exact (.cons (no_v37850245018) (.cons (no_v37850244586) (.cons (no_v37850233754) (.cons (no_v37850233322) (.cons (no_v37850230506) (.cons (no_v37850146714) (.cons (no_v37850146282) (.cons (no_v37850135450) (.cons (no_v37850110874) (.cons (no_v37850135018) (.cons (no_v37850132202) (.cons (no_v37850110442) (.cons (no_v37850107626) (.cons (no_v37850101482) (.cons (no_v37852604314) (.cons (no_v37852603882) (.cons (no_v37852593050) (.cons (no_v37852592618) (.cons (no_v37852589802) (.cons (no_v37852297706) (.cons (no_v37852294890) (.cons (no_v37862041498) (.cons (no_v37862041066) (.cons (no_v37862030234) (.cons (no_v37862029802) (.cons (no_v37862026986) (.cons (no_v37860948458) (.cons (no_v37860945642) .nil))))))))))))))))))))))))))))

private def v37850247990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v37850247990 : ¬ MinimalInterpreter v37850247990 :=
  chain_cut false 2 (by decide)

private def v37850247894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v37850247894 : ¬ MinimalInterpreter v37850247894 :=
  chain_cut false 2 (by decide)

private def v37850234166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v37850234166 : ¬ MinimalInterpreter v37850234166 :=
  chain_cut false 2 (by decide)

private def v37850234070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v37850234070 : ¬ MinimalInterpreter v37850234070 :=
  chain_cut false 2 (by decide)

private def v37850230614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v37850230614 : ¬ MinimalInterpreter v37850230614 :=
  chain_cut false 2 (by decide)

private def v37850149686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v37850149686 : ¬ MinimalInterpreter v37850149686 :=
  chain_cut false 2 (by decide)

private def v37850149590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v37850149590 : ¬ MinimalInterpreter v37850149590 :=
  chain_cut false 2 (by decide)

private def v37850135862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v37850135862 : ¬ MinimalInterpreter v37850135862 :=
  chain_cut false 2 (by decide)

private def v37850111286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v37850111286 : ¬ MinimalInterpreter v37850111286 :=
  chain_cut false 2 (by decide)

private def v37850135766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v37850135766 : ¬ MinimalInterpreter v37850135766 :=
  chain_cut false 2 (by decide)

private def v37850132310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v37850132310 : ¬ MinimalInterpreter v37850132310 :=
  chain_cut false 2 (by decide)

private def v37850111190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v37850111190 : ¬ MinimalInterpreter v37850111190 :=
  chain_cut false 2 (by decide)

private def v37850107734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v37850107734 : ¬ MinimalInterpreter v37850107734 :=
  chain_cut false 2 (by decide)

private def v37850101590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v37850101590 : ¬ MinimalInterpreter v37850101590 :=
  chain_cut false 2 (by decide)

private def v37852607286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v37852607286 : ¬ MinimalInterpreter v37852607286 :=
  chain_cut false 2 (by decide)

private def v37852607190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v37852607190 : ¬ MinimalInterpreter v37852607190 :=
  chain_cut false 2 (by decide)

private def v37852593462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v37852593462 : ¬ MinimalInterpreter v37852593462 :=
  chain_cut false 2 (by decide)

private def v37852593366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v37852593366 : ¬ MinimalInterpreter v37852593366 :=
  chain_cut false 2 (by decide)

private def v37852589910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v37852589910 : ¬ MinimalInterpreter v37852589910 :=
  chain_cut false 2 (by decide)

private def v37862044470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v37862044470 : ¬ MinimalInterpreter v37862044470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37862044374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v37862044374 : ¬ MinimalInterpreter v37862044374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37862030646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v37862030646 : ¬ MinimalInterpreter v37862030646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37862030550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v37862030550 : ¬ MinimalInterpreter v37862030550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37862027094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v37862027094 : ¬ MinimalInterpreter v37862027094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row17 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [0,2,0,0,1]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [0,2,0,0,1] = [v37850247990,v37850247894,v37850234166,v37850234070,v37850230614,v37850149686,v37850149590,v37850135862,v37850111286,v37850135766,v37850132310,v37850111190,v37850107734,v37850101590,v37852607286,v37852607190,v37852593462,v37852593366,v37852589910,v37862044470,v37862044374,v37862030646,v37862030550,v37862027094] := by decide
  rw [h]
  exact (.cons (no_v37850247990) (.cons (no_v37850247894) (.cons (no_v37850234166) (.cons (no_v37850234070) (.cons (no_v37850230614) (.cons (no_v37850149686) (.cons (no_v37850149590) (.cons (no_v37850135862) (.cons (no_v37850111286) (.cons (no_v37850135766) (.cons (no_v37850132310) (.cons (no_v37850111190) (.cons (no_v37850107734) (.cons (no_v37850101590) (.cons (no_v37852607286) (.cons (no_v37852607190) (.cons (no_v37852593462) (.cons (no_v37852593366) (.cons (no_v37852589910) (.cons (no_v37862044470) (.cons (no_v37862044374) (.cons (no_v37862030646) (.cons (no_v37862030550) (.cons (no_v37862027094) .nil))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows37
