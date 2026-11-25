import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370744634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381370744634 : ¬ MinimalInterpreter v1381370744634 :=
  cost_cut false 1 (by decide)

private def v1381370743770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1381370743770 : ¬ MinimalInterpreter v1381370743770 :=
  cost_cut false 1 (by decide)

private def v1381370738490 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370738490 : ¬ MinimalInterpreter v1381370738490 :=
  cost_cut false 1 (by decide)

private def v1381370737626 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1381370737626 : ¬ MinimalInterpreter v1381370737626 :=
  cost_cut false 1 (by decide)

private def v1381370736090 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1381370736090 : ¬ MinimalInterpreter v1381370736090 :=
  cost_cut false 1 (by decide)

private def v1381370384186 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370384186 : ¬ MinimalInterpreter v1381370384186 :=
  cost_cut false 1 (by decide)

private def v1381370383322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1381370383322 : ¬ MinimalInterpreter v1381370383322 :=
  cost_cut false 1 (by decide)

private def v1381370378042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370378042 : ¬ MinimalInterpreter v1381370378042 :=
  cost_cut false 1 (by decide)

private def v1381370287930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370287930 : ¬ MinimalInterpreter v1381370287930 :=
  cost_cut false 1 (by decide)

private def v1381370377178 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v1381370377178 : ¬ MinimalInterpreter v1381370377178 :=
  cost_cut false 1 (by decide)

private def v1381370375642 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v1381370375642 : ¬ MinimalInterpreter v1381370375642 :=
  cost_cut false 1 (by decide)

private def v1381370287066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1381370287066 : ¬ MinimalInterpreter v1381370287066 :=
  cost_cut false 1 (by decide)

private def v1381370285530 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v1381370285530 : ¬ MinimalInterpreter v1381370285530 :=
  cost_cut false 1 (by decide)

private def v1381370263002 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1381370263002 : ¬ MinimalInterpreter v1381370263002 :=
  cost_cut false 1 (by decide)

private def v1381376249658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381376249658 : ¬ MinimalInterpreter v1381376249658 :=
  cost_cut false 1 (by decide)

private def v1381376248794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1381376248794 : ¬ MinimalInterpreter v1381376248794 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376243514 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381376243514 : ¬ MinimalInterpreter v1381376243514 :=
  cost_cut false 1 (by decide)

private def v1381376242650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1381376242650 : ¬ MinimalInterpreter v1381376242650 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376241114 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1381376241114 : ¬ MinimalInterpreter v1381376241114 :=
  cost_cut false 1 (by decide)

private def v1381376397114 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381376397114 : ¬ MinimalInterpreter v1381376397114 :=
  cost_cut false 1 (by decide)

private def v1381376396250 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1381376396250 : ¬ MinimalInterpreter v1381376396250 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381374955322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1381374955322 : ¬ MinimalInterpreter v1381374955322 :=
  cost_cut false 1 (by decide)

private def v1381374954458 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1381374954458 : ¬ MinimalInterpreter v1381374954458 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374899162 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0)))))
private theorem no_v1381374899162 : ¬ MinimalInterpreter v1381374899162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1381374897626 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0)))))
private theorem no_v1381374897626 : ¬ MinimalInterpreter v1381374897626 :=
  cost_cut false 1 (by decide)

theorem four329 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,2,1,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,2,1,0] = [v1381370744634,v1381370743770,v1381370738490,v1381370737626,v1381370736090,v1381370384186,v1381370383322,v1381370378042,v1381370287930,v1381370377178,v1381370375642,v1381370287066,v1381370285530,v1381370263002,v1381376249658,v1381376248794,v1381376243514,v1381376242650,v1381376241114,v1381376397114,v1381376396250,v1381374955322,v1381374954458,v1381374899162,v1381374897626] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370744634) (.cons (no_v1381370743770) (.cons (no_v1381370738490) (.cons (no_v1381370737626) (.cons (no_v1381370736090) (.cons (no_v1381370384186) (.cons (no_v1381370383322) (.cons (no_v1381370378042) (.cons (no_v1381370287930) (.cons (no_v1381370377178) (.cons (no_v1381370375642) (.cons (no_v1381370287066) (.cons (no_v1381370285530) (.cons (no_v1381370263002) (.cons (no_v1381376249658) (.cons (no_v1381376248794) (.cons (no_v1381376243514) (.cons (no_v1381376242650) (.cons (no_v1381376241114) (.cons (no_v1381376397114) (.cons (no_v1381376396250) (.cons (no_v1381374955322) (.cons (no_v1381374954458) (.cons (no_v1381374899162) (.cons (no_v1381374897626) .nil)))))))))))))))))))))))))

private def v1381370750574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381370750574 : ¬ MinimalInterpreter v1381370750574 :=
  cost_cut false 1 (by decide)

private def v1381370750382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1381370750382 : ¬ MinimalInterpreter v1381370750382 :=
  cost_cut false 1 (by decide)

private def v1381370739310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381370739310 : ¬ MinimalInterpreter v1381370739310 :=
  cost_cut false 1 (by decide)

private def v1381370739118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1381370739118 : ¬ MinimalInterpreter v1381370739118 :=
  cost_cut false 1 (by decide)

private def v1381370736302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1381370736302 : ¬ MinimalInterpreter v1381370736302 :=
  cost_cut false 1 (by decide)

private def v1381370390126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1381370390126 : ¬ MinimalInterpreter v1381370390126 :=
  cost_cut false 1 (by decide)

private def v1381370389934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1381370389934 : ¬ MinimalInterpreter v1381370389934 :=
  cost_cut false 1 (by decide)

private def v1381370378862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370378862 : ¬ MinimalInterpreter v1381370378862 :=
  cost_cut false 1 (by decide)

private def v1381370288750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370288750 : ¬ MinimalInterpreter v1381370288750 :=
  cost_cut false 1 (by decide)

private def v1381370378670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v1381370378670 : ¬ MinimalInterpreter v1381370378670 :=
  cost_cut false 1 (by decide)

private def v1381370375854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))))))
private theorem no_v1381370375854 : ¬ MinimalInterpreter v1381370375854 :=
  cost_cut false 1 (by decide)

private def v1381370288558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1381370288558 : ¬ MinimalInterpreter v1381370288558 :=
  cost_cut false 1 (by decide)

private def v1381370285742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v1381370285742 : ¬ MinimalInterpreter v1381370285742 :=
  cost_cut false 1 (by decide)

private def v1381370263214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1381370263214 : ¬ MinimalInterpreter v1381370263214 :=
  cost_cut false 1 (by decide)

private def v1381376255598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381376255598 : ¬ MinimalInterpreter v1381376255598 :=
  cost_cut false 1 (by decide)

private def v1381376255406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1381376255406 : ¬ MinimalInterpreter v1381376255406 :=
  cost_cut false 1 (by decide)

private def v1381376244334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381376244334 : ¬ MinimalInterpreter v1381376244334 :=
  cost_cut false 1 (by decide)

private def v1381376244142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1381376244142 : ¬ MinimalInterpreter v1381376244142 :=
  cost_cut false 1 (by decide)

private def v1381376241326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1381376241326 : ¬ MinimalInterpreter v1381376241326 :=
  cost_cut false 1 (by decide)

theorem four330 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,0,0,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,0,0,2] = [v1381370750574,v1381370750382,v1381370739310,v1381370739118,v1381370736302,v1381370390126,v1381370389934,v1381370378862,v1381370288750,v1381370378670,v1381370375854,v1381370288558,v1381370285742,v1381370263214,v1381376255598,v1381376255406,v1381376244334,v1381376244142,v1381376241326] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370750574) (.cons (no_v1381370750382) (.cons (no_v1381370739310) (.cons (no_v1381370739118) (.cons (no_v1381370736302) (.cons (no_v1381370390126) (.cons (no_v1381370389934) (.cons (no_v1381370378862) (.cons (no_v1381370288750) (.cons (no_v1381370378670) (.cons (no_v1381370375854) (.cons (no_v1381370288558) (.cons (no_v1381370285742) (.cons (no_v1381370263214) (.cons (no_v1381376255598) (.cons (no_v1381376255406) (.cons (no_v1381376244334) (.cons (no_v1381376244142) (.cons (no_v1381376241326) .nil)))))))))))))))))))

theorem four331 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,0,1,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370750586 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381370750586 : ¬ MinimalInterpreter v1381370750586 :=
  cost_cut false 1 (by decide)

private def v1381370750394 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1381370750394 : ¬ MinimalInterpreter v1381370750394 :=
  cost_cut false 1 (by decide)

private def v1381370739322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381370739322 : ¬ MinimalInterpreter v1381370739322 :=
  cost_cut false 1 (by decide)

private def v1381370739130 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1381370739130 : ¬ MinimalInterpreter v1381370739130 :=
  cost_cut false 1 (by decide)

private def v1381370736314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1381370736314 : ¬ MinimalInterpreter v1381370736314 :=
  cost_cut false 1 (by decide)

private def v1381370390138 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1381370390138 : ¬ MinimalInterpreter v1381370390138 :=
  cost_cut false 1 (by decide)

private def v1381370389946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1381370389946 : ¬ MinimalInterpreter v1381370389946 :=
  cost_cut false 1 (by decide)

private def v1381370378874 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370378874 : ¬ MinimalInterpreter v1381370378874 :=
  cost_cut false 1 (by decide)

private def v1381370288762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370288762 : ¬ MinimalInterpreter v1381370288762 :=
  cost_cut false 1 (by decide)

private def v1381370378682 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v1381370378682 : ¬ MinimalInterpreter v1381370378682 :=
  cost_cut false 1 (by decide)

private def v1381370375866 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v1381370375866 : ¬ MinimalInterpreter v1381370375866 :=
  cost_cut false 1 (by decide)

private def v1381370288570 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1381370288570 : ¬ MinimalInterpreter v1381370288570 :=
  cost_cut false 1 (by decide)

private def v1381370285754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v1381370285754 : ¬ MinimalInterpreter v1381370285754 :=
  cost_cut false 1 (by decide)

private def v1381370263226 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1381370263226 : ¬ MinimalInterpreter v1381370263226 :=
  cost_cut false 1 (by decide)

private def v1381376255610 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381376255610 : ¬ MinimalInterpreter v1381376255610 :=
  cost_cut false 1 (by decide)

private def v1381376255418 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1381376255418 : ¬ MinimalInterpreter v1381376255418 :=
  cost_cut false 1 (by decide)

private def v1381376244346 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381376244346 : ¬ MinimalInterpreter v1381376244346 :=
  cost_cut false 1 (by decide)

private def v1381376244154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1381376244154 : ¬ MinimalInterpreter v1381376244154 :=
  cost_cut false 1 (by decide)

private def v1381376241338 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1381376241338 : ¬ MinimalInterpreter v1381376241338 :=
  cost_cut false 1 (by decide)

private def v1381374900666 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))))
private theorem no_v1381374900666 : ¬ MinimalInterpreter v1381374900666 :=
  cost_cut false 1 (by decide)

private def v1381374897850 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))))
private theorem no_v1381374897850 : ¬ MinimalInterpreter v1381374897850 :=
  cost_cut false 1 (by decide)

theorem four332 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,0,2,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,0,2,0] = [v1381370750586,v1381370750394,v1381370739322,v1381370739130,v1381370736314,v1381370390138,v1381370389946,v1381370378874,v1381370288762,v1381370378682,v1381370375866,v1381370288570,v1381370285754,v1381370263226,v1381376255610,v1381376255418,v1381376244346,v1381376244154,v1381376241338,v1381374900666,v1381374897850] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370750586) (.cons (no_v1381370750394) (.cons (no_v1381370739322) (.cons (no_v1381370739130) (.cons (no_v1381370736314) (.cons (no_v1381370390138) (.cons (no_v1381370389946) (.cons (no_v1381370378874) (.cons (no_v1381370288762) (.cons (no_v1381370378682) (.cons (no_v1381370375866) (.cons (no_v1381370288570) (.cons (no_v1381370285754) (.cons (no_v1381370263226) (.cons (no_v1381376255610) (.cons (no_v1381376255418) (.cons (no_v1381376244346) (.cons (no_v1381376244154) (.cons (no_v1381376241338) (.cons (no_v1381374900666) (.cons (no_v1381374897850) .nil)))))))))))))))))))))

theorem four333 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,1,0,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four334 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,1,1,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370750874 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381370750874 : ¬ MinimalInterpreter v1381370750874 :=
  cost_cut false 1 (by decide)

private def v1381370750442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1381370750442 : ¬ MinimalInterpreter v1381370750442 :=
  cost_cut false 1 (by decide)

private def v1381370739610 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381370739610 : ¬ MinimalInterpreter v1381370739610 :=
  cost_cut false 1 (by decide)

private def v1381370739178 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1381370739178 : ¬ MinimalInterpreter v1381370739178 :=
  cost_cut false 1 (by decide)

private def v1381370736362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1381370736362 : ¬ MinimalInterpreter v1381370736362 :=
  cost_cut false 1 (by decide)

private def v1381370390426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1381370390426 : ¬ MinimalInterpreter v1381370390426 :=
  cost_cut false 1 (by decide)

private def v1381370389994 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1381370389994 : ¬ MinimalInterpreter v1381370389994 :=
  cost_cut false 1 (by decide)

private def v1381370379162 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1381370379162 : ¬ MinimalInterpreter v1381370379162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370289050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1381370289050 : ¬ MinimalInterpreter v1381370289050 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370378730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v1381370378730 : ¬ MinimalInterpreter v1381370378730 :=
  cost_cut false 1 (by decide)

private def v1381370375914 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v1381370375914 : ¬ MinimalInterpreter v1381370375914 :=
  cost_cut false 1 (by decide)

private def v1381370288618 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1381370288618 : ¬ MinimalInterpreter v1381370288618 :=
  cost_cut false 1 (by decide)

private def v1381370285802 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1381370285802 : ¬ MinimalInterpreter v1381370285802 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370263274 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1381370263274 : ¬ MinimalInterpreter v1381370263274 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381376255898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381376255898 : ¬ MinimalInterpreter v1381376255898 :=
  cost_cut false 1 (by decide)

private def v1381376255466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1381376255466 : ¬ MinimalInterpreter v1381376255466 :=
  cost_cut false 1 (by decide)

private def v1381376244634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381376244634 : ¬ MinimalInterpreter v1381376244634 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376244202 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1381376244202 : ¬ MinimalInterpreter v1381376244202 :=
  cost_cut false 1 (by decide)

private def v1381376241386 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1381376241386 : ¬ MinimalInterpreter v1381376241386 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374900714 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
private theorem no_v1381374900714 : ¬ MinimalInterpreter v1381374900714 :=
  cost_cut false 1 (by decide)

private def v1381374897898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))
private theorem no_v1381374897898 : ¬ MinimalInterpreter v1381374897898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem four335 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,2,0,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,1,2,0,0] = [v1381370750874,v1381370750442,v1381370739610,v1381370739178,v1381370736362,v1381370390426,v1381370389994,v1381370379162,v1381370289050,v1381370378730,v1381370375914,v1381370288618,v1381370285802,v1381370263274,v1381376255898,v1381376255466,v1381376244634,v1381376244202,v1381376241386,v1381374900714,v1381374897898] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370750874) (.cons (no_v1381370750442) (.cons (no_v1381370739610) (.cons (no_v1381370739178) (.cons (no_v1381370736362) (.cons (no_v1381370390426) (.cons (no_v1381370389994) (.cons (no_v1381370379162) (.cons (no_v1381370289050) (.cons (no_v1381370378730) (.cons (no_v1381370375914) (.cons (no_v1381370288618) (.cons (no_v1381370285802) (.cons (no_v1381370263274) (.cons (no_v1381376255898) (.cons (no_v1381376255466) (.cons (no_v1381376244634) (.cons (no_v1381376244202) (.cons (no_v1381376241386) (.cons (no_v1381374900714) (.cons (no_v1381374897898) .nil)))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
