import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four357 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,0,1,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965490298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400965490298 : ¬ MinimalInterpreter v1400965490298 :=
  chain_cut false 2 (by decide)

private def v1400965490106 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1400965490106 : ¬ MinimalInterpreter v1400965490106 :=
  chain_cut false 2 (by decide)

private def v1400965479034 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400965479034 : ¬ MinimalInterpreter v1400965479034 :=
  chain_cut false 2 (by decide)

private def v1400965478842 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1400965478842 : ¬ MinimalInterpreter v1400965478842 :=
  chain_cut false 2 (by decide)

private def v1400965476026 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1400965476026 : ¬ MinimalInterpreter v1400965476026 :=
  chain_cut false 2 (by decide)

private def v1400965391994 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1400965391994 : ¬ MinimalInterpreter v1400965391994 :=
  chain_cut false 2 (by decide)

private def v1400965391802 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1400965391802 : ¬ MinimalInterpreter v1400965391802 :=
  chain_cut false 2 (by decide)

private def v1400965380730 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965380730 : ¬ MinimalInterpreter v1400965380730 :=
  chain_cut false 2 (by decide)

private def v1400965356154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965356154 : ¬ MinimalInterpreter v1400965356154 :=
  chain_cut false 2 (by decide)

private def v1400965380538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v1400965380538 : ¬ MinimalInterpreter v1400965380538 :=
  chain_cut false 2 (by decide)

private def v1400965377722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v1400965377722 : ¬ MinimalInterpreter v1400965377722 :=
  chain_cut false 2 (by decide)

private def v1400965355962 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1400965355962 : ¬ MinimalInterpreter v1400965355962 :=
  chain_cut false 2 (by decide)

private def v1400965353146 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v1400965353146 : ¬ MinimalInterpreter v1400965353146 :=
  chain_cut false 2 (by decide)

private def v1400965347002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1400965347002 : ¬ MinimalInterpreter v1400965347002 :=
  chain_cut false 2 (by decide)

private def v1400967849594 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400967849594 : ¬ MinimalInterpreter v1400967849594 :=
  chain_cut false 2 (by decide)

private def v1400967849402 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1400967849402 : ¬ MinimalInterpreter v1400967849402 :=
  chain_cut false 2 (by decide)

private def v1400967838330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400967838330 : ¬ MinimalInterpreter v1400967838330 :=
  chain_cut false 2 (by decide)

private def v1400967838138 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1400967838138 : ¬ MinimalInterpreter v1400967838138 :=
  chain_cut false 2 (by decide)

private def v1400967835322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1400967835322 : ¬ MinimalInterpreter v1400967835322 :=
  chain_cut false 2 (by decide)

private def v1400967543226 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))))
private theorem no_v1400967543226 : ¬ MinimalInterpreter v1400967543226 :=
  chain_cut false 2 (by decide)

private def v1400967540410 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))))
private theorem no_v1400967540410 : ¬ MinimalInterpreter v1400967540410 :=
  chain_cut false 2 (by decide)

private def v1400977286778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400977286778 : ¬ MinimalInterpreter v1400977286778 :=
  cost_cut false 3 (by decide)

private def v1400977286586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1400977286586 : ¬ MinimalInterpreter v1400977286586 :=
  cost_cut false 3 (by decide)

private def v1400977275514 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400977275514 : ¬ MinimalInterpreter v1400977275514 :=
  cost_cut false 3 (by decide)

private def v1400977275322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1400977275322 : ¬ MinimalInterpreter v1400977275322 :=
  cost_cut false 3 (by decide)

private def v1400977272506 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1400977272506 : ¬ MinimalInterpreter v1400977272506 :=
  cost_cut false 3 (by decide)

private def v1400976193978 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))
private theorem no_v1400976193978 : ¬ MinimalInterpreter v1400976193978 :=
  cycle_cut 1 2 (by decide) (by decide)

private def v1400976191162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 0))))
private theorem no_v1400976191162 : ¬ MinimalInterpreter v1400976191162 :=
  cycle_cut 1 2 (by decide) (by decide)

theorem four358 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,0,2,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,0,2,0] = [v1400965490298,v1400965490106,v1400965479034,v1400965478842,v1400965476026,v1400965391994,v1400965391802,v1400965380730,v1400965356154,v1400965380538,v1400965377722,v1400965355962,v1400965353146,v1400965347002,v1400967849594,v1400967849402,v1400967838330,v1400967838138,v1400967835322,v1400967543226,v1400967540410,v1400977286778,v1400977286586,v1400977275514,v1400977275322,v1400977272506,v1400976193978,v1400976191162] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965490298) (.cons (no_v1400965490106) (.cons (no_v1400965479034) (.cons (no_v1400965478842) (.cons (no_v1400965476026) (.cons (no_v1400965391994) (.cons (no_v1400965391802) (.cons (no_v1400965380730) (.cons (no_v1400965356154) (.cons (no_v1400965380538) (.cons (no_v1400965377722) (.cons (no_v1400965355962) (.cons (no_v1400965353146) (.cons (no_v1400965347002) (.cons (no_v1400967849594) (.cons (no_v1400967849402) (.cons (no_v1400967838330) (.cons (no_v1400967838138) (.cons (no_v1400967835322) (.cons (no_v1400967543226) (.cons (no_v1400967540410) (.cons (no_v1400977286778) (.cons (no_v1400977286586) (.cons (no_v1400977275514) (.cons (no_v1400977275322) (.cons (no_v1400977272506) (.cons (no_v1400976193978) (.cons (no_v1400976191162) .nil))))))))))))))))))))))))))))

theorem four359 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,1,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four360 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,1,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965490586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400965490586 : ¬ MinimalInterpreter v1400965490586 :=
  chain_cut false 2 (by decide)

private def v1400965490154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1400965490154 : ¬ MinimalInterpreter v1400965490154 :=
  chain_cut false 2 (by decide)

private def v1400965479322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965479322 : ¬ MinimalInterpreter v1400965479322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965478890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1400965478890 : ¬ MinimalInterpreter v1400965478890 :=
  chain_cut false 2 (by decide)

private def v1400965476074 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1400965476074 : ¬ MinimalInterpreter v1400965476074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965392282 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965392282 : ¬ MinimalInterpreter v1400965392282 :=
  chain_cut false 2 (by decide)

private def v1400965391850 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1400965391850 : ¬ MinimalInterpreter v1400965391850 :=
  chain_cut false 2 (by decide)

private def v1400965381018 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965381018 : ¬ MinimalInterpreter v1400965381018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965356442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965356442 : ¬ MinimalInterpreter v1400965356442 :=
  chain_cut false 2 (by decide)

private def v1400965380586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v1400965380586 : ¬ MinimalInterpreter v1400965380586 :=
  chain_cut false 2 (by decide)

private def v1400965377770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v1400965377770 : ¬ MinimalInterpreter v1400965377770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965356010 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1400965356010 : ¬ MinimalInterpreter v1400965356010 :=
  chain_cut false 2 (by decide)

private def v1400965353194 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1400965353194 : ¬ MinimalInterpreter v1400965353194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965347050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1400965347050 : ¬ MinimalInterpreter v1400965347050 :=
  chain_cut false 2 (by decide)

private def v1400967849882 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400967849882 : ¬ MinimalInterpreter v1400967849882 :=
  chain_cut false 2 (by decide)

private def v1400967849450 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1400967849450 : ¬ MinimalInterpreter v1400967849450 :=
  chain_cut false 2 (by decide)

private def v1400967838618 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400967838618 : ¬ MinimalInterpreter v1400967838618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967838186 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1400967838186 : ¬ MinimalInterpreter v1400967838186 :=
  chain_cut false 2 (by decide)

private def v1400967835370 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1400967835370 : ¬ MinimalInterpreter v1400967835370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967543274 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
private theorem no_v1400967543274 : ¬ MinimalInterpreter v1400967543274 :=
  chain_cut false 2 (by decide)

private def v1400967540458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))
private theorem no_v1400967540458 : ¬ MinimalInterpreter v1400967540458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400977287066 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400977287066 : ¬ MinimalInterpreter v1400977287066 :=
  cost_cut false 3 (by decide)

private def v1400977286634 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1400977286634 : ¬ MinimalInterpreter v1400977286634 :=
  cost_cut false 3 (by decide)

private def v1400977275802 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400977275802 : ¬ MinimalInterpreter v1400977275802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977275370 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1400977275370 : ¬ MinimalInterpreter v1400977275370 :=
  cost_cut false 3 (by decide)

private def v1400977272554 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1400977272554 : ¬ MinimalInterpreter v1400977272554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400976194026 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))
private theorem no_v1400976194026 : ¬ MinimalInterpreter v1400976194026 :=
  cycle_cut 1 2 (by decide) (by decide)

private def v1400976191210 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))))
private theorem no_v1400976191210 : ¬ MinimalInterpreter v1400976191210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))

theorem four361 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,2,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,2,0,0] = [v1400965490586,v1400965490154,v1400965479322,v1400965478890,v1400965476074,v1400965392282,v1400965391850,v1400965381018,v1400965356442,v1400965380586,v1400965377770,v1400965356010,v1400965353194,v1400965347050,v1400967849882,v1400967849450,v1400967838618,v1400967838186,v1400967835370,v1400967543274,v1400967540458,v1400977287066,v1400977286634,v1400977275802,v1400977275370,v1400977272554,v1400976194026,v1400976191210] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965490586) (.cons (no_v1400965490154) (.cons (no_v1400965479322) (.cons (no_v1400965478890) (.cons (no_v1400965476074) (.cons (no_v1400965392282) (.cons (no_v1400965391850) (.cons (no_v1400965381018) (.cons (no_v1400965356442) (.cons (no_v1400965380586) (.cons (no_v1400965377770) (.cons (no_v1400965356010) (.cons (no_v1400965353194) (.cons (no_v1400965347050) (.cons (no_v1400967849882) (.cons (no_v1400967849450) (.cons (no_v1400967838618) (.cons (no_v1400967838186) (.cons (no_v1400967835370) (.cons (no_v1400967543274) (.cons (no_v1400967540458) (.cons (no_v1400977287066) (.cons (no_v1400977286634) (.cons (no_v1400977275802) (.cons (no_v1400977275370) (.cons (no_v1400977272554) (.cons (no_v1400976194026) (.cons (no_v1400976191210) .nil))))))))))))))))))))))))))))

private def v1400965493558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400965493558 : ¬ MinimalInterpreter v1400965493558 :=
  chain_cut false 2 (by decide)

private def v1400965493462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1400965493462 : ¬ MinimalInterpreter v1400965493462 :=
  chain_cut false 2 (by decide)

private def v1400965479734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400965479734 : ¬ MinimalInterpreter v1400965479734 :=
  chain_cut false 2 (by decide)

private def v1400965479638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1400965479638 : ¬ MinimalInterpreter v1400965479638 :=
  chain_cut false 2 (by decide)

private def v1400965476182 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1400965476182 : ¬ MinimalInterpreter v1400965476182 :=
  chain_cut false 2 (by decide)

private def v1400965395254 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1400965395254 : ¬ MinimalInterpreter v1400965395254 :=
  chain_cut false 2 (by decide)

private def v1400965395158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1400965395158 : ¬ MinimalInterpreter v1400965395158 :=
  chain_cut false 2 (by decide)

private def v1400965381430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965381430 : ¬ MinimalInterpreter v1400965381430 :=
  chain_cut false 2 (by decide)

private def v1400965356854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965356854 : ¬ MinimalInterpreter v1400965356854 :=
  chain_cut false 2 (by decide)

private def v1400965381334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v1400965381334 : ¬ MinimalInterpreter v1400965381334 :=
  chain_cut false 2 (by decide)

private def v1400965377878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v1400965377878 : ¬ MinimalInterpreter v1400965377878 :=
  chain_cut false 2 (by decide)

private def v1400965356758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1400965356758 : ¬ MinimalInterpreter v1400965356758 :=
  chain_cut false 2 (by decide)

private def v1400965353302 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v1400965353302 : ¬ MinimalInterpreter v1400965353302 :=
  chain_cut false 2 (by decide)

private def v1400965347158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1400965347158 : ¬ MinimalInterpreter v1400965347158 :=
  chain_cut false 2 (by decide)

private def v1400967852854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400967852854 : ¬ MinimalInterpreter v1400967852854 :=
  chain_cut false 2 (by decide)

private def v1400967852758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1400967852758 : ¬ MinimalInterpreter v1400967852758 :=
  chain_cut false 2 (by decide)

private def v1400967839030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400967839030 : ¬ MinimalInterpreter v1400967839030 :=
  chain_cut false 2 (by decide)

private def v1400967838934 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1400967838934 : ¬ MinimalInterpreter v1400967838934 :=
  chain_cut false 2 (by decide)

private def v1400967835478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1400967835478 : ¬ MinimalInterpreter v1400967835478 :=
  chain_cut false 2 (by decide)

private def v1400977290038 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400977290038 : ¬ MinimalInterpreter v1400977290038 :=
  cost_cut false 3 (by decide)

private def v1400977289942 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1400977289942 : ¬ MinimalInterpreter v1400977289942 :=
  cost_cut false 3 (by decide)

private def v1400977276214 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400977276214 : ¬ MinimalInterpreter v1400977276214 :=
  cost_cut false 3 (by decide)

private def v1400977276118 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1400977276118 : ¬ MinimalInterpreter v1400977276118 :=
  cost_cut false 3 (by decide)

private def v1400977272662 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1400977272662 : ¬ MinimalInterpreter v1400977272662 :=
  cost_cut false 3 (by decide)

theorem four362 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,2,0,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,2,0,0,1] = [v1400965493558,v1400965493462,v1400965479734,v1400965479638,v1400965476182,v1400965395254,v1400965395158,v1400965381430,v1400965356854,v1400965381334,v1400965377878,v1400965356758,v1400965353302,v1400965347158,v1400967852854,v1400967852758,v1400967839030,v1400967838934,v1400967835478,v1400977290038,v1400977289942,v1400977276214,v1400977276118,v1400977272662] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965493558) (.cons (no_v1400965493462) (.cons (no_v1400965479734) (.cons (no_v1400965479638) (.cons (no_v1400965476182) (.cons (no_v1400965395254) (.cons (no_v1400965395158) (.cons (no_v1400965381430) (.cons (no_v1400965356854) (.cons (no_v1400965381334) (.cons (no_v1400965377878) (.cons (no_v1400965356758) (.cons (no_v1400965353302) (.cons (no_v1400965347158) (.cons (no_v1400967852854) (.cons (no_v1400967852758) (.cons (no_v1400967839030) (.cons (no_v1400967838934) (.cons (no_v1400967835478) (.cons (no_v1400977290038) (.cons (no_v1400977289942) (.cons (no_v1400977276214) (.cons (no_v1400977276118) (.cons (no_v1400977272662) .nil))))))))))))))))))))))))

private def v1400965493562 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400965493562 : ¬ MinimalInterpreter v1400965493562 :=
  chain_cut false 2 (by decide)

private def v1400965493466 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1400965493466 : ¬ MinimalInterpreter v1400965493466 :=
  chain_cut false 2 (by decide)

private def v1400965479738 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400965479738 : ¬ MinimalInterpreter v1400965479738 :=
  chain_cut false 2 (by decide)

private def v1400965479642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1400965479642 : ¬ MinimalInterpreter v1400965479642 :=
  chain_cut false 2 (by decide)

private def v1400965476186 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1400965476186 : ¬ MinimalInterpreter v1400965476186 :=
  chain_cut false 2 (by decide)

private def v1400965395258 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1400965395258 : ¬ MinimalInterpreter v1400965395258 :=
  chain_cut false 2 (by decide)

private def v1400965395162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1400965395162 : ¬ MinimalInterpreter v1400965395162 :=
  chain_cut false 2 (by decide)

private def v1400965381434 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965381434 : ¬ MinimalInterpreter v1400965381434 :=
  chain_cut false 2 (by decide)

private def v1400965356858 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965356858 : ¬ MinimalInterpreter v1400965356858 :=
  chain_cut false 2 (by decide)

private def v1400965381338 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v1400965381338 : ¬ MinimalInterpreter v1400965381338 :=
  chain_cut false 2 (by decide)

private def v1400965377882 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v1400965377882 : ¬ MinimalInterpreter v1400965377882 :=
  chain_cut false 2 (by decide)

private def v1400965356762 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1400965356762 : ¬ MinimalInterpreter v1400965356762 :=
  chain_cut false 2 (by decide)

private def v1400965353306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v1400965353306 : ¬ MinimalInterpreter v1400965353306 :=
  chain_cut false 2 (by decide)

private def v1400965347162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1400965347162 : ¬ MinimalInterpreter v1400965347162 :=
  chain_cut false 2 (by decide)

private def v1400967852858 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400967852858 : ¬ MinimalInterpreter v1400967852858 :=
  chain_cut false 2 (by decide)

private def v1400967852762 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1400967852762 : ¬ MinimalInterpreter v1400967852762 :=
  chain_cut false 2 (by decide)

private def v1400967839034 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400967839034 : ¬ MinimalInterpreter v1400967839034 :=
  chain_cut false 2 (by decide)

private def v1400967838938 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1400967838938 : ¬ MinimalInterpreter v1400967838938 :=
  chain_cut false 2 (by decide)

private def v1400967835482 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1400967835482 : ¬ MinimalInterpreter v1400967835482 :=
  chain_cut false 2 (by decide)

private def v1400967544026 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))))
private theorem no_v1400967544026 : ¬ MinimalInterpreter v1400967544026 :=
  chain_cut false 2 (by decide)

private def v1400967540570 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0)))))
private theorem no_v1400967540570 : ¬ MinimalInterpreter v1400967540570 :=
  chain_cut false 2 (by decide)

private def v1400977290042 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400977290042 : ¬ MinimalInterpreter v1400977290042 :=
  cost_cut false 3 (by decide)

private def v1400977289946 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1400977289946 : ¬ MinimalInterpreter v1400977289946 :=
  cost_cut false 3 (by decide)

private def v1400977276218 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400977276218 : ¬ MinimalInterpreter v1400977276218 :=
  cost_cut false 3 (by decide)

private def v1400977276122 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1400977276122 : ¬ MinimalInterpreter v1400977276122 :=
  cost_cut false 3 (by decide)

private def v1400977272666 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1400977272666 : ¬ MinimalInterpreter v1400977272666 :=
  cost_cut false 3 (by decide)

private def v1400976194778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0))))
private theorem no_v1400976194778 : ¬ MinimalInterpreter v1400976194778 :=
  cycle_cut 1 2 (by decide) (by decide)

private def v1400976191322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 0))))
private theorem no_v1400976191322 : ¬ MinimalInterpreter v1400976191322 :=
  cycle_cut 1 2 (by decide) (by decide)

theorem four363 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,2,0,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,2,0,1,0] = [v1400965493562,v1400965493466,v1400965479738,v1400965479642,v1400965476186,v1400965395258,v1400965395162,v1400965381434,v1400965356858,v1400965381338,v1400965377882,v1400965356762,v1400965353306,v1400965347162,v1400967852858,v1400967852762,v1400967839034,v1400967838938,v1400967835482,v1400967544026,v1400967540570,v1400977290042,v1400977289946,v1400977276218,v1400977276122,v1400977272666,v1400976194778,v1400976191322] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965493562) (.cons (no_v1400965493466) (.cons (no_v1400965479738) (.cons (no_v1400965479642) (.cons (no_v1400965476186) (.cons (no_v1400965395258) (.cons (no_v1400965395162) (.cons (no_v1400965381434) (.cons (no_v1400965356858) (.cons (no_v1400965381338) (.cons (no_v1400965377882) (.cons (no_v1400965356762) (.cons (no_v1400965353306) (.cons (no_v1400965347162) (.cons (no_v1400967852858) (.cons (no_v1400967852762) (.cons (no_v1400967839034) (.cons (no_v1400967838938) (.cons (no_v1400967835482) (.cons (no_v1400967544026) (.cons (no_v1400967540570) (.cons (no_v1400977290042) (.cons (no_v1400977289946) (.cons (no_v1400977276218) (.cons (no_v1400977276122) (.cons (no_v1400977272666) (.cons (no_v1400976194778) (.cons (no_v1400976191322) .nil))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
