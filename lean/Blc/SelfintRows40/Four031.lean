import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307297078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 4) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402307297078 : ¬ MinimalInterpreter v1402307297078 :=
  chain_cut false 2 (by decide)

private def v1402307293142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 4) (.var 0)) (.var 1)))))))))
private theorem no_v1402307293142 : ¬ MinimalInterpreter v1402307293142 :=
  chain_cut false 2 (by decide)

private def v1402307206966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402307206966 : ¬ MinimalInterpreter v1402307206966 :=
  chain_cut false 2 (by decide)

private def v1402307203030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 4) (.var 0))) (.var 1))))))))
private theorem no_v1402307203030 : ¬ MinimalInterpreter v1402307203030 :=
  chain_cut false 2 (by decide)

private def v1402307180502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 4)) (.var 0)) (.var 1))))))))
private theorem no_v1402307180502 : ¬ MinimalInterpreter v1402307180502 :=
  chain_cut false 2 (by decide)

private def v1402308337462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308337462 : ¬ MinimalInterpreter v1402308337462 :=
  chain_cut false 2 (by decide)

private def v1402308249558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.var 1)))))))
private theorem no_v1402308249558 : ¬ MinimalInterpreter v1402308249558 :=
  chain_cut false 2 (by decide)

private def v1402312859446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312859446 : ¬ MinimalInterpreter v1402312859446 :=
  chain_cut false 2 (by decide)

private def v1402312525782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)) (.var 1))))))
private theorem no_v1402312525782 : ¬ MinimalInterpreter v1402312525782 :=
  chain_cut false 2 (by decide)

private def v1402336198454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402336198454 : ¬ MinimalInterpreter v1402336198454 :=
  chain_cut false 4 (by decide)

private def v1402336194518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 1)))))))))
private theorem no_v1402336194518 : ¬ MinimalInterpreter v1402336194518 :=
  chain_cut false 4 (by decide)

theorem four217 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,4,0,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,4,0,1] = [v1402307297078,v1402307293142,v1402307206966,v1402307203030,v1402307180502,v1402308337462,v1402308249558,v1402312859446,v1402312525782,v1402336198454,v1402336194518] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307297078) (.cons (no_v1402307293142) (.cons (no_v1402307206966) (.cons (no_v1402307203030) (.cons (no_v1402307180502) (.cons (no_v1402308337462) (.cons (no_v1402308249558) (.cons (no_v1402312859446) (.cons (no_v1402312525782) (.cons (no_v1402336198454) (.cons (no_v1402336194518) .nil)))))))))))

private def v1402307297082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 4) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402307297082 : ¬ MinimalInterpreter v1402307297082 :=
  chain_cut false 2 (by decide)

private def v1402307293146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 4) (.var 1)) (.var 0)))))))))
private theorem no_v1402307293146 : ¬ MinimalInterpreter v1402307293146 :=
  chain_cut false 2 (by decide)

private def v1402307206970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402307206970 : ¬ MinimalInterpreter v1402307206970 :=
  chain_cut false 2 (by decide)

private def v1402307203034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 4) (.var 1))) (.var 0))))))))
private theorem no_v1402307203034 : ¬ MinimalInterpreter v1402307203034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 4) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 3) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 4) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 3) (.var 0))) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307180506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 4)) (.var 1)) (.var 0))))))))
private theorem no_v1402307180506 : ¬ MinimalInterpreter v1402307180506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 4)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 3)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 4)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 3)) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402308337466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308337466 : ¬ MinimalInterpreter v1402308337466 :=
  chain_cut false 2 (by decide)

private def v1402308333530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 4) (.var 1)))) (.var 0)))))))
private theorem no_v1402308333530 : ¬ MinimalInterpreter v1402308333530 :=
  chain_cut false 2 (by decide)

private def v1402308249562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 1)) (.var 0)))))))
private theorem no_v1402308249562 : ¬ MinimalInterpreter v1402308249562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 1)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 3))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))

private def v1402312859450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312859450 : ¬ MinimalInterpreter v1402312859450 :=
  chain_cut false 2 (by decide)

private def v1402312525786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 1)) (.var 0))))))
private theorem no_v1402312525786 : ¬ MinimalInterpreter v1402312525786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 1)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))

private def v1402336198458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 4) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402336198458 : ¬ MinimalInterpreter v1402336198458 :=
  chain_cut false 4 (by decide)

private def v1402336194522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.var 0)))))))))
private theorem no_v1402336194522 : ¬ MinimalInterpreter v1402336194522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.var 1)) (.var 0)) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))

theorem four218 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,4,1,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,4,1,0] = [v1402307297082,v1402307293146,v1402307206970,v1402307203034,v1402307180506,v1402308337466,v1402308333530,v1402308249562,v1402312859450,v1402312525786,v1402336198458,v1402336194522] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307297082) (.cons (no_v1402307293146) (.cons (no_v1402307206970) (.cons (no_v1402307203034) (.cons (no_v1402307180506) (.cons (no_v1402308337466) (.cons (no_v1402308333530) (.cons (no_v1402308249562) (.cons (no_v1402312859450) (.cons (no_v1402312525786) (.cons (no_v1402336198458) (.cons (no_v1402336194522) .nil))))))))))))

private def v1402307320254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 4))))))))))
private theorem no_v1402307320254 : ¬ MinimalInterpreter v1402307320254 :=
  chain_cut false 2 (by decide)

private def v1402307319486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 4)))))))))
private theorem no_v1402307319486 : ¬ MinimalInterpreter v1402307319486 :=
  chain_cut false 2 (by decide)

private def v1402307209662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 4)))))))))
private theorem no_v1402307209662 : ¬ MinimalInterpreter v1402307209662 :=
  chain_cut false 2 (by decide)

private def v1402307208894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 4))))))))
private theorem no_v1402307208894 : ¬ MinimalInterpreter v1402307208894 :=
  chain_cut false 2 (by decide)

private def v1402307181246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 4))))))))
private theorem no_v1402307181246 : ¬ MinimalInterpreter v1402307181246 :=
  chain_cut false 2 (by decide)

private def v1402308814398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v1402308814398 : ¬ MinimalInterpreter v1402308814398 :=
  chain_cut false 2 (by decide)

private def v1402308811326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v1402308811326 : ¬ MinimalInterpreter v1402308811326 :=
  chain_cut false 2 (by decide)

private def v1402308372030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 4)))))))))
private theorem no_v1402308372030 : ¬ MinimalInterpreter v1402308372030 :=
  chain_cut false 2 (by decide)

private def v1402308368958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 4))))))))
private theorem no_v1402308368958 : ¬ MinimalInterpreter v1402308368958 :=
  chain_cut false 2 (by decide)

private def v1402308258366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 4))))))))
private theorem no_v1402308258366 : ¬ MinimalInterpreter v1402308258366 :=
  chain_cut false 2 (by decide)

theorem four219 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,0,4]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,0,4] = [v1402307320254,v1402307319486,v1402307209662,v1402307208894,v1402307181246,v1402308814398,v1402308811326,v1402308372030,v1402308368958,v1402308258366] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307320254) (.cons (no_v1402307319486) (.cons (no_v1402307209662) (.cons (no_v1402307208894) (.cons (no_v1402307181246) (.cons (no_v1402308814398) (.cons (no_v1402308811326) (.cons (no_v1402308372030) (.cons (no_v1402308368958) (.cons (no_v1402308258366) .nil))))))))))

private def v1402308794846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402308794846 : ¬ MinimalInterpreter v1402308794846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 2) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402308794078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402308794078 : ¬ MinimalInterpreter v1402308794078 :=
  cost_cut false 2 (by decide)

private def v1402308814622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402308814622 : ¬ MinimalInterpreter v1402308814622 :=
  cost_cut false 2 (by decide)

private def v1402308811550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402308811550 : ¬ MinimalInterpreter v1402308811550 :=
  cost_cut false 2 (by decide)

private def v1402308810974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 3))))))))
private theorem no_v1402308810974 : ¬ MinimalInterpreter v1402308810974 :=
  chain_cut false 2 (by decide)

private def v1402308372254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402308372254 : ¬ MinimalInterpreter v1402308372254 :=
  cost_cut false 2 (by decide)

private def v1402308369182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402308369182 : ¬ MinimalInterpreter v1402308369182 :=
  cost_cut false 2 (by decide)

private def v1402308258590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402308258590 : ¬ MinimalInterpreter v1402308258590 :=
  cost_cut false 2 (by decide)

private def v1402308368606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 3)))))))
private theorem no_v1402308368606 : ¬ MinimalInterpreter v1402308368606 :=
  chain_cut false 2 (by decide)

private def v1402308258014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 3)))))))
private theorem no_v1402308258014 : ¬ MinimalInterpreter v1402308258014 :=
  chain_cut false 2 (by decide)

private def v1402314786590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402314786590 : ¬ MinimalInterpreter v1402314786590 :=
  chain_cut false 2 (by decide)

private def v1402314791966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 3))))))))))
private theorem no_v1402314791966 : ¬ MinimalInterpreter v1402314791966 :=
  chain_cut false 2 (by decide)

private def v1402314779678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402314779678 : ¬ MinimalInterpreter v1402314779678 :=
  chain_cut false 2 (by decide)

private def v1402313017118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402313017118 : ¬ MinimalInterpreter v1402313017118 :=
  chain_cut false 2 (by decide)

private def v1402313022494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.var 3)))))))))
private theorem no_v1402313022494 : ¬ MinimalInterpreter v1402313022494 :=
  chain_cut false 2 (by decide)

private def v1402313010206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.var 3))))))))
private theorem no_v1402313010206 : ¬ MinimalInterpreter v1402313010206 :=
  chain_cut false 2 (by decide)

private def v1402312567838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.var 3))))))))
private theorem no_v1402312567838 : ¬ MinimalInterpreter v1402312567838 :=
  chain_cut false 2 (by decide)

theorem four220 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,1,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,1,3] = [v1402308794846,v1402308794078,v1402308814622,v1402308811550,v1402308810974,v1402308372254,v1402308369182,v1402308258590,v1402308368606,v1402308258014,v1402314786590,v1402314791966,v1402314779678,v1402313017118,v1402313022494,v1402313010206,v1402312567838] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308794846) (.cons (no_v1402308794078) (.cons (no_v1402308814622) (.cons (no_v1402308811550) (.cons (no_v1402308810974) (.cons (no_v1402308372254) (.cons (no_v1402308369182) (.cons (no_v1402308258590) (.cons (no_v1402308368606) (.cons (no_v1402308258014) (.cons (no_v1402314786590) (.cons (no_v1402314791966) (.cons (no_v1402314779678) (.cons (no_v1402313017118) (.cons (no_v1402313022494) (.cons (no_v1402313010206) (.cons (no_v1402312567838) .nil)))))))))))))))))

private def v1402308813294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 2))))))))))
private theorem no_v1402308813294 : ¬ MinimalInterpreter v1402308813294 :=
  cost_cut false 2 (by decide)

private def v1402308814734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402308814734 : ¬ MinimalInterpreter v1402308814734 :=
  cost_cut false 2 (by decide)

private def v1402308811662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402308811662 : ¬ MinimalInterpreter v1402308811662 :=
  cost_cut false 2 (by decide)

private def v1402308810990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402308810990 : ¬ MinimalInterpreter v1402308810990 :=
  cost_cut false 2 (by decide)

private def v1402308370926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 2)))))))))
private theorem no_v1402308370926 : ¬ MinimalInterpreter v1402308370926 :=
  cost_cut false 2 (by decide)

private def v1402308372366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402308372366 : ¬ MinimalInterpreter v1402308372366 :=
  cost_cut false 2 (by decide)

private def v1402308369294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402308369294 : ¬ MinimalInterpreter v1402308369294 :=
  cost_cut false 2 (by decide)

private def v1402308258702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402308258702 : ¬ MinimalInterpreter v1402308258702 :=
  cost_cut false 2 (by decide)

private def v1402308368622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402308368622 : ¬ MinimalInterpreter v1402308368622 :=
  cost_cut false 2 (by decide)

private def v1402308258030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402308258030 : ¬ MinimalInterpreter v1402308258030 :=
  cost_cut false 2 (by decide)

private def v1402314786702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402314786702 : ¬ MinimalInterpreter v1402314786702 :=
  chain_cut false 2 (by decide)

private def v1402314777486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402314777486 : ¬ MinimalInterpreter v1402314777486 :=
  chain_cut false 2 (by decide)

private def v1402313017230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402313017230 : ¬ MinimalInterpreter v1402313017230 :=
  chain_cut false 2 (by decide)

private def v1402313008014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 2)))))))
private theorem no_v1402313008014 : ¬ MinimalInterpreter v1402313008014 :=
  chain_cut false 2 (by decide)

private def v1402312565646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.lam (.var 2)))))))
private theorem no_v1402312565646 : ¬ MinimalInterpreter v1402312565646 :=
  chain_cut false 2 (by decide)

theorem four221 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,2,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,2,2] = [v1402308813294,v1402308814734,v1402308811662,v1402308810990,v1402308370926,v1402308372366,v1402308369294,v1402308258702,v1402308368622,v1402308258030,v1402314786702,v1402314777486,v1402313017230,v1402313008014,v1402312565646] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308813294) (.cons (no_v1402308814734) (.cons (no_v1402308811662) (.cons (no_v1402308810990) (.cons (no_v1402308370926) (.cons (no_v1402308372366) (.cons (no_v1402308369294) (.cons (no_v1402308258702) (.cons (no_v1402308368622) (.cons (no_v1402308258030) (.cons (no_v1402314786702) (.cons (no_v1402314777486) (.cons (no_v1402313017230) (.cons (no_v1402313008014) (.cons (no_v1402312565646) .nil)))))))))))))))

private def v1402308794870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402308794870 : ¬ MinimalInterpreter v1402308794870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402308794102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402308794102 : ¬ MinimalInterpreter v1402308794102 :=
  cost_cut false 2 (by decide)

private def v1402308814790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v1402308814790 : ¬ MinimalInterpreter v1402308814790 :=
  chain_cut false 2 (by decide)

private def v1402308811718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v1402308811718 : ¬ MinimalInterpreter v1402308811718 :=
  chain_cut false 2 (by decide)

private def v1402308810998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402308810998 : ¬ MinimalInterpreter v1402308810998 :=
  cost_cut false 2 (by decide)

private def v1402308372422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.lam (.var 1)))))))))
private theorem no_v1402308372422 : ¬ MinimalInterpreter v1402308372422 :=
  chain_cut false 2 (by decide)

private def v1402308369350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.lam (.var 1))))))))
private theorem no_v1402308369350 : ¬ MinimalInterpreter v1402308369350 :=
  chain_cut false 2 (by decide)

private def v1402308258758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.lam (.var 1))))))))
private theorem no_v1402308258758 : ¬ MinimalInterpreter v1402308258758 :=
  chain_cut false 2 (by decide)

private def v1402308368630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402308368630 : ¬ MinimalInterpreter v1402308368630 :=
  cost_cut false 2 (by decide)

private def v1402308258038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402308258038 : ¬ MinimalInterpreter v1402308258038 :=
  cost_cut false 2 (by decide)

private def v1402314776822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402314776822 : ¬ MinimalInterpreter v1402314776822 :=
  chain_cut false 2 (by decide)

private def v1402313007350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 1))))))
private theorem no_v1402313007350 : ¬ MinimalInterpreter v1402313007350 :=
  chain_cut false 2 (by decide)

private def v1402312564982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))) (.var 1))))))
private theorem no_v1402312564982 : ¬ MinimalInterpreter v1402312564982 :=
  chain_cut false 2 (by decide)

theorem four222 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,3,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,3,1] = [v1402308794870,v1402308794102,v1402308814790,v1402308811718,v1402308810998,v1402308372422,v1402308369350,v1402308258758,v1402308368630,v1402308258038,v1402314776822,v1402313007350,v1402312564982] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308794870) (.cons (no_v1402308794102) (.cons (no_v1402308814790) (.cons (no_v1402308811718) (.cons (no_v1402308810998) (.cons (no_v1402308372422) (.cons (no_v1402308369350) (.cons (no_v1402308258758) (.cons (no_v1402308368630) (.cons (no_v1402308258038) (.cons (no_v1402314776822) (.cons (no_v1402313007350) (.cons (no_v1402312564982) .nil)))))))))))))

private def v1402307320314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 4) (.var 0))))))))))
private theorem no_v1402307320314 : ¬ MinimalInterpreter v1402307320314 :=
  chain_cut false 2 (by decide)

private def v1402307319546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 4)) (.var 0)))))))))
private theorem no_v1402307319546 : ¬ MinimalInterpreter v1402307319546 :=
  chain_cut false 2 (by decide)

private def v1402307209722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 4) (.var 0)))))))))
private theorem no_v1402307209722 : ¬ MinimalInterpreter v1402307209722 :=
  chain_cut false 2 (by decide)

private def v1402307208954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 4))) (.var 0))))))))
private theorem no_v1402307208954 : ¬ MinimalInterpreter v1402307208954 :=
  chain_cut false 2 (by decide)

private def v1402307181306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 4)) (.var 0))))))))
private theorem no_v1402307181306 : ¬ MinimalInterpreter v1402307181306 :=
  chain_cut false 2 (by decide)

private def v1402308811002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 4))) (.var 0))))))))
private theorem no_v1402308811002 : ¬ MinimalInterpreter v1402308811002 :=
  chain_cut false 2 (by decide)

private def v1402308368634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 4)))) (.var 0)))))))
private theorem no_v1402308368634 : ¬ MinimalInterpreter v1402308368634 :=
  chain_cut false 2 (by decide)

private def v1402308258042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 4))) (.var 0)))))))
private theorem no_v1402308258042 : ¬ MinimalInterpreter v1402308258042 :=
  chain_cut false 2 (by decide)

theorem four223 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,4,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,0,4,0] = [v1402307320314,v1402307319546,v1402307209722,v1402307208954,v1402307181306,v1402308811002,v1402308368634,v1402308258042] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307320314) (.cons (no_v1402307319546) (.cons (no_v1402307209722) (.cons (no_v1402307208954) (.cons (no_v1402307181306) (.cons (no_v1402308811002) (.cons (no_v1402308368634) (.cons (no_v1402308258042) .nil))))))))

end Blc.SelfintSingleObject.Rows40
