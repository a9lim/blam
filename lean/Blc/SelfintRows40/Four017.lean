import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308709622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308709622 : ¬ MinimalInterpreter v1402308709622 :=
  cost_cut false 2 (by decide)

private def v1402308709238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402308709238 : ¬ MinimalInterpreter v1402308709238 :=
  cost_cut false 2 (by decide)

private def v1402308703478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308703478 : ¬ MinimalInterpreter v1402308703478 :=
  cost_cut false 2 (by decide)

private def v1402308703094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1402308703094 : ¬ MinimalInterpreter v1402308703094 :=
  cost_cut false 2 (by decide)

private def v1402308701558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1402308701558 : ¬ MinimalInterpreter v1402308701558 :=
  cost_cut false 2 (by decide)

private def v1402308349174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308349174 : ¬ MinimalInterpreter v1402308349174 :=
  cost_cut false 2 (by decide)

private def v1402308348790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402308348790 : ¬ MinimalInterpreter v1402308348790 :=
  cost_cut false 2 (by decide)

private def v1402308343030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308343030 : ¬ MinimalInterpreter v1402308343030 :=
  cost_cut false 2 (by decide)

private def v1402308252918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308252918 : ¬ MinimalInterpreter v1402308252918 :=
  cost_cut false 2 (by decide)

private def v1402308342646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1)))))))
private theorem no_v1402308342646 : ¬ MinimalInterpreter v1402308342646 :=
  cost_cut false 2 (by decide)

private def v1402308341110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)))))))
private theorem no_v1402308341110 : ¬ MinimalInterpreter v1402308341110 :=
  cost_cut false 2 (by decide)

private def v1402308252534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1402308252534 : ¬ MinimalInterpreter v1402308252534 :=
  cost_cut false 2 (by decide)

private def v1402308250998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v1402308250998 : ¬ MinimalInterpreter v1402308250998 :=
  cost_cut false 2 (by decide)

private def v1402308228470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1402308228470 : ¬ MinimalInterpreter v1402308228470 :=
  cost_cut false 2 (by decide)

private def v1402314214646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402314214646 : ¬ MinimalInterpreter v1402314214646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314214262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402314214262 : ¬ MinimalInterpreter v1402314214262 :=
  cost_cut false 2 (by decide)

private def v1402314208502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402314208502 : ¬ MinimalInterpreter v1402314208502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314208118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1402314208118 : ¬ MinimalInterpreter v1402314208118 :=
  cost_cut false 2 (by decide)

private def v1402314206582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1402314206582 : ¬ MinimalInterpreter v1402314206582 :=
  cost_cut false 2 (by decide)

private def v1402314362102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402314362102 : ¬ MinimalInterpreter v1402314362102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402314361718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402314361718 : ¬ MinimalInterpreter v1402314361718 :=
  cost_cut false 2 (by decide)

private def v1402312920310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402312920310 : ¬ MinimalInterpreter v1402312920310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402312919926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402312919926 : ¬ MinimalInterpreter v1402312919926 :=
  cost_cut false 2 (by decide)

private def v1402314372038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402314372038 : ¬ MinimalInterpreter v1402314372038 :=
  chain_cut false 2 (by decide)

private def v1402314370502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402314370502 : ¬ MinimalInterpreter v1402314370502 :=
  chain_cut false 2 (by decide)

private def v1402314347462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402314347462 : ¬ MinimalInterpreter v1402314347462 :=
  chain_cut false 2 (by decide)

private def v1402314345926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402314345926 : ¬ MinimalInterpreter v1402314345926 :=
  chain_cut false 2 (by decide)

private def v1402314339782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402314339782 : ¬ MinimalInterpreter v1402314339782 :=
  chain_cut false 2 (by decide)

private def v1402312930246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402312930246 : ¬ MinimalInterpreter v1402312930246 :=
  chain_cut false 2 (by decide)

private def v1402312928710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402312928710 : ¬ MinimalInterpreter v1402312928710 :=
  chain_cut false 2 (by decide)

private def v1402312905670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1402312905670 : ¬ MinimalInterpreter v1402312905670 :=
  chain_cut false 2 (by decide)

private def v1402312545222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1402312545222 : ¬ MinimalInterpreter v1402312545222 :=
  chain_cut false 2 (by decide)

private def v1402312904134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 1)))))))
private theorem no_v1402312904134 : ¬ MinimalInterpreter v1402312904134 :=
  chain_cut false 2 (by decide)

private def v1402312897990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1402312897990 : ¬ MinimalInterpreter v1402312897990 :=
  chain_cut false 2 (by decide)

private def v1402312543686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1402312543686 : ¬ MinimalInterpreter v1402312543686 :=
  chain_cut false 2 (by decide)

private def v1402312537542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1402312537542 : ¬ MinimalInterpreter v1402312537542 :=
  chain_cut false 2 (by decide)

private def v1402312447430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1402312447430 : ¬ MinimalInterpreter v1402312447430 :=
  chain_cut false 2 (by decide)

theorem four119 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,2,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,2,1] = [v1402308709622,v1402308709238,v1402308703478,v1402308703094,v1402308701558,v1402308349174,v1402308348790,v1402308343030,v1402308252918,v1402308342646,v1402308341110,v1402308252534,v1402308250998,v1402308228470,v1402314214646,v1402314214262,v1402314208502,v1402314208118,v1402314206582,v1402314362102,v1402314361718,v1402312920310,v1402312919926,v1402314372038,v1402314370502,v1402314347462,v1402314345926,v1402314339782,v1402312930246,v1402312928710,v1402312905670,v1402312545222,v1402312904134,v1402312897990,v1402312543686,v1402312537542,v1402312447430] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308709622) (.cons (no_v1402308709238) (.cons (no_v1402308703478) (.cons (no_v1402308703094) (.cons (no_v1402308701558) (.cons (no_v1402308349174) (.cons (no_v1402308348790) (.cons (no_v1402308343030) (.cons (no_v1402308252918) (.cons (no_v1402308342646) (.cons (no_v1402308341110) (.cons (no_v1402308252534) (.cons (no_v1402308250998) (.cons (no_v1402308228470) (.cons (no_v1402314214646) (.cons (no_v1402314214262) (.cons (no_v1402314208502) (.cons (no_v1402314208118) (.cons (no_v1402314206582) (.cons (no_v1402314362102) (.cons (no_v1402314361718) (.cons (no_v1402312920310) (.cons (no_v1402312919926) (.cons (no_v1402314372038) (.cons (no_v1402314370502) (.cons (no_v1402314347462) (.cons (no_v1402314345926) (.cons (no_v1402314339782) (.cons (no_v1402312930246) (.cons (no_v1402312928710) (.cons (no_v1402312905670) (.cons (no_v1402312545222) (.cons (no_v1402312904134) (.cons (no_v1402312897990) (.cons (no_v1402312543686) (.cons (no_v1402312537542) (.cons (no_v1402312447430) .nil)))))))))))))))))))))))))))))))))))))

private def v1402308709626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402308709626 : ¬ MinimalInterpreter v1402308709626 :=
  chain_cut false 2 (by decide)

private def v1402308709242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v1402308709242 : ¬ MinimalInterpreter v1402308709242 :=
  chain_cut false 2 (by decide)

private def v1402308703482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402308703482 : ¬ MinimalInterpreter v1402308703482 :=
  chain_cut false 2 (by decide)

private def v1402308703098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 0))))))))
private theorem no_v1402308703098 : ¬ MinimalInterpreter v1402308703098 :=
  chain_cut false 2 (by decide)

private def v1402308701562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0))))))))
private theorem no_v1402308701562 : ¬ MinimalInterpreter v1402308701562 :=
  chain_cut false 2 (by decide)

private def v1402308349178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402308349178 : ¬ MinimalInterpreter v1402308349178 :=
  chain_cut false 2 (by decide)

private def v1402308348794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1402308348794 : ¬ MinimalInterpreter v1402308348794 :=
  chain_cut false 2 (by decide)

private def v1402308343034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308343034 : ¬ MinimalInterpreter v1402308343034 :=
  chain_cut false 2 (by decide)

private def v1402308252922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308252922 : ¬ MinimalInterpreter v1402308252922 :=
  chain_cut false 2 (by decide)

private def v1402308342650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))) (.var 0)))))))
private theorem no_v1402308342650 : ¬ MinimalInterpreter v1402308342650 :=
  chain_cut false 2 (by decide)

private def v1402308341114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 0)))))))
private theorem no_v1402308341114 : ¬ MinimalInterpreter v1402308341114 :=
  chain_cut false 2 (by decide)

private def v1402308252538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v1402308252538 : ¬ MinimalInterpreter v1402308252538 :=
  chain_cut false 2 (by decide)

private def v1402308251002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)) (.var 0)))))))
private theorem no_v1402308251002 : ¬ MinimalInterpreter v1402308251002 :=
  chain_cut false 2 (by decide)

private def v1402308228474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v1402308228474 : ¬ MinimalInterpreter v1402308228474 :=
  chain_cut false 2 (by decide)

private def v1402314370170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402314370170 : ¬ MinimalInterpreter v1402314370170 :=
  chain_cut false 2 (by decide)

private def v1402314345594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402314345594 : ¬ MinimalInterpreter v1402314345594 :=
  chain_cut false 2 (by decide)

private def v1402314339450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402314339450 : ¬ MinimalInterpreter v1402314339450 :=
  chain_cut false 2 (by decide)

private def v1402312928378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402312928378 : ¬ MinimalInterpreter v1402312928378 :=
  chain_cut false 2 (by decide)

private def v1402312903802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3))))) (.var 0))))))
private theorem no_v1402312903802 : ¬ MinimalInterpreter v1402312903802 :=
  chain_cut false 2 (by decide)

private def v1402312897658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1402312897658 : ¬ MinimalInterpreter v1402312897658 :=
  chain_cut false 2 (by decide)

private def v1402312543354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1402312543354 : ¬ MinimalInterpreter v1402312543354 :=
  chain_cut false 2 (by decide)

private def v1402312537210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3))) (.var 0))))))
private theorem no_v1402312537210 : ¬ MinimalInterpreter v1402312537210 :=
  chain_cut false 2 (by decide)

private def v1402312447098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1402312447098 : ¬ MinimalInterpreter v1402312447098 :=
  chain_cut false 2 (by decide)

theorem four120 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,3,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,3,0] = [v1402308709626,v1402308709242,v1402308703482,v1402308703098,v1402308701562,v1402308349178,v1402308348794,v1402308343034,v1402308252922,v1402308342650,v1402308341114,v1402308252538,v1402308251002,v1402308228474,v1402314370170,v1402314345594,v1402314339450,v1402312928378,v1402312903802,v1402312897658,v1402312543354,v1402312537210,v1402312447098] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308709626) (.cons (no_v1402308709242) (.cons (no_v1402308703482) (.cons (no_v1402308703098) (.cons (no_v1402308701562) (.cons (no_v1402308349178) (.cons (no_v1402308348794) (.cons (no_v1402308343034) (.cons (no_v1402308252922) (.cons (no_v1402308342650) (.cons (no_v1402308341114) (.cons (no_v1402308252538) (.cons (no_v1402308251002) (.cons (no_v1402308228474) (.cons (no_v1402314370170) (.cons (no_v1402314345594) (.cons (no_v1402314339450) (.cons (no_v1402312928378) (.cons (no_v1402312903802) (.cons (no_v1402312897658) (.cons (no_v1402312543354) (.cons (no_v1402312537210) (.cons (no_v1402312447098) .nil)))))))))))))))))))))))

private def v1402308709998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402308709998 : ¬ MinimalInterpreter v1402308709998 :=
  cost_cut false 2 (by decide)

private def v1402308709294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402308709294 : ¬ MinimalInterpreter v1402308709294 :=
  cost_cut false 2 (by decide)

private def v1402308703854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402308703854 : ¬ MinimalInterpreter v1402308703854 :=
  cost_cut false 2 (by decide)

private def v1402308703150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1402308703150 : ¬ MinimalInterpreter v1402308703150 :=
  cost_cut false 2 (by decide)

private def v1402308701614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1402308701614 : ¬ MinimalInterpreter v1402308701614 :=
  cost_cut false 2 (by decide)

private def v1402308349550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402308349550 : ¬ MinimalInterpreter v1402308349550 :=
  cost_cut false 2 (by decide)

private def v1402308348846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402308348846 : ¬ MinimalInterpreter v1402308348846 :=
  cost_cut false 2 (by decide)

private def v1402308343406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308343406 : ¬ MinimalInterpreter v1402308343406 :=
  cost_cut false 2 (by decide)

private def v1402308253294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308253294 : ¬ MinimalInterpreter v1402308253294 :=
  cost_cut false 2 (by decide)

private def v1402308342702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2)))))))
private theorem no_v1402308342702 : ¬ MinimalInterpreter v1402308342702 :=
  cost_cut false 2 (by decide)

private def v1402308341166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2)))))))
private theorem no_v1402308341166 : ¬ MinimalInterpreter v1402308341166 :=
  cost_cut false 2 (by decide)

private def v1402308252590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1402308252590 : ¬ MinimalInterpreter v1402308252590 :=
  cost_cut false 2 (by decide)

private def v1402308251054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (.var 2)))))))
private theorem no_v1402308251054 : ¬ MinimalInterpreter v1402308251054 :=
  cost_cut false 2 (by decide)

private def v1402308228526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1402308228526 : ¬ MinimalInterpreter v1402308228526 :=
  cost_cut false 2 (by decide)

private def v1402314215022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402314215022 : ¬ MinimalInterpreter v1402314215022 :=
  cost_cut false 2 (by decide)

private def v1402314214318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402314214318 : ¬ MinimalInterpreter v1402314214318 :=
  cost_cut false 2 (by decide)

private def v1402314208878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402314208878 : ¬ MinimalInterpreter v1402314208878 :=
  cost_cut false 2 (by decide)

private def v1402314208174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1402314208174 : ¬ MinimalInterpreter v1402314208174 :=
  cost_cut false 2 (by decide)

private def v1402314206638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1402314206638 : ¬ MinimalInterpreter v1402314206638 :=
  cost_cut false 2 (by decide)

private def v1402314362478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402314362478 : ¬ MinimalInterpreter v1402314362478 :=
  cost_cut false 2 (by decide)

private def v1402314361774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402314361774 : ¬ MinimalInterpreter v1402314361774 :=
  cost_cut false 2 (by decide)

private def v1402312920686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402312920686 : ¬ MinimalInterpreter v1402312920686 :=
  cost_cut false 2 (by decide)

private def v1402312919982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402312919982 : ¬ MinimalInterpreter v1402312919982 :=
  cost_cut false 2 (by decide)

private def v1402314344046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402314344046 : ¬ MinimalInterpreter v1402314344046 :=
  chain_cut false 2 (by decide)

private def v1402314338734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 2)))))))
private theorem no_v1402314338734 : ¬ MinimalInterpreter v1402314338734 :=
  chain_cut false 2 (by decide)

private def v1402312902254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312902254 : ¬ MinimalInterpreter v1402312902254 :=
  chain_cut false 2 (by decide)

private def v1402312541806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312541806 : ¬ MinimalInterpreter v1402312541806 :=
  chain_cut false 2 (by decide)

private def v1402312896942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 2))))))
private theorem no_v1402312896942 : ¬ MinimalInterpreter v1402312896942 :=
  chain_cut false 2 (by decide)

private def v1402312536494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 2))))))
private theorem no_v1402312536494 : ¬ MinimalInterpreter v1402312536494 :=
  chain_cut false 2 (by decide)

private def v1402312446382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1402312446382 : ¬ MinimalInterpreter v1402312446382 :=
  chain_cut false 2 (by decide)

theorem four121 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,1,0,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,1,0,2] = [v1402308709998,v1402308709294,v1402308703854,v1402308703150,v1402308701614,v1402308349550,v1402308348846,v1402308343406,v1402308253294,v1402308342702,v1402308341166,v1402308252590,v1402308251054,v1402308228526,v1402314215022,v1402314214318,v1402314208878,v1402314208174,v1402314206638,v1402314362478,v1402314361774,v1402312920686,v1402312919982,v1402314344046,v1402314338734,v1402312902254,v1402312541806,v1402312896942,v1402312536494,v1402312446382] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308709998) (.cons (no_v1402308709294) (.cons (no_v1402308703854) (.cons (no_v1402308703150) (.cons (no_v1402308701614) (.cons (no_v1402308349550) (.cons (no_v1402308348846) (.cons (no_v1402308343406) (.cons (no_v1402308253294) (.cons (no_v1402308342702) (.cons (no_v1402308341166) (.cons (no_v1402308252590) (.cons (no_v1402308251054) (.cons (no_v1402308228526) (.cons (no_v1402314215022) (.cons (no_v1402314214318) (.cons (no_v1402314208878) (.cons (no_v1402314208174) (.cons (no_v1402314206638) (.cons (no_v1402314362478) (.cons (no_v1402314361774) (.cons (no_v1402312920686) (.cons (no_v1402312919982) (.cons (no_v1402314344046) (.cons (no_v1402314338734) (.cons (no_v1402312902254) (.cons (no_v1402312541806) (.cons (no_v1402312896942) (.cons (no_v1402312536494) (.cons (no_v1402312446382) .nil))))))))))))))))))))))))))))))

theorem four122 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,1,1,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308710010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402308710010 : ¬ MinimalInterpreter v1402308710010 :=
  cost_cut false 2 (by decide)

private def v1402308709306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402308709306 : ¬ MinimalInterpreter v1402308709306 :=
  cost_cut false 2 (by decide)

private def v1402308703866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402308703866 : ¬ MinimalInterpreter v1402308703866 :=
  cost_cut false 2 (by decide)

private def v1402308703162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1402308703162 : ¬ MinimalInterpreter v1402308703162 :=
  cost_cut false 2 (by decide)

private def v1402308701626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1402308701626 : ¬ MinimalInterpreter v1402308701626 :=
  cost_cut false 2 (by decide)

private def v1402308349562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402308349562 : ¬ MinimalInterpreter v1402308349562 :=
  cost_cut false 2 (by decide)

private def v1402308348858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402308348858 : ¬ MinimalInterpreter v1402308348858 :=
  cost_cut false 2 (by decide)

private def v1402308343418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308343418 : ¬ MinimalInterpreter v1402308343418 :=
  cost_cut false 2 (by decide)

private def v1402308253306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308253306 : ¬ MinimalInterpreter v1402308253306 :=
  cost_cut false 2 (by decide)

private def v1402308342714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))))))
private theorem no_v1402308342714 : ¬ MinimalInterpreter v1402308342714 :=
  cost_cut false 2 (by decide)

private def v1402308341178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))))))
private theorem no_v1402308341178 : ¬ MinimalInterpreter v1402308341178 :=
  cost_cut false 2 (by decide)

private def v1402308252602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1402308252602 : ¬ MinimalInterpreter v1402308252602 :=
  cost_cut false 2 (by decide)

private def v1402308251066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)) (.var 0)))))))
private theorem no_v1402308251066 : ¬ MinimalInterpreter v1402308251066 :=
  cost_cut false 2 (by decide)

private def v1402308228538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1402308228538 : ¬ MinimalInterpreter v1402308228538 :=
  cost_cut false 2 (by decide)

private def v1402314215034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402314215034 : ¬ MinimalInterpreter v1402314215034 :=
  cost_cut false 2 (by decide)

private def v1402314214330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402314214330 : ¬ MinimalInterpreter v1402314214330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314208890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402314208890 : ¬ MinimalInterpreter v1402314208890 :=
  cost_cut false 2 (by decide)

private def v1402314208186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1402314208186 : ¬ MinimalInterpreter v1402314208186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314206650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1402314206650 : ¬ MinimalInterpreter v1402314206650 :=
  cost_cut false 2 (by decide)

private def v1402314362490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402314362490 : ¬ MinimalInterpreter v1402314362490 :=
  cost_cut false 2 (by decide)

private def v1402314361786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402314361786 : ¬ MinimalInterpreter v1402314361786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402312920698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402312920698 : ¬ MinimalInterpreter v1402312920698 :=
  cost_cut false 2 (by decide)

private def v1402312919994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402312919994 : ¬ MinimalInterpreter v1402312919994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402312864698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))))))
private theorem no_v1402312864698 : ¬ MinimalInterpreter v1402312864698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))))

private def v1402312863162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0))))))
private theorem no_v1402312863162 : ¬ MinimalInterpreter v1402312863162 :=
  cost_cut false 2 (by decide)

private def v1402314344058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402314344058 : ¬ MinimalInterpreter v1402314344058 :=
  chain_cut false 2 (by decide)

private def v1402314338746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 0)))))))
private theorem no_v1402314338746 : ¬ MinimalInterpreter v1402314338746 :=
  chain_cut false 2 (by decide)

private def v1402312902266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312902266 : ¬ MinimalInterpreter v1402312902266 :=
  chain_cut false 2 (by decide)

private def v1402312541818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312541818 : ¬ MinimalInterpreter v1402312541818 :=
  chain_cut false 2 (by decide)

private def v1402312896954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (.var 0))))))
private theorem no_v1402312896954 : ¬ MinimalInterpreter v1402312896954 :=
  chain_cut false 2 (by decide)

private def v1402312536506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2)) (.var 0))))))
private theorem no_v1402312536506 : ¬ MinimalInterpreter v1402312536506 :=
  chain_cut false 2 (by decide)

private def v1402312446394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1402312446394 : ¬ MinimalInterpreter v1402312446394 :=
  chain_cut false 2 (by decide)

theorem four123 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,1,2,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,1,2,0] = [v1402308710010,v1402308709306,v1402308703866,v1402308703162,v1402308701626,v1402308349562,v1402308348858,v1402308343418,v1402308253306,v1402308342714,v1402308341178,v1402308252602,v1402308251066,v1402308228538,v1402314215034,v1402314214330,v1402314208890,v1402314208186,v1402314206650,v1402314362490,v1402314361786,v1402312920698,v1402312919994,v1402312864698,v1402312863162,v1402314344058,v1402314338746,v1402312902266,v1402312541818,v1402312896954,v1402312536506,v1402312446394] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308710010) (.cons (no_v1402308709306) (.cons (no_v1402308703866) (.cons (no_v1402308703162) (.cons (no_v1402308701626) (.cons (no_v1402308349562) (.cons (no_v1402308348858) (.cons (no_v1402308343418) (.cons (no_v1402308253306) (.cons (no_v1402308342714) (.cons (no_v1402308341178) (.cons (no_v1402308252602) (.cons (no_v1402308251066) (.cons (no_v1402308228538) (.cons (no_v1402314215034) (.cons (no_v1402314214330) (.cons (no_v1402314208890) (.cons (no_v1402314208186) (.cons (no_v1402314206650) (.cons (no_v1402314362490) (.cons (no_v1402314361786) (.cons (no_v1402312920698) (.cons (no_v1402312919994) (.cons (no_v1402312864698) (.cons (no_v1402312863162) (.cons (no_v1402314344058) (.cons (no_v1402314338746) (.cons (no_v1402312902266) (.cons (no_v1402312541818) (.cons (no_v1402312896954) (.cons (no_v1402312536506) (.cons (no_v1402312446394) .nil))))))))))))))))))))))))))))))))

private def v1402308710198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308710198 : ¬ MinimalInterpreter v1402308710198 :=
  cost_cut false 2 (by decide)

private def v1402308709334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402308709334 : ¬ MinimalInterpreter v1402308709334 :=
  cost_cut false 2 (by decide)

private def v1402308704054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308704054 : ¬ MinimalInterpreter v1402308704054 :=
  cost_cut false 2 (by decide)

private def v1402308703190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1402308703190 : ¬ MinimalInterpreter v1402308703190 :=
  cost_cut false 2 (by decide)

private def v1402308701654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1402308701654 : ¬ MinimalInterpreter v1402308701654 :=
  cost_cut false 2 (by decide)

private def v1402308349750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308349750 : ¬ MinimalInterpreter v1402308349750 :=
  cost_cut false 2 (by decide)

private def v1402308348886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402308348886 : ¬ MinimalInterpreter v1402308348886 :=
  cost_cut false 2 (by decide)

private def v1402308343606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308343606 : ¬ MinimalInterpreter v1402308343606 :=
  cost_cut false 2 (by decide)

private def v1402308253494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308253494 : ¬ MinimalInterpreter v1402308253494 :=
  cost_cut false 2 (by decide)

private def v1402308342742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1)))))))
private theorem no_v1402308342742 : ¬ MinimalInterpreter v1402308342742 :=
  cost_cut false 2 (by decide)

private def v1402308341206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1)))))))
private theorem no_v1402308341206 : ¬ MinimalInterpreter v1402308341206 :=
  cost_cut false 2 (by decide)

private def v1402308252630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1402308252630 : ¬ MinimalInterpreter v1402308252630 :=
  cost_cut false 2 (by decide)

private def v1402308251094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 1)))))))
private theorem no_v1402308251094 : ¬ MinimalInterpreter v1402308251094 :=
  cost_cut false 2 (by decide)

private def v1402308228566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1402308228566 : ¬ MinimalInterpreter v1402308228566 :=
  cost_cut false 2 (by decide)

private def v1402314215222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314215222 : ¬ MinimalInterpreter v1402314215222 :=
  cost_cut false 2 (by decide)

private def v1402314214358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402314214358 : ¬ MinimalInterpreter v1402314214358 :=
  cost_cut false 2 (by decide)

private def v1402314209078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314209078 : ¬ MinimalInterpreter v1402314209078 :=
  cost_cut false 2 (by decide)

private def v1402314208214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1402314208214 : ¬ MinimalInterpreter v1402314208214 :=
  cost_cut false 2 (by decide)

private def v1402314206678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1402314206678 : ¬ MinimalInterpreter v1402314206678 :=
  cost_cut false 2 (by decide)

private def v1402314362678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314362678 : ¬ MinimalInterpreter v1402314362678 :=
  cost_cut false 2 (by decide)

private def v1402314361814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402314361814 : ¬ MinimalInterpreter v1402314361814 :=
  cost_cut false 2 (by decide)

private def v1402312920886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312920886 : ¬ MinimalInterpreter v1402312920886 :=
  cost_cut false 2 (by decide)

private def v1402312920022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402312920022 : ¬ MinimalInterpreter v1402312920022 :=
  cost_cut false 2 (by decide)

private def v1402314374342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402314374342 : ¬ MinimalInterpreter v1402314374342 :=
  chain_cut false 2 (by decide)

private def v1402314370886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402314370886 : ¬ MinimalInterpreter v1402314370886 :=
  chain_cut false 2 (by decide)

private def v1402314349766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402314349766 : ¬ MinimalInterpreter v1402314349766 :=
  chain_cut false 2 (by decide)

private def v1402314346310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402314346310 : ¬ MinimalInterpreter v1402314346310 :=
  chain_cut false 2 (by decide)

private def v1402314340166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402314340166 : ¬ MinimalInterpreter v1402314340166 :=
  chain_cut false 2 (by decide)

private def v1402312932550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402312932550 : ¬ MinimalInterpreter v1402312932550 :=
  chain_cut false 2 (by decide)

private def v1402312929094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402312929094 : ¬ MinimalInterpreter v1402312929094 :=
  chain_cut false 2 (by decide)

private def v1402312907974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312907974 : ¬ MinimalInterpreter v1402312907974 :=
  chain_cut false 2 (by decide)

private def v1402312547526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312547526 : ¬ MinimalInterpreter v1402312547526 :=
  chain_cut false 2 (by decide)

private def v1402312904518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 1)))))))
private theorem no_v1402312904518 : ¬ MinimalInterpreter v1402312904518 :=
  chain_cut false 2 (by decide)

private def v1402312898374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312898374 : ¬ MinimalInterpreter v1402312898374 :=
  chain_cut false 2 (by decide)

private def v1402312544070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312544070 : ¬ MinimalInterpreter v1402312544070 :=
  chain_cut false 2 (by decide)

private def v1402312537926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312537926 : ¬ MinimalInterpreter v1402312537926 :=
  chain_cut false 2 (by decide)

private def v1402312447814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312447814 : ¬ MinimalInterpreter v1402312447814 :=
  chain_cut false 2 (by decide)

theorem four124 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,2,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,2,0,1] = [v1402308710198,v1402308709334,v1402308704054,v1402308703190,v1402308701654,v1402308349750,v1402308348886,v1402308343606,v1402308253494,v1402308342742,v1402308341206,v1402308252630,v1402308251094,v1402308228566,v1402314215222,v1402314214358,v1402314209078,v1402314208214,v1402314206678,v1402314362678,v1402314361814,v1402312920886,v1402312920022,v1402314374342,v1402314370886,v1402314349766,v1402314346310,v1402314340166,v1402312932550,v1402312929094,v1402312907974,v1402312547526,v1402312904518,v1402312898374,v1402312544070,v1402312537926,v1402312447814] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308710198) (.cons (no_v1402308709334) (.cons (no_v1402308704054) (.cons (no_v1402308703190) (.cons (no_v1402308701654) (.cons (no_v1402308349750) (.cons (no_v1402308348886) (.cons (no_v1402308343606) (.cons (no_v1402308253494) (.cons (no_v1402308342742) (.cons (no_v1402308341206) (.cons (no_v1402308252630) (.cons (no_v1402308251094) (.cons (no_v1402308228566) (.cons (no_v1402314215222) (.cons (no_v1402314214358) (.cons (no_v1402314209078) (.cons (no_v1402314208214) (.cons (no_v1402314206678) (.cons (no_v1402314362678) (.cons (no_v1402314361814) (.cons (no_v1402312920886) (.cons (no_v1402312920022) (.cons (no_v1402314374342) (.cons (no_v1402314370886) (.cons (no_v1402314349766) (.cons (no_v1402314346310) (.cons (no_v1402314340166) (.cons (no_v1402312932550) (.cons (no_v1402312929094) (.cons (no_v1402312907974) (.cons (no_v1402312547526) (.cons (no_v1402312904518) (.cons (no_v1402312898374) (.cons (no_v1402312544070) (.cons (no_v1402312537926) (.cons (no_v1402312447814) .nil)))))))))))))))))))))))))))))))))))))

private def v1402308710202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308710202 : ¬ MinimalInterpreter v1402308710202 :=
  cost_cut false 2 (by decide)

private def v1402308709338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402308709338 : ¬ MinimalInterpreter v1402308709338 :=
  cost_cut false 2 (by decide)

private def v1402308704058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308704058 : ¬ MinimalInterpreter v1402308704058 :=
  cost_cut false 2 (by decide)

private def v1402308703194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1402308703194 : ¬ MinimalInterpreter v1402308703194 :=
  cost_cut false 2 (by decide)

private def v1402308701658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1402308701658 : ¬ MinimalInterpreter v1402308701658 :=
  cost_cut false 2 (by decide)

private def v1402308349754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308349754 : ¬ MinimalInterpreter v1402308349754 :=
  cost_cut false 2 (by decide)

private def v1402308348890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402308348890 : ¬ MinimalInterpreter v1402308348890 :=
  cost_cut false 2 (by decide)

private def v1402308343610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308343610 : ¬ MinimalInterpreter v1402308343610 :=
  cost_cut false 2 (by decide)

private def v1402308253498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308253498 : ¬ MinimalInterpreter v1402308253498 :=
  cost_cut false 2 (by decide)

private def v1402308342746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))))))
private theorem no_v1402308342746 : ¬ MinimalInterpreter v1402308342746 :=
  cost_cut false 2 (by decide)

private def v1402308341210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)))))))
private theorem no_v1402308341210 : ¬ MinimalInterpreter v1402308341210 :=
  cost_cut false 2 (by decide)

private def v1402308252634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1402308252634 : ¬ MinimalInterpreter v1402308252634 :=
  cost_cut false 2 (by decide)

private def v1402308251098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)) (.var 0)))))))
private theorem no_v1402308251098 : ¬ MinimalInterpreter v1402308251098 :=
  cost_cut false 2 (by decide)

private def v1402308228570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1402308228570 : ¬ MinimalInterpreter v1402308228570 :=
  cost_cut false 2 (by decide)

private def v1402314215226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314215226 : ¬ MinimalInterpreter v1402314215226 :=
  cost_cut false 2 (by decide)

private def v1402314214362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402314214362 : ¬ MinimalInterpreter v1402314214362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314209082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314209082 : ¬ MinimalInterpreter v1402314209082 :=
  cost_cut false 2 (by decide)

private def v1402314208218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1402314208218 : ¬ MinimalInterpreter v1402314208218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314206682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1402314206682 : ¬ MinimalInterpreter v1402314206682 :=
  cost_cut false 2 (by decide)

private def v1402314362682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314362682 : ¬ MinimalInterpreter v1402314362682 :=
  cost_cut false 2 (by decide)

private def v1402314361818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402314361818 : ¬ MinimalInterpreter v1402314361818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402312920890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312920890 : ¬ MinimalInterpreter v1402312920890 :=
  cost_cut false 2 (by decide)

private def v1402312920026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402312920026 : ¬ MinimalInterpreter v1402312920026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402312864730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))))))
private theorem no_v1402312864730 : ¬ MinimalInterpreter v1402312864730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))))

private def v1402312863194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0))))))
private theorem no_v1402312863194 : ¬ MinimalInterpreter v1402312863194 :=
  cost_cut false 2 (by decide)

private def v1402314370842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402314370842 : ¬ MinimalInterpreter v1402314370842 :=
  chain_cut false 2 (by decide)

private def v1402314346266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402314346266 : ¬ MinimalInterpreter v1402314346266 :=
  chain_cut false 2 (by decide)

private def v1402314340122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402314340122 : ¬ MinimalInterpreter v1402314340122 :=
  chain_cut false 2 (by decide)

private def v1402312929050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402312929050 : ¬ MinimalInterpreter v1402312929050 :=
  chain_cut false 2 (by decide)

private def v1402312904474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1))))) (.var 0))))))
private theorem no_v1402312904474 : ¬ MinimalInterpreter v1402312904474 :=
  chain_cut false 2 (by decide)

private def v1402312898330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312898330 : ¬ MinimalInterpreter v1402312898330 :=
  chain_cut false 2 (by decide)

private def v1402312544026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312544026 : ¬ MinimalInterpreter v1402312544026 :=
  chain_cut false 2 (by decide)

private def v1402312537882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312537882 : ¬ MinimalInterpreter v1402312537882 :=
  chain_cut false 2 (by decide)

private def v1402312447770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312447770 : ¬ MinimalInterpreter v1402312447770 :=
  chain_cut false 2 (by decide)

theorem four125 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,2,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,2,1,0] = [v1402308710202,v1402308709338,v1402308704058,v1402308703194,v1402308701658,v1402308349754,v1402308348890,v1402308343610,v1402308253498,v1402308342746,v1402308341210,v1402308252634,v1402308251098,v1402308228570,v1402314215226,v1402314214362,v1402314209082,v1402314208218,v1402314206682,v1402314362682,v1402314361818,v1402312920890,v1402312920026,v1402312864730,v1402312863194,v1402314370842,v1402314346266,v1402314340122,v1402312929050,v1402312904474,v1402312898330,v1402312544026,v1402312537882,v1402312447770] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308710202) (.cons (no_v1402308709338) (.cons (no_v1402308704058) (.cons (no_v1402308703194) (.cons (no_v1402308701658) (.cons (no_v1402308349754) (.cons (no_v1402308348890) (.cons (no_v1402308343610) (.cons (no_v1402308253498) (.cons (no_v1402308342746) (.cons (no_v1402308341210) (.cons (no_v1402308252634) (.cons (no_v1402308251098) (.cons (no_v1402308228570) (.cons (no_v1402314215226) (.cons (no_v1402314214362) (.cons (no_v1402314209082) (.cons (no_v1402314208218) (.cons (no_v1402314206682) (.cons (no_v1402314362682) (.cons (no_v1402314361818) (.cons (no_v1402312920890) (.cons (no_v1402312920026) (.cons (no_v1402312864730) (.cons (no_v1402312863194) (.cons (no_v1402314370842) (.cons (no_v1402314346266) (.cons (no_v1402314340122) (.cons (no_v1402312929050) (.cons (no_v1402312904474) (.cons (no_v1402312898330) (.cons (no_v1402312544026) (.cons (no_v1402312537882) (.cons (no_v1402312447770) .nil))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
