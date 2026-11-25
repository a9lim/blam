import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37850395446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v37850395446 : ¬ MinimalInterpreter v37850395446 :=
  chain_cut false 2 (by decide)

private def v37850395350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v37850395350 : ¬ MinimalInterpreter v37850395350 :=
  chain_cut false 2 (by decide)

private def v37850393910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v37850393910 : ¬ MinimalInterpreter v37850393910 :=
  chain_cut false 2 (by decide)

private def v37850393814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v37850393814 : ¬ MinimalInterpreter v37850393814 :=
  chain_cut false 2 (by decide)

private def v37850393430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v37850393430 : ¬ MinimalInterpreter v37850393430 :=
  chain_cut false 2 (by decide)

private def v37850174262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v37850174262 : ¬ MinimalInterpreter v37850174262 :=
  chain_cut false 2 (by decide)

private def v37850174166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v37850174166 : ¬ MinimalInterpreter v37850174166 :=
  chain_cut false 2 (by decide)

private def v37850172726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v37850172726 : ¬ MinimalInterpreter v37850172726 :=
  chain_cut false 2 (by decide)

private def v37850117430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v37850117430 : ¬ MinimalInterpreter v37850117430 :=
  chain_cut false 2 (by decide)

private def v37850172630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v37850172630 : ¬ MinimalInterpreter v37850172630 :=
  chain_cut false 2 (by decide)

private def v37850172246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v37850172246 : ¬ MinimalInterpreter v37850172246 :=
  chain_cut false 2 (by decide)

private def v37850117334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v37850117334 : ¬ MinimalInterpreter v37850117334 :=
  chain_cut false 2 (by decide)

private def v37850116950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v37850116950 : ¬ MinimalInterpreter v37850116950 :=
  chain_cut false 2 (by decide)

private def v37850103126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v37850103126 : ¬ MinimalInterpreter v37850103126 :=
  chain_cut false 2 (by decide)

theorem row30 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [2,0,0,0,1]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [2,0,0,0,1] = [v37850395446,v37850395350,v37850393910,v37850393814,v37850393430,v37850174262,v37850174166,v37850172726,v37850117430,v37850172630,v37850172246,v37850117334,v37850116950,v37850103126] := by decide
  rw [h]
  exact (.cons (no_v37850395446) (.cons (no_v37850395350) (.cons (no_v37850393910) (.cons (no_v37850393814) (.cons (no_v37850393430) (.cons (no_v37850174262) (.cons (no_v37850174166) (.cons (no_v37850172726) (.cons (no_v37850117430) (.cons (no_v37850172630) (.cons (no_v37850172246) (.cons (no_v37850117334) (.cons (no_v37850116950) (.cons (no_v37850103126) .nil))))))))))))))

private def v37850395450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v37850395450 : ¬ MinimalInterpreter v37850395450 :=
  chain_cut false 2 (by decide)

private def v37850395354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v37850395354 : ¬ MinimalInterpreter v37850395354 :=
  chain_cut false 2 (by decide)

private def v37850393914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v37850393914 : ¬ MinimalInterpreter v37850393914 :=
  chain_cut false 2 (by decide)

private def v37850393818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v37850393818 : ¬ MinimalInterpreter v37850393818 :=
  chain_cut false 2 (by decide)

private def v37850393434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v37850393434 : ¬ MinimalInterpreter v37850393434 :=
  chain_cut false 2 (by decide)

private def v37850174266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v37850174266 : ¬ MinimalInterpreter v37850174266 :=
  chain_cut false 2 (by decide)

private def v37850174170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v37850174170 : ¬ MinimalInterpreter v37850174170 :=
  chain_cut false 2 (by decide)

private def v37850172730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v37850172730 : ¬ MinimalInterpreter v37850172730 :=
  chain_cut false 2 (by decide)

private def v37850117434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v37850117434 : ¬ MinimalInterpreter v37850117434 :=
  chain_cut false 2 (by decide)

private def v37850172634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v37850172634 : ¬ MinimalInterpreter v37850172634 :=
  chain_cut false 2 (by decide)

private def v37850172250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v37850172250 : ¬ MinimalInterpreter v37850172250 :=
  chain_cut false 2 (by decide)

private def v37850117338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v37850117338 : ¬ MinimalInterpreter v37850117338 :=
  chain_cut false 2 (by decide)

private def v37850116954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v37850116954 : ¬ MinimalInterpreter v37850116954 :=
  chain_cut false 2 (by decide)

private def v37850103130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v37850103130 : ¬ MinimalInterpreter v37850103130 :=
  chain_cut false 2 (by decide)

theorem row31 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [2,0,0,1,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [2,0,0,1,0] = [v37850395450,v37850395354,v37850393914,v37850393818,v37850393434,v37850174266,v37850174170,v37850172730,v37850117434,v37850172634,v37850172250,v37850117338,v37850116954,v37850103130] := by decide
  rw [h]
  exact (.cons (no_v37850395450) (.cons (no_v37850395354) (.cons (no_v37850393914) (.cons (no_v37850393818) (.cons (no_v37850393434) (.cons (no_v37850174266) (.cons (no_v37850174170) (.cons (no_v37850172730) (.cons (no_v37850117434) (.cons (no_v37850172634) (.cons (no_v37850172250) (.cons (no_v37850117338) (.cons (no_v37850116954) (.cons (no_v37850103130) .nil))))))))))))))

private def v37850395546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v37850395546 : ¬ MinimalInterpreter v37850395546 :=
  chain_cut false 2 (by decide)

private def v37850395370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v37850395370 : ¬ MinimalInterpreter v37850395370 :=
  chain_cut false 2 (by decide)

private def v37850394010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v37850394010 : ¬ MinimalInterpreter v37850394010 :=
  chain_cut false 2 (by decide)

private def v37850393834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v37850393834 : ¬ MinimalInterpreter v37850393834 :=
  chain_cut false 2 (by decide)

private def v37850393450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v37850393450 : ¬ MinimalInterpreter v37850393450 :=
  chain_cut false 2 (by decide)

private def v37850174362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v37850174362 : ¬ MinimalInterpreter v37850174362 :=
  chain_cut false 2 (by decide)

private def v37850174186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v37850174186 : ¬ MinimalInterpreter v37850174186 :=
  chain_cut false 2 (by decide)

private def v37850172826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v37850172826 : ¬ MinimalInterpreter v37850172826 :=
  chain_cut false 2 (by decide)

private def v37850117530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v37850117530 : ¬ MinimalInterpreter v37850117530 :=
  chain_cut false 2 (by decide)

private def v37850172650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v37850172650 : ¬ MinimalInterpreter v37850172650 :=
  chain_cut false 2 (by decide)

private def v37850172266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v37850172266 : ¬ MinimalInterpreter v37850172266 :=
  chain_cut false 2 (by decide)

private def v37850117354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v37850117354 : ¬ MinimalInterpreter v37850117354 :=
  chain_cut false 2 (by decide)

private def v37850116970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v37850116970 : ¬ MinimalInterpreter v37850116970 :=
  chain_cut false 2 (by decide)

private def v37850103146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v37850103146 : ¬ MinimalInterpreter v37850103146 :=
  chain_cut false 2 (by decide)

theorem row32 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [2,0,1,0,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [2,0,1,0,0] = [v37850395546,v37850395370,v37850394010,v37850393834,v37850393450,v37850174362,v37850174186,v37850172826,v37850117530,v37850172650,v37850172266,v37850117354,v37850116970,v37850103146] := by decide
  rw [h]
  exact (.cons (no_v37850395546) (.cons (no_v37850395370) (.cons (no_v37850394010) (.cons (no_v37850393834) (.cons (no_v37850393450) (.cons (no_v37850174362) (.cons (no_v37850174186) (.cons (no_v37850172826) (.cons (no_v37850117530) (.cons (no_v37850172650) (.cons (no_v37850172266) (.cons (no_v37850117354) (.cons (no_v37850116970) (.cons (no_v37850103146) .nil))))))))))))))

private def v37850397082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v37850397082 : ¬ MinimalInterpreter v37850397082 :=
  chain_cut false 2 (by decide)

private def v37850397034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v37850397034 : ¬ MinimalInterpreter v37850397034 :=
  chain_cut false 2 (by decide)

private def v37850394266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v37850394266 : ¬ MinimalInterpreter v37850394266 :=
  chain_cut false 2 (by decide)

private def v37850394218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v37850394218 : ¬ MinimalInterpreter v37850394218 :=
  chain_cut false 2 (by decide)

private def v37850393514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v37850393514 : ¬ MinimalInterpreter v37850393514 :=
  chain_cut false 2 (by decide)

private def v37850175898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v37850175898 : ¬ MinimalInterpreter v37850175898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850175850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v37850175850 : ¬ MinimalInterpreter v37850175850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850173082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v37850173082 : ¬ MinimalInterpreter v37850173082 :=
  chain_cut false 2 (by decide)

private def v37850117786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v37850117786 : ¬ MinimalInterpreter v37850117786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850173034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v37850173034 : ¬ MinimalInterpreter v37850173034 :=
  chain_cut false 2 (by decide)

private def v37850172330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))))))
private theorem no_v37850172330 : ¬ MinimalInterpreter v37850172330 :=
  chain_cut false 2 (by decide)

private def v37850117738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v37850117738 : ¬ MinimalInterpreter v37850117738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850117034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v37850117034 : ¬ MinimalInterpreter v37850117034 :=
  chain_cut false 2 (by decide)

private def v37850103210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v37850103210 : ¬ MinimalInterpreter v37850103210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row33 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [2,1,0,0,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [2,1,0,0,0] = [v37850397082,v37850397034,v37850394266,v37850394218,v37850393514,v37850175898,v37850175850,v37850173082,v37850117786,v37850173034,v37850172330,v37850117738,v37850117034,v37850103210] := by decide
  rw [h]
  exact (.cons (no_v37850397082) (.cons (no_v37850397034) (.cons (no_v37850394266) (.cons (no_v37850394218) (.cons (no_v37850393514) (.cons (no_v37850175898) (.cons (no_v37850175850) (.cons (no_v37850173082) (.cons (no_v37850117786) (.cons (no_v37850173034) (.cons (no_v37850172330) (.cons (no_v37850117738) (.cons (no_v37850117034) (.cons (no_v37850103210) .nil))))))))))))))

private def v37799120110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37799120110 : ¬ MinimalInterpreter v37799120110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37799119726 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37799119726 : ¬ MinimalInterpreter v37799119726 :=
  chain_cut true 3 (by decide)

private def v37799113966 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v37799113966 : ¬ MinimalInterpreter v37799113966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37799113582 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v37799113582 : ¬ MinimalInterpreter v37799113582 :=
  chain_cut true 3 (by decide)

private def v37799112046 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v37799112046 : ¬ MinimalInterpreter v37799112046 :=
  chain_cut true 3 (by decide)

private def v37799267566 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37799267566 : ¬ MinimalInterpreter v37799267566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37799267182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37799267182 : ¬ MinimalInterpreter v37799267182 :=
  chain_cut true 3 (by decide)

private def v37799857390 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37799857390 : ¬ MinimalInterpreter v37799857390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37799857006 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37799857006 : ¬ MinimalInterpreter v37799857006 :=
  TwoPending.excluded .single .zyx .n .n (.j (.ap .n .n)) 2 (by decide)

private def v37396466926 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37396466926 : ¬ MinimalInterpreter v37396466926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396466542 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37396466542 : ¬ MinimalInterpreter v37396466542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37396460782 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v37396460782 : ¬ MinimalInterpreter v37396460782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396460398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v37396460398 : ¬ MinimalInterpreter v37396460398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37396458862 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v37396458862 : ¬ MinimalInterpreter v37396458862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37396614382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37396614382 : ¬ MinimalInterpreter v37396614382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37396613998 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37396613998 : ¬ MinimalInterpreter v37396613998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37397204206 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37397204206 : ¬ MinimalInterpreter v37397204206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37397203822 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37397203822 : ¬ MinimalInterpreter v37397203822 :=
  TwoPending.excluded .single .zyx .n .n .n 1 (by decide)

theorem row34 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [0,0,1,2]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [0,0,1,2] = [v37799120110,v37799119726,v37799113966,v37799113582,v37799112046,v37799267566,v37799267182,v37799857390,v37799857006,v37396466926,v37396466542,v37396460782,v37396460398,v37396458862,v37396614382,v37396613998,v37397204206,v37397203822] := by decide
  rw [h]
  exact (.cons (no_v37799120110) (.cons (no_v37799119726) (.cons (no_v37799113966) (.cons (no_v37799113582) (.cons (no_v37799112046) (.cons (no_v37799267566) (.cons (no_v37799267182) (.cons (no_v37799857390) (.cons (no_v37799857006) (.cons (no_v37396466926) (.cons (no_v37396466542) (.cons (no_v37396460782) (.cons (no_v37396460398) (.cons (no_v37396458862) (.cons (no_v37396614382) (.cons (no_v37396613998) (.cons (no_v37397204206) (.cons (no_v37397203822) .nil))))))))))))))))))

private def v37799120118 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37799120118 : ¬ MinimalInterpreter v37799120118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37799119734 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37799119734 : ¬ MinimalInterpreter v37799119734 :=
  chain_cut true 3 (by decide)

private def v37799113974 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v37799113974 : ¬ MinimalInterpreter v37799113974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37799113590 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v37799113590 : ¬ MinimalInterpreter v37799113590 :=
  chain_cut true 3 (by decide)

private def v37799112054 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v37799112054 : ¬ MinimalInterpreter v37799112054 :=
  chain_cut true 3 (by decide)

private def v37799267574 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37799267574 : ¬ MinimalInterpreter v37799267574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37799267190 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37799267190 : ¬ MinimalInterpreter v37799267190 :=
  chain_cut true 3 (by decide)

private def v37799857398 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37799857398 : ¬ MinimalInterpreter v37799857398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37799857014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37799857014 : ¬ MinimalInterpreter v37799857014 :=
  id_cycle_cut 14 18 (by decide) (by decide)

private def v37396466934 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37396466934 : ¬ MinimalInterpreter v37396466934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396466550 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37396466550 : ¬ MinimalInterpreter v37396466550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37396460790 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v37396460790 : ¬ MinimalInterpreter v37396460790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396460406 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v37396460406 : ¬ MinimalInterpreter v37396460406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37396458870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v37396458870 : ¬ MinimalInterpreter v37396458870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37396614390 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37396614390 : ¬ MinimalInterpreter v37396614390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37396614006 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37396614006 : ¬ MinimalInterpreter v37396614006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37397204214 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37397204214 : ¬ MinimalInterpreter v37397204214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37397203830 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37397203830 : ¬ MinimalInterpreter v37397203830 :=
  id_cycle_cut 2 18 (by decide) (by decide)

theorem row35 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [0,0,2,1]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [0,0,2,1] = [v37799120118,v37799119734,v37799113974,v37799113590,v37799112054,v37799267574,v37799267190,v37799857398,v37799857014,v37396466934,v37396466550,v37396460790,v37396460406,v37396458870,v37396614390,v37396614006,v37397204214,v37397203830] := by decide
  rw [h]
  exact (.cons (no_v37799120118) (.cons (no_v37799119734) (.cons (no_v37799113974) (.cons (no_v37799113590) (.cons (no_v37799112054) (.cons (no_v37799267574) (.cons (no_v37799267190) (.cons (no_v37799857398) (.cons (no_v37799857014) (.cons (no_v37396466934) (.cons (no_v37396466550) (.cons (no_v37396460790) (.cons (no_v37396460406) (.cons (no_v37396458870) (.cons (no_v37396614390) (.cons (no_v37396614006) (.cons (no_v37397204214) (.cons (no_v37397203830) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows37
