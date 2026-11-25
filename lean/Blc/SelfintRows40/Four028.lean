import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308426998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308426998 : ¬ MinimalInterpreter v1402308426998 :=
  cost_cut false 2 (by decide)

private def v1402308419446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))))
private theorem no_v1402308419446 : ¬ MinimalInterpreter v1402308419446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308522230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308522230 : ¬ MinimalInterpreter v1402308522230 :=
  chain_cut false 2 (by decide)

private def v1402308522950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402308522950 : ¬ MinimalInterpreter v1402308522950 :=
  chain_cut false 2 (by decide)

private def v1402308492742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402308492742 : ¬ MinimalInterpreter v1402308492742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.lam (.var 1))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308492406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 2))) (.var 1))))))))
private theorem no_v1402308492406 : ¬ MinimalInterpreter v1402308492406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 2))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 2) (.lam (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 1))) (.app (.app (.var 2) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308325622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308325622 : ¬ MinimalInterpreter v1402308325622 :=
  chain_cut false 2 (by decide)

private def v1402308326342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402308326342 : ¬ MinimalInterpreter v1402308326342 :=
  chain_cut false 2 (by decide)

private def v1402308279542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308279542 : ¬ MinimalInterpreter v1402308279542 :=
  cost_cut false 2 (by decide)

private def v1402308296134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402308296134 : ¬ MinimalInterpreter v1402308296134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.lam (.var 1)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 3) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308246982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402308246982 : ¬ MinimalInterpreter v1402308246982 :=
  chain_cut false 2 (by decide)

private def v1402308271990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 1)))))))
private theorem no_v1402308271990 : ¬ MinimalInterpreter v1402308271990 :=
  cost_cut false 2 (by decide)

private def v1402308295798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 2)))) (.var 1)))))))
private theorem no_v1402308295798 : ¬ MinimalInterpreter v1402308295798 :=
  chain_cut false 2 (by decide)

private def v1402308246646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 2))) (.var 1)))))))
private theorem no_v1402308246646 : ¬ MinimalInterpreter v1402308246646 :=
  chain_cut false 2 (by decide)

private def v1402308235126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 2)) (.var 1)))))))
private theorem no_v1402308235126 : ¬ MinimalInterpreter v1402308235126 :=
  cost_cut false 2 (by decide)

private def v1402313145590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402313145590 : ¬ MinimalInterpreter v1402313145590 :=
  cost_cut false 2 (by decide)

private def v1402313138038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))))
private theorem no_v1402313138038 : ¬ MinimalInterpreter v1402313138038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313240822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402313240822 : ¬ MinimalInterpreter v1402313240822 :=
  chain_cut false 2 (by decide)

private def v1402312650998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v1402312650998 : ¬ MinimalInterpreter v1402312650998 :=
  chain_cut false 2 (by decide)

private def v1402312604918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312604918 : ¬ MinimalInterpreter v1402312604918 :=
  chain_cut false 2 (by decide)

private def v1402312621510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.lam (.var 1)))))))
private theorem no_v1402312621510 : ¬ MinimalInterpreter v1402312621510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.lam (.var 1))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312621174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 2))))) (.var 1))))))
private theorem no_v1402312621174 : ¬ MinimalInterpreter v1402312621174 :=
  chain_cut false 2 (by decide)

private def v1402312473718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))) (.var 1))))))
private theorem no_v1402312473718 : ¬ MinimalInterpreter v1402312473718 :=
  chain_cut false 2 (by decide)

private def v1402312462198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)) (.var 1))))))
private theorem no_v1402312462198 : ¬ MinimalInterpreter v1402312462198 :=
  chain_cut false 2 (by decide)

private def v1402332019958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402332019958 : ¬ MinimalInterpreter v1402332019958 :=
  cost_cut false 2 (by decide)

private def v1402332012406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))))
private theorem no_v1402332012406 : ¬ MinimalInterpreter v1402332012406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332115910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402332115910 : ¬ MinimalInterpreter v1402332115910 :=
  chain_cut false 2 (by decide)

private def v1402332085702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402332085702 : ¬ MinimalInterpreter v1402332085702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.lam (.var 1))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 3) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402407612662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402407612662 : ¬ MinimalInterpreter v1402407612662 :=
  chain_cut false 4 (by decide)

private def v1402407613382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402407613382 : ¬ MinimalInterpreter v1402407613382 :=
  chain_cut false 7 (by decide)

private def v1402407583174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402407583174 : ¬ MinimalInterpreter v1402407583174 :=
  w_cut false 0 (by decide)

theorem four196 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,2,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,2,1] = [v1402308426998,v1402308419446,v1402308522230,v1402308522950,v1402308492742,v1402308492406,v1402308325622,v1402308326342,v1402308279542,v1402308296134,v1402308246982,v1402308271990,v1402308295798,v1402308246646,v1402308235126,v1402313145590,v1402313138038,v1402313240822,v1402312650998,v1402312604918,v1402312621510,v1402312621174,v1402312473718,v1402312462198,v1402332019958,v1402332012406,v1402332115910,v1402332085702,v1402407612662,v1402407613382,v1402407583174] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308426998) (.cons (no_v1402308419446) (.cons (no_v1402308522230) (.cons (no_v1402308522950) (.cons (no_v1402308492742) (.cons (no_v1402308492406) (.cons (no_v1402308325622) (.cons (no_v1402308326342) (.cons (no_v1402308279542) (.cons (no_v1402308296134) (.cons (no_v1402308246982) (.cons (no_v1402308271990) (.cons (no_v1402308295798) (.cons (no_v1402308246646) (.cons (no_v1402308235126) (.cons (no_v1402313145590) (.cons (no_v1402313138038) (.cons (no_v1402313240822) (.cons (no_v1402312650998) (.cons (no_v1402312604918) (.cons (no_v1402312621510) (.cons (no_v1402312621174) (.cons (no_v1402312473718) (.cons (no_v1402312462198) (.cons (no_v1402332019958) (.cons (no_v1402332012406) (.cons (no_v1402332115910) (.cons (no_v1402332085702) (.cons (no_v1402407612662) (.cons (no_v1402407613382) (.cons (no_v1402407583174) .nil)))))))))))))))))))))))))))))))

private def v1402308492410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402308492410 : ¬ MinimalInterpreter v1402308492410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 3))) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308279546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308279546 : ¬ MinimalInterpreter v1402308279546 :=
  chain_cut false 2 (by decide)

private def v1402308295802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402308295802 : ¬ MinimalInterpreter v1402308295802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 3)))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308246650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402308246650 : ¬ MinimalInterpreter v1402308246650 :=
  chain_cut false 2 (by decide)

private def v1402308235130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 3)) (.var 0)))))))
private theorem no_v1402308235130 : ¬ MinimalInterpreter v1402308235130 :=
  chain_cut false 2 (by decide)

private def v1402312621178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))) (.var 0))))))
private theorem no_v1402312621178 : ¬ MinimalInterpreter v1402312621178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))) (.var 0)))) (.lam (r := (.lam (.app (.var 2) (.lam (.var 2))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 3) (so_dead (by decide) (.var 3))))) (.var 0)) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402332085370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402332085370 : ¬ MinimalInterpreter v1402332085370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402407582842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402407582842 : ¬ MinimalInterpreter v1402407582842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

theorem four197 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,3,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,3,0] = [v1402308492410,v1402308279546,v1402308295802,v1402308246650,v1402308235130,v1402312621178,v1402332085370,v1402407582842] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308492410) (.cons (no_v1402308279546) (.cons (no_v1402308295802) (.cons (no_v1402308246650) (.cons (no_v1402308235130) (.cons (no_v1402312621178) (.cons (no_v1402332085370) (.cons (no_v1402407582842) .nil))))))))

private def v1402307247726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402307247726 : ¬ MinimalInterpreter v1402307247726 :=
  chain_cut false 2 (by decide)

private def v1402307239854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 0)) (.var 2)))))))))
private theorem no_v1402307239854 : ¬ MinimalInterpreter v1402307239854 :=
  chain_cut false 2 (by decide)

private def v1402307198574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402307198574 : ¬ MinimalInterpreter v1402307198574 :=
  chain_cut false 2 (by decide)

private def v1402307190702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 0))) (.var 2))))))))
private theorem no_v1402307190702 : ¬ MinimalInterpreter v1402307190702 :=
  chain_cut false 2 (by decide)

private def v1402307178414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 0)) (.var 2))))))))
private theorem no_v1402307178414 : ¬ MinimalInterpreter v1402307178414 :=
  chain_cut false 2 (by decide)

private def v1402308279918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308279918 : ¬ MinimalInterpreter v1402308279918 :=
  chain_cut false 2 (by decide)

private def v1402308235182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 0)) (.var 2)))))))
private theorem no_v1402308235182 : ¬ MinimalInterpreter v1402308235182 :=
  chain_cut false 2 (by decide)

private def v1402313145966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402313145966 : ¬ MinimalInterpreter v1402313145966 :=
  chain_cut false 2 (by decide)

private def v1402313138094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 2)))))))))
private theorem no_v1402313138094 : ¬ MinimalInterpreter v1402313138094 :=
  chain_cut false 2 (by decide)

private def v1402407517806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402407517806 : ¬ MinimalInterpreter v1402407517806 :=
  chain_cut false 4 (by decide)

private def v1402407509934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 2)))))))))
private theorem no_v1402407509934 : ¬ MinimalInterpreter v1402407509934 :=
  chain_cut false 4 (by decide)

theorem four198 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,4,0,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,4,0,2] = [v1402307247726,v1402307239854,v1402307198574,v1402307190702,v1402307178414,v1402308279918,v1402308235182,v1402313145966,v1402313138094,v1402407517806,v1402407509934] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307247726) (.cons (no_v1402307239854) (.cons (no_v1402307198574) (.cons (no_v1402307190702) (.cons (no_v1402307178414) (.cons (no_v1402308279918) (.cons (no_v1402308235182) (.cons (no_v1402313145966) (.cons (no_v1402313138094) (.cons (no_v1402407517806) (.cons (no_v1402407509934) .nil)))))))))))

private def v1402307247734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402307247734 : ¬ MinimalInterpreter v1402307247734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 3) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 4) (.app (.var 1) (.var 1)))) (.app (.var 3) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307239862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 1)) (.var 1)))))))))
private theorem no_v1402307239862 : ¬ MinimalInterpreter v1402307239862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 3) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 4) (.var 1)) (.var 1))) (.app (.app (.var 3) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307198582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402307198582 : ¬ MinimalInterpreter v1402307198582 :=
  chain_cut false 2 (by decide)

private def v1402307190710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 1))) (.var 1))))))))
private theorem no_v1402307190710 : ¬ MinimalInterpreter v1402307190710 :=
  chain_cut false 2 (by decide)

private def v1402307178422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 1)) (.var 1))))))))
private theorem no_v1402307178422 : ¬ MinimalInterpreter v1402307178422 :=
  chain_cut false 2 (by decide)

private def v1402308279926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308279926 : ¬ MinimalInterpreter v1402308279926 :=
  chain_cut false 2 (by decide)

private def v1402308272054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 4) (.var 1)))) (.var 1)))))))
private theorem no_v1402308272054 : ¬ MinimalInterpreter v1402308272054 :=
  chain_cut false 2 (by decide)

private def v1402308235190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.var 1)))))))
private theorem no_v1402308235190 : ¬ MinimalInterpreter v1402308235190 :=
  chain_cut false 2 (by decide)

private def v1402312605302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312605302 : ¬ MinimalInterpreter v1402312605302 :=
  chain_cut false 2 (by decide)

private def v1402312462262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)) (.var 1))))))
private theorem no_v1402312462262 : ¬ MinimalInterpreter v1402312462262 :=
  chain_cut false 2 (by decide)

theorem four199 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,4,1,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,4,1,1] = [v1402307247734,v1402307239862,v1402307198582,v1402307190710,v1402307178422,v1402308279926,v1402308272054,v1402308235190,v1402312605302,v1402312462262] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307247734) (.cons (no_v1402307239862) (.cons (no_v1402307198582) (.cons (no_v1402307190710) (.cons (no_v1402307178422) (.cons (no_v1402308279926) (.cons (no_v1402308272054) (.cons (no_v1402308235190) (.cons (no_v1402312605302) (.cons (no_v1402312462262) .nil))))))))))

private def v1402307247738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402307247738 : ¬ MinimalInterpreter v1402307247738 :=
  chain_cut false 2 (by decide)

private def v1402307239866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 2)) (.var 0)))))))))
private theorem no_v1402307239866 : ¬ MinimalInterpreter v1402307239866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 4) (.var 2)) (.var 0))) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307198586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402307198586 : ¬ MinimalInterpreter v1402307198586 :=
  chain_cut false 2 (by decide)

private def v1402307190714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 2))) (.var 0))))))))
private theorem no_v1402307190714 : ¬ MinimalInterpreter v1402307190714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 4) (.var 2))) (.var 0)) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307178426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 2)) (.var 0))))))))
private theorem no_v1402307178426 : ¬ MinimalInterpreter v1402307178426 :=
  chain_cut false 2 (by decide)

private def v1402308279930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308279930 : ¬ MinimalInterpreter v1402308279930 :=
  chain_cut false 2 (by decide)

private def v1402308272058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 4) (.var 2)))) (.var 0)))))))
private theorem no_v1402308272058 : ¬ MinimalInterpreter v1402308272058 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 4) (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.lam (.app (.var 3) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 4) (.var 2)))) (.var 0)) (so_dead (by decide) (.app (.var 3) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308235194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 2)) (.var 0)))))))
private theorem no_v1402308235194 : ¬ MinimalInterpreter v1402308235194 :=
  chain_cut false 2 (by decide)

private def v1402313145978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 4) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402313145978 : ¬ MinimalInterpreter v1402313145978 :=
  chain_cut false 2 (by decide)

private def v1402313138106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 4) (.var 2)) (.var 0)))))))))
private theorem no_v1402313138106 : ¬ MinimalInterpreter v1402313138106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 4) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.var 2)) (.var 0)) (.app (.var 3) (.var 1)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402407517818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402407517818 : ¬ MinimalInterpreter v1402407517818 :=
  chain_cut false 4 (by decide)

private def v1402407509946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 2)) (.var 0)))))))))
private theorem no_v1402407509946 : ¬ MinimalInterpreter v1402407509946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.var 2)) (.var 0)) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

theorem four200 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,4,2,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,4,2,0] = [v1402307247738,v1402307239866,v1402307198586,v1402307190714,v1402307178426,v1402308279930,v1402308272058,v1402308235194,v1402313145978,v1402313138106,v1402407517818,v1402407509946] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307247738) (.cons (no_v1402307239866) (.cons (no_v1402307198586) (.cons (no_v1402307190714) (.cons (no_v1402307178426) (.cons (no_v1402308279930) (.cons (no_v1402308272058) (.cons (no_v1402308235194) (.cons (no_v1402313145978) (.cons (no_v1402313138106) (.cons (no_v1402407517818) (.cons (no_v1402407509946) .nil))))))))))))

private def v1402307294142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 4))))))))))
private theorem no_v1402307294142 : ¬ MinimalInterpreter v1402307294142 :=
  chain_cut false 2 (by decide)

private def v1402307292606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 4)))))))))
private theorem no_v1402307292606 : ¬ MinimalInterpreter v1402307292606 :=
  chain_cut false 2 (by decide)

private def v1402307204030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 4)))))))))
private theorem no_v1402307204030 : ¬ MinimalInterpreter v1402307204030 :=
  chain_cut false 2 (by decide)

private def v1402307202494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 4))))))))
private theorem no_v1402307202494 : ¬ MinimalInterpreter v1402307202494 :=
  chain_cut false 2 (by decide)

private def v1402307179966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 4))))))))
private theorem no_v1402307179966 : ¬ MinimalInterpreter v1402307179966 :=
  chain_cut false 2 (by decide)

private def v1402308707262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 4))))))))))
private theorem no_v1402308707262 : ¬ MinimalInterpreter v1402308707262 :=
  chain_cut false 2 (by decide)

private def v1402308709950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402308709950 : ¬ MinimalInterpreter v1402308709950 :=
  chain_cut false 2 (by decide)

private def v1402308703806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))))
private theorem no_v1402308703806 : ¬ MinimalInterpreter v1402308703806 :=
  chain_cut false 2 (by decide)

private def v1402308346814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 4)))))))))
private theorem no_v1402308346814 : ¬ MinimalInterpreter v1402308346814 :=
  chain_cut false 2 (by decide)

private def v1402308349502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 4)))))))))
private theorem no_v1402308349502 : ¬ MinimalInterpreter v1402308349502 :=
  chain_cut false 2 (by decide)

private def v1402308343358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 4))))))))
private theorem no_v1402308343358 : ¬ MinimalInterpreter v1402308343358 :=
  chain_cut false 2 (by decide)

private def v1402308253246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 4))))))))
private theorem no_v1402308253246 : ¬ MinimalInterpreter v1402308253246 :=
  chain_cut false 2 (by decide)

private def v1402314362430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402314362430 : ¬ MinimalInterpreter v1402314362430 :=
  chain_cut false 2 (by decide)

private def v1402314373182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))))))))
private theorem no_v1402314373182 : ¬ MinimalInterpreter v1402314373182 :=
  chain_cut false 2 (by decide)

private def v1402314348606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))))))))
private theorem no_v1402314348606 : ¬ MinimalInterpreter v1402314348606 :=
  chain_cut false 2 (by decide)

private def v1402312920638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.lam (.var 4)))))))))
private theorem no_v1402312920638 : ¬ MinimalInterpreter v1402312920638 :=
  chain_cut false 2 (by decide)

private def v1402312931390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.lam (.var 4)))))))))
private theorem no_v1402312931390 : ¬ MinimalInterpreter v1402312931390 :=
  chain_cut false 2 (by decide)

private def v1402312906814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.lam (.var 4))))))))
private theorem no_v1402312906814 : ¬ MinimalInterpreter v1402312906814 :=
  chain_cut false 2 (by decide)

private def v1402312546366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.lam (.var 4))))))))
private theorem no_v1402312546366 : ¬ MinimalInterpreter v1402312546366 :=
  chain_cut false 2 (by decide)

private def v1402336195518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 4))))))))))
private theorem no_v1402336195518 : ¬ MinimalInterpreter v1402336195518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 4))) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))

private def v1402336193982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 4)))))))))
private theorem no_v1402336193982 : ¬ MinimalInterpreter v1402336193982 :=
  chain_cut false 4 (by decide)

private def v1402336235070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402336235070 : ¬ MinimalInterpreter v1402336235070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 4)))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide)))))))

private def v1402336228926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))))
private theorem no_v1402336228926 : ¬ MinimalInterpreter v1402336228926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336393278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))))))))
private theorem no_v1402336393278 : ¬ MinimalInterpreter v1402336393278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4)))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336368702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))))))))
private theorem no_v1402336368702 : ¬ MinimalInterpreter v1402336368702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four201 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,1,4]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,1,4] = [v1402307294142,v1402307292606,v1402307204030,v1402307202494,v1402307179966,v1402308707262,v1402308709950,v1402308703806,v1402308346814,v1402308349502,v1402308343358,v1402308253246,v1402314362430,v1402314373182,v1402314348606,v1402312920638,v1402312931390,v1402312906814,v1402312546366,v1402336195518,v1402336193982,v1402336235070,v1402336228926,v1402336393278,v1402336368702] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307294142) (.cons (no_v1402307292606) (.cons (no_v1402307204030) (.cons (no_v1402307202494) (.cons (no_v1402307179966) (.cons (no_v1402308707262) (.cons (no_v1402308709950) (.cons (no_v1402308703806) (.cons (no_v1402308346814) (.cons (no_v1402308349502) (.cons (no_v1402308343358) (.cons (no_v1402308253246) (.cons (no_v1402314362430) (.cons (no_v1402314373182) (.cons (no_v1402314348606) (.cons (no_v1402312920638) (.cons (no_v1402312931390) (.cons (no_v1402312906814) (.cons (no_v1402312546366) (.cons (no_v1402336195518) (.cons (no_v1402336193982) (.cons (no_v1402336235070) (.cons (no_v1402336228926) (.cons (no_v1402336393278) (.cons (no_v1402336368702) .nil)))))))))))))))))))))))))

private def v1402308670430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))))
private theorem no_v1402308670430 : ¬ MinimalInterpreter v1402308670430 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402308668894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))))))
private theorem no_v1402308668894 : ¬ MinimalInterpreter v1402308668894 :=
  cost_cut false 2 (by decide)

private def v1402308707294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))))
private theorem no_v1402308707294 : ¬ MinimalInterpreter v1402308707294 :=
  cost_cut false 2 (by decide)

private def v1402308710174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 3))))))))))
private theorem no_v1402308710174 : ¬ MinimalInterpreter v1402308710174 :=
  cost_cut false 2 (by decide)

private def v1402308704030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 3)))))))))
private theorem no_v1402308704030 : ¬ MinimalInterpreter v1402308704030 :=
  cost_cut false 2 (by decide)

private def v1402308702686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 3))))))))
private theorem no_v1402308702686 : ¬ MinimalInterpreter v1402308702686 :=
  chain_cut false 2 (by decide)

private def v1402308346846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1402308346846 : ¬ MinimalInterpreter v1402308346846 :=
  cost_cut false 2 (by decide)

private def v1402308349726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 3)))))))))
private theorem no_v1402308349726 : ¬ MinimalInterpreter v1402308349726 :=
  cost_cut false 2 (by decide)

private def v1402308343582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 3))))))))
private theorem no_v1402308343582 : ¬ MinimalInterpreter v1402308343582 :=
  cost_cut false 2 (by decide)

private def v1402308253470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 3))))))))
private theorem no_v1402308253470 : ¬ MinimalInterpreter v1402308253470 :=
  cost_cut false 2 (by decide)

private def v1402308342238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 3)))))))
private theorem no_v1402308342238 : ¬ MinimalInterpreter v1402308342238 :=
  chain_cut false 2 (by decide)

private def v1402308252126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 3)))))))
private theorem no_v1402308252126 : ¬ MinimalInterpreter v1402308252126 :=
  chain_cut false 2 (by decide)

private def v1402314175454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))))
private theorem no_v1402314175454 : ¬ MinimalInterpreter v1402314175454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402314173918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))))))
private theorem no_v1402314173918 : ¬ MinimalInterpreter v1402314173918 :=
  cost_cut false 2 (by decide)

private def v1402314212318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))))
private theorem no_v1402314212318 : ¬ MinimalInterpreter v1402314212318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 1) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314374174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))))))))
private theorem no_v1402314374174 : ¬ MinimalInterpreter v1402314374174 :=
  chain_cut false 2 (by decide)

private def v1402314349598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402314349598 : ¬ MinimalInterpreter v1402314349598 :=
  chain_cut false 2 (by decide)

private def v1402314344222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))))))))
private theorem no_v1402314344222 : ¬ MinimalInterpreter v1402314344222 :=
  chain_cut false 2 (by decide)

private def v1402312932382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 3)))))))))
private theorem no_v1402312932382 : ¬ MinimalInterpreter v1402312932382 :=
  chain_cut false 2 (by decide)

private def v1402312907806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.var 3))))))))
private theorem no_v1402312907806 : ¬ MinimalInterpreter v1402312907806 :=
  chain_cut false 2 (by decide)

private def v1402312547358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 3))))))))
private theorem no_v1402312547358 : ¬ MinimalInterpreter v1402312547358 :=
  chain_cut false 2 (by decide)

private def v1402312902430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 3)))))))
private theorem no_v1402312902430 : ¬ MinimalInterpreter v1402312902430 :=
  chain_cut false 2 (by decide)

private def v1402312541982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.lam (.var 3)))))))
private theorem no_v1402312541982 : ¬ MinimalInterpreter v1402312541982 :=
  chain_cut false 2 (by decide)

private def v1402336227806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 3))))))))
private theorem no_v1402336227806 : ¬ MinimalInterpreter v1402336227806 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336394270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))))))))
private theorem no_v1402336394270 : ¬ MinimalInterpreter v1402336394270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3)))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336369694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402336369694 : ¬ MinimalInterpreter v1402336369694 :=
  w_cut false 0 (by decide)

private def v1402336364318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))))))))
private theorem no_v1402336364318 : ¬ MinimalInterpreter v1402336364318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four202 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,2,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,2,3] = [v1402308670430,v1402308668894,v1402308707294,v1402308710174,v1402308704030,v1402308702686,v1402308346846,v1402308349726,v1402308343582,v1402308253470,v1402308342238,v1402308252126,v1402314175454,v1402314173918,v1402314212318,v1402314374174,v1402314349598,v1402314344222,v1402312932382,v1402312907806,v1402312547358,v1402312902430,v1402312541982,v1402336227806,v1402336394270,v1402336369694,v1402336364318] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308670430) (.cons (no_v1402308668894) (.cons (no_v1402308707294) (.cons (no_v1402308710174) (.cons (no_v1402308704030) (.cons (no_v1402308702686) (.cons (no_v1402308346846) (.cons (no_v1402308349726) (.cons (no_v1402308343582) (.cons (no_v1402308253470) (.cons (no_v1402308342238) (.cons (no_v1402308252126) (.cons (no_v1402314175454) (.cons (no_v1402314173918) (.cons (no_v1402314212318) (.cons (no_v1402314374174) (.cons (no_v1402314349598) (.cons (no_v1402314344222) (.cons (no_v1402312932382) (.cons (no_v1402312907806) (.cons (no_v1402312547358) (.cons (no_v1402312902430) (.cons (no_v1402312541982) (.cons (no_v1402336227806) (.cons (no_v1402336394270) (.cons (no_v1402336369694) (.cons (no_v1402336364318) .nil)))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
