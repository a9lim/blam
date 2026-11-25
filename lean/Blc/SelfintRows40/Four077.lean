import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400964882030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400964882030 : ¬ MinimalInterpreter v1400964882030 :=
  cost_cut false 2 (by decide)

private def v1400964880302 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v1400964880302 : ¬ MinimalInterpreter v1400964880302 :=
  cost_cut false 2 (by decide)

private def v1400964836974 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400964836974 : ¬ MinimalInterpreter v1400964836974 :=
  cost_cut false 2 (by decide)

private def v1400964835246 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v1400964835246 : ¬ MinimalInterpreter v1400964835246 :=
  cost_cut false 2 (by decide)

private def v1400964823982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v1400964823982 : ¬ MinimalInterpreter v1400964823982 :=
  cost_cut false 2 (by decide)

private def v1400965593486 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1400965593486 : ¬ MinimalInterpreter v1400965593486 :=
  chain_cut false 2 (by decide)

private def v1400965586574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1400965586574 : ¬ MinimalInterpreter v1400965586574 :=
  chain_cut false 2 (by decide)

private def v1400965413262 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1400965413262 : ¬ MinimalInterpreter v1400965413262 :=
  chain_cut false 2 (by decide)

private def v1400965402222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965402222 : ¬ MinimalInterpreter v1400965402222 :=
  chain_cut false 2 (by decide)

private def v1400965406350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1400965406350 : ¬ MinimalInterpreter v1400965406350 :=
  chain_cut false 2 (by decide)

private def v1400965361294 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1400965361294 : ¬ MinimalInterpreter v1400965361294 :=
  chain_cut false 2 (by decide)

private def v1400965358510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v1400965358510 : ¬ MinimalInterpreter v1400965358510 :=
  chain_cut false 2 (by decide)

private def v1400968345998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1400968345998 : ¬ MinimalInterpreter v1400968345998 :=
  cost_cut false 3 (by decide)

private def v1400968339086 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1400968339086 : ¬ MinimalInterpreter v1400968339086 :=
  cost_cut false 3 (by decide)

theorem four539 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,2,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,2,0,2] = [v1400964882030,v1400964880302,v1400964836974,v1400964835246,v1400964823982,v1400965593486,v1400965586574,v1400965413262,v1400965402222,v1400965406350,v1400965361294,v1400965358510,v1400968345998,v1400968339086] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964882030) (.cons (no_v1400964880302) (.cons (no_v1400964836974) (.cons (no_v1400964835246) (.cons (no_v1400964823982) (.cons (no_v1400965593486) (.cons (no_v1400965586574) (.cons (no_v1400965413262) (.cons (no_v1400965402222) (.cons (no_v1400965406350) (.cons (no_v1400965361294) (.cons (no_v1400965358510) (.cons (no_v1400968345998) (.cons (no_v1400968339086) .nil))))))))))))))

private def v1400965593206 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v1400965593206 : ¬ MinimalInterpreter v1400965593206 :=
  chain_cut false 2 (by decide)

private def v1400965593542 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1400965593542 : ¬ MinimalInterpreter v1400965593542 :=
  chain_cut false 2 (by decide)

private def v1400965586630 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1400965586630 : ¬ MinimalInterpreter v1400965586630 :=
  chain_cut false 2 (by decide)

private def v1400965586486 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1400965586486 : ¬ MinimalInterpreter v1400965586486 :=
  chain_cut false 2 (by decide)

private def v1400965412982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v1400965412982 : ¬ MinimalInterpreter v1400965412982 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965413318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1400965413318 : ¬ MinimalInterpreter v1400965413318 :=
  chain_cut false 2 (by decide)

private def v1400965406406 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1400965406406 : ¬ MinimalInterpreter v1400965406406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965361350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1400965361350 : ¬ MinimalInterpreter v1400965361350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965406262 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1400965406262 : ¬ MinimalInterpreter v1400965406262 :=
  chain_cut false 2 (by decide)

private def v1400965361206 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1400965361206 : ¬ MinimalInterpreter v1400965361206 :=
  chain_cut false 2 (by decide)

private def v1400968346054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1400968346054 : ¬ MinimalInterpreter v1400968346054 :=
  cost_cut false 3 (by decide)

private def v1400968339142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1400968339142 : ¬ MinimalInterpreter v1400968339142 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400968338998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1400968338998 : ¬ MinimalInterpreter v1400968338998 :=
  cost_cut false 3 (by decide)

theorem four540 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,2,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,2,1,1] = [v1400965593206,v1400965593542,v1400965586630,v1400965586486,v1400965412982,v1400965413318,v1400965406406,v1400965361350,v1400965406262,v1400965361206,v1400968346054,v1400968339142,v1400968338998] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965593206) (.cons (no_v1400965593542) (.cons (no_v1400965586630) (.cons (no_v1400965586486) (.cons (no_v1400965412982) (.cons (no_v1400965413318) (.cons (no_v1400965406406) (.cons (no_v1400965361350) (.cons (no_v1400965406262) (.cons (no_v1400965361206) (.cons (no_v1400968346054) (.cons (no_v1400968339142) (.cons (no_v1400968338998) .nil)))))))))))))

private def v1400964882042 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400964882042 : ¬ MinimalInterpreter v1400964882042 :=
  cost_cut false 2 (by decide)

private def v1400964880314 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v1400964880314 : ¬ MinimalInterpreter v1400964880314 :=
  cost_cut false 2 (by decide)

private def v1400964836986 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400964836986 : ¬ MinimalInterpreter v1400964836986 :=
  cost_cut false 2 (by decide)

private def v1400964835258 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v1400964835258 : ¬ MinimalInterpreter v1400964835258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1400964823994 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v1400964823994 : ¬ MinimalInterpreter v1400964823994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400965586490 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1400965586490 : ¬ MinimalInterpreter v1400965586490 :=
  chain_cut false 2 (by decide)

private def v1400965402234 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965402234 : ¬ MinimalInterpreter v1400965402234 :=
  chain_cut false 2 (by decide)

private def v1400965406266 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1400965406266 : ¬ MinimalInterpreter v1400965406266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965361210 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1400965361210 : ¬ MinimalInterpreter v1400965361210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965358522 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v1400965358522 : ¬ MinimalInterpreter v1400965358522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400968339002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1400968339002 : ¬ MinimalInterpreter v1400968339002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four541 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,2,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,2,2,0] = [v1400964882042,v1400964880314,v1400964836986,v1400964835258,v1400964823994,v1400965586490,v1400965402234,v1400965406266,v1400965361210,v1400965358522,v1400968339002] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964882042) (.cons (no_v1400964880314) (.cons (no_v1400964836986) (.cons (no_v1400964835258) (.cons (no_v1400964823994) (.cons (no_v1400965586490) (.cons (no_v1400965402234) (.cons (no_v1400965406266) (.cons (no_v1400965361210) (.cons (no_v1400965358522) (.cons (no_v1400968339002) .nil)))))))))))

private def v1400964882230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400964882230 : ¬ MinimalInterpreter v1400964882230 :=
  chain_cut false 2 (by decide)

private def v1400964880342 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1400964880342 : ¬ MinimalInterpreter v1400964880342 :=
  chain_cut false 2 (by decide)

private def v1400964837174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400964837174 : ¬ MinimalInterpreter v1400964837174 :=
  chain_cut false 2 (by decide)

private def v1400964835286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v1400964835286 : ¬ MinimalInterpreter v1400964835286 :=
  chain_cut false 2 (by decide)

private def v1400964824022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v1400964824022 : ¬ MinimalInterpreter v1400964824022 :=
  chain_cut false 2 (by decide)

private def v1400965402422 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965402422 : ¬ MinimalInterpreter v1400965402422 :=
  chain_cut false 2 (by decide)

private def v1400965358550 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1400965358550 : ¬ MinimalInterpreter v1400965358550 :=
  chain_cut false 2 (by decide)

private def v1400968322870 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400968322870 : ¬ MinimalInterpreter v1400968322870 :=
  cost_cut false 3 (by decide)

private def v1400968320982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1400968320982 : ¬ MinimalInterpreter v1400968320982 :=
  cost_cut false 3 (by decide)

theorem four542 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,3,0,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,3,0,1] = [v1400964882230,v1400964880342,v1400964837174,v1400964835286,v1400964824022,v1400965402422,v1400965358550,v1400968322870,v1400968320982] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964882230) (.cons (no_v1400964880342) (.cons (no_v1400964837174) (.cons (no_v1400964835286) (.cons (no_v1400964824022) (.cons (no_v1400965402422) (.cons (no_v1400965358550) (.cons (no_v1400968322870) (.cons (no_v1400968320982) .nil)))))))))

private def v1400964882234 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400964882234 : ¬ MinimalInterpreter v1400964882234 :=
  chain_cut false 2 (by decide)

private def v1400964880346 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1400964880346 : ¬ MinimalInterpreter v1400964880346 :=
  chain_cut false 2 (by decide)

private def v1400964837178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400964837178 : ¬ MinimalInterpreter v1400964837178 :=
  chain_cut false 2 (by decide)

private def v1400964835290 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v1400964835290 : ¬ MinimalInterpreter v1400964835290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964824026 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v1400964824026 : ¬ MinimalInterpreter v1400964824026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400965402426 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965402426 : ¬ MinimalInterpreter v1400965402426 :=
  chain_cut false 2 (by decide)

private def v1400965400538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 0))))))
private theorem no_v1400965400538 : ¬ MinimalInterpreter v1400965400538 :=
  chain_cut false 2 (by decide)

private def v1400965358554 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1400965358554 : ¬ MinimalInterpreter v1400965358554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1400968322874 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400968322874 : ¬ MinimalInterpreter v1400968322874 :=
  cost_cut false 3 (by decide)

private def v1400968320986 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1400968320986 : ¬ MinimalInterpreter v1400968320986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem four543 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,3,1,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,3,1,0] = [v1400964882234,v1400964880346,v1400964837178,v1400964835290,v1400964824026,v1400965402426,v1400965400538,v1400965358554,v1400968322874,v1400968320986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964882234) (.cons (no_v1400964880346) (.cons (no_v1400964837178) (.cons (no_v1400964835290) (.cons (no_v1400964824026) (.cons (no_v1400965402426) (.cons (no_v1400965400538) (.cons (no_v1400965358554) (.cons (no_v1400968322874) (.cons (no_v1400968320986) .nil))))))))))

private def v1400964893918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1400964893918 : ¬ MinimalInterpreter v1400964893918 :=
  chain_cut false 2 (by decide)

private def v1400964893534 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1400964893534 : ¬ MinimalInterpreter v1400964893534 :=
  chain_cut false 2 (by decide)

private def v1400964838622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v1400964838622 : ¬ MinimalInterpreter v1400964838622 :=
  chain_cut false 2 (by decide)

private def v1400964838238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v1400964838238 : ¬ MinimalInterpreter v1400964838238 :=
  chain_cut false 2 (by decide)

private def v1400964824414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v1400964824414 : ¬ MinimalInterpreter v1400964824414 :=
  chain_cut false 2 (by decide)

theorem four544 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,0,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,0,3] = [v1400964893918,v1400964893534,v1400964838622,v1400964838238,v1400964824414] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964893918) (.cons (no_v1400964893534) (.cons (no_v1400964838622) (.cons (no_v1400964838238) (.cons (no_v1400964824414) .nil)))))

private def v1400964893934 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400964893934 : ¬ MinimalInterpreter v1400964893934 :=
  cost_cut false 2 (by decide)

private def v1400964893550 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400964893550 : ¬ MinimalInterpreter v1400964893550 :=
  cost_cut false 2 (by decide)

private def v1400964838638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1400964838638 : ¬ MinimalInterpreter v1400964838638 :=
  cost_cut false 2 (by decide)

private def v1400964838254 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1400964838254 : ¬ MinimalInterpreter v1400964838254 :=
  cost_cut false 2 (by decide)

private def v1400964824430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1400964824430 : ¬ MinimalInterpreter v1400964824430 :=
  cost_cut false 2 (by decide)

private def v1400965640430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1400965640430 : ¬ MinimalInterpreter v1400965640430 :=
  chain_cut false 2 (by decide)

private def v1400965641102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v1400965641102 : ¬ MinimalInterpreter v1400965641102 :=
  chain_cut false 2 (by decide)

private def v1400965639566 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))))
private theorem no_v1400965639566 : ¬ MinimalInterpreter v1400965639566 :=
  chain_cut false 2 (by decide)

private def v1400965419246 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v1400965419246 : ¬ MinimalInterpreter v1400965419246 :=
  chain_cut false 2 (by decide)

private def v1400965419918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v1400965419918 : ¬ MinimalInterpreter v1400965419918 :=
  chain_cut false 2 (by decide)

private def v1400965418382 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 2)))))))
private theorem no_v1400965418382 : ¬ MinimalInterpreter v1400965418382 :=
  chain_cut false 2 (by decide)

private def v1400965363086 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 2)))))))
private theorem no_v1400965363086 : ¬ MinimalInterpreter v1400965363086 :=
  chain_cut false 2 (by decide)

theorem four545 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,1,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,1,2] = [v1400964893934,v1400964893550,v1400964838638,v1400964838254,v1400964824430,v1400965640430,v1400965641102,v1400965639566,v1400965419246,v1400965419918,v1400965418382,v1400965363086] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964893934) (.cons (no_v1400964893550) (.cons (no_v1400964838638) (.cons (no_v1400964838254) (.cons (no_v1400964824430) (.cons (no_v1400965640430) (.cons (no_v1400965641102) (.cons (no_v1400965639566) (.cons (no_v1400965419246) (.cons (no_v1400965419918) (.cons (no_v1400965418382) (.cons (no_v1400965363086) .nil))))))))))))

end Blc.SelfintSingleObject.Rows40
