import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four14 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,1,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four15 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,1,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314399342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402314399342 : ¬ MinimalInterpreter v1402314399342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314397614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v1402314397614 : ¬ MinimalInterpreter v1402314397614 :=
  chain_cut true 7 (by decide)

private def v1402314354286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402314354286 : ¬ MinimalInterpreter v1402314354286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314352558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v1402314352558 : ¬ MinimalInterpreter v1402314352558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v1402314341294 : ¬ MinimalInterpreter v1402314341294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312957550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v1402312957550 : ¬ MinimalInterpreter v1402312957550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312955822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v1402312955822 : ¬ MinimalInterpreter v1402312955822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312912494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312912494 : ¬ MinimalInterpreter v1402312912494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312552046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312552046 : ¬ MinimalInterpreter v1402312552046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312910766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 2))))))
private theorem no_v1402312910766 : ¬ MinimalInterpreter v1402312910766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312899502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 2))))))
private theorem no_v1402312899502 : ¬ MinimalInterpreter v1402312899502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312550318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v1402312550318 : ¬ MinimalInterpreter v1402312550318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312539054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v1402312539054 : ¬ MinimalInterpreter v1402312539054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312448942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v1402312448942 : ¬ MinimalInterpreter v1402312448942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336419438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402336419438 : ¬ MinimalInterpreter v1402336419438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336417710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v1402336417710 : ¬ MinimalInterpreter v1402336417710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336374382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402336374382 : ¬ MinimalInterpreter v1402336374382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336372654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v1402336372654 : ¬ MinimalInterpreter v1402336372654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336361390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v1402336361390 : ¬ MinimalInterpreter v1402336361390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four16 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,2,0,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,2,0,2] = [v1402314399342,v1402314397614,v1402314354286,v1402314352558,v1402314341294,v1402312957550,v1402312955822,v1402312912494,v1402312552046,v1402312910766,v1402312899502,v1402312550318,v1402312539054,v1402312448942,v1402336419438,v1402336417710,v1402336374382,v1402336372654,v1402336361390] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314399342) (.cons (no_v1402314397614) (.cons (no_v1402314354286) (.cons (no_v1402314352558) (.cons (no_v1402314341294) (.cons (no_v1402312957550) (.cons (no_v1402312955822) (.cons (no_v1402312912494) (.cons (no_v1402312552046) (.cons (no_v1402312910766) (.cons (no_v1402312899502) (.cons (no_v1402312550318) (.cons (no_v1402312539054) (.cons (no_v1402312448942) (.cons (no_v1402336419438) (.cons (no_v1402336417710) (.cons (no_v1402336374382) (.cons (no_v1402336372654) (.cons (no_v1402336361390) .nil)))))))))))))))))))

theorem four17 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,2,1,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314399354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402314399354 : ¬ MinimalInterpreter v1402314399354 :=
  chain_cut true 7 (by decide)

private def v1402314397626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v1402314397626 : ¬ MinimalInterpreter v1402314397626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314354298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402314354298 : ¬ MinimalInterpreter v1402314354298 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314352570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v1402314352570 : ¬ MinimalInterpreter v1402314352570 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v1402314341306 : ¬ MinimalInterpreter v1402314341306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312957562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v1402312957562 : ¬ MinimalInterpreter v1402312957562 :=
  chain_cut true 7 (by decide)

private def v1402312955834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v1402312955834 : ¬ MinimalInterpreter v1402312955834 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312912506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312912506 : ¬ MinimalInterpreter v1402312912506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312552058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312552058 : ¬ MinimalInterpreter v1402312552058 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312910778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 0))))))
private theorem no_v1402312910778 : ¬ MinimalInterpreter v1402312910778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402312899514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0))))))
private theorem no_v1402312899514 : ¬ MinimalInterpreter v1402312899514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312550330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v1402312550330 : ¬ MinimalInterpreter v1402312550330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402312539066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v1402312539066 : ¬ MinimalInterpreter v1402312539066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312448954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v1402312448954 : ¬ MinimalInterpreter v1402312448954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336419450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402336419450 : ¬ MinimalInterpreter v1402336419450 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336417722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v1402336417722 : ¬ MinimalInterpreter v1402336417722 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336374394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402336374394 : ¬ MinimalInterpreter v1402336374394 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336372666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v1402336372666 : ¬ MinimalInterpreter v1402336372666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336361402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v1402336361402 : ¬ MinimalInterpreter v1402336361402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four18 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,2,2,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,2,2,0] = [v1402314399354,v1402314397626,v1402314354298,v1402314352570,v1402314341306,v1402312957562,v1402312955834,v1402312912506,v1402312552058,v1402312910778,v1402312899514,v1402312550330,v1402312539066,v1402312448954,v1402336419450,v1402336417722,v1402336374394,v1402336372666,v1402336361402] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314399354) (.cons (no_v1402314397626) (.cons (no_v1402314354298) (.cons (no_v1402314352570) (.cons (no_v1402314341306) (.cons (no_v1402312957562) (.cons (no_v1402312955834) (.cons (no_v1402312912506) (.cons (no_v1402312552058) (.cons (no_v1402312910778) (.cons (no_v1402312899514) (.cons (no_v1402312550330) (.cons (no_v1402312539066) (.cons (no_v1402312448954) (.cons (no_v1402336419450) (.cons (no_v1402336417722) (.cons (no_v1402336374394) (.cons (no_v1402336372666) (.cons (no_v1402336361402) .nil)))))))))))))))))))

private def v1402314411246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402314411246 : ¬ MinimalInterpreter v1402314411246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314410862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402314410862 : ¬ MinimalInterpreter v1402314410862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402314355950 : ¬ MinimalInterpreter v1402314355950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1402314355566 : ¬ MinimalInterpreter v1402314355566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1402314341742 : ¬ MinimalInterpreter v1402314341742 :=
  chain_cut true 4 (by decide)

private def v1402312969454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1402312969454 : ¬ MinimalInterpreter v1402312969454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 1)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1402312969070 : ¬ MinimalInterpreter v1402312969070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312914158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312914158 : ¬ MinimalInterpreter v1402312914158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312553710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312553710 : ¬ MinimalInterpreter v1402312553710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 1))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1402312913774 : ¬ MinimalInterpreter v1402312913774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312899950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v1402312899950 : ¬ MinimalInterpreter v1402312899950 :=
  chain_cut true 4 (by decide)

private def v1402312553326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1402312553326 : ¬ MinimalInterpreter v1402312553326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312539502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1402312539502 : ¬ MinimalInterpreter v1402312539502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312449390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1402312449390 : ¬ MinimalInterpreter v1402312449390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336431342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402336431342 : ¬ MinimalInterpreter v1402336431342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336430958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402336430958 : ¬ MinimalInterpreter v1402336430958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336376046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402336376046 : ¬ MinimalInterpreter v1402336376046 :=
  w_cut false 0 (by decide)

private def v1402336375662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1402336375662 : ¬ MinimalInterpreter v1402336375662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336361838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1402336361838 : ¬ MinimalInterpreter v1402336361838 :=
  w_cut false 0 (by decide)

theorem four19 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,0,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,0,1,2] = [v1402314411246,v1402314410862,v1402314355950,v1402314355566,v1402314341742,v1402312969454,v1402312969070,v1402312914158,v1402312553710,v1402312913774,v1402312899950,v1402312553326,v1402312539502,v1402312449390,v1402336431342,v1402336430958,v1402336376046,v1402336375662,v1402336361838] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314411246) (.cons (no_v1402314410862) (.cons (no_v1402314355950) (.cons (no_v1402314355566) (.cons (no_v1402314341742) (.cons (no_v1402312969454) (.cons (no_v1402312969070) (.cons (no_v1402312914158) (.cons (no_v1402312553710) (.cons (no_v1402312913774) (.cons (no_v1402312899950) (.cons (no_v1402312553326) (.cons (no_v1402312539502) (.cons (no_v1402312449390) (.cons (no_v1402336431342) (.cons (no_v1402336430958) (.cons (no_v1402336376046) (.cons (no_v1402336375662) (.cons (no_v1402336361838) .nil)))))))))))))))))))

private def v1402314411254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402314411254 : ¬ MinimalInterpreter v1402314411254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314410870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402314410870 : ¬ MinimalInterpreter v1402314410870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402314355958 : ¬ MinimalInterpreter v1402314355958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1402314355574 : ¬ MinimalInterpreter v1402314355574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1402314341750 : ¬ MinimalInterpreter v1402314341750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312969462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1402312969462 : ¬ MinimalInterpreter v1402312969462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312969078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1402312969078 : ¬ MinimalInterpreter v1402312969078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312914166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312914166 : ¬ MinimalInterpreter v1402312914166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312553718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312553718 : ¬ MinimalInterpreter v1402312553718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312913782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v1402312913782 : ¬ MinimalInterpreter v1402312913782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312899958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v1402312899958 : ¬ MinimalInterpreter v1402312899958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312553334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1402312553334 : ¬ MinimalInterpreter v1402312553334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312539510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1402312539510 : ¬ MinimalInterpreter v1402312539510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312449398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1402312449398 : ¬ MinimalInterpreter v1402312449398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336431350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402336431350 : ¬ MinimalInterpreter v1402336431350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336430966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402336430966 : ¬ MinimalInterpreter v1402336430966 :=
  w_cut false 0 (by decide)

private def v1402336376054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402336376054 : ¬ MinimalInterpreter v1402336376054 :=
  w_cut false 0 (by decide)

private def v1402336375670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1402336375670 : ¬ MinimalInterpreter v1402336375670 :=
  w_cut false 0 (by decide)

private def v1402336361846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1402336361846 : ¬ MinimalInterpreter v1402336361846 :=
  w_cut false 0 (by decide)

theorem four20 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,0,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,0,2,1] = [v1402314411254,v1402314410870,v1402314355958,v1402314355574,v1402314341750,v1402312969462,v1402312969078,v1402312914166,v1402312553718,v1402312913782,v1402312899958,v1402312553334,v1402312539510,v1402312449398,v1402336431350,v1402336430966,v1402336376054,v1402336375670,v1402336361846] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314411254) (.cons (no_v1402314410870) (.cons (no_v1402314355958) (.cons (no_v1402314355574) (.cons (no_v1402314341750) (.cons (no_v1402312969462) (.cons (no_v1402312969078) (.cons (no_v1402312914166) (.cons (no_v1402312553718) (.cons (no_v1402312913782) (.cons (no_v1402312899958) (.cons (no_v1402312553334) (.cons (no_v1402312539510) (.cons (no_v1402312449398) (.cons (no_v1402336431350) (.cons (no_v1402336430966) (.cons (no_v1402336376054) (.cons (no_v1402336375670) (.cons (no_v1402336361846) .nil)))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
