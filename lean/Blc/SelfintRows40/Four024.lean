import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four168 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,1,1,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1401904287354 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1401904287354 : ¬ MinimalInterpreter v1401904287354 :=
  cost_cut false 2 (by decide)

private def v1401904286650 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1401904286650 : ¬ MinimalInterpreter v1401904286650 :=
  cost_cut false 2 (by decide)

private def v1401904264826 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1401904264826 : ¬ MinimalInterpreter v1401904264826 :=
  cost_cut false 2 (by decide)

private def v1401904264122 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1401904264122 : ¬ MinimalInterpreter v1401904264122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401904258490 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1401904258490 : ¬ MinimalInterpreter v1401904258490 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401904631418 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1401904631418 : ¬ MinimalInterpreter v1401904631418 :=
  cost_cut false 2 (by decide)

private def v1401904630714 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1401904630714 : ¬ MinimalInterpreter v1401904630714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1401904547450 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1401904547450 : ¬ MinimalInterpreter v1401904547450 :=
  chain_cut true 3 (by decide)

private def v1401904525754 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1401904525754 : ¬ MinimalInterpreter v1401904525754 :=
  chain_cut true 3 (by decide)

private def v1398683061882 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1398683061882 : ¬ MinimalInterpreter v1398683061882 :=
  chain_cut false 3 (by decide)

private def v1398683061178 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1398683061178 : ¬ MinimalInterpreter v1398683061178 :=
  chain_cut false 3 (by decide)

private def v1398683039354 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1398683039354 : ¬ MinimalInterpreter v1398683039354 :=
  chain_cut false 3 (by decide)

private def v1398683038650 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1398683038650 : ¬ MinimalInterpreter v1398683038650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398683033018 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1398683033018 : ¬ MinimalInterpreter v1398683033018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398683405946 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1398683405946 : ¬ MinimalInterpreter v1398683405946 :=
  cost_cut false 4 (by decide)

private def v1398683405242 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1398683405242 : ¬ MinimalInterpreter v1398683405242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1398683321978 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1398683321978 : ¬ MinimalInterpreter v1398683321978 :=
  chain_cut false 5 (by decide)

private def v1398683300282 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1398683300282 : ¬ MinimalInterpreter v1398683300282 :=
  chain_cut false 5 (by decide)

theorem four169 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,1,2,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,1,2,0] = [v1401904287354,v1401904286650,v1401904264826,v1401904264122,v1401904258490,v1401904631418,v1401904630714,v1401904547450,v1401904525754,v1398683061882,v1398683061178,v1398683039354,v1398683038650,v1398683033018,v1398683405946,v1398683405242,v1398683321978,v1398683300282] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904287354) (.cons (no_v1401904286650) (.cons (no_v1401904264826) (.cons (no_v1401904264122) (.cons (no_v1401904258490) (.cons (no_v1401904631418) (.cons (no_v1401904630714) (.cons (no_v1401904547450) (.cons (no_v1401904525754) (.cons (no_v1398683061882) (.cons (no_v1398683061178) (.cons (no_v1398683039354) (.cons (no_v1398683038650) (.cons (no_v1398683033018) (.cons (no_v1398683405946) (.cons (no_v1398683405242) (.cons (no_v1398683321978) (.cons (no_v1398683300282) .nil))))))))))))))))))

private def v1401904287542 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401904287542 : ¬ MinimalInterpreter v1401904287542 :=
  cost_cut false 2 (by decide)

private def v1401904286678 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1401904286678 : ¬ MinimalInterpreter v1401904286678 :=
  cost_cut false 2 (by decide)

private def v1401904265014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1401904265014 : ¬ MinimalInterpreter v1401904265014 :=
  cost_cut false 2 (by decide)

private def v1401904264150 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1401904264150 : ¬ MinimalInterpreter v1401904264150 :=
  cost_cut false 2 (by decide)

private def v1401904258518 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1401904258518 : ¬ MinimalInterpreter v1401904258518 :=
  cost_cut false 2 (by decide)

private def v1401904631606 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401904631606 : ¬ MinimalInterpreter v1401904631606 :=
  cost_cut false 2 (by decide)

private def v1401904630742 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1401904630742 : ¬ MinimalInterpreter v1401904630742 :=
  cost_cut false 2 (by decide)

private def v1401904643270 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1401904643270 : ¬ MinimalInterpreter v1401904643270 :=
  chain_cut true 3 (by decide)

private def v1401904639814 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1401904639814 : ¬ MinimalInterpreter v1401904639814 :=
  chain_cut true 3 (by decide)

private def v1401904553158 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1401904553158 : ¬ MinimalInterpreter v1401904553158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904549702 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1401904549702 : ¬ MinimalInterpreter v1401904549702 :=
  chain_cut true 3 (by decide)

private def v1401904527174 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1401904527174 : ¬ MinimalInterpreter v1401904527174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683062070 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398683062070 : ¬ MinimalInterpreter v1398683062070 :=
  chain_cut false 3 (by decide)

private def v1398683061206 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1398683061206 : ¬ MinimalInterpreter v1398683061206 :=
  chain_cut false 3 (by decide)

private def v1398683039542 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1398683039542 : ¬ MinimalInterpreter v1398683039542 :=
  chain_cut false 3 (by decide)

private def v1398683038678 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1398683038678 : ¬ MinimalInterpreter v1398683038678 :=
  chain_cut false 3 (by decide)

private def v1398683033046 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1398683033046 : ¬ MinimalInterpreter v1398683033046 :=
  chain_cut false 3 (by decide)

private def v1398683406134 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398683406134 : ¬ MinimalInterpreter v1398683406134 :=
  cost_cut false 4 (by decide)

private def v1398683405270 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1398683405270 : ¬ MinimalInterpreter v1398683405270 :=
  cost_cut false 4 (by decide)

private def v1398683417798 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1398683417798 : ¬ MinimalInterpreter v1398683417798 :=
  chain_cut false 4 (by decide)

private def v1398683414342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1398683414342 : ¬ MinimalInterpreter v1398683414342 :=
  chain_cut false 4 (by decide)

private def v1398683327686 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1398683327686 : ¬ MinimalInterpreter v1398683327686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683324230 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1398683324230 : ¬ MinimalInterpreter v1398683324230 :=
  chain_cut false 4 (by decide)

private def v1398683301702 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1398683301702 : ¬ MinimalInterpreter v1398683301702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four170 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,2,0,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,2,0,1] = [v1401904287542,v1401904286678,v1401904265014,v1401904264150,v1401904258518,v1401904631606,v1401904630742,v1401904643270,v1401904639814,v1401904553158,v1401904549702,v1401904527174,v1398683062070,v1398683061206,v1398683039542,v1398683038678,v1398683033046,v1398683406134,v1398683405270,v1398683417798,v1398683414342,v1398683327686,v1398683324230,v1398683301702] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904287542) (.cons (no_v1401904286678) (.cons (no_v1401904265014) (.cons (no_v1401904264150) (.cons (no_v1401904258518) (.cons (no_v1401904631606) (.cons (no_v1401904630742) (.cons (no_v1401904643270) (.cons (no_v1401904639814) (.cons (no_v1401904553158) (.cons (no_v1401904549702) (.cons (no_v1401904527174) (.cons (no_v1398683062070) (.cons (no_v1398683061206) (.cons (no_v1398683039542) (.cons (no_v1398683038678) (.cons (no_v1398683033046) (.cons (no_v1398683406134) (.cons (no_v1398683405270) (.cons (no_v1398683417798) (.cons (no_v1398683414342) (.cons (no_v1398683327686) (.cons (no_v1398683324230) (.cons (no_v1398683301702) .nil))))))))))))))))))))))))

private def v1401904287546 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401904287546 : ¬ MinimalInterpreter v1401904287546 :=
  cost_cut false 2 (by decide)

private def v1401904286682 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1401904286682 : ¬ MinimalInterpreter v1401904286682 :=
  cost_cut false 2 (by decide)

private def v1401904265018 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1401904265018 : ¬ MinimalInterpreter v1401904265018 :=
  cost_cut false 2 (by decide)

private def v1401904264154 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1401904264154 : ¬ MinimalInterpreter v1401904264154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401904258522 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1401904258522 : ¬ MinimalInterpreter v1401904258522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401904631610 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401904631610 : ¬ MinimalInterpreter v1401904631610 :=
  cost_cut false 2 (by decide)

private def v1401904630746 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1401904630746 : ¬ MinimalInterpreter v1401904630746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1401904639770 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1401904639770 : ¬ MinimalInterpreter v1401904639770 :=
  chain_cut true 3 (by decide)

private def v1401904549658 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1401904549658 : ¬ MinimalInterpreter v1401904549658 :=
  chain_cut true 3 (by decide)

private def v1401904527130 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1401904527130 : ¬ MinimalInterpreter v1401904527130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683062074 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398683062074 : ¬ MinimalInterpreter v1398683062074 :=
  chain_cut false 3 (by decide)

private def v1398683061210 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1398683061210 : ¬ MinimalInterpreter v1398683061210 :=
  chain_cut false 3 (by decide)

private def v1398683039546 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1398683039546 : ¬ MinimalInterpreter v1398683039546 :=
  chain_cut false 3 (by decide)

private def v1398683038682 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1398683038682 : ¬ MinimalInterpreter v1398683038682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398683033050 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1398683033050 : ¬ MinimalInterpreter v1398683033050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398683406138 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398683406138 : ¬ MinimalInterpreter v1398683406138 :=
  cost_cut false 4 (by decide)

private def v1398683405274 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1398683405274 : ¬ MinimalInterpreter v1398683405274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1398683414298 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1398683414298 : ¬ MinimalInterpreter v1398683414298 :=
  chain_cut false 4 (by decide)

private def v1398683324186 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1398683324186 : ¬ MinimalInterpreter v1398683324186 :=
  chain_cut false 4 (by decide)

private def v1398683301658 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1398683301658 : ¬ MinimalInterpreter v1398683301658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four171 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,2,1,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,2,1,0] = [v1401904287546,v1401904286682,v1401904265018,v1401904264154,v1401904258522,v1401904631610,v1401904630746,v1401904639770,v1401904549658,v1401904527130,v1398683062074,v1398683061210,v1398683039546,v1398683038682,v1398683033050,v1398683406138,v1398683405274,v1398683414298,v1398683324186,v1398683301658] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904287546) (.cons (no_v1401904286682) (.cons (no_v1401904265018) (.cons (no_v1401904264154) (.cons (no_v1401904258522) (.cons (no_v1401904631610) (.cons (no_v1401904630746) (.cons (no_v1401904639770) (.cons (no_v1401904549658) (.cons (no_v1401904527130) (.cons (no_v1398683062074) (.cons (no_v1398683061210) (.cons (no_v1398683039546) (.cons (no_v1398683038682) (.cons (no_v1398683033050) (.cons (no_v1398683406138) (.cons (no_v1398683405274) (.cons (no_v1398683414298) (.cons (no_v1398683324186) (.cons (no_v1398683301658) .nil))))))))))))))))))))

private def v1401904287642 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1401904287642 : ¬ MinimalInterpreter v1401904287642 :=
  chain_cut true 3 (by decide)

private def v1401904286698 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1401904286698 : ¬ MinimalInterpreter v1401904286698 :=
  chain_cut true 3 (by decide)

private def v1401904265114 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1401904265114 : ¬ MinimalInterpreter v1401904265114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904264170 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1401904264170 : ¬ MinimalInterpreter v1401904264170 :=
  chain_cut true 3 (by decide)

private def v1401904258538 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1401904258538 : ¬ MinimalInterpreter v1401904258538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904547738 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v1401904547738 : ¬ MinimalInterpreter v1401904547738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1401904525802 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v1401904525802 : ¬ MinimalInterpreter v1401904525802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1398683062170 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1398683062170 : ¬ MinimalInterpreter v1398683062170 :=
  chain_cut false 3 (by decide)

private def v1398683061226 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1398683061226 : ¬ MinimalInterpreter v1398683061226 :=
  chain_cut false 3 (by decide)

private def v1398683039642 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1398683039642 : ¬ MinimalInterpreter v1398683039642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683038698 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1398683038698 : ¬ MinimalInterpreter v1398683038698 :=
  chain_cut false 3 (by decide)

private def v1398683033066 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1398683033066 : ¬ MinimalInterpreter v1398683033066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683322266 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v1398683322266 : ¬ MinimalInterpreter v1398683322266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1398683300330 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v1398683300330 : ¬ MinimalInterpreter v1398683300330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

theorem four172 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,3,0,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [1,3,0,0] = [v1401904287642,v1401904286698,v1401904265114,v1401904264170,v1401904258538,v1401904547738,v1401904525802,v1398683062170,v1398683061226,v1398683039642,v1398683038698,v1398683033066,v1398683322266,v1398683300330] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904287642) (.cons (no_v1401904286698) (.cons (no_v1401904265114) (.cons (no_v1401904264170) (.cons (no_v1401904258538) (.cons (no_v1401904547738) (.cons (no_v1401904525802) (.cons (no_v1398683062170) (.cons (no_v1398683061226) (.cons (no_v1398683039642) (.cons (no_v1398683038698) (.cons (no_v1398683033066) (.cons (no_v1398683322266) (.cons (no_v1398683300330) .nil))))))))))))))

private def v1401904667022 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1401904667022 : ¬ MinimalInterpreter v1401904667022 :=
  chain_cut false 3 (by decide)

private def v1401904666254 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1401904666254 : ¬ MinimalInterpreter v1401904666254 :=
  chain_cut false 3 (by decide)

private def v1401904556430 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1401904556430 : ¬ MinimalInterpreter v1401904556430 :=
  chain_cut false 3 (by decide)

private def v1401904555662 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1401904555662 : ¬ MinimalInterpreter v1401904555662 :=
  chain_cut false 3 (by decide)

private def v1401904528014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1401904528014 : ¬ MinimalInterpreter v1401904528014 :=
  chain_cut false 3 (by decide)

private def v1398683441550 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1398683441550 : ¬ MinimalInterpreter v1398683441550 :=
  chain_cut false 4 (by decide)

private def v1398683440782 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1398683440782 : ¬ MinimalInterpreter v1398683440782 :=
  chain_cut false 4 (by decide)

private def v1398683330958 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1398683330958 : ¬ MinimalInterpreter v1398683330958 :=
  chain_cut false 5 (by decide)

private def v1398683330190 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1398683330190 : ¬ MinimalInterpreter v1398683330190 :=
  chain_cut false 5 (by decide)

private def v1398683302542 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1398683302542 : ¬ MinimalInterpreter v1398683302542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four173 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,0,0,2]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,0,0,2] = [v1401904667022,v1401904666254,v1401904556430,v1401904555662,v1401904528014,v1398683441550,v1398683440782,v1398683330958,v1398683330190,v1398683302542] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904667022) (.cons (no_v1401904666254) (.cons (no_v1401904556430) (.cons (no_v1401904555662) (.cons (no_v1401904528014) (.cons (no_v1398683441550) (.cons (no_v1398683440782) (.cons (no_v1398683330958) (.cons (no_v1398683330190) (.cons (no_v1398683302542) .nil))))))))))

private def v1401904293494 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1401904293494 : ¬ MinimalInterpreter v1401904293494 :=
  cost_cut false 2 (by decide)

private def v1401904293302 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1401904293302 : ¬ MinimalInterpreter v1401904293302 :=
  cost_cut false 2 (by decide)

private def v1401904265846 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1401904265846 : ¬ MinimalInterpreter v1401904265846 :=
  cost_cut false 2 (by decide)

private def v1401904265654 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1401904265654 : ¬ MinimalInterpreter v1401904265654 :=
  cost_cut false 2 (by decide)

private def v1401904258742 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1401904258742 : ¬ MinimalInterpreter v1401904258742 :=
  cost_cut false 2 (by decide)

private def v1401904667078 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1401904667078 : ¬ MinimalInterpreter v1401904667078 :=
  chain_cut false 3 (by decide)

private def v1401904666310 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1401904666310 : ¬ MinimalInterpreter v1401904666310 :=
  chain_cut false 3 (by decide)

private def v1401904666166 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1401904666166 : ¬ MinimalInterpreter v1401904666166 :=
  chain_cut false 3 (by decide)

private def v1401904556486 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1401904556486 : ¬ MinimalInterpreter v1401904556486 :=
  chain_cut false 3 (by decide)

private def v1401904555718 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1401904555718 : ¬ MinimalInterpreter v1401904555718 :=
  chain_cut false 3 (by decide)

private def v1401904528070 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1401904528070 : ¬ MinimalInterpreter v1401904528070 :=
  chain_cut false 3 (by decide)

private def v1401904555574 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1401904555574 : ¬ MinimalInterpreter v1401904555574 :=
  chain_cut false 3 (by decide)

private def v1401904527926 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1401904527926 : ¬ MinimalInterpreter v1401904527926 :=
  chain_cut false 3 (by decide)

private def v1398683068022 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1398683068022 : ¬ MinimalInterpreter v1398683068022 :=
  chain_cut false 3 (by decide)

private def v1398683067830 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1398683067830 : ¬ MinimalInterpreter v1398683067830 :=
  chain_cut false 3 (by decide)

private def v1398683040374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1398683040374 : ¬ MinimalInterpreter v1398683040374 :=
  chain_cut false 3 (by decide)

private def v1398683040182 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1398683040182 : ¬ MinimalInterpreter v1398683040182 :=
  chain_cut false 3 (by decide)

private def v1398683033270 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1398683033270 : ¬ MinimalInterpreter v1398683033270 :=
  chain_cut false 3 (by decide)

private def v1398683441606 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1398683441606 : ¬ MinimalInterpreter v1398683441606 :=
  chain_cut false 4 (by decide)

private def v1398683440838 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1398683440838 : ¬ MinimalInterpreter v1398683440838 :=
  chain_cut false 4 (by decide)

private def v1398683440694 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1398683440694 : ¬ MinimalInterpreter v1398683440694 :=
  chain_cut false 4 (by decide)

private def v1398683331014 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1398683331014 : ¬ MinimalInterpreter v1398683331014 :=
  chain_cut false 5 (by decide)

private def v1398683330246 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1398683330246 : ¬ MinimalInterpreter v1398683330246 :=
  chain_cut false 4 (by decide)

private def v1398683302598 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1398683302598 : ¬ MinimalInterpreter v1398683302598 :=
  chain_cut false 5 (by decide)

private def v1398683330102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1398683330102 : ¬ MinimalInterpreter v1398683330102 :=
  chain_cut false 5 (by decide)

private def v1398683302454 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1398683302454 : ¬ MinimalInterpreter v1398683302454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four174 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,0,1,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,0,1,1] = [v1401904293494,v1401904293302,v1401904265846,v1401904265654,v1401904258742,v1401904667078,v1401904666310,v1401904666166,v1401904556486,v1401904555718,v1401904528070,v1401904555574,v1401904527926,v1398683068022,v1398683067830,v1398683040374,v1398683040182,v1398683033270,v1398683441606,v1398683440838,v1398683440694,v1398683331014,v1398683330246,v1398683302598,v1398683330102,v1398683302454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904293494) (.cons (no_v1401904293302) (.cons (no_v1401904265846) (.cons (no_v1401904265654) (.cons (no_v1401904258742) (.cons (no_v1401904667078) (.cons (no_v1401904666310) (.cons (no_v1401904666166) (.cons (no_v1401904556486) (.cons (no_v1401904555718) (.cons (no_v1401904528070) (.cons (no_v1401904555574) (.cons (no_v1401904527926) (.cons (no_v1398683068022) (.cons (no_v1398683067830) (.cons (no_v1398683040374) (.cons (no_v1398683040182) (.cons (no_v1398683033270) (.cons (no_v1398683441606) (.cons (no_v1398683440838) (.cons (no_v1398683440694) (.cons (no_v1398683331014) (.cons (no_v1398683330246) (.cons (no_v1398683302598) (.cons (no_v1398683330102) (.cons (no_v1398683302454) .nil))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
