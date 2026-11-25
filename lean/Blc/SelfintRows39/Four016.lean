import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154433518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v701154433518 : ¬ MinimalInterpreter v701154433518 :=
  chain_cut false 2 (by decide)
private def v701154432750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v701154432750 : ¬ MinimalInterpreter v701154432750 :=
  chain_cut false 2 (by decide)
private def v701154191854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v701154191854 : ¬ MinimalInterpreter v701154191854 :=
  chain_cut false 2 (by decide)
private def v701154191086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v701154191086 : ¬ MinimalInterpreter v701154191086 :=
  chain_cut false 2 (by decide)
private def v701154130670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v701154130670 : ¬ MinimalInterpreter v701154130670 :=
  chain_cut false 2 (by decide)
theorem row96 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,0,2,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,0,2,2] = [v701154433518,v701154432750,v701154191854,v701154191086,v701154130670] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154433518) (.cons (no_v701154432750) (.cons (no_v701154191854) (.cons (no_v701154191086) (.cons (no_v701154130670) .nil)))))

private def v701154433526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v701154433526 : ¬ MinimalInterpreter v701154433526 :=
  chain_cut true 4 (by decide)
private def v701154432758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v701154432758 : ¬ MinimalInterpreter v701154432758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154191862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v701154191862 : ¬ MinimalInterpreter v701154191862 :=
  chain_cut false 3 (by decide)
private def v701154191094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v701154191094 : ¬ MinimalInterpreter v701154191094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154130678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v701154130678 : ¬ MinimalInterpreter v701154130678 :=
  chain_cut false 3 (by decide)
theorem row97 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,0,3,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,0,3,1] = [v701154433526,v701154432758,v701154191862,v701154191094,v701154130678] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154433526) (.cons (no_v701154432758) (.cons (no_v701154191862) (.cons (no_v701154191094) (.cons (no_v701154130678) .nil)))))

private def v701154434270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v701154434270 : ¬ MinimalInterpreter v701154434270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154432862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v701154432862 : ¬ MinimalInterpreter v701154432862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154192606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v701154192606 : ¬ MinimalInterpreter v701154192606 :=
  chain_cut false 3 (by decide)
private def v701154191198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v701154191198 : ¬ MinimalInterpreter v701154191198 :=
  chain_cut false 3 (by decide)
private def v701154130782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v701154130782 : ¬ MinimalInterpreter v701154130782 :=
  chain_cut false 3 (by decide)
theorem row98 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,0,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,0,3] = [v701154434270,v701154432862,v701154192606,v701154191198,v701154130782] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434270) (.cons (no_v701154432862) (.cons (no_v701154192606) (.cons (no_v701154191198) (.cons (no_v701154130782) .nil)))))

private def v701154434286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v701154434286 : ¬ MinimalInterpreter v701154434286 :=
  chain_cut false 2 (by decide)
private def v701154432878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v701154432878 : ¬ MinimalInterpreter v701154432878 :=
  chain_cut false 2 (by decide)
private def v701154192622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v701154192622 : ¬ MinimalInterpreter v701154192622 :=
  chain_cut false 2 (by decide)
private def v701154191214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v701154191214 : ¬ MinimalInterpreter v701154191214 :=
  chain_cut false 2 (by decide)
private def v701154130798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v701154130798 : ¬ MinimalInterpreter v701154130798 :=
  chain_cut false 2 (by decide)
theorem row99 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,1,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,1,2] = [v701154434286,v701154432878,v701154192622,v701154191214,v701154130798] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434286) (.cons (no_v701154432878) (.cons (no_v701154192622) (.cons (no_v701154191214) (.cons (no_v701154130798) .nil)))))

private def v701154434294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v701154434294 : ¬ MinimalInterpreter v701154434294 :=
  chain_cut false 2 (by decide)
private def v701154432886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v701154432886 : ¬ MinimalInterpreter v701154432886 :=
  chain_cut false 2 (by decide)
private def v701154192630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v701154192630 : ¬ MinimalInterpreter v701154192630 :=
  chain_cut false 2 (by decide)
private def v701154191222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v701154191222 : ¬ MinimalInterpreter v701154191222 :=
  chain_cut false 2 (by decide)
private def v701154130806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v701154130806 : ¬ MinimalInterpreter v701154130806 :=
  chain_cut false 2 (by decide)
theorem row100 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,2,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,2,1] = [v701154434294,v701154432886,v701154192630,v701154191222,v701154130806] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434294) (.cons (no_v701154432886) (.cons (no_v701154192630) (.cons (no_v701154191222) (.cons (no_v701154130806) .nil)))))

private def v701154434298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v701154434298 : ¬ MinimalInterpreter v701154434298 :=
  chain_cut true 4 (by decide)
private def v701154432890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v701154432890 : ¬ MinimalInterpreter v701154432890 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154192634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v701154192634 : ¬ MinimalInterpreter v701154192634 :=
  chain_cut false 3 (by decide)
private def v701154191226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v701154191226 : ¬ MinimalInterpreter v701154191226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154130810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v701154130810 : ¬ MinimalInterpreter v701154130810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
theorem row101 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,3,0]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,1,3,0] = [v701154434298,v701154432890,v701154192634,v701154191226,v701154130810] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434298) (.cons (no_v701154432890) (.cons (no_v701154192634) (.cons (no_v701154191226) (.cons (no_v701154130810) .nil)))))

end Blc.SelfintSingleObject.Rows39
