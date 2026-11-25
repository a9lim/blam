import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308670446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))))
private theorem no_v1402308670446 : ¬ MinimalInterpreter v1402308670446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402308668910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 2)))))))))
private theorem no_v1402308668910 : ¬ MinimalInterpreter v1402308668910 :=
  cost_cut false 2 (by decide)

private def v1402308707310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))))
private theorem no_v1402308707310 : ¬ MinimalInterpreter v1402308707310 :=
  cost_cut false 2 (by decide)

private def v1402308710286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402308710286 : ¬ MinimalInterpreter v1402308710286 :=
  chain_cut false 2 (by decide)

private def v1402308704142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.lam (.var 2)))))))))
private theorem no_v1402308704142 : ¬ MinimalInterpreter v1402308704142 :=
  chain_cut false 2 (by decide)

private def v1402308702702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 2))))))))
private theorem no_v1402308702702 : ¬ MinimalInterpreter v1402308702702 :=
  cost_cut false 2 (by decide)

private def v1402308346862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1402308346862 : ¬ MinimalInterpreter v1402308346862 :=
  cost_cut false 2 (by decide)

private def v1402308349838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.lam (.var 2)))))))))
private theorem no_v1402308349838 : ¬ MinimalInterpreter v1402308349838 :=
  chain_cut false 2 (by decide)

private def v1402308343694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.var 2))))))))
private theorem no_v1402308343694 : ¬ MinimalInterpreter v1402308343694 :=
  chain_cut false 2 (by decide)

private def v1402308253582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.lam (.var 2))))))))
private theorem no_v1402308253582 : ¬ MinimalInterpreter v1402308253582 :=
  chain_cut false 2 (by decide)

private def v1402308342254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 2)))))))
private theorem no_v1402308342254 : ¬ MinimalInterpreter v1402308342254 :=
  cost_cut false 2 (by decide)

private def v1402308252142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 2)))))))
private theorem no_v1402308252142 : ¬ MinimalInterpreter v1402308252142 :=
  cost_cut false 2 (by decide)

private def v1402314175470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))))
private theorem no_v1402314175470 : ¬ MinimalInterpreter v1402314175470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402314173934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2)))))))))
private theorem no_v1402314173934 : ¬ MinimalInterpreter v1402314173934 :=
  cost_cut false 2 (by decide)

private def v1402314212334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))))
private theorem no_v1402314212334 : ¬ MinimalInterpreter v1402314212334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 1) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314362766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402314362766 : ¬ MinimalInterpreter v1402314362766 :=
  chain_cut false 2 (by decide)

private def v1402314344334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))))))))
private theorem no_v1402314344334 : ¬ MinimalInterpreter v1402314344334 :=
  chain_cut false 2 (by decide)

private def v1402314342894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)))))))
private theorem no_v1402314342894 : ¬ MinimalInterpreter v1402314342894 :=
  chain_cut false 2 (by decide)

private def v1402312920974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.lam (.var 2)))))))))
private theorem no_v1402312920974 : ¬ MinimalInterpreter v1402312920974 :=
  chain_cut false 2 (by decide)

private def v1402312902542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.lam (.var 2)))))))
private theorem no_v1402312902542 : ¬ MinimalInterpreter v1402312902542 :=
  chain_cut false 2 (by decide)

private def v1402312542094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.lam (.var 2)))))))
private theorem no_v1402312542094 : ¬ MinimalInterpreter v1402312542094 :=
  chain_cut false 2 (by decide)

private def v1402312901102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 2))))))
private theorem no_v1402312901102 : ¬ MinimalInterpreter v1402312901102 :=
  chain_cut false 2 (by decide)

private def v1402312540654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 3)))) (.var 2))))))
private theorem no_v1402312540654 : ¬ MinimalInterpreter v1402312540654 :=
  chain_cut false 2 (by decide)

private def v1402336235406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402336235406 : ¬ MinimalInterpreter v1402336235406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 2)))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402336229262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.var 2)))))))))
private theorem no_v1402336229262 : ¬ MinimalInterpreter v1402336229262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336364430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))))))))
private theorem no_v1402336364430 : ¬ MinimalInterpreter v1402336364430 :=
  chain_cut false 6 (by decide)

private def v1402336362990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)))))))
private theorem no_v1402336362990 : ¬ MinimalInterpreter v1402336362990 :=
  cost_cut false 7 (by decide)

theorem four203 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,3,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,3,2] = [v1402308670446,v1402308668910,v1402308707310,v1402308710286,v1402308704142,v1402308702702,v1402308346862,v1402308349838,v1402308343694,v1402308253582,v1402308342254,v1402308252142,v1402314175470,v1402314173934,v1402314212334,v1402314362766,v1402314344334,v1402314342894,v1402312920974,v1402312902542,v1402312542094,v1402312901102,v1402312540654,v1402336235406,v1402336229262,v1402336364430,v1402336362990] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308670446) (.cons (no_v1402308668910) (.cons (no_v1402308707310) (.cons (no_v1402308710286) (.cons (no_v1402308704142) (.cons (no_v1402308702702) (.cons (no_v1402308346862) (.cons (no_v1402308349838) (.cons (no_v1402308343694) (.cons (no_v1402308253582) (.cons (no_v1402308342254) (.cons (no_v1402308252142) (.cons (no_v1402314175470) (.cons (no_v1402314173934) (.cons (no_v1402314212334) (.cons (no_v1402314362766) (.cons (no_v1402314344334) (.cons (no_v1402314342894) (.cons (no_v1402312920974) (.cons (no_v1402312902542) (.cons (no_v1402312542094) (.cons (no_v1402312901102) (.cons (no_v1402312540654) (.cons (no_v1402336235406) (.cons (no_v1402336229262) (.cons (no_v1402336364430) (.cons (no_v1402336362990) .nil)))))))))))))))))))))))))))

private def v1402307294198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 4) (.var 1))))))))))
private theorem no_v1402307294198 : ¬ MinimalInterpreter v1402307294198 :=
  chain_cut false 2 (by decide)

private def v1402307292662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 4)) (.var 1)))))))))
private theorem no_v1402307292662 : ¬ MinimalInterpreter v1402307292662 :=
  chain_cut false 2 (by decide)

private def v1402307204086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 4) (.var 1)))))))))
private theorem no_v1402307204086 : ¬ MinimalInterpreter v1402307204086 :=
  chain_cut false 2 (by decide)

private def v1402307202550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 4))) (.var 1))))))))
private theorem no_v1402307202550 : ¬ MinimalInterpreter v1402307202550 :=
  chain_cut false 2 (by decide)

private def v1402307180022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 4)) (.var 1))))))))
private theorem no_v1402307180022 : ¬ MinimalInterpreter v1402307180022 :=
  chain_cut false 2 (by decide)

private def v1402308707318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 4) (.var 1))))))))))
private theorem no_v1402308707318 : ¬ MinimalInterpreter v1402308707318 :=
  chain_cut false 2 (by decide)

private def v1402308702710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 4))) (.var 1))))))))
private theorem no_v1402308702710 : ¬ MinimalInterpreter v1402308702710 :=
  chain_cut false 2 (by decide)

private def v1402308346870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 4) (.var 1)))))))))
private theorem no_v1402308346870 : ¬ MinimalInterpreter v1402308346870 :=
  chain_cut false 2 (by decide)

private def v1402308342262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.var 1)))))))
private theorem no_v1402308342262 : ¬ MinimalInterpreter v1402308342262 :=
  chain_cut false 2 (by decide)

private def v1402308252150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.var 1)))))))
private theorem no_v1402308252150 : ¬ MinimalInterpreter v1402308252150 :=
  chain_cut false 2 (by decide)

private def v1402314342902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)))))))
private theorem no_v1402314342902 : ¬ MinimalInterpreter v1402314342902 :=
  chain_cut false 2 (by decide)

private def v1402312901110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))) (.var 1))))))
private theorem no_v1402312901110 : ¬ MinimalInterpreter v1402312901110 :=
  chain_cut false 2 (by decide)

private def v1402312540662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))) (.var 1))))))
private theorem no_v1402312540662 : ¬ MinimalInterpreter v1402312540662 :=
  chain_cut false 2 (by decide)

private def v1402336195574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 1))))))))))
private theorem no_v1402336195574 : ¬ MinimalInterpreter v1402336195574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 4) (.var 1))) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))

private def v1402336194038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 1)))))))))
private theorem no_v1402336194038 : ¬ MinimalInterpreter v1402336194038 :=
  chain_cut false 4 (by decide)

private def v1402336227830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 1))))))))
private theorem no_v1402336227830 : ¬ MinimalInterpreter v1402336227830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336362998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)))))))
private theorem no_v1402336362998 : ¬ MinimalInterpreter v1402336362998 :=
  chain_cut false 6 (by decide)

theorem four204 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,4,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,0,4,1] = [v1402307294198,v1402307292662,v1402307204086,v1402307202550,v1402307180022,v1402308707318,v1402308702710,v1402308346870,v1402308342262,v1402308252150,v1402314342902,v1402312901110,v1402312540662,v1402336195574,v1402336194038,v1402336227830,v1402336362998] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307294198) (.cons (no_v1402307292662) (.cons (no_v1402307204086) (.cons (no_v1402307202550) (.cons (no_v1402307180022) (.cons (no_v1402308707318) (.cons (no_v1402308702710) (.cons (no_v1402308346870) (.cons (no_v1402308342262) (.cons (no_v1402308252150) (.cons (no_v1402314342902) (.cons (no_v1402312901110) (.cons (no_v1402312540662) (.cons (no_v1402336195574) (.cons (no_v1402336194038) (.cons (no_v1402336227830) (.cons (no_v1402336362998) .nil)))))))))))))))))

private def v1402307295678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 4))))))))))
private theorem no_v1402307295678 : ¬ MinimalInterpreter v1402307295678 :=
  chain_cut false 2 (by decide)

private def v1402307292862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 4)))))))))
private theorem no_v1402307292862 : ¬ MinimalInterpreter v1402307292862 :=
  chain_cut false 2 (by decide)

private def v1402307205566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 4)))))))))
private theorem no_v1402307205566 : ¬ MinimalInterpreter v1402307205566 :=
  chain_cut false 2 (by decide)

private def v1402307202750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 4))))))))
private theorem no_v1402307202750 : ¬ MinimalInterpreter v1402307202750 :=
  chain_cut false 2 (by decide)

private def v1402307180222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 4))))))))
private theorem no_v1402307180222 : ¬ MinimalInterpreter v1402307180222 :=
  chain_cut false 2 (by decide)

private def v1402308716094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v1402308716094 : ¬ MinimalInterpreter v1402308716094 :=
  chain_cut false 2 (by decide)

private def v1402308704830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v1402308704830 : ¬ MinimalInterpreter v1402308704830 :=
  chain_cut false 2 (by decide)

private def v1402308355646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 4)))))))))
private theorem no_v1402308355646 : ¬ MinimalInterpreter v1402308355646 :=
  chain_cut false 2 (by decide)

private def v1402308344382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 4))))))))
private theorem no_v1402308344382 : ¬ MinimalInterpreter v1402308344382 :=
  chain_cut false 2 (by decide)

private def v1402308254270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 4))))))))
private theorem no_v1402308254270 : ¬ MinimalInterpreter v1402308254270 :=
  chain_cut false 2 (by decide)

private def v1402314397758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))))))))
private theorem no_v1402314397758 : ¬ MinimalInterpreter v1402314397758 :=
  chain_cut false 2 (by decide)

private def v1402314352702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))))))))
private theorem no_v1402314352702 : ¬ MinimalInterpreter v1402314352702 :=
  chain_cut false 2 (by decide)

private def v1402312955966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.var 4)))))))))
private theorem no_v1402312955966 : ¬ MinimalInterpreter v1402312955966 :=
  chain_cut false 2 (by decide)

private def v1402312910910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.lam (.var 4))))))))
private theorem no_v1402312910910 : ¬ MinimalInterpreter v1402312910910 :=
  chain_cut false 2 (by decide)

private def v1402312550462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 4))))))))
private theorem no_v1402312550462 : ¬ MinimalInterpreter v1402312550462 :=
  chain_cut false 2 (by decide)

private def v1402336197054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 4))))))))))
private theorem no_v1402336197054 : ¬ MinimalInterpreter v1402336197054 :=
  chain_cut false 4 (by decide)

private def v1402336194238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 4)))))))))
private theorem no_v1402336194238 : ¬ MinimalInterpreter v1402336194238 :=
  chain_cut false 4 (by decide)

private def v1402336241214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v1402336241214 : ¬ MinimalInterpreter v1402336241214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336229950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v1402336229950 : ¬ MinimalInterpreter v1402336229950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336417854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 4))))))))))
private theorem no_v1402336417854 : ¬ MinimalInterpreter v1402336417854 :=
  chain_cut true 6 (by decide)

private def v1402336372798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 4)))))))))
private theorem no_v1402336372798 : ¬ MinimalInterpreter v1402336372798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four205 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,0,4]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,0,4] = [v1402307295678,v1402307292862,v1402307205566,v1402307202750,v1402307180222,v1402308716094,v1402308704830,v1402308355646,v1402308344382,v1402308254270,v1402314397758,v1402314352702,v1402312955966,v1402312910910,v1402312550462,v1402336197054,v1402336194238,v1402336241214,v1402336229950,v1402336417854,v1402336372798] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307295678) (.cons (no_v1402307292862) (.cons (no_v1402307205566) (.cons (no_v1402307202750) (.cons (no_v1402307180222) (.cons (no_v1402308716094) (.cons (no_v1402308704830) (.cons (no_v1402308355646) (.cons (no_v1402308344382) (.cons (no_v1402308254270) (.cons (no_v1402314397758) (.cons (no_v1402314352702) (.cons (no_v1402312955966) (.cons (no_v1402312910910) (.cons (no_v1402312550462) (.cons (no_v1402336197054) (.cons (no_v1402336194238) (.cons (no_v1402336241214) (.cons (no_v1402336229950) (.cons (no_v1402336417854) (.cons (no_v1402336372798) .nil)))))))))))))))))))))

private def v1402308671966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402308671966 : ¬ MinimalInterpreter v1402308671966 :=
  cost_cut false 2 (by decide)

private def v1402308669150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 3)))))))))
private theorem no_v1402308669150 : ¬ MinimalInterpreter v1402308669150 :=
  cost_cut false 2 (by decide)

private def v1402308714974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))))))
private theorem no_v1402308714974 : ¬ MinimalInterpreter v1402308714974 :=
  cost_cut false 2 (by decide)

private def v1402308704478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 3))))))))
private theorem no_v1402308704478 : ¬ MinimalInterpreter v1402308704478 :=
  chain_cut false 2 (by decide)

private def v1402308354526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1402308354526 : ¬ MinimalInterpreter v1402308354526 :=
  cost_cut false 2 (by decide)

private def v1402308336094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 3))))))))
private theorem no_v1402308336094 : ¬ MinimalInterpreter v1402308336094 :=
  chain_cut false 2 (by decide)

private def v1402308333278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 3)))))))
private theorem no_v1402308333278 : ¬ MinimalInterpreter v1402308333278 :=
  chain_cut false 2 (by decide)

private def v1402308344030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 3)))))))
private theorem no_v1402308344030 : ¬ MinimalInterpreter v1402308344030 :=
  chain_cut false 2 (by decide)

private def v1402308253918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 3)))))))
private theorem no_v1402308253918 : ¬ MinimalInterpreter v1402308253918 :=
  chain_cut false 2 (by decide)

private def v1402308249310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 3)))))))
private theorem no_v1402308249310 : ¬ MinimalInterpreter v1402308249310 :=
  chain_cut false 2 (by decide)

private def v1402314219998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))))))
private theorem no_v1402314219998 : ¬ MinimalInterpreter v1402314219998 :=
  cost_cut false 2 (by decide)

private def v1402314351390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402314351390 : ¬ MinimalInterpreter v1402314351390 :=
  chain_cut false 2 (by decide)

private def v1402312876510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v1402312876510 : ¬ MinimalInterpreter v1402312876510 :=
  chain_cut false 2 (by decide)

private def v1402312877854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1402312877854 : ¬ MinimalInterpreter v1402312877854 :=
  chain_cut false 2 (by decide)

private def v1402312866590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 3)))))))
private theorem no_v1402312866590 : ¬ MinimalInterpreter v1402312866590 :=
  chain_cut false 2 (by decide)

private def v1402312909598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 3)))))))
private theorem no_v1402312909598 : ¬ MinimalInterpreter v1402312909598 :=
  chain_cut false 2 (by decide)

private def v1402312549150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.var 3)))))))
private theorem no_v1402312549150 : ¬ MinimalInterpreter v1402312549150 :=
  chain_cut false 2 (by decide)

private def v1402312530718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1402312530718 : ¬ MinimalInterpreter v1402312530718 :=
  chain_cut false 2 (by decide)

private def v1402336229598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 3))))))))
private theorem no_v1402336229598 : ¬ MinimalInterpreter v1402336229598 :=
  chain_cut false 7 (by decide)

private def v1402336371486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402336371486 : ¬ MinimalInterpreter v1402336371486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four206 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,1,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,1,3] = [v1402308671966,v1402308669150,v1402308714974,v1402308704478,v1402308354526,v1402308336094,v1402308333278,v1402308344030,v1402308253918,v1402308249310,v1402314219998,v1402314351390,v1402312876510,v1402312877854,v1402312866590,v1402312909598,v1402312549150,v1402312530718,v1402336229598,v1402336371486] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308671966) (.cons (no_v1402308669150) (.cons (no_v1402308714974) (.cons (no_v1402308704478) (.cons (no_v1402308354526) (.cons (no_v1402308336094) (.cons (no_v1402308333278) (.cons (no_v1402308344030) (.cons (no_v1402308253918) (.cons (no_v1402308249310) (.cons (no_v1402314219998) (.cons (no_v1402314351390) (.cons (no_v1402312876510) (.cons (no_v1402312877854) (.cons (no_v1402312866590) (.cons (no_v1402312909598) (.cons (no_v1402312549150) (.cons (no_v1402312530718) (.cons (no_v1402336229598) (.cons (no_v1402336371486) .nil))))))))))))))))))))

private def v1402308336110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 2))))))))
private theorem no_v1402308336110 : ¬ MinimalInterpreter v1402308336110 :=
  cost_cut false 2 (by decide)

private def v1402308333294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 2)))) (.var 2)))))))
private theorem no_v1402308333294 : ¬ MinimalInterpreter v1402308333294 :=
  cost_cut false 2 (by decide)

private def v1402308249326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 2)))))))
private theorem no_v1402308249326 : ¬ MinimalInterpreter v1402308249326 :=
  cost_cut false 2 (by decide)

private def v1402314399246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))))))))
private theorem no_v1402314399246 : ¬ MinimalInterpreter v1402314399246 :=
  chain_cut false 2 (by decide)

private def v1402314354190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))))))))
private theorem no_v1402314354190 : ¬ MinimalInterpreter v1402314354190 :=
  chain_cut false 2 (by decide)

private def v1402314350830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402314350830 : ¬ MinimalInterpreter v1402314350830 :=
  chain_cut false 2 (by decide)

private def v1402312957454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.lam (.var 2)))))))))
private theorem no_v1402312957454 : ¬ MinimalInterpreter v1402312957454 :=
  chain_cut false 2 (by decide)

private def v1402312877966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1402312877966 : ¬ MinimalInterpreter v1402312877966 :=
  chain_cut false 2 (by decide)

private def v1402312912398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2))))))))
private theorem no_v1402312912398 : ¬ MinimalInterpreter v1402312912398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312551950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.lam (.var 2))))))))
private theorem no_v1402312551950 : ¬ MinimalInterpreter v1402312551950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312530830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1402312530830 : ¬ MinimalInterpreter v1402312530830 :=
  chain_cut false 2 (by decide)

private def v1402312866030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))))))
private theorem no_v1402312866030 : ¬ MinimalInterpreter v1402312866030 :=
  chain_cut false 2 (by decide)

private def v1402312909038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 2))))) (.var 2))))))
private theorem no_v1402312909038 : ¬ MinimalInterpreter v1402312909038 :=
  chain_cut false 2 (by decide)

private def v1402312548590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 2)))) (.var 2))))))
private theorem no_v1402312548590 : ¬ MinimalInterpreter v1402312548590 :=
  chain_cut false 2 (by decide)

private def v1402312530158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 2))) (.var 2))))))
private theorem no_v1402312530158 : ¬ MinimalInterpreter v1402312530158 :=
  chain_cut false 2 (by decide)

private def v1402336419342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))))))))
private theorem no_v1402336419342 : ¬ MinimalInterpreter v1402336419342 :=
  chain_cut true 6 (by decide)

private def v1402336374286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))))))))
private theorem no_v1402336374286 : ¬ MinimalInterpreter v1402336374286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336370926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402336370926 : ¬ MinimalInterpreter v1402336370926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four207 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,2,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,2,2] = [v1402308336110,v1402308333294,v1402308249326,v1402314399246,v1402314354190,v1402314350830,v1402312957454,v1402312877966,v1402312912398,v1402312551950,v1402312530830,v1402312866030,v1402312909038,v1402312548590,v1402312530158,v1402336419342,v1402336374286,v1402336370926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308336110) (.cons (no_v1402308333294) (.cons (no_v1402308249326) (.cons (no_v1402314399246) (.cons (no_v1402314354190) (.cons (no_v1402314350830) (.cons (no_v1402312957454) (.cons (no_v1402312877966) (.cons (no_v1402312912398) (.cons (no_v1402312551950) (.cons (no_v1402312530830) (.cons (no_v1402312866030) (.cons (no_v1402312909038) (.cons (no_v1402312548590) (.cons (no_v1402312530158) (.cons (no_v1402336419342) (.cons (no_v1402336374286) (.cons (no_v1402336370926) .nil))))))))))))))))))

private def v1402308671990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402308671990 : ¬ MinimalInterpreter v1402308671990 :=
  cost_cut false 2 (by decide)

private def v1402308669174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 3)) (.var 1)))))))))
private theorem no_v1402308669174 : ¬ MinimalInterpreter v1402308669174 :=
  cost_cut false 2 (by decide)

private def v1402308714998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))))))
private theorem no_v1402308714998 : ¬ MinimalInterpreter v1402308714998 :=
  cost_cut false 2 (by decide)

private def v1402308716486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v1402308716486 : ¬ MinimalInterpreter v1402308716486 :=
  chain_cut false 2 (by decide)

private def v1402308705222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v1402308705222 : ¬ MinimalInterpreter v1402308705222 :=
  chain_cut false 2 (by decide)

private def v1402308354550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1402308354550 : ¬ MinimalInterpreter v1402308354550 :=
  cost_cut false 2 (by decide)

private def v1402308356038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.lam (.var 1)))))))))
private theorem no_v1402308356038 : ¬ MinimalInterpreter v1402308356038 :=
  chain_cut false 2 (by decide)

private def v1402308336118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 3) (.var 1))))))))
private theorem no_v1402308336118 : ¬ MinimalInterpreter v1402308336118 :=
  chain_cut false 2 (by decide)

private def v1402308344774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.lam (.var 1))))))))
private theorem no_v1402308344774 : ¬ MinimalInterpreter v1402308344774 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 1) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308254662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1))))))))
private theorem no_v1402308254662 : ¬ MinimalInterpreter v1402308254662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308333302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 1)))))))
private theorem no_v1402308333302 : ¬ MinimalInterpreter v1402308333302 :=
  cost_cut false 2 (by decide)

private def v1402308249334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 3)) (.var 1)))))))
private theorem no_v1402308249334 : ¬ MinimalInterpreter v1402308249334 :=
  chain_cut false 2 (by decide)

private def v1402314220022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))))))
private theorem no_v1402314220022 : ¬ MinimalInterpreter v1402314220022 :=
  cost_cut false 2 (by decide)

private def v1402314351558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))))))))
private theorem no_v1402314351558 : ¬ MinimalInterpreter v1402314351558 :=
  chain_cut false 2 (by decide)

private def v1402312876534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v1402312876534 : ¬ MinimalInterpreter v1402312876534 :=
  chain_cut false 2 (by decide)

private def v1402312866758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.lam (.var 1)))))))
private theorem no_v1402312866758 : ¬ MinimalInterpreter v1402312866758 :=
  chain_cut false 2 (by decide)

private def v1402312909766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 1)))))))
private theorem no_v1402312909766 : ¬ MinimalInterpreter v1402312909766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3)))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312549318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.lam (.var 1)))))))
private theorem no_v1402312549318 : ¬ MinimalInterpreter v1402312549318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312530166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 3))) (.var 1))))))
private theorem no_v1402312530166 : ¬ MinimalInterpreter v1402312530166 :=
  chain_cut false 2 (by decide)

private def v1402336241606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v1402336241606 : ¬ MinimalInterpreter v1402336241606 :=
  chain_cut false 6 (by decide)

private def v1402336230342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v1402336230342 : ¬ MinimalInterpreter v1402336230342 :=
  w_cut false 0 (by decide)

private def v1402336371654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))))))))
private theorem no_v1402336371654 : ¬ MinimalInterpreter v1402336371654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four208 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,3,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,3,1] = [v1402308671990,v1402308669174,v1402308714998,v1402308716486,v1402308705222,v1402308354550,v1402308356038,v1402308336118,v1402308344774,v1402308254662,v1402308333302,v1402308249334,v1402314220022,v1402314351558,v1402312876534,v1402312866758,v1402312909766,v1402312549318,v1402312530166,v1402336241606,v1402336230342,v1402336371654] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308671990) (.cons (no_v1402308669174) (.cons (no_v1402308714998) (.cons (no_v1402308716486) (.cons (no_v1402308705222) (.cons (no_v1402308354550) (.cons (no_v1402308356038) (.cons (no_v1402308336118) (.cons (no_v1402308344774) (.cons (no_v1402308254662) (.cons (no_v1402308333302) (.cons (no_v1402308249334) (.cons (no_v1402314220022) (.cons (no_v1402314351558) (.cons (no_v1402312876534) (.cons (no_v1402312866758) (.cons (no_v1402312909766) (.cons (no_v1402312549318) (.cons (no_v1402312530166) (.cons (no_v1402336241606) (.cons (no_v1402336230342) (.cons (no_v1402336371654) .nil))))))))))))))))))))))

private def v1402307295738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 4) (.var 0))))))))))
private theorem no_v1402307295738 : ¬ MinimalInterpreter v1402307295738 :=
  chain_cut false 2 (by decide)

private def v1402307292922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 4)) (.var 0)))))))))
private theorem no_v1402307292922 : ¬ MinimalInterpreter v1402307292922 :=
  chain_cut false 2 (by decide)

private def v1402307205626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 4) (.var 0)))))))))
private theorem no_v1402307205626 : ¬ MinimalInterpreter v1402307205626 :=
  chain_cut false 2 (by decide)

private def v1402307202810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 4))) (.var 0))))))))
private theorem no_v1402307202810 : ¬ MinimalInterpreter v1402307202810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 4))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 3))) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307180282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 4)) (.var 0))))))))
private theorem no_v1402307180282 : ¬ MinimalInterpreter v1402307180282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 4)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 3))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 4)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402308704506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 4))) (.var 0))))))))
private theorem no_v1402308704506 : ¬ MinimalInterpreter v1402308704506 :=
  chain_cut false 2 (by decide)

private def v1402308333306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 4)))) (.var 0)))))))
private theorem no_v1402308333306 : ¬ MinimalInterpreter v1402308333306 :=
  chain_cut false 2 (by decide)

private def v1402308344058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 4)))) (.var 0)))))))
private theorem no_v1402308344058 : ¬ MinimalInterpreter v1402308344058 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 3))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))

private def v1402308253946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 4))) (.var 0)))))))
private theorem no_v1402308253946 : ¬ MinimalInterpreter v1402308253946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 4))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 4))) (.var 0)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))

private def v1402314350842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)))))))
private theorem no_v1402314350842 : ¬ MinimalInterpreter v1402314350842 :=
  chain_cut false 2 (by decide)

private def v1402312866042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 4))))) (.var 0))))))
private theorem no_v1402312866042 : ¬ MinimalInterpreter v1402312866042 :=
  chain_cut false 2 (by decide)

private def v1402312909050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 4))))) (.var 0))))))
private theorem no_v1402312909050 : ¬ MinimalInterpreter v1402312909050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 4))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.var 0)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))

private def v1402312548602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 4)))) (.var 0))))))
private theorem no_v1402312548602 : ¬ MinimalInterpreter v1402312548602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 4)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))

private def v1402336197114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 4) (.var 0))))))))))
private theorem no_v1402336197114 : ¬ MinimalInterpreter v1402336197114 :=
  chain_cut false 4 (by decide)

private def v1402336194298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.var 0)))))))))
private theorem no_v1402336194298 : ¬ MinimalInterpreter v1402336194298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 4)) (.var 0)) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))

private def v1402336229626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.var 0))))))))
private theorem no_v1402336229626 : ¬ MinimalInterpreter v1402336229626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide)))))))

private def v1402336370938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)))))))
private theorem no_v1402336370938 : ¬ MinimalInterpreter v1402336370938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four209 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,4,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,1,4,0] = [v1402307295738,v1402307292922,v1402307205626,v1402307202810,v1402307180282,v1402308704506,v1402308333306,v1402308344058,v1402308253946,v1402314350842,v1402312866042,v1402312909050,v1402312548602,v1402336197114,v1402336194298,v1402336229626,v1402336370938] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307295738) (.cons (no_v1402307292922) (.cons (no_v1402307205626) (.cons (no_v1402307202810) (.cons (no_v1402307180282) (.cons (no_v1402308704506) (.cons (no_v1402308333306) (.cons (no_v1402308344058) (.cons (no_v1402308253946) (.cons (no_v1402314350842) (.cons (no_v1402312866042) (.cons (no_v1402312909050) (.cons (no_v1402312548602) (.cons (no_v1402336197114) (.cons (no_v1402336194298) (.cons (no_v1402336229626) (.cons (no_v1402336370938) .nil)))))))))))))))))

end Blc.SelfintSingleObject.Rows40
