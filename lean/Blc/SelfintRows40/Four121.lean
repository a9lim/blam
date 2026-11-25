import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1376134471478 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376134471478 : ¬ MinimalInterpreter v1376134471478 :=
  cost_cut false 1 (by decide)

private def v1376134469590 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1376134469590 : ¬ MinimalInterpreter v1376134469590 :=
  cost_cut false 1 (by decide)

private def v1376134459190 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v1376134459190 : ¬ MinimalInterpreter v1376134459190 :=
  cost_cut false 1 (by decide)

private def v1376134457302 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v1376134457302 : ¬ MinimalInterpreter v1376134457302 :=
  cost_cut false 1 (by decide)

private def v1376134454230 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v1376134454230 : ¬ MinimalInterpreter v1376134454230 :=
  cost_cut false 1 (by decide)

private def v1376134766390 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376134766390 : ¬ MinimalInterpreter v1376134766390 :=
  cost_cut false 1 (by decide)

private def v1376134764502 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1376134764502 : ¬ MinimalInterpreter v1376134764502 :=
  cost_cut false 1 (by decide)

private def v1376134729526 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1376134729526 : ¬ MinimalInterpreter v1376134729526 :=
  cost_cut false 1 (by decide)

private def v1376134718422 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1376134718422 : ¬ MinimalInterpreter v1376134718422 :=
  cost_cut false 1 (by decide)

private def v1376140664630 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376140664630 : ¬ MinimalInterpreter v1376140664630 :=
  cost_cut false 1 (by decide)

private def v1376140662742 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1376140662742 : ¬ MinimalInterpreter v1376140662742 :=
  cost_cut false 1 (by decide)

theorem four847 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,3,0,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,3,0,1] = [v1376134471478,v1376134469590,v1376134459190,v1376134457302,v1376134454230,v1376134766390,v1376134764502,v1376134729526,v1376134718422,v1376140664630,v1376140662742] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134471478) (.cons (no_v1376134469590) (.cons (no_v1376134459190) (.cons (no_v1376134457302) (.cons (no_v1376134454230) (.cons (no_v1376134766390) (.cons (no_v1376134764502) (.cons (no_v1376134729526) (.cons (no_v1376134718422) (.cons (no_v1376140664630) (.cons (no_v1376140662742) .nil)))))))))))

private def v1376134471482 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376134471482 : ¬ MinimalInterpreter v1376134471482 :=
  cost_cut false 1 (by decide)

private def v1376134469594 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1376134469594 : ¬ MinimalInterpreter v1376134469594 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134459194 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v1376134459194 : ¬ MinimalInterpreter v1376134459194 :=
  cost_cut false 1 (by decide)

private def v1376134457306 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v1376134457306 : ¬ MinimalInterpreter v1376134457306 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134454234 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v1376134454234 : ¬ MinimalInterpreter v1376134454234 :=
  cost_cut false 1 (by decide)

private def v1376134766394 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376134766394 : ¬ MinimalInterpreter v1376134766394 :=
  cost_cut false 1 (by decide)

private def v1376134764506 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1376134764506 : ¬ MinimalInterpreter v1376134764506 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1376134729530 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1376134729530 : ¬ MinimalInterpreter v1376134729530 :=
  cost_cut false 1 (by decide)

private def v1376134718426 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1376134718426 : ¬ MinimalInterpreter v1376134718426 :=
  cost_cut false 1 (by decide)

private def v1376140664634 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376140664634 : ¬ MinimalInterpreter v1376140664634 :=
  cost_cut false 1 (by decide)

private def v1376140662746 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1376140662746 : ¬ MinimalInterpreter v1376140662746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem four848 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,3,1,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,3,1,0] = [v1376134471482,v1376134469594,v1376134459194,v1376134457306,v1376134454234,v1376134766394,v1376134764506,v1376134729530,v1376134718426,v1376140664634,v1376140662746] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134471482) (.cons (no_v1376134469594) (.cons (no_v1376134459194) (.cons (no_v1376134457306) (.cons (no_v1376134454234) (.cons (no_v1376134766394) (.cons (no_v1376134764506) (.cons (no_v1376134729530) (.cons (no_v1376134718426) (.cons (no_v1376140664634) (.cons (no_v1376140662746) .nil)))))))))))

private def v1376134483166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1376134483166 : ¬ MinimalInterpreter v1376134483166 :=
  cost_cut false 1 (by decide)

private def v1376134482782 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1376134482782 : ¬ MinimalInterpreter v1376134482782 :=
  cost_cut false 1 (by decide)

private def v1376134460638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v1376134460638 : ¬ MinimalInterpreter v1376134460638 :=
  cost_cut false 1 (by decide)

private def v1376134460254 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v1376134460254 : ¬ MinimalInterpreter v1376134460254 :=
  cost_cut false 1 (by decide)

private def v1376134454622 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v1376134454622 : ¬ MinimalInterpreter v1376134454622 :=
  cost_cut false 1 (by decide)

private def v1376134837022 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1376134837022 : ¬ MinimalInterpreter v1376134837022 :=
  cost_cut false 1 (by decide)

private def v1376134835486 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1376134835486 : ¬ MinimalInterpreter v1376134835486 :=
  cost_cut false 1 (by decide)

private def v1376134746910 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1376134746910 : ¬ MinimalInterpreter v1376134746910 :=
  cost_cut false 1 (by decide)

private def v1376134745374 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1376134745374 : ¬ MinimalInterpreter v1376134745374 :=
  cost_cut false 1 (by decide)

private def v1376134722846 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1376134722846 : ¬ MinimalInterpreter v1376134722846 :=
  cost_cut false 1 (by decide)

theorem four849 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,0,3]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,0,3] = [v1376134483166,v1376134482782,v1376134460638,v1376134460254,v1376134454622,v1376134837022,v1376134835486,v1376134746910,v1376134745374,v1376134722846] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483166) (.cons (no_v1376134482782) (.cons (no_v1376134460638) (.cons (no_v1376134460254) (.cons (no_v1376134454622) (.cons (no_v1376134837022) (.cons (no_v1376134835486) (.cons (no_v1376134746910) (.cons (no_v1376134745374) (.cons (no_v1376134722846) .nil))))))))))

private def v1376134483182 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1376134483182 : ¬ MinimalInterpreter v1376134483182 :=
  cost_cut false 1 (by decide)

private def v1376134482798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1376134482798 : ¬ MinimalInterpreter v1376134482798 :=
  cost_cut false 1 (by decide)

private def v1376134460654 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1376134460654 : ¬ MinimalInterpreter v1376134460654 :=
  cost_cut false 1 (by decide)

private def v1376134460270 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1376134460270 : ¬ MinimalInterpreter v1376134460270 :=
  cost_cut false 1 (by decide)

private def v1376134454638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1376134454638 : ¬ MinimalInterpreter v1376134454638 :=
  cost_cut false 1 (by decide)

private def v1376134827246 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1376134827246 : ¬ MinimalInterpreter v1376134827246 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1376134826862 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1376134826862 : ¬ MinimalInterpreter v1376134826862 :=
  cost_cut false 1 (by decide)

private def v1376134835310 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1376134835310 : ¬ MinimalInterpreter v1376134835310 :=
  cost_cut false 1 (by decide)

private def v1376134745198 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1376134745198 : ¬ MinimalInterpreter v1376134745198 :=
  cost_cut false 1 (by decide)

private def v1376134722670 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1376134722670 : ¬ MinimalInterpreter v1376134722670 :=
  cost_cut false 1 (by decide)

theorem four850 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,1,2] = [v1376134483182,v1376134482798,v1376134460654,v1376134460270,v1376134454638,v1376134827246,v1376134826862,v1376134835310,v1376134745198,v1376134722670] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483182) (.cons (no_v1376134482798) (.cons (no_v1376134460654) (.cons (no_v1376134460270) (.cons (no_v1376134454638) (.cons (no_v1376134827246) (.cons (no_v1376134826862) (.cons (no_v1376134835310) (.cons (no_v1376134745198) (.cons (no_v1376134722670) .nil))))))))))

private def v1376134483190 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1376134483190 : ¬ MinimalInterpreter v1376134483190 :=
  cost_cut false 1 (by decide)

private def v1376134482806 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1376134482806 : ¬ MinimalInterpreter v1376134482806 :=
  cost_cut false 1 (by decide)

private def v1376134460662 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1376134460662 : ¬ MinimalInterpreter v1376134460662 :=
  cost_cut false 1 (by decide)

private def v1376134460278 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1376134460278 : ¬ MinimalInterpreter v1376134460278 :=
  cost_cut false 1 (by decide)

private def v1376134454646 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1376134454646 : ¬ MinimalInterpreter v1376134454646 :=
  cost_cut false 1 (by decide)

private def v1376134827254 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1376134827254 : ¬ MinimalInterpreter v1376134827254 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1376134826870 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1376134826870 : ¬ MinimalInterpreter v1376134826870 :=
  cost_cut false 1 (by decide)

private def v1376134837190 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1376134837190 : ¬ MinimalInterpreter v1376134837190 :=
  cost_cut false 1 (by decide)

private def v1376134835654 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1376134835654 : ¬ MinimalInterpreter v1376134835654 :=
  cost_cut false 1 (by decide)

private def v1376134747078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1376134747078 : ¬ MinimalInterpreter v1376134747078 :=
  cost_cut false 1 (by decide)

private def v1376134745542 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1376134745542 : ¬ MinimalInterpreter v1376134745542 :=
  cost_cut false 1 (by decide)

private def v1376134723014 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1376134723014 : ¬ MinimalInterpreter v1376134723014 :=
  cost_cut false 1 (by decide)

theorem four851 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,2,1] = [v1376134483190,v1376134482806,v1376134460662,v1376134460278,v1376134454646,v1376134827254,v1376134826870,v1376134837190,v1376134835654,v1376134747078,v1376134745542,v1376134723014] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483190) (.cons (no_v1376134482806) (.cons (no_v1376134460662) (.cons (no_v1376134460278) (.cons (no_v1376134454646) (.cons (no_v1376134827254) (.cons (no_v1376134826870) (.cons (no_v1376134837190) (.cons (no_v1376134835654) (.cons (no_v1376134747078) (.cons (no_v1376134745542) (.cons (no_v1376134723014) .nil))))))))))))

private def v1376134483194 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1376134483194 : ¬ MinimalInterpreter v1376134483194 :=
  cost_cut false 1 (by decide)

private def v1376134482810 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1376134482810 : ¬ MinimalInterpreter v1376134482810 :=
  cost_cut false 1 (by decide)

private def v1376134460666 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v1376134460666 : ¬ MinimalInterpreter v1376134460666 :=
  cost_cut false 1 (by decide)

private def v1376134460282 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v1376134460282 : ¬ MinimalInterpreter v1376134460282 :=
  cost_cut false 1 (by decide)

private def v1376134454650 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v1376134454650 : ¬ MinimalInterpreter v1376134454650 :=
  cost_cut false 1 (by decide)

private def v1376134835322 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1376134835322 : ¬ MinimalInterpreter v1376134835322 :=
  cost_cut false 1 (by decide)

private def v1376134745210 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1376134745210 : ¬ MinimalInterpreter v1376134745210 :=
  cost_cut false 1 (by decide)

private def v1376134722682 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1376134722682 : ¬ MinimalInterpreter v1376134722682 :=
  cost_cut false 1 (by decide)

theorem four852 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,3,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,0,3,0] = [v1376134483194,v1376134482810,v1376134460666,v1376134460282,v1376134454650,v1376134835322,v1376134745210,v1376134722682] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483194) (.cons (no_v1376134482810) (.cons (no_v1376134460666) (.cons (no_v1376134460282) (.cons (no_v1376134454650) (.cons (no_v1376134835322) (.cons (no_v1376134745210) (.cons (no_v1376134722682) .nil))))))))

private def v1376134483566 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1376134483566 : ¬ MinimalInterpreter v1376134483566 :=
  cost_cut false 1 (by decide)

private def v1376134482862 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1376134482862 : ¬ MinimalInterpreter v1376134482862 :=
  cost_cut false 1 (by decide)

private def v1376134461038 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1376134461038 : ¬ MinimalInterpreter v1376134461038 :=
  cost_cut false 1 (by decide)

private def v1376134460334 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1376134460334 : ¬ MinimalInterpreter v1376134460334 :=
  cost_cut false 1 (by decide)

private def v1376134454702 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1376134454702 : ¬ MinimalInterpreter v1376134454702 :=
  cost_cut false 1 (by decide)

private def v1376134827630 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1376134827630 : ¬ MinimalInterpreter v1376134827630 :=
  cost_cut false 1 (by decide)

private def v1376134826926 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1376134826926 : ¬ MinimalInterpreter v1376134826926 :=
  cost_cut false 1 (by decide)

private def v1376134743662 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1376134743662 : ¬ MinimalInterpreter v1376134743662 :=
  cost_cut false 1 (by decide)

private def v1376134721966 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1376134721966 : ¬ MinimalInterpreter v1376134721966 :=
  cost_cut false 1 (by decide)

theorem four853 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,1,0,2] = [v1376134483566,v1376134482862,v1376134461038,v1376134460334,v1376134454702,v1376134827630,v1376134826926,v1376134743662,v1376134721966] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483566) (.cons (no_v1376134482862) (.cons (no_v1376134461038) (.cons (no_v1376134460334) (.cons (no_v1376134454702) (.cons (no_v1376134827630) (.cons (no_v1376134826926) (.cons (no_v1376134743662) (.cons (no_v1376134721966) .nil)))))))))

end Blc.SelfintSingleObject.Rows40
