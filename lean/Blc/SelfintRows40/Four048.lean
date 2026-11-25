import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370753846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381370753846 : ¬ MinimalInterpreter v1381370753846 :=
  cost_cut false 1 (by decide)

private def v1381370753750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1381370753750 : ¬ MinimalInterpreter v1381370753750 :=
  cost_cut false 1 (by decide)

private def v1381370740022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370740022 : ¬ MinimalInterpreter v1381370740022 :=
  cost_cut false 1 (by decide)

private def v1381370739926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1381370739926 : ¬ MinimalInterpreter v1381370739926 :=
  cost_cut false 1 (by decide)

private def v1381370736470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1381370736470 : ¬ MinimalInterpreter v1381370736470 :=
  cost_cut false 1 (by decide)

private def v1381370393398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370393398 : ¬ MinimalInterpreter v1381370393398 :=
  cost_cut false 1 (by decide)

private def v1381370393302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1381370393302 : ¬ MinimalInterpreter v1381370393302 :=
  cost_cut false 1 (by decide)

private def v1381370379574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370379574 : ¬ MinimalInterpreter v1381370379574 :=
  cost_cut false 1 (by decide)

private def v1381370289462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370289462 : ¬ MinimalInterpreter v1381370289462 :=
  cost_cut false 1 (by decide)

private def v1381370379478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v1381370379478 : ¬ MinimalInterpreter v1381370379478 :=
  cost_cut false 1 (by decide)

private def v1381370376022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v1381370376022 : ¬ MinimalInterpreter v1381370376022 :=
  cost_cut false 1 (by decide)

private def v1381370289366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1381370289366 : ¬ MinimalInterpreter v1381370289366 :=
  cost_cut false 1 (by decide)

private def v1381370285910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v1381370285910 : ¬ MinimalInterpreter v1381370285910 :=
  cost_cut false 1 (by decide)

private def v1381370263382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1381370263382 : ¬ MinimalInterpreter v1381370263382 :=
  cost_cut false 1 (by decide)

private def v1381376258870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381376258870 : ¬ MinimalInterpreter v1381376258870 :=
  cost_cut false 1 (by decide)

private def v1381376258774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1381376258774 : ¬ MinimalInterpreter v1381376258774 :=
  cost_cut false 1 (by decide)

private def v1381376245046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381376245046 : ¬ MinimalInterpreter v1381376245046 :=
  cost_cut false 1 (by decide)

private def v1381376244950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1381376244950 : ¬ MinimalInterpreter v1381376244950 :=
  cost_cut false 1 (by decide)

private def v1381376241494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1381376241494 : ¬ MinimalInterpreter v1381376241494 :=
  cost_cut false 1 (by decide)

theorem four336 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,2,0,0,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,2,0,0,1] = [v1381370753846,v1381370753750,v1381370740022,v1381370739926,v1381370736470,v1381370393398,v1381370393302,v1381370379574,v1381370289462,v1381370379478,v1381370376022,v1381370289366,v1381370285910,v1381370263382,v1381376258870,v1381376258774,v1381376245046,v1381376244950,v1381376241494] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370753846) (.cons (no_v1381370753750) (.cons (no_v1381370740022) (.cons (no_v1381370739926) (.cons (no_v1381370736470) (.cons (no_v1381370393398) (.cons (no_v1381370393302) (.cons (no_v1381370379574) (.cons (no_v1381370289462) (.cons (no_v1381370379478) (.cons (no_v1381370376022) (.cons (no_v1381370289366) (.cons (no_v1381370285910) (.cons (no_v1381370263382) (.cons (no_v1381376258870) (.cons (no_v1381376258774) (.cons (no_v1381376245046) (.cons (no_v1381376244950) (.cons (no_v1381376241494) .nil)))))))))))))))))))

private def v1381370753850 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381370753850 : ¬ MinimalInterpreter v1381370753850 :=
  cost_cut false 1 (by decide)

private def v1381370753754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1381370753754 : ¬ MinimalInterpreter v1381370753754 :=
  cost_cut false 1 (by decide)

private def v1381370740026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370740026 : ¬ MinimalInterpreter v1381370740026 :=
  cost_cut false 1 (by decide)

private def v1381370739930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1381370739930 : ¬ MinimalInterpreter v1381370739930 :=
  cost_cut false 1 (by decide)

private def v1381370736474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1381370736474 : ¬ MinimalInterpreter v1381370736474 :=
  cost_cut false 1 (by decide)

private def v1381370393402 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370393402 : ¬ MinimalInterpreter v1381370393402 :=
  cost_cut false 1 (by decide)

private def v1381370393306 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1381370393306 : ¬ MinimalInterpreter v1381370393306 :=
  cost_cut false 1 (by decide)

private def v1381370379578 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370379578 : ¬ MinimalInterpreter v1381370379578 :=
  cost_cut false 1 (by decide)

private def v1381370289466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370289466 : ¬ MinimalInterpreter v1381370289466 :=
  cost_cut false 1 (by decide)

private def v1381370379482 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v1381370379482 : ¬ MinimalInterpreter v1381370379482 :=
  cost_cut false 1 (by decide)

private def v1381370376026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v1381370376026 : ¬ MinimalInterpreter v1381370376026 :=
  cost_cut false 1 (by decide)

private def v1381370289370 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1381370289370 : ¬ MinimalInterpreter v1381370289370 :=
  cost_cut false 1 (by decide)

private def v1381370285914 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v1381370285914 : ¬ MinimalInterpreter v1381370285914 :=
  cost_cut false 1 (by decide)

private def v1381370263386 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1381370263386 : ¬ MinimalInterpreter v1381370263386 :=
  cost_cut false 1 (by decide)

private def v1381376258874 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381376258874 : ¬ MinimalInterpreter v1381376258874 :=
  cost_cut false 1 (by decide)

private def v1381376258778 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1381376258778 : ¬ MinimalInterpreter v1381376258778 :=
  cost_cut false 1 (by decide)

private def v1381376245050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381376245050 : ¬ MinimalInterpreter v1381376245050 :=
  cost_cut false 1 (by decide)

private def v1381376244954 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1381376244954 : ¬ MinimalInterpreter v1381376244954 :=
  cost_cut false 1 (by decide)

private def v1381376241498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1381376241498 : ¬ MinimalInterpreter v1381376241498 :=
  cost_cut false 1 (by decide)

private def v1381374901466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))))
private theorem no_v1381374901466 : ¬ MinimalInterpreter v1381374901466 :=
  cost_cut false 1 (by decide)

private def v1381374898010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0)))))
private theorem no_v1381374898010 : ¬ MinimalInterpreter v1381374898010 :=
  cost_cut false 1 (by decide)

theorem four337 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,2,0,1,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,2,0,1,0] = [v1381370753850,v1381370753754,v1381370740026,v1381370739930,v1381370736474,v1381370393402,v1381370393306,v1381370379578,v1381370289466,v1381370379482,v1381370376026,v1381370289370,v1381370285914,v1381370263386,v1381376258874,v1381376258778,v1381376245050,v1381376244954,v1381376241498,v1381374901466,v1381374898010] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370753850) (.cons (no_v1381370753754) (.cons (no_v1381370740026) (.cons (no_v1381370739930) (.cons (no_v1381370736474) (.cons (no_v1381370393402) (.cons (no_v1381370393306) (.cons (no_v1381370379578) (.cons (no_v1381370289466) (.cons (no_v1381370379482) (.cons (no_v1381370376026) (.cons (no_v1381370289370) (.cons (no_v1381370285914) (.cons (no_v1381370263386) (.cons (no_v1381376258874) (.cons (no_v1381376258778) (.cons (no_v1381376245050) (.cons (no_v1381376244954) (.cons (no_v1381376241498) (.cons (no_v1381374901466) (.cons (no_v1381374898010) .nil)))))))))))))))))))))

private def v1381370753946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381370753946 : ¬ MinimalInterpreter v1381370753946 :=
  cost_cut false 1 (by decide)

private def v1381370753770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1381370753770 : ¬ MinimalInterpreter v1381370753770 :=
  cost_cut false 1 (by decide)

private def v1381370740122 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381370740122 : ¬ MinimalInterpreter v1381370740122 :=
  cost_cut false 1 (by decide)

private def v1381370739946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1381370739946 : ¬ MinimalInterpreter v1381370739946 :=
  cost_cut false 1 (by decide)

private def v1381370736490 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1381370736490 : ¬ MinimalInterpreter v1381370736490 :=
  cost_cut false 1 (by decide)

private def v1381370393498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1381370393498 : ¬ MinimalInterpreter v1381370393498 :=
  cost_cut false 1 (by decide)

private def v1381370393322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1381370393322 : ¬ MinimalInterpreter v1381370393322 :=
  cost_cut false 1 (by decide)

private def v1381370379674 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v1381370379674 : ¬ MinimalInterpreter v1381370379674 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370289562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1381370289562 : ¬ MinimalInterpreter v1381370289562 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370379498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v1381370379498 : ¬ MinimalInterpreter v1381370379498 :=
  cost_cut false 1 (by decide)

private def v1381370376042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v1381370376042 : ¬ MinimalInterpreter v1381370376042 :=
  cost_cut false 1 (by decide)

private def v1381370289386 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1381370289386 : ¬ MinimalInterpreter v1381370289386 :=
  cost_cut false 1 (by decide)

private def v1381370285930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v1381370285930 : ¬ MinimalInterpreter v1381370285930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370263402 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1381370263402 : ¬ MinimalInterpreter v1381370263402 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381376258970 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381376258970 : ¬ MinimalInterpreter v1381376258970 :=
  cost_cut false 1 (by decide)

private def v1381376258794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1381376258794 : ¬ MinimalInterpreter v1381376258794 :=
  cost_cut false 1 (by decide)

private def v1381376245146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381376245146 : ¬ MinimalInterpreter v1381376245146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376244970 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1381376244970 : ¬ MinimalInterpreter v1381376244970 :=
  cost_cut false 1 (by decide)

private def v1381376241514 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1381376241514 : ¬ MinimalInterpreter v1381376241514 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374901482 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))))
private theorem no_v1381374901482 : ¬ MinimalInterpreter v1381374901482 :=
  cost_cut false 1 (by decide)

private def v1381374898026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0)))))
private theorem no_v1381374898026 : ¬ MinimalInterpreter v1381374898026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem four338 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,2,1,0,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,2,1,0,0] = [v1381370753946,v1381370753770,v1381370740122,v1381370739946,v1381370736490,v1381370393498,v1381370393322,v1381370379674,v1381370289562,v1381370379498,v1381370376042,v1381370289386,v1381370285930,v1381370263402,v1381376258970,v1381376258794,v1381376245146,v1381376244970,v1381376241514,v1381374901482,v1381374898026] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370753946) (.cons (no_v1381370753770) (.cons (no_v1381370740122) (.cons (no_v1381370739946) (.cons (no_v1381370736490) (.cons (no_v1381370393498) (.cons (no_v1381370393322) (.cons (no_v1381370379674) (.cons (no_v1381370289562) (.cons (no_v1381370379498) (.cons (no_v1381370376042) (.cons (no_v1381370289386) (.cons (no_v1381370285930) (.cons (no_v1381370263402) (.cons (no_v1381376258970) (.cons (no_v1381376258794) (.cons (no_v1381376245146) (.cons (no_v1381376244970) (.cons (no_v1381376241514) (.cons (no_v1381374901482) (.cons (no_v1381374898026) .nil)))))))))))))))))))))

theorem four339 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,0,0,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370848886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381370848886 : ¬ MinimalInterpreter v1381370848886 :=
  cost_cut false 1 (by decide)

private def v1381370848694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1381370848694 : ¬ MinimalInterpreter v1381370848694 :=
  cost_cut false 1 (by decide)

private def v1381370845814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1381370845814 : ¬ MinimalInterpreter v1381370845814 :=
  cost_cut false 1 (by decide)

private def v1381370845622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1381370845622 : ¬ MinimalInterpreter v1381370845622 :=
  cost_cut false 1 (by decide)

private def v1381370844854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1381370844854 : ¬ MinimalInterpreter v1381370844854 :=
  cost_cut false 1 (by decide)

private def v1381370406518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1381370406518 : ¬ MinimalInterpreter v1381370406518 :=
  cost_cut false 1 (by decide)

private def v1381370406326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1381370406326 : ¬ MinimalInterpreter v1381370406326 :=
  cost_cut false 1 (by decide)

private def v1381370403446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v1381370403446 : ¬ MinimalInterpreter v1381370403446 :=
  cost_cut false 1 (by decide)

private def v1381370292854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1381370292854 : ¬ MinimalInterpreter v1381370292854 :=
  cost_cut false 1 (by decide)

private def v1381370403254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v1381370403254 : ¬ MinimalInterpreter v1381370403254 :=
  cost_cut false 1 (by decide)

private def v1381370402486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1))))))
private theorem no_v1381370402486 : ¬ MinimalInterpreter v1381370402486 :=
  cost_cut false 1 (by decide)

private def v1381370292662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1381370292662 : ¬ MinimalInterpreter v1381370292662 :=
  cost_cut false 1 (by decide)

private def v1381370291894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v1381370291894 : ¬ MinimalInterpreter v1381370291894 :=
  cost_cut false 1 (by decide)

private def v1381370264246 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1381370264246 : ¬ MinimalInterpreter v1381370264246 :=
  cost_cut false 1 (by decide)

theorem four340 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,0,1,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,0,1,1] = [v1381370848886,v1381370848694,v1381370845814,v1381370845622,v1381370844854,v1381370406518,v1381370406326,v1381370403446,v1381370292854,v1381370403254,v1381370402486,v1381370292662,v1381370291894,v1381370264246] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370848886) (.cons (no_v1381370848694) (.cons (no_v1381370845814) (.cons (no_v1381370845622) (.cons (no_v1381370844854) (.cons (no_v1381370406518) (.cons (no_v1381370406326) (.cons (no_v1381370403446) (.cons (no_v1381370292854) (.cons (no_v1381370403254) (.cons (no_v1381370402486) (.cons (no_v1381370292662) (.cons (no_v1381370291894) (.cons (no_v1381370264246) .nil))))))))))))))

theorem four341 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,0,2,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370849078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381370849078 : ¬ MinimalInterpreter v1381370849078 :=
  cost_cut false 1 (by decide)

private def v1381370848726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1381370848726 : ¬ MinimalInterpreter v1381370848726 :=
  cost_cut false 1 (by decide)

private def v1381370846006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370846006 : ¬ MinimalInterpreter v1381370846006 :=
  cost_cut false 1 (by decide)

private def v1381370845654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1381370845654 : ¬ MinimalInterpreter v1381370845654 :=
  cost_cut false 1 (by decide)

private def v1381370844886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1381370844886 : ¬ MinimalInterpreter v1381370844886 :=
  cost_cut false 1 (by decide)

private def v1381370406710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370406710 : ¬ MinimalInterpreter v1381370406710 :=
  cost_cut false 1 (by decide)

private def v1381370406358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1381370406358 : ¬ MinimalInterpreter v1381370406358 :=
  cost_cut false 1 (by decide)

private def v1381370403638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370403638 : ¬ MinimalInterpreter v1381370403638 :=
  cost_cut false 1 (by decide)

private def v1381370293046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370293046 : ¬ MinimalInterpreter v1381370293046 :=
  cost_cut false 1 (by decide)

private def v1381370403286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v1381370403286 : ¬ MinimalInterpreter v1381370403286 :=
  cost_cut false 1 (by decide)

private def v1381370402518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 1))))))
private theorem no_v1381370402518 : ¬ MinimalInterpreter v1381370402518 :=
  cost_cut false 1 (by decide)

private def v1381370292694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1381370292694 : ¬ MinimalInterpreter v1381370292694 :=
  cost_cut false 1 (by decide)

private def v1381370291926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1381370291926 : ¬ MinimalInterpreter v1381370291926 :=
  cost_cut false 1 (by decide)

private def v1381370264278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1381370264278 : ¬ MinimalInterpreter v1381370264278 :=
  cost_cut false 1 (by decide)

theorem four342 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,1,0,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,1,0,1] = [v1381370849078,v1381370848726,v1381370846006,v1381370845654,v1381370844886,v1381370406710,v1381370406358,v1381370403638,v1381370293046,v1381370403286,v1381370402518,v1381370292694,v1381370291926,v1381370264278] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370849078) (.cons (no_v1381370848726) (.cons (no_v1381370846006) (.cons (no_v1381370845654) (.cons (no_v1381370844886) (.cons (no_v1381370406710) (.cons (no_v1381370406358) (.cons (no_v1381370403638) (.cons (no_v1381370293046) (.cons (no_v1381370403286) (.cons (no_v1381370402518) (.cons (no_v1381370292694) (.cons (no_v1381370291926) (.cons (no_v1381370264278) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
