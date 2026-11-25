import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400964880862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1400964880862 : ¬ MinimalInterpreter v1400964880862 :=
  chain_cut false 2 (by decide)

private def v1400964880094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1400964880094 : ¬ MinimalInterpreter v1400964880094 :=
  chain_cut false 2 (by decide)

private def v1400964835806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v1400964835806 : ¬ MinimalInterpreter v1400964835806 :=
  chain_cut false 2 (by decide)

private def v1400964835038 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v1400964835038 : ¬ MinimalInterpreter v1400964835038 :=
  chain_cut false 2 (by decide)

private def v1400964823774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v1400964823774 : ¬ MinimalInterpreter v1400964823774 :=
  chain_cut false 2 (by decide)

private def v1400965587422 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1400965587422 : ¬ MinimalInterpreter v1400965587422 :=
  chain_cut false 2 (by decide)

private def v1400965588766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1400965588766 : ¬ MinimalInterpreter v1400965588766 :=
  chain_cut false 2 (by decide)

private def v1400965585694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1400965585694 : ¬ MinimalInterpreter v1400965585694 :=
  chain_cut false 2 (by decide)

private def v1400965407198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v1400965407198 : ¬ MinimalInterpreter v1400965407198 :=
  chain_cut false 2 (by decide)

private def v1400965408542 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1400965408542 : ¬ MinimalInterpreter v1400965408542 :=
  chain_cut false 2 (by decide)

private def v1400965405470 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1400965405470 : ¬ MinimalInterpreter v1400965405470 :=
  chain_cut false 2 (by decide)

private def v1400965360414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1400965360414 : ¬ MinimalInterpreter v1400965360414 :=
  chain_cut false 2 (by decide)

private def v1400968321502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1400968321502 : ¬ MinimalInterpreter v1400968321502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1400968320734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1400968320734 : ¬ MinimalInterpreter v1400968320734 :=
  cost_cut false 3 (by decide)

private def v1400968341278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1400968341278 : ¬ MinimalInterpreter v1400968341278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400968338206 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1400968338206 : ¬ MinimalInterpreter v1400968338206 :=
  cost_cut false 3 (by decide)

theorem four532 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,0,1,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,0,1,3] = [v1400964880862,v1400964880094,v1400964835806,v1400964835038,v1400964823774,v1400965587422,v1400965588766,v1400965585694,v1400965407198,v1400965408542,v1400965405470,v1400965360414,v1400968321502,v1400968320734,v1400968341278,v1400968338206] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964880862) (.cons (no_v1400964880094) (.cons (no_v1400964835806) (.cons (no_v1400964835038) (.cons (no_v1400964823774) (.cons (no_v1400965587422) (.cons (no_v1400965588766) (.cons (no_v1400965585694) (.cons (no_v1400965407198) (.cons (no_v1400965408542) (.cons (no_v1400965405470) (.cons (no_v1400965360414) (.cons (no_v1400968321502) (.cons (no_v1400968320734) (.cons (no_v1400968341278) (.cons (no_v1400968338206) .nil))))))))))))))))

private def v1400964880878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v1400964880878 : ¬ MinimalInterpreter v1400964880878 :=
  cost_cut false 2 (by decide)

private def v1400964880110 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v1400964880110 : ¬ MinimalInterpreter v1400964880110 :=
  cost_cut false 2 (by decide)

private def v1400964835822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v1400964835822 : ¬ MinimalInterpreter v1400964835822 :=
  cost_cut false 2 (by decide)

private def v1400964835054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v1400964835054 : ¬ MinimalInterpreter v1400964835054 :=
  cost_cut false 2 (by decide)

private def v1400964823790 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v1400964823790 : ¬ MinimalInterpreter v1400964823790 :=
  cost_cut false 2 (by decide)

private def v1400965588878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1400965588878 : ¬ MinimalInterpreter v1400965588878 :=
  chain_cut false 2 (by decide)

private def v1400965585806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1400965585806 : ¬ MinimalInterpreter v1400965585806 :=
  chain_cut false 2 (by decide)

private def v1400965585134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1400965585134 : ¬ MinimalInterpreter v1400965585134 :=
  chain_cut false 2 (by decide)

private def v1400965408654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1400965408654 : ¬ MinimalInterpreter v1400965408654 :=
  chain_cut false 2 (by decide)

private def v1400965405582 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1400965405582 : ¬ MinimalInterpreter v1400965405582 :=
  chain_cut false 2 (by decide)

private def v1400965360526 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1400965360526 : ¬ MinimalInterpreter v1400965360526 :=
  chain_cut false 2 (by decide)

private def v1400965404910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1400965404910 : ¬ MinimalInterpreter v1400965404910 :=
  chain_cut false 2 (by decide)

private def v1400965359854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1400965359854 : ¬ MinimalInterpreter v1400965359854 :=
  chain_cut false 2 (by decide)

private def v1400968341390 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1400968341390 : ¬ MinimalInterpreter v1400968341390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400968338318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1400968338318 : ¬ MinimalInterpreter v1400968338318 :=
  cost_cut false 3 (by decide)

private def v1400968337646 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1400968337646 : ¬ MinimalInterpreter v1400968337646 :=
  cost_cut false 3 (by decide)

theorem four533 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,0,2,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,0,2,2] = [v1400964880878,v1400964880110,v1400964835822,v1400964835054,v1400964823790,v1400965588878,v1400965585806,v1400965585134,v1400965408654,v1400965405582,v1400965360526,v1400965404910,v1400965359854,v1400968341390,v1400968338318,v1400968337646] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964880878) (.cons (no_v1400964880110) (.cons (no_v1400964835822) (.cons (no_v1400964835054) (.cons (no_v1400964823790) (.cons (no_v1400965588878) (.cons (no_v1400965585806) (.cons (no_v1400965585134) (.cons (no_v1400965408654) (.cons (no_v1400965405582) (.cons (no_v1400965360526) (.cons (no_v1400965404910) (.cons (no_v1400965359854) (.cons (no_v1400968341390) (.cons (no_v1400968338318) (.cons (no_v1400968337646) .nil))))))))))))))))

private def v1400964880886 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1400964880886 : ¬ MinimalInterpreter v1400964880886 :=
  chain_cut false 2 (by decide)

private def v1400964880118 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1400964880118 : ¬ MinimalInterpreter v1400964880118 :=
  chain_cut false 2 (by decide)

private def v1400964835830 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v1400964835830 : ¬ MinimalInterpreter v1400964835830 :=
  chain_cut false 2 (by decide)

private def v1400964835062 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v1400964835062 : ¬ MinimalInterpreter v1400964835062 :=
  chain_cut false 2 (by decide)

private def v1400964823798 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v1400964823798 : ¬ MinimalInterpreter v1400964823798 :=
  chain_cut false 2 (by decide)

private def v1400965587446 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1400965587446 : ¬ MinimalInterpreter v1400965587446 :=
  chain_cut false 2 (by decide)

private def v1400965585142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1400965585142 : ¬ MinimalInterpreter v1400965585142 :=
  chain_cut false 2 (by decide)

private def v1400965407222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v1400965407222 : ¬ MinimalInterpreter v1400965407222 :=
  chain_cut false 2 (by decide)

private def v1400965404918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1400965404918 : ¬ MinimalInterpreter v1400965404918 :=
  chain_cut false 2 (by decide)

private def v1400965359862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1400965359862 : ¬ MinimalInterpreter v1400965359862 :=
  chain_cut false 2 (by decide)

private def v1400968321526 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1400968321526 : ¬ MinimalInterpreter v1400968321526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1400968320758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1400968320758 : ¬ MinimalInterpreter v1400968320758 :=
  cost_cut false 3 (by decide)

private def v1400968337654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1400968337654 : ¬ MinimalInterpreter v1400968337654 :=
  cost_cut false 3 (by decide)

theorem four534 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,0,3,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,0,3,1] = [v1400964880886,v1400964880118,v1400964835830,v1400964835062,v1400964823798,v1400965587446,v1400965585142,v1400965407222,v1400965404918,v1400965359862,v1400968321526,v1400968320758,v1400968337654] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964880886) (.cons (no_v1400964880118) (.cons (no_v1400964835830) (.cons (no_v1400964835062) (.cons (no_v1400964823798) (.cons (no_v1400965587446) (.cons (no_v1400965585142) (.cons (no_v1400965407222) (.cons (no_v1400965404918) (.cons (no_v1400965359862) (.cons (no_v1400968321526) (.cons (no_v1400968320758) (.cons (no_v1400968337654) .nil)))))))))))))

private def v1400964881630 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1400964881630 : ¬ MinimalInterpreter v1400964881630 :=
  chain_cut false 2 (by decide)

private def v1400964880222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1400964880222 : ¬ MinimalInterpreter v1400964880222 :=
  chain_cut false 2 (by decide)

private def v1400964836574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v1400964836574 : ¬ MinimalInterpreter v1400964836574 :=
  chain_cut false 2 (by decide)

private def v1400964835166 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v1400964835166 : ¬ MinimalInterpreter v1400964835166 :=
  chain_cut false 2 (by decide)

private def v1400964823902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v1400964823902 : ¬ MinimalInterpreter v1400964823902 :=
  chain_cut false 2 (by decide)

private def v1400965591838 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1400965591838 : ¬ MinimalInterpreter v1400965591838 :=
  chain_cut false 2 (by decide)

private def v1400965586206 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1400965586206 : ¬ MinimalInterpreter v1400965586206 :=
  chain_cut false 2 (by decide)

private def v1400965411614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1400965411614 : ¬ MinimalInterpreter v1400965411614 :=
  chain_cut false 2 (by decide)

private def v1400965405982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1400965405982 : ¬ MinimalInterpreter v1400965405982 :=
  chain_cut false 2 (by decide)

private def v1400965360926 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1400965360926 : ¬ MinimalInterpreter v1400965360926 :=
  chain_cut false 2 (by decide)

private def v1400968322270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1400968322270 : ¬ MinimalInterpreter v1400968322270 :=
  cost_cut false 3 (by decide)

private def v1400968320862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1400968320862 : ¬ MinimalInterpreter v1400968320862 :=
  cost_cut false 3 (by decide)

private def v1400968344350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1400968344350 : ¬ MinimalInterpreter v1400968344350 :=
  cost_cut false 3 (by decide)

private def v1400968338718 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1400968338718 : ¬ MinimalInterpreter v1400968338718 :=
  cost_cut false 3 (by decide)

theorem four535 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,0,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,0,3] = [v1400964881630,v1400964880222,v1400964836574,v1400964835166,v1400964823902,v1400965591838,v1400965586206,v1400965411614,v1400965405982,v1400965360926,v1400968322270,v1400968320862,v1400968344350,v1400968338718] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964881630) (.cons (no_v1400964880222) (.cons (no_v1400964836574) (.cons (no_v1400964835166) (.cons (no_v1400964823902) (.cons (no_v1400965591838) (.cons (no_v1400965586206) (.cons (no_v1400965411614) (.cons (no_v1400965405982) (.cons (no_v1400965360926) (.cons (no_v1400968322270) (.cons (no_v1400968320862) (.cons (no_v1400968344350) (.cons (no_v1400968338718) .nil))))))))))))))

private def v1400965586030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1400965586030 : ¬ MinimalInterpreter v1400965586030 :=
  chain_cut false 2 (by decide)

private def v1400965401838 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1400965401838 : ¬ MinimalInterpreter v1400965401838 :=
  chain_cut false 2 (by decide)

private def v1400965400430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v1400965400430 : ¬ MinimalInterpreter v1400965400430 :=
  chain_cut false 2 (by decide)

private def v1400965405806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1400965405806 : ¬ MinimalInterpreter v1400965405806 :=
  chain_cut false 2 (by decide)

private def v1400965360750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1400965360750 : ¬ MinimalInterpreter v1400965360750 :=
  chain_cut false 2 (by decide)

private def v1400965358446 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1400965358446 : ¬ MinimalInterpreter v1400965358446 :=
  chain_cut false 2 (by decide)

private def v1400968338542 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1400968338542 : ¬ MinimalInterpreter v1400968338542 :=
  cost_cut false 3 (by decide)

theorem four536 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,1,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,1,2] = [v1400965586030,v1400965401838,v1400965400430,v1400965405806,v1400965360750,v1400965358446,v1400968338542] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965586030) (.cons (no_v1400965401838) (.cons (no_v1400965400430) (.cons (no_v1400965405806) (.cons (no_v1400965360750) (.cons (no_v1400965358446) (.cons (no_v1400968338542) .nil)))))))

private def v1400965592006 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1400965592006 : ¬ MinimalInterpreter v1400965592006 :=
  chain_cut false 2 (by decide)

private def v1400965586374 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1400965586374 : ¬ MinimalInterpreter v1400965586374 :=
  chain_cut false 2 (by decide)

private def v1400965411782 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1400965411782 : ¬ MinimalInterpreter v1400965411782 :=
  chain_cut false 2 (by decide)

private def v1400965401846 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1400965401846 : ¬ MinimalInterpreter v1400965401846 :=
  chain_cut false 2 (by decide)

private def v1400965406150 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1400965406150 : ¬ MinimalInterpreter v1400965406150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965361094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1400965361094 : ¬ MinimalInterpreter v1400965361094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965358454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1400965358454 : ¬ MinimalInterpreter v1400965358454 :=
  chain_cut false 2 (by decide)

private def v1400968344518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1400968344518 : ¬ MinimalInterpreter v1400968344518 :=
  cost_cut false 3 (by decide)

private def v1400968338886 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1400968338886 : ¬ MinimalInterpreter v1400968338886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four537 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,2,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,2,1] = [v1400965592006,v1400965586374,v1400965411782,v1400965401846,v1400965406150,v1400965361094,v1400965358454,v1400968344518,v1400968338886] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965592006) (.cons (no_v1400965586374) (.cons (no_v1400965411782) (.cons (no_v1400965401846) (.cons (no_v1400965406150) (.cons (no_v1400965361094) (.cons (no_v1400965358454) (.cons (no_v1400968344518) (.cons (no_v1400968338886) .nil)))))))))

private def v1400964881658 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1400964881658 : ¬ MinimalInterpreter v1400964881658 :=
  chain_cut false 2 (by decide)

private def v1400964880250 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1400964880250 : ¬ MinimalInterpreter v1400964880250 :=
  chain_cut false 2 (by decide)

private def v1400964836602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v1400964836602 : ¬ MinimalInterpreter v1400964836602 :=
  chain_cut false 2 (by decide)

private def v1400964835194 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v1400964835194 : ¬ MinimalInterpreter v1400964835194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964823930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v1400964823930 : ¬ MinimalInterpreter v1400964823930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400965586042 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1400965586042 : ¬ MinimalInterpreter v1400965586042 :=
  chain_cut false 2 (by decide)

private def v1400965400442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 0))))))
private theorem no_v1400965400442 : ¬ MinimalInterpreter v1400965400442 :=
  chain_cut false 2 (by decide)

private def v1400965405818 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1400965405818 : ¬ MinimalInterpreter v1400965405818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1400965360762 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1400965360762 : ¬ MinimalInterpreter v1400965360762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1400968322298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1400968322298 : ¬ MinimalInterpreter v1400968322298 :=
  cost_cut false 3 (by decide)

private def v1400968320890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1400968320890 : ¬ MinimalInterpreter v1400968320890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1400968338554 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1400968338554 : ¬ MinimalInterpreter v1400968338554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four538 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,3,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [1,1,3,0] = [v1400964881658,v1400964880250,v1400964836602,v1400964835194,v1400964823930,v1400965586042,v1400965400442,v1400965405818,v1400965360762,v1400968322298,v1400968320890,v1400968338554] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964881658) (.cons (no_v1400964880250) (.cons (no_v1400964836602) (.cons (no_v1400964835194) (.cons (no_v1400964823930) (.cons (no_v1400965586042) (.cons (no_v1400965400442) (.cons (no_v1400965405818) (.cons (no_v1400965360762) (.cons (no_v1400968322298) (.cons (no_v1400968320890) (.cons (no_v1400968338554) .nil))))))))))))

end Blc.SelfintSingleObject.Rows40
