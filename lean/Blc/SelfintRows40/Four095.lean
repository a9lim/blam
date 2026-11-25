import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four665 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [4,0,0,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four666 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,0,3]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400964697326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1400964697326 : ¬ MinimalInterpreter v1400964697326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964696942 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1400964696942 : ¬ MinimalInterpreter v1400964696942 :=
  cost_cut false 2 (by decide)

private def v1400964691182 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400964691182 : ¬ MinimalInterpreter v1400964691182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964690798 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1400964690798 : ¬ MinimalInterpreter v1400964690798 :=
  cost_cut false 2 (by decide)

private def v1400964689262 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1400964689262 : ¬ MinimalInterpreter v1400964689262 :=
  cost_cut false 2 (by decide)

private def v1400964844782 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1400964844782 : ¬ MinimalInterpreter v1400964844782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1400964844398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1400964844398 : ¬ MinimalInterpreter v1400964844398 :=
  cost_cut false 2 (by decide)

private def v1400965434606 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1400965434606 : ¬ MinimalInterpreter v1400965434606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1400965434222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1400965434222 : ¬ MinimalInterpreter v1400965434222 :=
  cost_cut false 2 (by decide)

theorem four667 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,1,2]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,1,2] = [v1400964697326,v1400964696942,v1400964691182,v1400964690798,v1400964689262,v1400964844782,v1400964844398,v1400965434606,v1400965434222] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964697326) (.cons (no_v1400964696942) (.cons (no_v1400964691182) (.cons (no_v1400964690798) (.cons (no_v1400964689262) (.cons (no_v1400964844782) (.cons (no_v1400964844398) (.cons (no_v1400965434606) (.cons (no_v1400965434222) .nil)))))))))

private def v1400964697334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1400964697334 : ¬ MinimalInterpreter v1400964697334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964696950 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1400964696950 : ¬ MinimalInterpreter v1400964696950 :=
  cost_cut false 2 (by decide)

private def v1400964691190 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400964691190 : ¬ MinimalInterpreter v1400964691190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964690806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1400964690806 : ¬ MinimalInterpreter v1400964690806 :=
  cost_cut false 2 (by decide)

private def v1400964689270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1400964689270 : ¬ MinimalInterpreter v1400964689270 :=
  cost_cut false 2 (by decide)

private def v1400964844790 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1400964844790 : ¬ MinimalInterpreter v1400964844790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1400964844406 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1400964844406 : ¬ MinimalInterpreter v1400964844406 :=
  cost_cut false 2 (by decide)

private def v1400965434614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1400965434614 : ¬ MinimalInterpreter v1400965434614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1400965434230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1400965434230 : ¬ MinimalInterpreter v1400965434230 :=
  cost_cut false 2 (by decide)

theorem four668 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,2,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,2,1] = [v1400964697334,v1400964696950,v1400964691190,v1400964690806,v1400964689270,v1400964844790,v1400964844406,v1400965434614,v1400965434230] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964697334) (.cons (no_v1400964696950) (.cons (no_v1400964691190) (.cons (no_v1400964690806) (.cons (no_v1400964689270) (.cons (no_v1400964844790) (.cons (no_v1400964844406) (.cons (no_v1400965434614) (.cons (no_v1400965434230) .nil)))))))))

theorem four669 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,3,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400964697710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1400964697710 : ¬ MinimalInterpreter v1400964697710 :=
  cost_cut false 2 (by decide)

private def v1400964697006 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1400964697006 : ¬ MinimalInterpreter v1400964697006 :=
  cost_cut false 2 (by decide)

private def v1400964691566 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400964691566 : ¬ MinimalInterpreter v1400964691566 :=
  cost_cut false 2 (by decide)

private def v1400964690862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1400964690862 : ¬ MinimalInterpreter v1400964690862 :=
  cost_cut false 2 (by decide)

private def v1400964689326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1400964689326 : ¬ MinimalInterpreter v1400964689326 :=
  cost_cut false 2 (by decide)

private def v1400964845166 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1400964845166 : ¬ MinimalInterpreter v1400964845166 :=
  cost_cut false 2 (by decide)

private def v1400964844462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1400964844462 : ¬ MinimalInterpreter v1400964844462 :=
  cost_cut false 2 (by decide)

private def v1400965434990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1400965434990 : ¬ MinimalInterpreter v1400965434990 :=
  cost_cut false 2 (by decide)

private def v1400965434286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1400965434286 : ¬ MinimalInterpreter v1400965434286 :=
  cost_cut false 2 (by decide)

theorem four670 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,1,0,2]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,1,0,2] = [v1400964697710,v1400964697006,v1400964691566,v1400964690862,v1400964689326,v1400964845166,v1400964844462,v1400965434990,v1400965434286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964697710) (.cons (no_v1400964697006) (.cons (no_v1400964691566) (.cons (no_v1400964690862) (.cons (no_v1400964689326) (.cons (no_v1400964845166) (.cons (no_v1400964844462) (.cons (no_v1400965434990) (.cons (no_v1400965434286) .nil)))))))))

theorem four671 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,1,1,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
