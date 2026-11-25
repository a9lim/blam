import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400965493658 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400965493658 : ¬ MinimalInterpreter v1400965493658 :=
  chain_cut false 2 (by decide)

private def v1400965493482 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1400965493482 : ¬ MinimalInterpreter v1400965493482 :=
  chain_cut false 2 (by decide)

private def v1400965479834 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965479834 : ¬ MinimalInterpreter v1400965479834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965479658 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1400965479658 : ¬ MinimalInterpreter v1400965479658 :=
  chain_cut false 2 (by decide)

private def v1400965476202 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1400965476202 : ¬ MinimalInterpreter v1400965476202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965395354 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965395354 : ¬ MinimalInterpreter v1400965395354 :=
  chain_cut false 2 (by decide)

private def v1400965395178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1400965395178 : ¬ MinimalInterpreter v1400965395178 :=
  chain_cut false 2 (by decide)

private def v1400965381530 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965381530 : ¬ MinimalInterpreter v1400965381530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965356954 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965356954 : ¬ MinimalInterpreter v1400965356954 :=
  chain_cut false 2 (by decide)

private def v1400965381354 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v1400965381354 : ¬ MinimalInterpreter v1400965381354 :=
  chain_cut false 2 (by decide)

private def v1400965377898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v1400965377898 : ¬ MinimalInterpreter v1400965377898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965356778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1400965356778 : ¬ MinimalInterpreter v1400965356778 :=
  chain_cut false 2 (by decide)

private def v1400965353322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v1400965353322 : ¬ MinimalInterpreter v1400965353322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965347178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1400965347178 : ¬ MinimalInterpreter v1400965347178 :=
  chain_cut false 2 (by decide)

private def v1400967852954 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400967852954 : ¬ MinimalInterpreter v1400967852954 :=
  chain_cut false 2 (by decide)

private def v1400967852778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1400967852778 : ¬ MinimalInterpreter v1400967852778 :=
  chain_cut false 2 (by decide)

private def v1400967839130 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400967839130 : ¬ MinimalInterpreter v1400967839130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967838954 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1400967838954 : ¬ MinimalInterpreter v1400967838954 :=
  chain_cut false 2 (by decide)

private def v1400967835498 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1400967835498 : ¬ MinimalInterpreter v1400967835498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967544042 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))))
private theorem no_v1400967544042 : ¬ MinimalInterpreter v1400967544042 :=
  chain_cut false 2 (by decide)

private def v1400967540586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0)))))
private theorem no_v1400967540586 : ¬ MinimalInterpreter v1400967540586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400977290138 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400977290138 : ¬ MinimalInterpreter v1400977290138 :=
  cost_cut false 3 (by decide)

private def v1400977289962 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1400977289962 : ¬ MinimalInterpreter v1400977289962 :=
  cost_cut false 3 (by decide)

private def v1400977276314 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400977276314 : ¬ MinimalInterpreter v1400977276314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977276138 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1400977276138 : ¬ MinimalInterpreter v1400977276138 :=
  cost_cut false 3 (by decide)

private def v1400977272682 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1400977272682 : ¬ MinimalInterpreter v1400977272682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400976194794 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0))))
private theorem no_v1400976194794 : ¬ MinimalInterpreter v1400976194794 :=
  cycle_cut 1 2 (by decide) (by decide)

private def v1400976191338 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0))))
private theorem no_v1400976191338 : ¬ MinimalInterpreter v1400976191338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))

theorem four364 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,2,1,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,2,1,0,0] = [v1400965493658,v1400965493482,v1400965479834,v1400965479658,v1400965476202,v1400965395354,v1400965395178,v1400965381530,v1400965356954,v1400965381354,v1400965377898,v1400965356778,v1400965353322,v1400965347178,v1400967852954,v1400967852778,v1400967839130,v1400967838954,v1400967835498,v1400967544042,v1400967540586,v1400977290138,v1400977289962,v1400977276314,v1400977276138,v1400977272682,v1400976194794,v1400976191338] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965493658) (.cons (no_v1400965493482) (.cons (no_v1400965479834) (.cons (no_v1400965479658) (.cons (no_v1400965476202) (.cons (no_v1400965395354) (.cons (no_v1400965395178) (.cons (no_v1400965381530) (.cons (no_v1400965356954) (.cons (no_v1400965381354) (.cons (no_v1400965377898) (.cons (no_v1400965356778) (.cons (no_v1400965353322) (.cons (no_v1400965347178) (.cons (no_v1400967852954) (.cons (no_v1400967852778) (.cons (no_v1400967839130) (.cons (no_v1400967838954) (.cons (no_v1400967835498) (.cons (no_v1400967544042) (.cons (no_v1400967540586) (.cons (no_v1400977290138) (.cons (no_v1400977289962) (.cons (no_v1400977276314) (.cons (no_v1400977276138) (.cons (no_v1400977272682) (.cons (no_v1400976194794) (.cons (no_v1400976191338) .nil))))))))))))))))))))))))))))

private def v1400965588590 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400965588590 : ¬ MinimalInterpreter v1400965588590 :=
  chain_cut false 2 (by decide)

private def v1400965588398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1400965588398 : ¬ MinimalInterpreter v1400965588398 :=
  chain_cut false 2 (by decide)

private def v1400965585518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400965585518 : ¬ MinimalInterpreter v1400965585518 :=
  chain_cut false 2 (by decide)

private def v1400965585326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1400965585326 : ¬ MinimalInterpreter v1400965585326 :=
  chain_cut false 2 (by decide)

private def v1400965584558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1400965584558 : ¬ MinimalInterpreter v1400965584558 :=
  chain_cut false 2 (by decide)

private def v1400965408366 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1400965408366 : ¬ MinimalInterpreter v1400965408366 :=
  chain_cut false 2 (by decide)

private def v1400965408174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1400965408174 : ¬ MinimalInterpreter v1400965408174 :=
  chain_cut false 2 (by decide)

private def v1400965405294 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965405294 : ¬ MinimalInterpreter v1400965405294 :=
  chain_cut false 2 (by decide)

private def v1400965360238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965360238 : ¬ MinimalInterpreter v1400965360238 :=
  chain_cut false 2 (by decide)

private def v1400965405102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v1400965405102 : ¬ MinimalInterpreter v1400965405102 :=
  chain_cut false 2 (by decide)

private def v1400965404334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2))))))
private theorem no_v1400965404334 : ¬ MinimalInterpreter v1400965404334 :=
  chain_cut false 2 (by decide)

private def v1400965360046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1400965360046 : ¬ MinimalInterpreter v1400965360046 :=
  chain_cut false 2 (by decide)

private def v1400965359278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v1400965359278 : ¬ MinimalInterpreter v1400965359278 :=
  chain_cut false 2 (by decide)

private def v1400965348014 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1400965348014 : ¬ MinimalInterpreter v1400965348014 :=
  chain_cut false 2 (by decide)

theorem four365 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,0,0,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,0,0,2] = [v1400965588590,v1400965588398,v1400965585518,v1400965585326,v1400965584558,v1400965408366,v1400965408174,v1400965405294,v1400965360238,v1400965405102,v1400965404334,v1400965360046,v1400965359278,v1400965348014] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965588590) (.cons (no_v1400965588398) (.cons (no_v1400965585518) (.cons (no_v1400965585326) (.cons (no_v1400965584558) (.cons (no_v1400965408366) (.cons (no_v1400965408174) (.cons (no_v1400965405294) (.cons (no_v1400965360238) (.cons (no_v1400965405102) (.cons (no_v1400965404334) (.cons (no_v1400965360046) (.cons (no_v1400965359278) (.cons (no_v1400965348014) .nil))))))))))))))

theorem four366 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,0,1,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965588602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400965588602 : ¬ MinimalInterpreter v1400965588602 :=
  chain_cut false 2 (by decide)

private def v1400965588410 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1400965588410 : ¬ MinimalInterpreter v1400965588410 :=
  chain_cut false 2 (by decide)

private def v1400965585530 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400965585530 : ¬ MinimalInterpreter v1400965585530 :=
  chain_cut false 2 (by decide)

private def v1400965585338 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1400965585338 : ¬ MinimalInterpreter v1400965585338 :=
  chain_cut false 2 (by decide)

private def v1400965584570 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1400965584570 : ¬ MinimalInterpreter v1400965584570 :=
  chain_cut false 2 (by decide)

private def v1400965408378 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1400965408378 : ¬ MinimalInterpreter v1400965408378 :=
  chain_cut false 2 (by decide)

private def v1400965408186 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1400965408186 : ¬ MinimalInterpreter v1400965408186 :=
  chain_cut false 2 (by decide)

private def v1400965405306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965405306 : ¬ MinimalInterpreter v1400965405306 :=
  chain_cut false 2 (by decide)

private def v1400965360250 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965360250 : ¬ MinimalInterpreter v1400965360250 :=
  chain_cut false 2 (by decide)

private def v1400965405114 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v1400965405114 : ¬ MinimalInterpreter v1400965405114 :=
  chain_cut false 2 (by decide)

private def v1400965404346 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v1400965404346 : ¬ MinimalInterpreter v1400965404346 :=
  chain_cut false 2 (by decide)

private def v1400965360058 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1400965360058 : ¬ MinimalInterpreter v1400965360058 :=
  chain_cut false 2 (by decide)

private def v1400965359290 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v1400965359290 : ¬ MinimalInterpreter v1400965359290 :=
  chain_cut false 2 (by decide)

private def v1400965348026 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1400965348026 : ¬ MinimalInterpreter v1400965348026 :=
  chain_cut false 2 (by decide)

theorem four367 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,0,2,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,0,2,0] = [v1400965588602,v1400965588410,v1400965585530,v1400965585338,v1400965584570,v1400965408378,v1400965408186,v1400965405306,v1400965360250,v1400965405114,v1400965404346,v1400965360058,v1400965359290,v1400965348026] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965588602) (.cons (no_v1400965588410) (.cons (no_v1400965585530) (.cons (no_v1400965585338) (.cons (no_v1400965584570) (.cons (no_v1400965408378) (.cons (no_v1400965408186) (.cons (no_v1400965405306) (.cons (no_v1400965360250) (.cons (no_v1400965405114) (.cons (no_v1400965404346) (.cons (no_v1400965360058) (.cons (no_v1400965359290) (.cons (no_v1400965348026) .nil))))))))))))))

theorem four368 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,1,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four369 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,1,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965588890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400965588890 : ¬ MinimalInterpreter v1400965588890 :=
  chain_cut false 2 (by decide)

private def v1400965588458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1400965588458 : ¬ MinimalInterpreter v1400965588458 :=
  chain_cut false 2 (by decide)

private def v1400965585818 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965585818 : ¬ MinimalInterpreter v1400965585818 :=
  chain_cut false 2 (by decide)

private def v1400965585386 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1400965585386 : ¬ MinimalInterpreter v1400965585386 :=
  chain_cut false 2 (by decide)

private def v1400965584618 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1400965584618 : ¬ MinimalInterpreter v1400965584618 :=
  chain_cut false 2 (by decide)

private def v1400965408666 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965408666 : ¬ MinimalInterpreter v1400965408666 :=
  chain_cut false 2 (by decide)

private def v1400965408234 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1400965408234 : ¬ MinimalInterpreter v1400965408234 :=
  chain_cut false 2 (by decide)

private def v1400965405594 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965405594 : ¬ MinimalInterpreter v1400965405594 :=
  chain_cut false 2 (by decide)

private def v1400965360538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965360538 : ¬ MinimalInterpreter v1400965360538 :=
  chain_cut false 2 (by decide)

private def v1400965405162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v1400965405162 : ¬ MinimalInterpreter v1400965405162 :=
  chain_cut false 2 (by decide)

private def v1400965404394 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v1400965404394 : ¬ MinimalInterpreter v1400965404394 :=
  chain_cut false 2 (by decide)

private def v1400965360106 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1400965360106 : ¬ MinimalInterpreter v1400965360106 :=
  chain_cut false 2 (by decide)

private def v1400965359338 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1400965359338 : ¬ MinimalInterpreter v1400965359338 :=
  chain_cut false 2 (by decide)

private def v1400965348074 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1400965348074 : ¬ MinimalInterpreter v1400965348074 :=
  chain_cut false 2 (by decide)

theorem four370 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,2,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,0,2,0,0] = [v1400965588890,v1400965588458,v1400965585818,v1400965585386,v1400965584618,v1400965408666,v1400965408234,v1400965405594,v1400965360538,v1400965405162,v1400965404394,v1400965360106,v1400965359338,v1400965348074] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965588890) (.cons (no_v1400965588458) (.cons (no_v1400965585818) (.cons (no_v1400965585386) (.cons (no_v1400965584618) (.cons (no_v1400965408666) (.cons (no_v1400965408234) (.cons (no_v1400965405594) (.cons (no_v1400965360538) (.cons (no_v1400965405162) (.cons (no_v1400965404394) (.cons (no_v1400965360106) (.cons (no_v1400965359338) (.cons (no_v1400965348074) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
