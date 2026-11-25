import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1401820345142 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1401820345142 : ¬ MinimalInterpreter v1401820345142 :=
  chain_cut false 3 (by decide)

private def v1401820345046 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1401820345046 : ¬ MinimalInterpreter v1401820345046 :=
  chain_cut false 3 (by decide)

private def v1401820331318 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1401820331318 : ¬ MinimalInterpreter v1401820331318 :=
  chain_cut false 3 (by decide)

private def v1401820331222 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1401820331222 : ¬ MinimalInterpreter v1401820331222 :=
  chain_cut false 3 (by decide)

private def v1401820327766 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1401820327766 : ¬ MinimalInterpreter v1401820327766 :=
  chain_cut false 3 (by decide)

private def v1398599119670 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1398599119670 : ¬ MinimalInterpreter v1398599119670 :=
  chain_cut false 4 (by decide)

private def v1398599119574 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1398599119574 : ¬ MinimalInterpreter v1398599119574 :=
  chain_cut false 4 (by decide)

private def v1398599105846 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1398599105846 : ¬ MinimalInterpreter v1398599105846 :=
  chain_cut false 5 (by decide)

private def v1398599105750 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1398599105750 : ¬ MinimalInterpreter v1398599105750 :=
  chain_cut false 5 (by decide)

private def v1398599102294 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1398599102294 : ¬ MinimalInterpreter v1398599102294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four441 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [2,0,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [2,0,0,1] = [v1401820345142,v1401820345046,v1401820331318,v1401820331222,v1401820327766,v1398599119670,v1398599119574,v1398599105846,v1398599105750,v1398599102294] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820345142) (.cons (no_v1401820345046) (.cons (no_v1401820331318) (.cons (no_v1401820331222) (.cons (no_v1401820327766) (.cons (no_v1398599119670) (.cons (no_v1398599119574) (.cons (no_v1398599105846) (.cons (no_v1398599105750) (.cons (no_v1398599102294) .nil))))))))))

private def v1401820345146 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1401820345146 : ¬ MinimalInterpreter v1401820345146 :=
  chain_cut false 3 (by decide)

private def v1401820345050 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1401820345050 : ¬ MinimalInterpreter v1401820345050 :=
  chain_cut false 3 (by decide)

private def v1401820331322 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1401820331322 : ¬ MinimalInterpreter v1401820331322 :=
  chain_cut false 3 (by decide)

private def v1401820331226 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1401820331226 : ¬ MinimalInterpreter v1401820331226 :=
  chain_cut false 3 (by decide)

private def v1401820327770 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1401820327770 : ¬ MinimalInterpreter v1401820327770 :=
  chain_cut false 3 (by decide)

private def v1398599119674 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1398599119674 : ¬ MinimalInterpreter v1398599119674 :=
  chain_cut false 4 (by decide)

private def v1398599119578 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1398599119578 : ¬ MinimalInterpreter v1398599119578 :=
  chain_cut false 4 (by decide)

private def v1398599105850 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1398599105850 : ¬ MinimalInterpreter v1398599105850 :=
  chain_cut false 5 (by decide)

private def v1398599105754 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1398599105754 : ¬ MinimalInterpreter v1398599105754 :=
  chain_cut false 4 (by decide)

private def v1398599102298 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1398599102298 : ¬ MinimalInterpreter v1398599102298 :=
  chain_cut false 5 (by decide)

theorem four442 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [2,0,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [2,0,1,0] = [v1401820345146,v1401820345050,v1401820331322,v1401820331226,v1401820327770,v1398599119674,v1398599119578,v1398599105850,v1398599105754,v1398599102298] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820345146) (.cons (no_v1401820345050) (.cons (no_v1401820331322) (.cons (no_v1401820331226) (.cons (no_v1401820327770) (.cons (no_v1398599119674) (.cons (no_v1398599119578) (.cons (no_v1398599105850) (.cons (no_v1398599105754) (.cons (no_v1398599102298) .nil))))))))))

private def v1401820345242 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1401820345242 : ¬ MinimalInterpreter v1401820345242 :=
  chain_cut false 3 (by decide)

private def v1401820345066 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1401820345066 : ¬ MinimalInterpreter v1401820345066 :=
  chain_cut false 3 (by decide)

private def v1401820331418 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1401820331418 : ¬ MinimalInterpreter v1401820331418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820331242 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1401820331242 : ¬ MinimalInterpreter v1401820331242 :=
  chain_cut false 3 (by decide)

private def v1401820327786 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1401820327786 : ¬ MinimalInterpreter v1401820327786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599119770 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1398599119770 : ¬ MinimalInterpreter v1398599119770 :=
  chain_cut false 4 (by decide)

private def v1398599119594 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1398599119594 : ¬ MinimalInterpreter v1398599119594 :=
  chain_cut false 4 (by decide)

private def v1398599105946 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1398599105946 : ¬ MinimalInterpreter v1398599105946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599105770 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1398599105770 : ¬ MinimalInterpreter v1398599105770 :=
  chain_cut false 4 (by decide)

private def v1398599102314 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1398599102314 : ¬ MinimalInterpreter v1398599102314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four443 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [2,1,0,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [2,1,0,0] = [v1401820345242,v1401820345066,v1401820331418,v1401820331242,v1401820327786,v1398599119770,v1398599119594,v1398599105946,v1398599105770,v1398599102314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820345242) (.cons (no_v1401820345066) (.cons (no_v1401820331418) (.cons (no_v1401820331242) (.cons (no_v1401820327786) (.cons (no_v1398599119770) (.cons (no_v1398599119594) (.cons (no_v1398599105946) (.cons (no_v1398599105770) (.cons (no_v1398599102314) .nil))))))))))

private def v1398230011118 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398230011118 : ¬ MinimalInterpreter v1398230011118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230010734 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398230010734 : ¬ MinimalInterpreter v1398230010734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230004974 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1398230004974 : ¬ MinimalInterpreter v1398230004974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230004590 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1398230004590 : ¬ MinimalInterpreter v1398230004590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230003054 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1398230003054 : ¬ MinimalInterpreter v1398230003054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230158574 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398230158574 : ¬ MinimalInterpreter v1398230158574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398230158190 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398230158190 : ¬ MinimalInterpreter v1398230158190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230748398 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398230748398 : ¬ MinimalInterpreter v1398230748398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398230748014 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398230748014 : ¬ MinimalInterpreter v1398230748014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four444 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,0,1,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,0,1,2] = [v1398230011118,v1398230010734,v1398230004974,v1398230004590,v1398230003054,v1398230158574,v1398230158190,v1398230748398,v1398230748014] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230011118) (.cons (no_v1398230010734) (.cons (no_v1398230004974) (.cons (no_v1398230004590) (.cons (no_v1398230003054) (.cons (no_v1398230158574) (.cons (no_v1398230158190) (.cons (no_v1398230748398) (.cons (no_v1398230748014) .nil)))))))))

private def v1398230011126 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398230011126 : ¬ MinimalInterpreter v1398230011126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230010742 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398230010742 : ¬ MinimalInterpreter v1398230010742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230004982 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1398230004982 : ¬ MinimalInterpreter v1398230004982 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230004598 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1398230004598 : ¬ MinimalInterpreter v1398230004598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230003062 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1398230003062 : ¬ MinimalInterpreter v1398230003062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230158582 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398230158582 : ¬ MinimalInterpreter v1398230158582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398230158198 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398230158198 : ¬ MinimalInterpreter v1398230158198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230748406 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398230748406 : ¬ MinimalInterpreter v1398230748406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398230748022 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398230748022 : ¬ MinimalInterpreter v1398230748022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four445 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,0,2,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,0,2,1] = [v1398230011126,v1398230010742,v1398230004982,v1398230004598,v1398230003062,v1398230158582,v1398230158198,v1398230748406,v1398230748022] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230011126) (.cons (no_v1398230010742) (.cons (no_v1398230004982) (.cons (no_v1398230004598) (.cons (no_v1398230003062) (.cons (no_v1398230158582) (.cons (no_v1398230158198) (.cons (no_v1398230748406) (.cons (no_v1398230748022) .nil)))))))))

private def v1398230011502 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398230011502 : ¬ MinimalInterpreter v1398230011502 :=
  chain_cut true 4 (by decide)

private def v1398230010798 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398230010798 : ¬ MinimalInterpreter v1398230010798 :=
  chain_cut true 5 (by decide)

private def v1398230005358 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1398230005358 : ¬ MinimalInterpreter v1398230005358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230004654 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1398230004654 : ¬ MinimalInterpreter v1398230004654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230003118 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1398230003118 : ¬ MinimalInterpreter v1398230003118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230158958 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398230158958 : ¬ MinimalInterpreter v1398230158958 :=
  chain_cut true 5 (by decide)

private def v1398230158254 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398230158254 : ¬ MinimalInterpreter v1398230158254 :=
  chain_cut true 7 (by decide)

private def v1398230748782 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398230748782 : ¬ MinimalInterpreter v1398230748782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398230748078 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398230748078 : ¬ MinimalInterpreter v1398230748078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four446 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,1,0,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,1,0,2] = [v1398230011502,v1398230010798,v1398230005358,v1398230004654,v1398230003118,v1398230158958,v1398230158254,v1398230748782,v1398230748078] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230011502) (.cons (no_v1398230010798) (.cons (no_v1398230005358) (.cons (no_v1398230004654) (.cons (no_v1398230003118) (.cons (no_v1398230158958) (.cons (no_v1398230158254) (.cons (no_v1398230748782) (.cons (no_v1398230748078) .nil)))))))))

theorem four447 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,1,1,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
