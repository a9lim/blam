import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400964894618 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400964894618 : ¬ MinimalInterpreter v1400964894618 :=
  chain_cut false 2 (by decide)

private def v1400964893674 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1400964893674 : ¬ MinimalInterpreter v1400964893674 :=
  chain_cut false 2 (by decide)

private def v1400964839322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400964839322 : ¬ MinimalInterpreter v1400964839322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964838378 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1400964838378 : ¬ MinimalInterpreter v1400964838378 :=
  chain_cut false 2 (by decide)

private def v1400964824554 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1400964824554 : ¬ MinimalInterpreter v1400964824554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four553 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,3,0,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,3,0,0] = [v1400964894618,v1400964893674,v1400964839322,v1400964838378,v1400964824554] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964894618) (.cons (no_v1400964893674) (.cons (no_v1400964839322) (.cons (no_v1400964838378) (.cons (no_v1400964824554) .nil)))))

private def v1400964900462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400964900462 : ¬ MinimalInterpreter v1400964900462 :=
  chain_cut false 2 (by decide)

private def v1400964900270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1400964900270 : ¬ MinimalInterpreter v1400964900270 :=
  chain_cut false 2 (by decide)

private def v1400964840046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400964840046 : ¬ MinimalInterpreter v1400964840046 :=
  chain_cut false 2 (by decide)

private def v1400964839854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1400964839854 : ¬ MinimalInterpreter v1400964839854 :=
  chain_cut false 2 (by decide)

private def v1400964824750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1400964824750 : ¬ MinimalInterpreter v1400964824750 :=
  chain_cut false 2 (by decide)

theorem four554 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,0,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,0,0,2] = [v1400964900462,v1400964900270,v1400964840046,v1400964839854,v1400964824750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964900462) (.cons (no_v1400964900270) (.cons (no_v1400964840046) (.cons (no_v1400964839854) (.cons (no_v1400964824750) .nil)))))

private def v1400964900470 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1400964900470 : ¬ MinimalInterpreter v1400964900470 :=
  chain_cut false 2 (by decide)

private def v1400964900278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1400964900278 : ¬ MinimalInterpreter v1400964900278 :=
  chain_cut false 2 (by decide)

private def v1400964840054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1400964840054 : ¬ MinimalInterpreter v1400964840054 :=
  chain_cut false 2 (by decide)

private def v1400964839862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1400964839862 : ¬ MinimalInterpreter v1400964839862 :=
  chain_cut false 2 (by decide)

private def v1400964824758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1400964824758 : ¬ MinimalInterpreter v1400964824758 :=
  chain_cut false 2 (by decide)

theorem four555 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,0,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,0,1,1] = [v1400964900470,v1400964900278,v1400964840054,v1400964839862,v1400964824758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964900470) (.cons (no_v1400964900278) (.cons (no_v1400964840054) (.cons (no_v1400964839862) (.cons (no_v1400964824758) .nil)))))

private def v1400964900474 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400964900474 : ¬ MinimalInterpreter v1400964900474 :=
  chain_cut false 2 (by decide)

private def v1400964900282 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1400964900282 : ¬ MinimalInterpreter v1400964900282 :=
  chain_cut false 2 (by decide)

private def v1400964840058 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400964840058 : ¬ MinimalInterpreter v1400964840058 :=
  chain_cut false 2 (by decide)

private def v1400964839866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1400964839866 : ¬ MinimalInterpreter v1400964839866 :=
  chain_cut false 2 (by decide)

private def v1400964824762 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1400964824762 : ¬ MinimalInterpreter v1400964824762 :=
  chain_cut false 2 (by decide)

theorem four556 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,0,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,0,2,0] = [v1400964900474,v1400964900282,v1400964840058,v1400964839866,v1400964824762] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964900474) (.cons (no_v1400964900282) (.cons (no_v1400964840058) (.cons (no_v1400964839866) (.cons (no_v1400964824762) .nil)))))

private def v1400964900662 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400964900662 : ¬ MinimalInterpreter v1400964900662 :=
  chain_cut false 2 (by decide)

private def v1400964900310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1400964900310 : ¬ MinimalInterpreter v1400964900310 :=
  chain_cut false 2 (by decide)

private def v1400964840246 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400964840246 : ¬ MinimalInterpreter v1400964840246 :=
  chain_cut false 2 (by decide)

private def v1400964839894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1400964839894 : ¬ MinimalInterpreter v1400964839894 :=
  chain_cut false 2 (by decide)

private def v1400964824790 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1400964824790 : ¬ MinimalInterpreter v1400964824790 :=
  chain_cut false 2 (by decide)

theorem four557 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,1,0,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,1,0,1] = [v1400964900662,v1400964900310,v1400964840246,v1400964839894,v1400964824790] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964900662) (.cons (no_v1400964900310) (.cons (no_v1400964840246) (.cons (no_v1400964839894) (.cons (no_v1400964824790) .nil)))))

private def v1400964900666 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400964900666 : ¬ MinimalInterpreter v1400964900666 :=
  chain_cut false 2 (by decide)

private def v1400964900314 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1400964900314 : ¬ MinimalInterpreter v1400964900314 :=
  chain_cut false 2 (by decide)

private def v1400964840250 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400964840250 : ¬ MinimalInterpreter v1400964840250 :=
  chain_cut false 2 (by decide)

private def v1400964839898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1400964839898 : ¬ MinimalInterpreter v1400964839898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964824794 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1400964824794 : ¬ MinimalInterpreter v1400964824794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem four558 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,1,1,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,1,1,0] = [v1400964900666,v1400964900314,v1400964840250,v1400964839898,v1400964824794] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964900666) (.cons (no_v1400964900314) (.cons (no_v1400964840250) (.cons (no_v1400964839898) (.cons (no_v1400964824794) .nil)))))

private def v1400964900762 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400964900762 : ¬ MinimalInterpreter v1400964900762 :=
  chain_cut false 2 (by decide)

private def v1400964900330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1400964900330 : ¬ MinimalInterpreter v1400964900330 :=
  chain_cut false 2 (by decide)

private def v1400964840346 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400964840346 : ¬ MinimalInterpreter v1400964840346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964839914 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1400964839914 : ¬ MinimalInterpreter v1400964839914 :=
  chain_cut false 2 (by decide)

private def v1400964824810 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1400964824810 : ¬ MinimalInterpreter v1400964824810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four559 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,2,0,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [3,2,0,0] = [v1400964900762,v1400964900330,v1400964840346,v1400964839914,v1400964824810] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964900762) (.cons (no_v1400964900330) (.cons (no_v1400964840346) (.cons (no_v1400964839914) (.cons (no_v1400964824810) .nil)))))

end Blc.SelfintSingleObject.Rows40
