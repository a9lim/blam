import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314226166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402314226166 : ¬ MinimalInterpreter v1402314226166 :=
  chain_cut true 4 (by decide)

private def v1402314211062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 3)) (.var 1))))))))
private theorem no_v1402314211062 : ¬ MinimalInterpreter v1402314211062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four63 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,3,3,1]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,3,3,1] = [v1402314226166,v1402314211062] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314226166) (.cons (no_v1402314211062) .nil))

private def v1402308814814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 3)))))))))
private theorem no_v1402308814814 : ¬ MinimalInterpreter v1402308814814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308811742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 3))))))))
private theorem no_v1402308811742 : ¬ MinimalInterpreter v1402308811742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308372446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 3))))))))
private theorem no_v1402308372446 : ¬ MinimalInterpreter v1402308372446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308369374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 3)))))))
private theorem no_v1402308369374 : ¬ MinimalInterpreter v1402308369374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308258782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 3)))))))
private theorem no_v1402308258782 : ¬ MinimalInterpreter v1402308258782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four64 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,0,3,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,0,3,3] = [v1402308814814,v1402308811742,v1402308372446,v1402308369374,v1402308258782] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308814814) (.cons (no_v1402308811742) (.cons (no_v1402308372446) (.cons (no_v1402308369374) (.cons (no_v1402308258782) .nil)))))

private def v1402308817886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v1402308817886 : ¬ MinimalInterpreter v1402308817886 :=
  chain_cut false 2 (by decide)

private def v1402308812254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v1402308812254 : ¬ MinimalInterpreter v1402308812254 :=
  chain_cut false 2 (by decide)

private def v1402308375518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 3))))))))
private theorem no_v1402308375518 : ¬ MinimalInterpreter v1402308375518 :=
  chain_cut false 2 (by decide)

private def v1402308369886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 3)))))))
private theorem no_v1402308369886 : ¬ MinimalInterpreter v1402308369886 :=
  chain_cut false 2 (by decide)

private def v1402308259294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 3)))))))
private theorem no_v1402308259294 : ¬ MinimalInterpreter v1402308259294 :=
  chain_cut false 2 (by decide)

private def v1402314716126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v1402314716126 : ¬ MinimalInterpreter v1402314716126 :=
  chain_cut false 4 (by decide)

private def v1402314710494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v1402314710494 : ¬ MinimalInterpreter v1402314710494 :=
  chain_cut false 4 (by decide)

theorem four65 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,1,2,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,1,2,3] = [v1402308817886,v1402308812254,v1402308375518,v1402308369886,v1402308259294,v1402314716126,v1402314710494] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308817886) (.cons (no_v1402308812254) (.cons (no_v1402308375518) (.cons (no_v1402308369886) (.cons (no_v1402308259294) (.cons (no_v1402314716126) (.cons (no_v1402314710494) .nil)))))))

private def v1402308817902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v1402308817902 : ¬ MinimalInterpreter v1402308817902 :=
  chain_cut false 2 (by decide)

private def v1402308812270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v1402308812270 : ¬ MinimalInterpreter v1402308812270 :=
  chain_cut false 2 (by decide)

private def v1402308375534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 3) (.var 2))))))))
private theorem no_v1402308375534 : ¬ MinimalInterpreter v1402308375534 :=
  chain_cut false 2 (by decide)

private def v1402308369902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 3))) (.var 2)))))))
private theorem no_v1402308369902 : ¬ MinimalInterpreter v1402308369902 :=
  chain_cut false 2 (by decide)

private def v1402308259310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 3)) (.var 2)))))))
private theorem no_v1402308259310 : ¬ MinimalInterpreter v1402308259310 :=
  chain_cut false 2 (by decide)

private def v1402314716142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v1402314716142 : ¬ MinimalInterpreter v1402314716142 :=
  chain_cut false 4 (by decide)

private def v1402314710510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v1402314710510 : ¬ MinimalInterpreter v1402314710510 :=
  chain_cut false 4 (by decide)

theorem four66 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,1,3,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,1,3,2] = [v1402308817902,v1402308812270,v1402308375534,v1402308369902,v1402308259310,v1402314716142,v1402314710510] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308817902) (.cons (no_v1402308812270) (.cons (no_v1402308375534) (.cons (no_v1402308369902) (.cons (no_v1402308259310) (.cons (no_v1402314716142) (.cons (no_v1402314710510) .nil)))))))

private def v1402308819422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402308819422 : ¬ MinimalInterpreter v1402308819422 :=
  chain_cut false 2 (by decide)

private def v1402308812510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v1402308812510 : ¬ MinimalInterpreter v1402308812510 :=
  chain_cut false 2 (by decide)

private def v1402308377054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 3))))))))
private theorem no_v1402308377054 : ¬ MinimalInterpreter v1402308377054 :=
  chain_cut false 2 (by decide)

private def v1402308370142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 3)))))))
private theorem no_v1402308370142 : ¬ MinimalInterpreter v1402308370142 :=
  chain_cut false 2 (by decide)

private def v1402308259550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 3)))))))
private theorem no_v1402308259550 : ¬ MinimalInterpreter v1402308259550 :=
  chain_cut false 2 (by decide)

private def v1402314717662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402314717662 : ¬ MinimalInterpreter v1402314717662 :=
  chain_cut false 4 (by decide)

private def v1402314710750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v1402314710750 : ¬ MinimalInterpreter v1402314710750 :=
  chain_cut false 4 (by decide)

theorem four67 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,2,1,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,2,1,3] = [v1402308819422,v1402308812510,v1402308377054,v1402308370142,v1402308259550,v1402314717662,v1402314710750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308819422) (.cons (no_v1402308812510) (.cons (no_v1402308377054) (.cons (no_v1402308370142) (.cons (no_v1402308259550) (.cons (no_v1402314717662) (.cons (no_v1402314710750) .nil)))))))

theorem four68 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,2,2,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308819446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402308819446 : ¬ MinimalInterpreter v1402308819446 :=
  chain_cut false 2 (by decide)

private def v1402308812534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v1402308812534 : ¬ MinimalInterpreter v1402308812534 :=
  chain_cut false 2 (by decide)

private def v1402308377078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 3) (.var 1))))))))
private theorem no_v1402308377078 : ¬ MinimalInterpreter v1402308377078 :=
  chain_cut false 2 (by decide)

private def v1402308370166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 1)))))))
private theorem no_v1402308370166 : ¬ MinimalInterpreter v1402308370166 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.app (.var 2) (.var 3))) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308259574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 1)))))))
private theorem no_v1402308259574 : ¬ MinimalInterpreter v1402308259574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.app (.var 2) (.var 2)) (.var 3)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402314717686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402314717686 : ¬ MinimalInterpreter v1402314717686 :=
  chain_cut false 4 (by decide)

private def v1402314710774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v1402314710774 : ¬ MinimalInterpreter v1402314710774 :=
  chain_cut false 4 (by decide)

theorem four69 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,2,3,1]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,2,3,1] = [v1402308819446,v1402308812534,v1402308377078,v1402308370166,v1402308259574,v1402314717686,v1402314710774] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308819446) (.cons (no_v1402308812534) (.cons (no_v1402308377078) (.cons (no_v1402308370166) (.cons (no_v1402308259574) (.cons (no_v1402314717686) (.cons (no_v1402314710774) .nil)))))))

end Blc.SelfintSingleObject.Rows40
