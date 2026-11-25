import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four371 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,1,0,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four372 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,1,0,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four373 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,1,1,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965593498 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400965593498 : ¬ MinimalInterpreter v1400965593498 :=
  chain_cut false 2 (by decide)

private def v1400965593450 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v1400965593450 : ¬ MinimalInterpreter v1400965593450 :=
  chain_cut false 2 (by decide)

private def v1400965586586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965586586 : ¬ MinimalInterpreter v1400965586586 :=
  chain_cut false 2 (by decide)

private def v1400965586538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v1400965586538 : ¬ MinimalInterpreter v1400965586538 :=
  chain_cut false 2 (by decide)

private def v1400965584810 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v1400965584810 : ¬ MinimalInterpreter v1400965584810 :=
  chain_cut false 2 (by decide)

private def v1400965413274 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965413274 : ¬ MinimalInterpreter v1400965413274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965413226 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v1400965413226 : ¬ MinimalInterpreter v1400965413226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965406362 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965406362 : ¬ MinimalInterpreter v1400965406362 :=
  chain_cut false 2 (by decide)

private def v1400965361306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965361306 : ¬ MinimalInterpreter v1400965361306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965406314 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v1400965406314 : ¬ MinimalInterpreter v1400965406314 :=
  chain_cut false 2 (by decide)

private def v1400965404586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0))))))
private theorem no_v1400965404586 : ¬ MinimalInterpreter v1400965404586 :=
  chain_cut false 2 (by decide)

private def v1400965361258 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v1400965361258 : ¬ MinimalInterpreter v1400965361258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965359530 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v1400965359530 : ¬ MinimalInterpreter v1400965359530 :=
  chain_cut false 2 (by decide)

private def v1400965348266 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v1400965348266 : ¬ MinimalInterpreter v1400965348266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four374 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,2,0,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [1,2,0,0,0] = [v1400965593498,v1400965593450,v1400965586586,v1400965586538,v1400965584810,v1400965413274,v1400965413226,v1400965406362,v1400965361306,v1400965406314,v1400965404586,v1400965361258,v1400965359530,v1400965348266] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965593498) (.cons (no_v1400965593450) (.cons (no_v1400965586586) (.cons (no_v1400965586538) (.cons (no_v1400965584810) (.cons (no_v1400965413274) (.cons (no_v1400965413226) (.cons (no_v1400965406362) (.cons (no_v1400965361306) (.cons (no_v1400965406314) (.cons (no_v1400965404586) (.cons (no_v1400965361258) (.cons (no_v1400965359530) (.cons (no_v1400965348266) .nil))))))))))))))

private def v1400965641014 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400965641014 : ¬ MinimalInterpreter v1400965641014 :=
  chain_cut false 2 (by decide)

private def v1400965640918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1400965640918 : ¬ MinimalInterpreter v1400965640918 :=
  chain_cut false 2 (by decide)

private def v1400965639478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400965639478 : ¬ MinimalInterpreter v1400965639478 :=
  chain_cut false 2 (by decide)

private def v1400965639382 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1400965639382 : ¬ MinimalInterpreter v1400965639382 :=
  chain_cut false 2 (by decide)

private def v1400965638998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1400965638998 : ¬ MinimalInterpreter v1400965638998 :=
  chain_cut false 2 (by decide)

private def v1400965419830 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1400965419830 : ¬ MinimalInterpreter v1400965419830 :=
  chain_cut false 2 (by decide)

private def v1400965419734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1400965419734 : ¬ MinimalInterpreter v1400965419734 :=
  chain_cut false 2 (by decide)

private def v1400965418294 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965418294 : ¬ MinimalInterpreter v1400965418294 :=
  chain_cut false 2 (by decide)

private def v1400965362998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965362998 : ¬ MinimalInterpreter v1400965362998 :=
  chain_cut false 2 (by decide)

private def v1400965418198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v1400965418198 : ¬ MinimalInterpreter v1400965418198 :=
  chain_cut false 2 (by decide)

private def v1400965417814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v1400965417814 : ¬ MinimalInterpreter v1400965417814 :=
  chain_cut false 2 (by decide)

private def v1400965362902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1400965362902 : ¬ MinimalInterpreter v1400965362902 :=
  chain_cut false 2 (by decide)

private def v1400965362518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v1400965362518 : ¬ MinimalInterpreter v1400965362518 :=
  chain_cut false 2 (by decide)

private def v1400965348694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1400965348694 : ¬ MinimalInterpreter v1400965348694 :=
  chain_cut false 2 (by decide)

theorem four375 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,0,0,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,0,0,0,1] = [v1400965641014,v1400965640918,v1400965639478,v1400965639382,v1400965638998,v1400965419830,v1400965419734,v1400965418294,v1400965362998,v1400965418198,v1400965417814,v1400965362902,v1400965362518,v1400965348694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965641014) (.cons (no_v1400965640918) (.cons (no_v1400965639478) (.cons (no_v1400965639382) (.cons (no_v1400965638998) (.cons (no_v1400965419830) (.cons (no_v1400965419734) (.cons (no_v1400965418294) (.cons (no_v1400965362998) (.cons (no_v1400965418198) (.cons (no_v1400965417814) (.cons (no_v1400965362902) (.cons (no_v1400965362518) (.cons (no_v1400965348694) .nil))))))))))))))

private def v1400965641018 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400965641018 : ¬ MinimalInterpreter v1400965641018 :=
  chain_cut false 2 (by decide)

private def v1400965640922 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1400965640922 : ¬ MinimalInterpreter v1400965640922 :=
  chain_cut false 2 (by decide)

private def v1400965639482 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400965639482 : ¬ MinimalInterpreter v1400965639482 :=
  chain_cut false 2 (by decide)

private def v1400965639386 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1400965639386 : ¬ MinimalInterpreter v1400965639386 :=
  chain_cut false 2 (by decide)

private def v1400965639002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1400965639002 : ¬ MinimalInterpreter v1400965639002 :=
  chain_cut false 2 (by decide)

private def v1400965419834 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1400965419834 : ¬ MinimalInterpreter v1400965419834 :=
  chain_cut false 2 (by decide)

private def v1400965419738 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1400965419738 : ¬ MinimalInterpreter v1400965419738 :=
  chain_cut false 2 (by decide)

private def v1400965418298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965418298 : ¬ MinimalInterpreter v1400965418298 :=
  chain_cut false 2 (by decide)

private def v1400965363002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965363002 : ¬ MinimalInterpreter v1400965363002 :=
  chain_cut false 2 (by decide)

private def v1400965418202 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v1400965418202 : ¬ MinimalInterpreter v1400965418202 :=
  chain_cut false 2 (by decide)

private def v1400965417818 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v1400965417818 : ¬ MinimalInterpreter v1400965417818 :=
  chain_cut false 2 (by decide)

private def v1400965362906 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1400965362906 : ¬ MinimalInterpreter v1400965362906 :=
  chain_cut false 2 (by decide)

private def v1400965362522 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v1400965362522 : ¬ MinimalInterpreter v1400965362522 :=
  chain_cut false 2 (by decide)

private def v1400965348698 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1400965348698 : ¬ MinimalInterpreter v1400965348698 :=
  chain_cut false 2 (by decide)

theorem four376 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,0,0,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,0,0,1,0] = [v1400965641018,v1400965640922,v1400965639482,v1400965639386,v1400965639002,v1400965419834,v1400965419738,v1400965418298,v1400965363002,v1400965418202,v1400965417818,v1400965362906,v1400965362522,v1400965348698] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965641018) (.cons (no_v1400965640922) (.cons (no_v1400965639482) (.cons (no_v1400965639386) (.cons (no_v1400965639002) (.cons (no_v1400965419834) (.cons (no_v1400965419738) (.cons (no_v1400965418298) (.cons (no_v1400965363002) (.cons (no_v1400965418202) (.cons (no_v1400965417818) (.cons (no_v1400965362906) (.cons (no_v1400965362522) (.cons (no_v1400965348698) .nil))))))))))))))

private def v1400965641114 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400965641114 : ¬ MinimalInterpreter v1400965641114 :=
  chain_cut false 2 (by decide)

private def v1400965640938 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1400965640938 : ¬ MinimalInterpreter v1400965640938 :=
  chain_cut false 2 (by decide)

private def v1400965639578 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965639578 : ¬ MinimalInterpreter v1400965639578 :=
  chain_cut false 2 (by decide)

private def v1400965639402 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1400965639402 : ¬ MinimalInterpreter v1400965639402 :=
  chain_cut false 2 (by decide)

private def v1400965639018 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1400965639018 : ¬ MinimalInterpreter v1400965639018 :=
  chain_cut false 2 (by decide)

private def v1400965419930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965419930 : ¬ MinimalInterpreter v1400965419930 :=
  chain_cut false 2 (by decide)

private def v1400965419754 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1400965419754 : ¬ MinimalInterpreter v1400965419754 :=
  chain_cut false 2 (by decide)

private def v1400965418394 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965418394 : ¬ MinimalInterpreter v1400965418394 :=
  chain_cut false 2 (by decide)

private def v1400965363098 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965363098 : ¬ MinimalInterpreter v1400965363098 :=
  chain_cut false 2 (by decide)

private def v1400965418218 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v1400965418218 : ¬ MinimalInterpreter v1400965418218 :=
  chain_cut false 2 (by decide)

private def v1400965417834 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v1400965417834 : ¬ MinimalInterpreter v1400965417834 :=
  chain_cut false 2 (by decide)

private def v1400965362922 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1400965362922 : ¬ MinimalInterpreter v1400965362922 :=
  chain_cut false 2 (by decide)

private def v1400965362538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v1400965362538 : ¬ MinimalInterpreter v1400965362538 :=
  chain_cut false 2 (by decide)

private def v1400965348714 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1400965348714 : ¬ MinimalInterpreter v1400965348714 :=
  chain_cut false 2 (by decide)

theorem four377 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,0,1,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,0,1,0,0] = [v1400965641114,v1400965640938,v1400965639578,v1400965639402,v1400965639018,v1400965419930,v1400965419754,v1400965418394,v1400965363098,v1400965418218,v1400965417834,v1400965362922,v1400965362538,v1400965348714] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965641114) (.cons (no_v1400965640938) (.cons (no_v1400965639578) (.cons (no_v1400965639402) (.cons (no_v1400965639018) (.cons (no_v1400965419930) (.cons (no_v1400965419754) (.cons (no_v1400965418394) (.cons (no_v1400965363098) (.cons (no_v1400965418218) (.cons (no_v1400965417834) (.cons (no_v1400965362922) (.cons (no_v1400965362538) (.cons (no_v1400965348714) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
