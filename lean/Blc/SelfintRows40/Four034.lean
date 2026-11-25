import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308868494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402308868494 : ¬ MinimalInterpreter v1402308868494 :=
  chain_cut false 2 (by decide)

private def v1402308865678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402308865678 : ¬ MinimalInterpreter v1402308865678 :=
  chain_cut false 2 (by decide)

private def v1402308385166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402308385166 : ¬ MinimalInterpreter v1402308385166 :=
  chain_cut false 2 (by decide)

private def v1402308380270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308380270 : ¬ MinimalInterpreter v1402308380270 :=
  chain_cut false 2 (by decide)

private def v1402308382350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402308382350 : ¬ MinimalInterpreter v1402308382350 :=
  chain_cut false 2 (by decide)

private def v1402308261518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402308261518 : ¬ MinimalInterpreter v1402308261518 :=
  chain_cut false 2 (by decide)

private def v1402308260270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 1))) (.var 0)) (.var 2)))))))
private theorem no_v1402308260270 : ¬ MinimalInterpreter v1402308260270 :=
  chain_cut false 2 (by decide)

theorem four238 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,1,0,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,1,0,2] = [v1402308868494,v1402308865678,v1402308385166,v1402308380270,v1402308382350,v1402308261518,v1402308260270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308868494) (.cons (no_v1402308865678) (.cons (no_v1402308385166) (.cons (no_v1402308380270) (.cons (no_v1402308382350) (.cons (no_v1402308261518) (.cons (no_v1402308260270) .nil)))))))

private def v1402308868214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308868214 : ¬ MinimalInterpreter v1402308868214 :=
  chain_cut false 2 (by decide)

private def v1402308868550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402308868550 : ¬ MinimalInterpreter v1402308868550 :=
  chain_cut false 2 (by decide)

private def v1402308865734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402308865734 : ¬ MinimalInterpreter v1402308865734 :=
  chain_cut false 2 (by decide)

private def v1402308865590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402308865590 : ¬ MinimalInterpreter v1402308865590 :=
  chain_cut false 2 (by decide)

private def v1402308384886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308384886 : ¬ MinimalInterpreter v1402308384886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.lam (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308385222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402308385222 : ¬ MinimalInterpreter v1402308385222 :=
  chain_cut false 2 (by decide)

private def v1402308380278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308380278 : ¬ MinimalInterpreter v1402308380278 :=
  chain_cut false 2 (by decide)

private def v1402308382406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402308382406 : ¬ MinimalInterpreter v1402308382406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 3) (.app (.var 1) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308261574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402308261574 : ¬ MinimalInterpreter v1402308261574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308379574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.app (.var 1) (.var 1)))) (.var 1)))))))
private theorem no_v1402308379574 : ¬ MinimalInterpreter v1402308379574 :=
  chain_cut false 2 (by decide)

private def v1402308382262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402308382262 : ¬ MinimalInterpreter v1402308382262 :=
  chain_cut false 2 (by decide)

private def v1402308261430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402308261430 : ¬ MinimalInterpreter v1402308261430 :=
  chain_cut false 2 (by decide)

private def v1402308260278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 1))) (.var 1)) (.var 1)))))))
private theorem no_v1402308260278 : ¬ MinimalInterpreter v1402308260278 :=
  chain_cut false 2 (by decide)

theorem four239 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,1,1,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,1,1,1] = [v1402308868214,v1402308868550,v1402308865734,v1402308865590,v1402308384886,v1402308385222,v1402308380278,v1402308382406,v1402308261574,v1402308379574,v1402308382262,v1402308261430,v1402308260278] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308868214) (.cons (no_v1402308868550) (.cons (no_v1402308865734) (.cons (no_v1402308865590) (.cons (no_v1402308384886) (.cons (no_v1402308385222) (.cons (no_v1402308380278) (.cons (no_v1402308382406) (.cons (no_v1402308261574) (.cons (no_v1402308379574) (.cons (no_v1402308382262) (.cons (no_v1402308261430) (.cons (no_v1402308260278) .nil)))))))))))))

private def v1402308865594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402308865594 : ¬ MinimalInterpreter v1402308865594 :=
  chain_cut false 2 (by decide)

private def v1402308380282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308380282 : ¬ MinimalInterpreter v1402308380282 :=
  chain_cut false 2 (by decide)

private def v1402308379578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.app (.var 1) (.var 2)))) (.var 0)))))))
private theorem no_v1402308379578 : ¬ MinimalInterpreter v1402308379578 :=
  chain_cut false 2 (by decide)

private def v1402308382266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402308382266 : ¬ MinimalInterpreter v1402308382266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 1) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 2) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308261434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402308261434 : ¬ MinimalInterpreter v1402308261434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 2) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308260282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 1))) (.var 2)) (.var 0)))))))
private theorem no_v1402308260282 : ¬ MinimalInterpreter v1402308260282 :=
  chain_cut false 2 (by decide)

theorem four240 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,1,2,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,1,2,0] = [v1402308865594,v1402308380282,v1402308379578,v1402308382266,v1402308261434,v1402308260282] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308865594) (.cons (no_v1402308380282) (.cons (no_v1402308379578) (.cons (no_v1402308382266) (.cons (no_v1402308261434) (.cons (no_v1402308260282) .nil))))))

private def v1402308869318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402308869318 : ¬ MinimalInterpreter v1402308869318 :=
  chain_cut false 2 (by decide)

private def v1402308865862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402308865862 : ¬ MinimalInterpreter v1402308865862 :=
  chain_cut false 2 (by decide)

private def v1402308385990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402308385990 : ¬ MinimalInterpreter v1402308385990 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.lam (.var 1))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 3) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308380470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308380470 : ¬ MinimalInterpreter v1402308380470 :=
  chain_cut false 2 (by decide)

private def v1402308382534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402308382534 : ¬ MinimalInterpreter v1402308382534 :=
  chain_cut false 2 (by decide)

private def v1402308261702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402308261702 : ¬ MinimalInterpreter v1402308261702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.lam (.var 1)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308260310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 2))) (.var 0)) (.var 1)))))))
private theorem no_v1402308260310 : ¬ MinimalInterpreter v1402308260310 :=
  chain_cut false 2 (by decide)

theorem four241 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,2,0,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,2,0,1] = [v1402308869318,v1402308865862,v1402308385990,v1402308380470,v1402308382534,v1402308261702,v1402308260310] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869318) (.cons (no_v1402308865862) (.cons (no_v1402308385990) (.cons (no_v1402308380470) (.cons (no_v1402308382534) (.cons (no_v1402308261702) (.cons (no_v1402308260310) .nil)))))))

private def v1402308865818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402308865818 : ¬ MinimalInterpreter v1402308865818 :=
  chain_cut false 2 (by decide)

private def v1402308380474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308380474 : ¬ MinimalInterpreter v1402308380474 :=
  chain_cut false 2 (by decide)

private def v1402308379610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.app (.var 2) (.var 1)))) (.var 0)))))))
private theorem no_v1402308379610 : ¬ MinimalInterpreter v1402308379610 :=
  chain_cut false 2 (by decide)

private def v1402308382490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402308382490 : ¬ MinimalInterpreter v1402308382490 :=
  chain_cut false 2 (by decide)

private def v1402308261658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402308261658 : ¬ MinimalInterpreter v1402308261658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.lam (.var 1))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308260314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 2))) (.var 1)) (.var 0)))))))
private theorem no_v1402308260314 : ¬ MinimalInterpreter v1402308260314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 2))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.lam (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 2) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem four242 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,2,1,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,2,1,0] = [v1402308865818,v1402308380474,v1402308379610,v1402308382490,v1402308261658,v1402308260314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308865818) (.cons (no_v1402308380474) (.cons (no_v1402308379610) (.cons (no_v1402308382490) (.cons (no_v1402308261658) (.cons (no_v1402308260314) .nil))))))

private def v1402308380570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308380570 : ¬ MinimalInterpreter v1402308380570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.lam (.var 3))) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308260330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402308260330 : ¬ MinimalInterpreter v1402308260330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 3))) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four243 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,3,0,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,3,0,0] = [v1402308380570,v1402308260330] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308380570) (.cons (no_v1402308260330) .nil))

private def v1402307339886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402307339886 : ¬ MinimalInterpreter v1402307339886 :=
  chain_cut false 2 (by decide)

private def v1402307339694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1402307339694 : ¬ MinimalInterpreter v1402307339694 :=
  chain_cut false 2 (by decide)

private def v1402307213934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402307213934 : ¬ MinimalInterpreter v1402307213934 :=
  chain_cut false 2 (by decide)

private def v1402307213742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v1402307213742 : ¬ MinimalInterpreter v1402307213742 :=
  chain_cut false 2 (by decide)

private def v1402307182254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v1402307182254 : ¬ MinimalInterpreter v1402307182254 :=
  chain_cut false 2 (by decide)

theorem four244 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,0,0,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [4,0,0,2] = [v1402307339886,v1402307339694,v1402307213934,v1402307213742,v1402307182254] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307339886) (.cons (no_v1402307339694) (.cons (no_v1402307213934) (.cons (no_v1402307213742) (.cons (no_v1402307182254) .nil)))))

end Blc.SelfintSingleObject.Rows40
