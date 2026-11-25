import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314791990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314791990 : ¬ MinimalInterpreter v1402314791990 :=
  chain_cut false 2 (by decide)

private def v1402314790678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))))))
private theorem no_v1402314790678 : ¬ MinimalInterpreter v1402314790678 :=
  chain_cut false 2 (by decide)

private def v1402314779702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314779702 : ¬ MinimalInterpreter v1402314779702 :=
  chain_cut false 2 (by decide)

private def v1402314777046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))))))
private theorem no_v1402314777046 : ¬ MinimalInterpreter v1402314777046 :=
  chain_cut false 2 (by decide)

private def v1402314778390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v1402314778390 : ¬ MinimalInterpreter v1402314778390 :=
  chain_cut false 2 (by decide)

private def v1402314775318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402314775318 : ¬ MinimalInterpreter v1402314775318 :=
  chain_cut false 2 (by decide)

private def v1402313022518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313022518 : ¬ MinimalInterpreter v1402313022518 :=
  chain_cut false 2 (by decide)

private def v1402313021206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402313021206 : ¬ MinimalInterpreter v1402313021206 :=
  chain_cut false 2 (by decide)

private def v1402312992566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1402312992566 : ¬ MinimalInterpreter v1402312992566 :=
  chain_cut false 2 (by decide)

private def v1402312992214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1402312992214 : ¬ MinimalInterpreter v1402312992214 :=
  chain_cut false 2 (by decide)

private def v1402313010230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402313010230 : ¬ MinimalInterpreter v1402313010230 :=
  chain_cut false 2 (by decide)

private def v1402312567862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312567862 : ¬ MinimalInterpreter v1402312567862 :=
  chain_cut false 2 (by decide)

private def v1402312989494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312989494 : ¬ MinimalInterpreter v1402312989494 :=
  chain_cut false 2 (by decide)

private def v1402312559414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312559414 : ¬ MinimalInterpreter v1402312559414 :=
  chain_cut false 2 (by decide)

private def v1402312989142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1))))))
private theorem no_v1402312989142 : ¬ MinimalInterpreter v1402312989142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312988374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))))))
private theorem no_v1402312988374 : ¬ MinimalInterpreter v1402312988374 :=
  cost_cut false 6 (by decide)

private def v1402313007574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))))))
private theorem no_v1402313007574 : ¬ MinimalInterpreter v1402313007574 :=
  chain_cut false 2 (by decide)

private def v1402313008918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 1))))))
private theorem no_v1402313008918 : ¬ MinimalInterpreter v1402313008918 :=
  chain_cut false 2 (by decide)

private def v1402313005846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402313005846 : ¬ MinimalInterpreter v1402313005846 :=
  chain_cut false 2 (by decide)

private def v1402312565206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v1402312565206 : ¬ MinimalInterpreter v1402312565206 :=
  chain_cut false 2 (by decide)

private def v1402312566550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312566550 : ¬ MinimalInterpreter v1402312566550 :=
  chain_cut false 2 (by decide)

private def v1402312559062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1402312559062 : ¬ MinimalInterpreter v1402312559062 :=
  chain_cut false 2 (by decide)

private def v1402312563478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312563478 : ¬ MinimalInterpreter v1402312563478 :=
  chain_cut false 2 (by decide)

private def v1402312452886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312452886 : ¬ MinimalInterpreter v1402312452886 :=
  chain_cut false 2 (by decide)

private def v1402312558294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 1))))))
private theorem no_v1402312558294 : ¬ MinimalInterpreter v1402312558294 :=
  chain_cut false 2 (by decide)

private def v1402312450774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1402312450774 : ¬ MinimalInterpreter v1402312450774 :=
  chain_cut false 2 (by decide)

theorem five760 : BadRow (bucket false 4 3 5 [2,0,1,0,1]) := by
  have h : bucket false 4 3 5 [2,0,1,0,1] = [v1402314791990,v1402314790678,v1402314779702,v1402314777046,v1402314778390,v1402314775318,v1402313022518,v1402313021206,v1402312992566,v1402312992214,v1402313010230,v1402312567862,v1402312989494,v1402312559414,v1402312989142,v1402312988374,v1402313007574,v1402313008918,v1402313005846,v1402312565206,v1402312566550,v1402312559062,v1402312563478,v1402312452886,v1402312558294,v1402312450774] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314791990) (.cons (no_v1402314790678) (.cons (no_v1402314779702) (.cons (no_v1402314777046) (.cons (no_v1402314778390) (.cons (no_v1402314775318) (.cons (no_v1402313022518) (.cons (no_v1402313021206) (.cons (no_v1402312992566) (.cons (no_v1402312992214) (.cons (no_v1402313010230) (.cons (no_v1402312567862) (.cons (no_v1402312989494) (.cons (no_v1402312559414) (.cons (no_v1402312989142) (.cons (no_v1402312988374) (.cons (no_v1402313007574) (.cons (no_v1402313008918) (.cons (no_v1402313005846) (.cons (no_v1402312565206) (.cons (no_v1402312566550) (.cons (no_v1402312559062) (.cons (no_v1402312563478) (.cons (no_v1402312452886) (.cons (no_v1402312558294) (.cons (no_v1402312450774) .nil))))))))))))))))))))))))))

theorem five761 : BadRow (bucket true 4 3 5 [2,0,1,0,1]) := by
  have h : bucket true 4 3 5 [2,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314791994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314791994 : ¬ MinimalInterpreter v1402314791994 :=
  chain_cut false 2 (by decide)

private def v1402314792162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v1402314792162 : ¬ MinimalInterpreter v1402314792162 :=
  chain_cut false 2 (by decide)

private def v1402314790754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v1402314790754 : ¬ MinimalInterpreter v1402314790754 :=
  chain_cut false 2 (by decide)

private def v1402314779706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314779706 : ¬ MinimalInterpreter v1402314779706 :=
  chain_cut false 2 (by decide)

private def v1402314779874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402314779874 : ¬ MinimalInterpreter v1402314779874 :=
  chain_cut false 2 (by decide)

private def v1402314778466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0))))))))
private theorem no_v1402314778466 : ¬ MinimalInterpreter v1402314778466 :=
  chain_cut false 2 (by decide)

private def v1402314775394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402314775394 : ¬ MinimalInterpreter v1402314775394 :=
  chain_cut false 2 (by decide)

private def v1402313022522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313022522 : ¬ MinimalInterpreter v1402313022522 :=
  chain_cut false 2 (by decide)

private def v1402313022690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402313022690 : ¬ MinimalInterpreter v1402313022690 :=
  chain_cut false 2 (by decide)

private def v1402313021282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402313021282 : ¬ MinimalInterpreter v1402313021282 :=
  chain_cut false 2 (by decide)

private def v1402312992570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1402312992570 : ¬ MinimalInterpreter v1402312992570 :=
  chain_cut false 2 (by decide)

private def v1402312992218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1402312992218 : ¬ MinimalInterpreter v1402312992218 :=
  chain_cut false 2 (by decide)

private def v1402313010234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402313010234 : ¬ MinimalInterpreter v1402313010234 :=
  chain_cut false 2 (by decide)

private def v1402313010402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402313010402 : ¬ MinimalInterpreter v1402313010402 :=
  chain_cut false 2 (by decide)

private def v1402312567866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312567866 : ¬ MinimalInterpreter v1402312567866 :=
  chain_cut false 2 (by decide)

private def v1402312568034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312568034 : ¬ MinimalInterpreter v1402312568034 :=
  chain_cut false 2 (by decide)

private def v1402312989498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312989498 : ¬ MinimalInterpreter v1402312989498 :=
  chain_cut false 2 (by decide)

private def v1402312559418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312559418 : ¬ MinimalInterpreter v1402312559418 :=
  chain_cut false 2 (by decide)

private def v1402313008994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v1402313008994 : ¬ MinimalInterpreter v1402313008994 :=
  chain_cut false 2 (by decide)

private def v1402313005922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402313005922 : ¬ MinimalInterpreter v1402313005922 :=
  chain_cut false 2 (by decide)

private def v1402312566626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312566626 : ¬ MinimalInterpreter v1402312566626 :=
  chain_cut false 2 (by decide)

private def v1402312563554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312563554 : ¬ MinimalInterpreter v1402312563554 :=
  chain_cut false 2 (by decide)

private def v1402312452962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312452962 : ¬ MinimalInterpreter v1402312452962 :=
  chain_cut false 2 (by decide)

private def v1402312559066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1402312559066 : ¬ MinimalInterpreter v1402312559066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 1))) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402312558298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 0))))))
private theorem no_v1402312558298 : ¬ MinimalInterpreter v1402312558298 :=
  chain_cut false 2 (by decide)

private def v1402312450778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1402312450778 : ¬ MinimalInterpreter v1402312450778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

theorem five762 : BadRow (bucket false 4 3 5 [2,0,1,1,0]) := by
  have h : bucket false 4 3 5 [2,0,1,1,0] = [v1402314791994,v1402314792162,v1402314790754,v1402314779706,v1402314779874,v1402314778466,v1402314775394,v1402313022522,v1402313022690,v1402313021282,v1402312992570,v1402312992218,v1402313010234,v1402313010402,v1402312567866,v1402312568034,v1402312989498,v1402312559418,v1402313008994,v1402313005922,v1402312566626,v1402312563554,v1402312452962,v1402312559066,v1402312558298,v1402312450778] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314791994) (.cons (no_v1402314792162) (.cons (no_v1402314790754) (.cons (no_v1402314779706) (.cons (no_v1402314779874) (.cons (no_v1402314778466) (.cons (no_v1402314775394) (.cons (no_v1402313022522) (.cons (no_v1402313022690) (.cons (no_v1402313021282) (.cons (no_v1402312992570) (.cons (no_v1402312992218) (.cons (no_v1402313010234) (.cons (no_v1402313010402) (.cons (no_v1402312567866) (.cons (no_v1402312568034) (.cons (no_v1402312989498) (.cons (no_v1402312559418) (.cons (no_v1402313008994) (.cons (no_v1402313005922) (.cons (no_v1402312566626) (.cons (no_v1402312563554) (.cons (no_v1402312452962) (.cons (no_v1402312559066) (.cons (no_v1402312558298) (.cons (no_v1402312450778) .nil))))))))))))))))))))))))))

theorem five763 : BadRow (bucket true 4 3 5 [2,0,1,1,0]) := by
  have h : bucket true 4 3 5 [2,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314786714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402314786714 : ¬ MinimalInterpreter v1402314786714 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314786282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1402314786282 : ¬ MinimalInterpreter v1402314786282 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314777066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v1402314777066 : ¬ MinimalInterpreter v1402314777066 :=
  chain_cut false 2 (by decide)

private def v1402313017242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402313017242 : ¬ MinimalInterpreter v1402313017242 :=
  chain_cut false 4 (by decide)

private def v1402313016810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1402313016810 : ¬ MinimalInterpreter v1402313016810 :=
  chain_cut false 4 (by decide)

private def v1402312989594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312989594 : ¬ MinimalInterpreter v1402312989594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312989162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 0))))))
private theorem no_v1402312989162 : ¬ MinimalInterpreter v1402312989162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312988394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))))))
private theorem no_v1402312988394 : ¬ MinimalInterpreter v1402312988394 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313007594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 0))))))
private theorem no_v1402313007594 : ¬ MinimalInterpreter v1402313007594 :=
  chain_cut false 2 (by decide)

private def v1402312565226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v1402312565226 : ¬ MinimalInterpreter v1402312565226 :=
  chain_cut false 2 (by decide)

private def v1402312558314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0))))))
private theorem no_v1402312558314 : ¬ MinimalInterpreter v1402312558314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (.var 0)) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five764 : BadRow (bucket false 4 3 5 [2,0,2,0,0]) := by
  have h : bucket false 4 3 5 [2,0,2,0,0] = [v1402314786714,v1402314786282,v1402314777066,v1402313017242,v1402313016810,v1402312989594,v1402312989162,v1402312988394,v1402313007594,v1402312565226,v1402312558314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314786714) (.cons (no_v1402314786282) (.cons (no_v1402314777066) (.cons (no_v1402313017242) (.cons (no_v1402313016810) (.cons (no_v1402312989594) (.cons (no_v1402312989162) (.cons (no_v1402312988394) (.cons (no_v1402313007594) (.cons (no_v1402312565226) (.cons (no_v1402312558314) .nil)))))))))))

theorem five765 : BadRow (bucket true 4 3 5 [2,0,2,0,0]) := by
  have h : bucket true 4 3 5 [2,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314801974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314801974 : ¬ MinimalInterpreter v1402314801974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314801878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402314801878 : ¬ MinimalInterpreter v1402314801878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314804278 : ¬ MinimalInterpreter v1402314804278 :=
  chain_cut false 2 (by decide)

private def v1402314803990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v1402314803990 : ¬ MinimalInterpreter v1402314803990 :=
  chain_cut false 2 (by decide)

private def v1402314781750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314781750 : ¬ MinimalInterpreter v1402314781750 :=
  chain_cut false 2 (by decide)

private def v1402314780982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402314780982 : ¬ MinimalInterpreter v1402314780982 :=
  chain_cut false 2 (by decide)

private def v1402314781462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v1402314781462 : ¬ MinimalInterpreter v1402314781462 :=
  chain_cut false 2 (by decide)

private def v1402314775830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402314775830 : ¬ MinimalInterpreter v1402314775830 :=
  chain_cut false 2 (by decide)

private def v1402314775638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402314775638 : ¬ MinimalInterpreter v1402314775638 :=
  chain_cut false 2 (by decide)

private def v1402313032502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313032502 : ¬ MinimalInterpreter v1402313032502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313032406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1402313032406 : ¬ MinimalInterpreter v1402313032406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313034806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313034806 : ¬ MinimalInterpreter v1402313034806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313034518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402313034518 : ¬ MinimalInterpreter v1402313034518 :=
  chain_cut false 2 (by decide)

private def v1402313012278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402313012278 : ¬ MinimalInterpreter v1402313012278 :=
  chain_cut false 2 (by decide)

private def v1402312569910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312569910 : ¬ MinimalInterpreter v1402312569910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312990006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312990006 : ¬ MinimalInterpreter v1402312990006 :=
  chain_cut false 2 (by decide)

private def v1402313011510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402313011510 : ¬ MinimalInterpreter v1402313011510 :=
  chain_cut false 2 (by decide)

private def v1402312569142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312569142 : ¬ MinimalInterpreter v1402312569142 :=
  chain_cut false 2 (by decide)

private def v1402312989910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1))))))
private theorem no_v1402312989910 : ¬ MinimalInterpreter v1402312989910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312988502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1))))))
private theorem no_v1402312988502 : ¬ MinimalInterpreter v1402312988502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313011990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 1))))))
private theorem no_v1402313011990 : ¬ MinimalInterpreter v1402313011990 :=
  chain_cut false 2 (by decide)

private def v1402313006358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402313006358 : ¬ MinimalInterpreter v1402313006358 :=
  chain_cut false 2 (by decide)

private def v1402313006166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 1))))))
private theorem no_v1402313006166 : ¬ MinimalInterpreter v1402313006166 :=
  chain_cut false 2 (by decide)

private def v1402312569622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312569622 : ¬ MinimalInterpreter v1402312569622 :=
  chain_cut false 2 (by decide)

private def v1402312563990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312563990 : ¬ MinimalInterpreter v1402312563990 :=
  chain_cut false 2 (by decide)

private def v1402312453398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312453398 : ¬ MinimalInterpreter v1402312453398 :=
  chain_cut false 2 (by decide)

private def v1402312558422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v1402312558422 : ¬ MinimalInterpreter v1402312558422 :=
  chain_cut false 2 (by decide)

private def v1402312563798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v1402312563798 : ¬ MinimalInterpreter v1402312563798 :=
  chain_cut false 2 (by decide)

private def v1402312453206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v1402312453206 : ¬ MinimalInterpreter v1402312453206 :=
  chain_cut false 2 (by decide)

theorem five766 : BadRow (bucket false 4 3 5 [2,1,0,0,1]) := by
  have h : bucket false 4 3 5 [2,1,0,0,1] = [v1402314801974,v1402314801878,v1402314804278,v1402314803990,v1402314781750,v1402314780982,v1402314781462,v1402314775830,v1402314775638,v1402313032502,v1402313032406,v1402313034806,v1402313034518,v1402313012278,v1402312569910,v1402312990006,v1402313011510,v1402312569142,v1402312989910,v1402312988502,v1402313011990,v1402313006358,v1402313006166,v1402312569622,v1402312563990,v1402312453398,v1402312558422,v1402312563798,v1402312453206] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314801974) (.cons (no_v1402314801878) (.cons (no_v1402314804278) (.cons (no_v1402314803990) (.cons (no_v1402314781750) (.cons (no_v1402314780982) (.cons (no_v1402314781462) (.cons (no_v1402314775830) (.cons (no_v1402314775638) (.cons (no_v1402313032502) (.cons (no_v1402313032406) (.cons (no_v1402313034806) (.cons (no_v1402313034518) (.cons (no_v1402313012278) (.cons (no_v1402312569910) (.cons (no_v1402312990006) (.cons (no_v1402313011510) (.cons (no_v1402312569142) (.cons (no_v1402312989910) (.cons (no_v1402312988502) (.cons (no_v1402313011990) (.cons (no_v1402313006358) (.cons (no_v1402313006166) (.cons (no_v1402312569622) (.cons (no_v1402312563990) (.cons (no_v1402312453398) (.cons (no_v1402312558422) (.cons (no_v1402312563798) (.cons (no_v1402312453206) .nil)))))))))))))))))))))))))))))

theorem five767 : BadRow (bucket true 4 3 5 [2,1,0,0,1]) := by
  have h : bucket true 4 3 5 [2,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
