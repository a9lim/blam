import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four7 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,2,0,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313612918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402313612918 : ¬ MinimalInterpreter v1402313612918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1))))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313611190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1402313611190 : ¬ MinimalInterpreter v1402313611190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1)))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313502326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1402313502326 : ¬ MinimalInterpreter v1402313502326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402313500598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1402313500598 : ¬ MinimalInterpreter v1402313500598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1402313472950 : ¬ MinimalInterpreter v1402313472950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 1))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402312826486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1402312826486 : ¬ MinimalInterpreter v1402312826486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402312824758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1402312824758 : ¬ MinimalInterpreter v1402312824758 :=
  chain_cut true 4 (by decide)

private def v1402312715894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312715894 : ¬ MinimalInterpreter v1402312715894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402312519286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312519286 : ¬ MinimalInterpreter v1402312519286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402312714166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v1402312714166 : ¬ MinimalInterpreter v1402312714166 :=
  chain_cut true 7 (by decide)

private def v1402312686518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 1))))))
private theorem no_v1402312686518 : ¬ MinimalInterpreter v1402312686518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402312517558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1402312517558 : ¬ MinimalInterpreter v1402312517558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312489910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)) (.var 1))))))
private theorem no_v1402312489910 : ¬ MinimalInterpreter v1402312489910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402312440758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1402312440758 : ¬ MinimalInterpreter v1402312440758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem four8 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,2,1,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,2,1,1] = [v1402313612918,v1402313611190,v1402313502326,v1402313500598,v1402313472950,v1402312826486,v1402312824758,v1402312715894,v1402312519286,v1402312714166,v1402312686518,v1402312517558,v1402312489910,v1402312440758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313612918) (.cons (no_v1402313611190) (.cons (no_v1402313502326) (.cons (no_v1402313500598) (.cons (no_v1402313472950) (.cons (no_v1402312826486) (.cons (no_v1402312824758) (.cons (no_v1402312715894) (.cons (no_v1402312519286) (.cons (no_v1402312714166) (.cons (no_v1402312686518) (.cons (no_v1402312517558) (.cons (no_v1402312489910) (.cons (no_v1402312440758) .nil))))))))))))))

theorem four9 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,2,2,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314373614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402314373614 : ¬ MinimalInterpreter v1402314373614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314370798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v1402314370798 : ¬ MinimalInterpreter v1402314370798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314349038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402314349038 : ¬ MinimalInterpreter v1402314349038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314346222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v1402314346222 : ¬ MinimalInterpreter v1402314346222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314340078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v1402314340078 : ¬ MinimalInterpreter v1402314340078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312931822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v1402312931822 : ¬ MinimalInterpreter v1402312931822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312929006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v1402312929006 : ¬ MinimalInterpreter v1402312929006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312907246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 2)))))))
private theorem no_v1402312907246 : ¬ MinimalInterpreter v1402312907246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312546798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v1402312546798 : ¬ MinimalInterpreter v1402312546798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312904430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v1402312904430 : ¬ MinimalInterpreter v1402312904430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312898286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 2))))))
private theorem no_v1402312898286 : ¬ MinimalInterpreter v1402312898286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312543982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v1402312543982 : ¬ MinimalInterpreter v1402312543982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312537838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)) (.var 2))))))
private theorem no_v1402312537838 : ¬ MinimalInterpreter v1402312537838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312447726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v1402312447726 : ¬ MinimalInterpreter v1402312447726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336393710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402336393710 : ¬ MinimalInterpreter v1402336393710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336390894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v1402336390894 : ¬ MinimalInterpreter v1402336390894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336369134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402336369134 : ¬ MinimalInterpreter v1402336369134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336366318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v1402336366318 : ¬ MinimalInterpreter v1402336366318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336360174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v1402336360174 : ¬ MinimalInterpreter v1402336360174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four10 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,0,1,2,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,0,1,2,2] = [v1402314373614,v1402314370798,v1402314349038,v1402314346222,v1402314340078,v1402312931822,v1402312929006,v1402312907246,v1402312546798,v1402312904430,v1402312898286,v1402312543982,v1402312537838,v1402312447726,v1402336393710,v1402336390894,v1402336369134,v1402336366318,v1402336360174] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314373614) (.cons (no_v1402314370798) (.cons (no_v1402314349038) (.cons (no_v1402314346222) (.cons (no_v1402314340078) (.cons (no_v1402312931822) (.cons (no_v1402312929006) (.cons (no_v1402312907246) (.cons (no_v1402312546798) (.cons (no_v1402312904430) (.cons (no_v1402312898286) (.cons (no_v1402312543982) (.cons (no_v1402312537838) (.cons (no_v1402312447726) (.cons (no_v1402336393710) (.cons (no_v1402336390894) (.cons (no_v1402336369134) (.cons (no_v1402336366318) (.cons (no_v1402336360174) .nil)))))))))))))))))))

private def v1402314374382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402314374382 : ¬ MinimalInterpreter v1402314374382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314370926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v1402314370926 : ¬ MinimalInterpreter v1402314370926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314349806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402314349806 : ¬ MinimalInterpreter v1402314349806 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314346350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v1402314346350 : ¬ MinimalInterpreter v1402314346350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314340206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v1402314340206 : ¬ MinimalInterpreter v1402314340206 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312932590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v1402312932590 : ¬ MinimalInterpreter v1402312932590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312929134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v1402312929134 : ¬ MinimalInterpreter v1402312929134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312908014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312908014 : ¬ MinimalInterpreter v1402312908014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312547566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312547566 : ¬ MinimalInterpreter v1402312547566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312904558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v1402312904558 : ¬ MinimalInterpreter v1402312904558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312898414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 2))))))
private theorem no_v1402312898414 : ¬ MinimalInterpreter v1402312898414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312544110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v1402312544110 : ¬ MinimalInterpreter v1402312544110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312537966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)) (.var 2))))))
private theorem no_v1402312537966 : ¬ MinimalInterpreter v1402312537966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312447854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v1402312447854 : ¬ MinimalInterpreter v1402312447854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336394478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402336394478 : ¬ MinimalInterpreter v1402336394478 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336391022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v1402336391022 : ¬ MinimalInterpreter v1402336391022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336369902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402336369902 : ¬ MinimalInterpreter v1402336369902 :=
  w_cut false 0 (by decide)

private def v1402336366446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v1402336366446 : ¬ MinimalInterpreter v1402336366446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336360302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v1402336360302 : ¬ MinimalInterpreter v1402336360302 :=
  w_cut false 0 (by decide)

theorem four11 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,0,2,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,0,2,1,2] = [v1402314374382,v1402314370926,v1402314349806,v1402314346350,v1402314340206,v1402312932590,v1402312929134,v1402312908014,v1402312547566,v1402312904558,v1402312898414,v1402312544110,v1402312537966,v1402312447854,v1402336394478,v1402336391022,v1402336369902,v1402336366446,v1402336360302] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314374382) (.cons (no_v1402314370926) (.cons (no_v1402314349806) (.cons (no_v1402314346350) (.cons (no_v1402314340206) (.cons (no_v1402312932590) (.cons (no_v1402312929134) (.cons (no_v1402312908014) (.cons (no_v1402312547566) (.cons (no_v1402312904558) (.cons (no_v1402312898414) (.cons (no_v1402312544110) (.cons (no_v1402312537966) (.cons (no_v1402312447854) (.cons (no_v1402336394478) (.cons (no_v1402336391022) (.cons (no_v1402336369902) (.cons (no_v1402336366446) (.cons (no_v1402336360302) .nil)))))))))))))))))))

private def v1402314374390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402314374390 : ¬ MinimalInterpreter v1402314374390 :=
  chain_cut true 7 (by decide)

private def v1402314370934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v1402314370934 : ¬ MinimalInterpreter v1402314370934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314349814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402314349814 : ¬ MinimalInterpreter v1402314349814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314346358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v1402314346358 : ¬ MinimalInterpreter v1402314346358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314340214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v1402314340214 : ¬ MinimalInterpreter v1402314340214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312932598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v1402312932598 : ¬ MinimalInterpreter v1402312932598 :=
  chain_cut true 7 (by decide)

private def v1402312929142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v1402312929142 : ¬ MinimalInterpreter v1402312929142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312908022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312908022 : ¬ MinimalInterpreter v1402312908022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312547574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312547574 : ¬ MinimalInterpreter v1402312547574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312904566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))) (.var 1))))))
private theorem no_v1402312904566 : ¬ MinimalInterpreter v1402312904566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312898422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))) (.var 1))))))
private theorem no_v1402312898422 : ¬ MinimalInterpreter v1402312898422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312544118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v1402312544118 : ¬ MinimalInterpreter v1402312544118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312537974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)) (.var 1))))))
private theorem no_v1402312537974 : ¬ MinimalInterpreter v1402312537974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312447862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v1402312447862 : ¬ MinimalInterpreter v1402312447862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336394486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402336394486 : ¬ MinimalInterpreter v1402336394486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336391030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v1402336391030 : ¬ MinimalInterpreter v1402336391030 :=
  w_cut false 0 (by decide)

private def v1402336369910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402336369910 : ¬ MinimalInterpreter v1402336369910 :=
  w_cut false 0 (by decide)

private def v1402336366454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v1402336366454 : ¬ MinimalInterpreter v1402336366454 :=
  w_cut false 0 (by decide)

private def v1402336360310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v1402336360310 : ¬ MinimalInterpreter v1402336360310 :=
  w_cut false 0 (by decide)

theorem four12 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,0,2,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,0,2,2,1] = [v1402314374390,v1402314370934,v1402314349814,v1402314346358,v1402314340214,v1402312932598,v1402312929142,v1402312908022,v1402312547574,v1402312904566,v1402312898422,v1402312544118,v1402312537974,v1402312447862,v1402336394486,v1402336391030,v1402336369910,v1402336366454,v1402336360310] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314374390) (.cons (no_v1402314370934) (.cons (no_v1402314349814) (.cons (no_v1402314346358) (.cons (no_v1402314340214) (.cons (no_v1402312932598) (.cons (no_v1402312929142) (.cons (no_v1402312908022) (.cons (no_v1402312547574) (.cons (no_v1402312904566) (.cons (no_v1402312898422) (.cons (no_v1402312544118) (.cons (no_v1402312537974) (.cons (no_v1402312447862) (.cons (no_v1402336394486) (.cons (no_v1402336391030) (.cons (no_v1402336369910) (.cons (no_v1402336366454) (.cons (no_v1402336360310) .nil)))))))))))))))))))

private def v1402314398190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402314398190 : ¬ MinimalInterpreter v1402314398190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314397422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v1402314397422 : ¬ MinimalInterpreter v1402314397422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314353134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402314353134 : ¬ MinimalInterpreter v1402314353134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314352366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v1402314352366 : ¬ MinimalInterpreter v1402314352366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v1402314341102 : ¬ MinimalInterpreter v1402314341102 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312956398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v1402312956398 : ¬ MinimalInterpreter v1402312956398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312955630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v1402312955630 : ¬ MinimalInterpreter v1402312955630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312911342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 2)))))))
private theorem no_v1402312911342 : ¬ MinimalInterpreter v1402312911342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312550894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v1402312550894 : ¬ MinimalInterpreter v1402312550894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312910574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 2))))))
private theorem no_v1402312910574 : ¬ MinimalInterpreter v1402312910574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312899310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 2))))))
private theorem no_v1402312899310 : ¬ MinimalInterpreter v1402312899310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312550126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v1402312550126 : ¬ MinimalInterpreter v1402312550126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312538862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)) (.var 2))))))
private theorem no_v1402312538862 : ¬ MinimalInterpreter v1402312538862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312448750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v1402312448750 : ¬ MinimalInterpreter v1402312448750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336418286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402336418286 : ¬ MinimalInterpreter v1402336418286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336417518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v1402336417518 : ¬ MinimalInterpreter v1402336417518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336373230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402336373230 : ¬ MinimalInterpreter v1402336373230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336372462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v1402336372462 : ¬ MinimalInterpreter v1402336372462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336361198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v1402336361198 : ¬ MinimalInterpreter v1402336361198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four13 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,0,2,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,1,0,2,2] = [v1402314398190,v1402314397422,v1402314353134,v1402314352366,v1402314341102,v1402312956398,v1402312955630,v1402312911342,v1402312550894,v1402312910574,v1402312899310,v1402312550126,v1402312538862,v1402312448750,v1402336418286,v1402336417518,v1402336373230,v1402336372462,v1402336361198] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314398190) (.cons (no_v1402314397422) (.cons (no_v1402314353134) (.cons (no_v1402314352366) (.cons (no_v1402314341102) (.cons (no_v1402312956398) (.cons (no_v1402312955630) (.cons (no_v1402312911342) (.cons (no_v1402312550894) (.cons (no_v1402312910574) (.cons (no_v1402312899310) (.cons (no_v1402312550126) (.cons (no_v1402312538862) (.cons (no_v1402312448750) (.cons (no_v1402336418286) (.cons (no_v1402336417518) (.cons (no_v1402336373230) (.cons (no_v1402336372462) (.cons (no_v1402336361198) .nil)))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
