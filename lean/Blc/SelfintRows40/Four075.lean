import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400964857054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v1400964857054 : ¬ MinimalInterpreter v1400964857054 :=
  chain_cut false 2 (by decide)

private def v1400964853598 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v1400964853598 : ¬ MinimalInterpreter v1400964853598 :=
  chain_cut false 2 (by decide)

private def v1400964832478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 3))))))))
private theorem no_v1400964832478 : ¬ MinimalInterpreter v1400964832478 :=
  chain_cut false 2 (by decide)

private def v1400964829022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 3)))))))
private theorem no_v1400964829022 : ¬ MinimalInterpreter v1400964829022 :=
  chain_cut false 2 (by decide)

private def v1400964822878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3)))))))
private theorem no_v1400964822878 : ¬ MinimalInterpreter v1400964822878 :=
  chain_cut false 2 (by decide)

private def v1400967806174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v1400967806174 : ¬ MinimalInterpreter v1400967806174 :=
  chain_cut false 2 (by decide)

private def v1400967802718 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v1400967802718 : ¬ MinimalInterpreter v1400967802718 :=
  chain_cut false 2 (by decide)

private def v1400977243358 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v1400977243358 : ¬ MinimalInterpreter v1400977243358 :=
  cost_cut false 3 (by decide)

private def v1400977239902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v1400977239902 : ¬ MinimalInterpreter v1400977239902 :=
  cost_cut false 3 (by decide)

theorem four525 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,0,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,0,3] = [v1400964857054,v1400964853598,v1400964832478,v1400964829022,v1400964822878,v1400967806174,v1400967802718,v1400977243358,v1400977239902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857054) (.cons (no_v1400964853598) (.cons (no_v1400964832478) (.cons (no_v1400964829022) (.cons (no_v1400964822878) (.cons (no_v1400967806174) (.cons (no_v1400967802718) (.cons (no_v1400977243358) (.cons (no_v1400977239902) .nil)))))))))

private def v1400964857070 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400964857070 : ¬ MinimalInterpreter v1400964857070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400964853614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v1400964853614 : ¬ MinimalInterpreter v1400964853614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400964832494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v1400964832494 : ¬ MinimalInterpreter v1400964832494 :=
  cost_cut false 2 (by decide)

private def v1400964829038 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v1400964829038 : ¬ MinimalInterpreter v1400964829038 :=
  cost_cut false 2 (by decide)

private def v1400964822894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v1400964822894 : ¬ MinimalInterpreter v1400964822894 :=
  cost_cut false 2 (by decide)

private def v1400965492974 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1400965492974 : ¬ MinimalInterpreter v1400965492974 :=
  chain_cut false 2 (by decide)

private def v1400965493646 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v1400965493646 : ¬ MinimalInterpreter v1400965493646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965479822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2))))))))
private theorem no_v1400965479822 : ¬ MinimalInterpreter v1400965479822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965394670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v1400965394670 : ¬ MinimalInterpreter v1400965394670 :=
  chain_cut false 2 (by decide)

private def v1400965395342 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v1400965395342 : ¬ MinimalInterpreter v1400965395342 :=
  chain_cut false 2 (by decide)

private def v1400965373166 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 2)))))))
private theorem no_v1400965373166 : ¬ MinimalInterpreter v1400965373166 :=
  chain_cut false 2 (by decide)

private def v1400965381518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 2)))))))
private theorem no_v1400965381518 : ¬ MinimalInterpreter v1400965381518 :=
  chain_cut false 2 (by decide)

private def v1400965356942 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 2)))))))
private theorem no_v1400965356942 : ¬ MinimalInterpreter v1400965356942 :=
  chain_cut false 2 (by decide)

private def v1400965369710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v1400965369710 : ¬ MinimalInterpreter v1400965369710 :=
  chain_cut false 2 (by decide)

private def v1400965351278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2))))))
private theorem no_v1400965351278 : ¬ MinimalInterpreter v1400965351278 :=
  chain_cut false 2 (by decide)

private def v1400967852270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1400967852270 : ¬ MinimalInterpreter v1400967852270 :=
  chain_cut false 2 (by decide)

private def v1400977289454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1400977289454 : ¬ MinimalInterpreter v1400977289454 :=
  cost_cut false 3 (by decide)

theorem four526 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,1,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,1,2] = [v1400964857070,v1400964853614,v1400964832494,v1400964829038,v1400964822894,v1400965492974,v1400965493646,v1400965479822,v1400965394670,v1400965395342,v1400965373166,v1400965381518,v1400965356942,v1400965369710,v1400965351278,v1400967852270,v1400977289454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857070) (.cons (no_v1400964853614) (.cons (no_v1400964832494) (.cons (no_v1400964829038) (.cons (no_v1400964822894) (.cons (no_v1400965492974) (.cons (no_v1400965493646) (.cons (no_v1400965479822) (.cons (no_v1400965394670) (.cons (no_v1400965395342) (.cons (no_v1400965373166) (.cons (no_v1400965381518) (.cons (no_v1400965356942) (.cons (no_v1400965369710) (.cons (no_v1400965351278) (.cons (no_v1400967852270) (.cons (no_v1400977289454) .nil)))))))))))))))))

private def v1400964857078 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400964857078 : ¬ MinimalInterpreter v1400964857078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400964853622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v1400964853622 : ¬ MinimalInterpreter v1400964853622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1400964832502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v1400964832502 : ¬ MinimalInterpreter v1400964832502 :=
  cost_cut false 2 (by decide)

private def v1400964829046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v1400964829046 : ¬ MinimalInterpreter v1400964829046 :=
  cost_cut false 2 (by decide)

private def v1400964822902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v1400964822902 : ¬ MinimalInterpreter v1400964822902 :=
  cost_cut false 2 (by decide)

private def v1400965492982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1400965492982 : ¬ MinimalInterpreter v1400965492982 :=
  chain_cut false 2 (by decide)

private def v1400965479542 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1)))))))
private theorem no_v1400965479542 : ¬ MinimalInterpreter v1400965479542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965394678 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v1400965394678 : ¬ MinimalInterpreter v1400965394678 :=
  chain_cut false 2 (by decide)

private def v1400965373174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 1)))))))
private theorem no_v1400965373174 : ¬ MinimalInterpreter v1400965373174 :=
  chain_cut false 2 (by decide)

private def v1400965381238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 1))))))
private theorem no_v1400965381238 : ¬ MinimalInterpreter v1400965381238 :=
  chain_cut false 2 (by decide)

private def v1400965356662 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 1))))))
private theorem no_v1400965356662 : ¬ MinimalInterpreter v1400965356662 :=
  chain_cut false 2 (by decide)

private def v1400965351286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 1))))))
private theorem no_v1400965351286 : ¬ MinimalInterpreter v1400965351286 :=
  chain_cut false 2 (by decide)

private def v1400967852278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1400967852278 : ¬ MinimalInterpreter v1400967852278 :=
  chain_cut false 2 (by decide)

private def v1400977289462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1400977289462 : ¬ MinimalInterpreter v1400977289462 :=
  cost_cut false 3 (by decide)

theorem four527 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,2,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,2,1] = [v1400964857078,v1400964853622,v1400964832502,v1400964829046,v1400964822902,v1400965492982,v1400965479542,v1400965394678,v1400965373174,v1400965381238,v1400965356662,v1400965351286,v1400967852278,v1400977289462] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857078) (.cons (no_v1400964853622) (.cons (no_v1400964832502) (.cons (no_v1400964829046) (.cons (no_v1400964822902) (.cons (no_v1400965492982) (.cons (no_v1400965479542) (.cons (no_v1400965394678) (.cons (no_v1400965373174) (.cons (no_v1400965381238) (.cons (no_v1400965356662) (.cons (no_v1400965351286) (.cons (no_v1400967852278) (.cons (no_v1400977289462) .nil))))))))))))))

private def v1400964857082 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v1400964857082 : ¬ MinimalInterpreter v1400964857082 :=
  chain_cut false 2 (by decide)

private def v1400964853626 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v1400964853626 : ¬ MinimalInterpreter v1400964853626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964832506 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 0))))))))
private theorem no_v1400964832506 : ¬ MinimalInterpreter v1400964832506 :=
  chain_cut false 2 (by decide)

private def v1400964829050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)))))))
private theorem no_v1400964829050 : ¬ MinimalInterpreter v1400964829050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964822906 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 0)))))))
private theorem no_v1400964822906 : ¬ MinimalInterpreter v1400964822906 :=
  chain_cut false 2 (by decide)

private def v1400965369722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))
private theorem no_v1400965369722 : ¬ MinimalInterpreter v1400965369722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400967806202 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v1400967806202 : ¬ MinimalInterpreter v1400967806202 :=
  chain_cut false 2 (by decide)

private def v1400967802746 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v1400967802746 : ¬ MinimalInterpreter v1400967802746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400977243386 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v1400977243386 : ¬ MinimalInterpreter v1400977243386 :=
  cost_cut false 3 (by decide)

private def v1400977239930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v1400977239930 : ¬ MinimalInterpreter v1400977239930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

theorem four528 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,3,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,2,3,0] = [v1400964857082,v1400964853626,v1400964832506,v1400964829050,v1400964822906,v1400965369722,v1400967806202,v1400967802746,v1400977243386,v1400977239930] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857082) (.cons (no_v1400964853626) (.cons (no_v1400964832506) (.cons (no_v1400964829050) (.cons (no_v1400964822906) (.cons (no_v1400965369722) (.cons (no_v1400967806202) (.cons (no_v1400967802746) (.cons (no_v1400977243386) (.cons (no_v1400977239930) .nil))))))))))

private def v1400964857454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400964857454 : ¬ MinimalInterpreter v1400964857454 :=
  chain_cut false 2 (by decide)

private def v1400964853678 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v1400964853678 : ¬ MinimalInterpreter v1400964853678 :=
  chain_cut false 2 (by decide)

private def v1400964832878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400964832878 : ¬ MinimalInterpreter v1400964832878 :=
  chain_cut false 2 (by decide)

private def v1400964829102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2)))))))
private theorem no_v1400964829102 : ¬ MinimalInterpreter v1400964829102 :=
  chain_cut false 2 (by decide)

private def v1400964822958 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2)))))))
private theorem no_v1400964822958 : ¬ MinimalInterpreter v1400964822958 :=
  chain_cut false 2 (by decide)

private def v1400967806574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400967806574 : ¬ MinimalInterpreter v1400967806574 :=
  chain_cut false 2 (by decide)

private def v1400967802798 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v1400967802798 : ¬ MinimalInterpreter v1400967802798 :=
  chain_cut false 2 (by decide)

private def v1400977243758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400977243758 : ¬ MinimalInterpreter v1400977243758 :=
  cost_cut false 3 (by decide)

private def v1400977239982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v1400977239982 : ¬ MinimalInterpreter v1400977239982 :=
  cost_cut false 3 (by decide)

theorem four529 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,3,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,3,0,2] = [v1400964857454,v1400964853678,v1400964832878,v1400964829102,v1400964822958,v1400967806574,v1400967802798,v1400977243758,v1400977239982] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857454) (.cons (no_v1400964853678) (.cons (no_v1400964832878) (.cons (no_v1400964829102) (.cons (no_v1400964822958) (.cons (no_v1400967806574) (.cons (no_v1400967802798) (.cons (no_v1400977243758) (.cons (no_v1400977239982) .nil)))))))))

private def v1400964857462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))))))))
private theorem no_v1400964857462 : ¬ MinimalInterpreter v1400964857462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964853686 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))))))))
private theorem no_v1400964853686 : ¬ MinimalInterpreter v1400964853686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964832886 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 1))))))))
private theorem no_v1400964832886 : ¬ MinimalInterpreter v1400964832886 :=
  chain_cut false 2 (by decide)

private def v1400964829110 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 1)))))))
private theorem no_v1400964829110 : ¬ MinimalInterpreter v1400964829110 :=
  chain_cut false 2 (by decide)

private def v1400964822966 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 1)))))))
private theorem no_v1400964822966 : ¬ MinimalInterpreter v1400964822966 :=
  chain_cut false 2 (by decide)

private def v1400965373558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 1)))))))
private theorem no_v1400965373558 : ¬ MinimalInterpreter v1400965373558 :=
  chain_cut false 2 (by decide)

private def v1400965369782 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 1)))) (.var 1))))))
private theorem no_v1400965369782 : ¬ MinimalInterpreter v1400965369782 :=
  chain_cut false 2 (by decide)

private def v1400965351350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 1))))))
private theorem no_v1400965351350 : ¬ MinimalInterpreter v1400965351350 :=
  chain_cut false 2 (by decide)

theorem four530 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,3,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,3,1,1] = [v1400964857462,v1400964853686,v1400964832886,v1400964829110,v1400964822966,v1400965373558,v1400965369782,v1400965351350] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857462) (.cons (no_v1400964853686) (.cons (no_v1400964832886) (.cons (no_v1400964829110) (.cons (no_v1400964822966) (.cons (no_v1400965373558) (.cons (no_v1400965369782) (.cons (no_v1400965351350) .nil))))))))

private def v1400964857466 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400964857466 : ¬ MinimalInterpreter v1400964857466 :=
  chain_cut false 2 (by decide)

private def v1400964853690 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v1400964853690 : ¬ MinimalInterpreter v1400964853690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964832890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400964832890 : ¬ MinimalInterpreter v1400964832890 :=
  chain_cut false 2 (by decide)

private def v1400964829114 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)))))))
private theorem no_v1400964829114 : ¬ MinimalInterpreter v1400964829114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964822970 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 0)))))))
private theorem no_v1400964822970 : ¬ MinimalInterpreter v1400964822970 :=
  chain_cut false 2 (by decide)

private def v1400965369786 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))
private theorem no_v1400965369786 : ¬ MinimalInterpreter v1400965369786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400967806586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400967806586 : ¬ MinimalInterpreter v1400967806586 :=
  chain_cut false 2 (by decide)

private def v1400967802810 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v1400967802810 : ¬ MinimalInterpreter v1400967802810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400977243770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400977243770 : ¬ MinimalInterpreter v1400977243770 :=
  cost_cut false 3 (by decide)

private def v1400977239994 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v1400977239994 : ¬ MinimalInterpreter v1400977239994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

theorem four531 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,3,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,3,2,0] = [v1400964857466,v1400964853690,v1400964832890,v1400964829114,v1400964822970,v1400965369786,v1400967806586,v1400967802810,v1400977243770,v1400977239994] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964857466) (.cons (no_v1400964853690) (.cons (no_v1400964832890) (.cons (no_v1400964829114) (.cons (no_v1400964822970) (.cons (no_v1400965369786) (.cons (no_v1400967806586) (.cons (no_v1400967802810) (.cons (no_v1400977243770) (.cons (no_v1400977239994) .nil))))))))))

end Blc.SelfintSingleObject.Rows40
