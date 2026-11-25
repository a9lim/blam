import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700482440414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v700482440414 : ¬ MinimalInterpreter v700482440414 :=
  chain_cut false 2 (by decide)
private def v700482440030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v700482440030 : ¬ MinimalInterpreter v700482440030 :=
  chain_cut false 2 (by decide)
private def v700482417886 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v700482417886 : ¬ MinimalInterpreter v700482417886 :=
  chain_cut false 2 (by decide)
private def v700482417502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v700482417502 : ¬ MinimalInterpreter v700482417502 :=
  chain_cut false 2 (by decide)
private def v700482411870 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v700482411870 : ¬ MinimalInterpreter v700482411870 :=
  chain_cut false 2 (by decide)
private def v700482794270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v700482794270 : ¬ MinimalInterpreter v700482794270 :=
  chain_cut false 2 (by decide)
private def v700482792734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v700482792734 : ¬ MinimalInterpreter v700482792734 :=
  chain_cut false 2 (by decide)
private def v700482704158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v700482704158 : ¬ MinimalInterpreter v700482704158 :=
  chain_cut false 2 (by decide)
private def v700482702622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v700482702622 : ¬ MinimalInterpreter v700482702622 :=
  chain_cut false 2 (by decide)
private def v700482680094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v700482680094 : ¬ MinimalInterpreter v700482680094 :=
  chain_cut false 2 (by decide)
theorem row372 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,0,3]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,0,3] = [v700482440414,v700482440030,v700482417886,v700482417502,v700482411870,v700482794270,v700482792734,v700482704158,v700482702622,v700482680094] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482440414) (.cons (no_v700482440030) (.cons (no_v700482417886) (.cons (no_v700482417502) (.cons (no_v700482411870) (.cons (no_v700482794270) (.cons (no_v700482792734) (.cons (no_v700482704158) (.cons (no_v700482702622) (.cons (no_v700482680094) .nil))))))))))

private def v700482440430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v700482440430 : ¬ MinimalInterpreter v700482440430 :=
  cost_cut false 2 (by decide)
private def v700482440046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v700482440046 : ¬ MinimalInterpreter v700482440046 :=
  cost_cut false 2 (by decide)
private def v700482417902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v700482417902 : ¬ MinimalInterpreter v700482417902 :=
  cost_cut false 2 (by decide)
private def v700482417518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v700482417518 : ¬ MinimalInterpreter v700482417518 :=
  cost_cut false 2 (by decide)
private def v700482411886 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v700482411886 : ¬ MinimalInterpreter v700482411886 :=
  cost_cut false 2 (by decide)
private def v700482784494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v700482784494 : ¬ MinimalInterpreter v700482784494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v700482784110 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v700482784110 : ¬ MinimalInterpreter v700482784110 :=
  cost_cut false 2 (by decide)
private def v700482792558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v700482792558 : ¬ MinimalInterpreter v700482792558 :=
  chain_cut false 2 (by decide)
private def v700482702446 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v700482702446 : ¬ MinimalInterpreter v700482702446 :=
  chain_cut false 2 (by decide)
private def v700482679918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v700482679918 : ¬ MinimalInterpreter v700482679918 :=
  chain_cut false 2 (by decide)
theorem row373 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,1,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,1,2] = [v700482440430,v700482440046,v700482417902,v700482417518,v700482411886,v700482784494,v700482784110,v700482792558,v700482702446,v700482679918] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482440430) (.cons (no_v700482440046) (.cons (no_v700482417902) (.cons (no_v700482417518) (.cons (no_v700482411886) (.cons (no_v700482784494) (.cons (no_v700482784110) (.cons (no_v700482792558) (.cons (no_v700482702446) (.cons (no_v700482679918) .nil))))))))))

private def v700482440438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v700482440438 : ¬ MinimalInterpreter v700482440438 :=
  cost_cut false 2 (by decide)
private def v700482440054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v700482440054 : ¬ MinimalInterpreter v700482440054 :=
  cost_cut false 2 (by decide)
private def v700482417910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v700482417910 : ¬ MinimalInterpreter v700482417910 :=
  cost_cut false 2 (by decide)
private def v700482417526 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v700482417526 : ¬ MinimalInterpreter v700482417526 :=
  cost_cut false 2 (by decide)
private def v700482411894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v700482411894 : ¬ MinimalInterpreter v700482411894 :=
  cost_cut false 2 (by decide)
private def v700482784502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v700482784502 : ¬ MinimalInterpreter v700482784502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v700482784118 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v700482784118 : ¬ MinimalInterpreter v700482784118 :=
  cost_cut false 2 (by decide)
private def v700482794438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v700482794438 : ¬ MinimalInterpreter v700482794438 :=
  chain_cut false 2 (by decide)
private def v700482792902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v700482792902 : ¬ MinimalInterpreter v700482792902 :=
  chain_cut false 2 (by decide)
private def v700482704326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v700482704326 : ¬ MinimalInterpreter v700482704326 :=
  chain_cut false 2 (by decide)
private def v700482702790 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v700482702790 : ¬ MinimalInterpreter v700482702790 :=
  chain_cut false 2 (by decide)
private def v700482680262 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v700482680262 : ¬ MinimalInterpreter v700482680262 :=
  chain_cut false 2 (by decide)
theorem row374 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,2,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,2,1] = [v700482440438,v700482440054,v700482417910,v700482417526,v700482411894,v700482784502,v700482784118,v700482794438,v700482792902,v700482704326,v700482702790,v700482680262] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482440438) (.cons (no_v700482440054) (.cons (no_v700482417910) (.cons (no_v700482417526) (.cons (no_v700482411894) (.cons (no_v700482784502) (.cons (no_v700482784118) (.cons (no_v700482794438) (.cons (no_v700482792902) (.cons (no_v700482704326) (.cons (no_v700482702790) (.cons (no_v700482680262) .nil))))))))))))

private def v700482440442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v700482440442 : ¬ MinimalInterpreter v700482440442 :=
  chain_cut false 2 (by decide)
private def v700482440058 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v700482440058 : ¬ MinimalInterpreter v700482440058 :=
  chain_cut false 2 (by decide)
private def v700482417914 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v700482417914 : ¬ MinimalInterpreter v700482417914 :=
  chain_cut false 2 (by decide)
private def v700482417530 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v700482417530 : ¬ MinimalInterpreter v700482417530 :=
  chain_cut false 2 (by decide)
private def v700482411898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v700482411898 : ¬ MinimalInterpreter v700482411898 :=
  chain_cut false 2 (by decide)
private def v700482792570 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v700482792570 : ¬ MinimalInterpreter v700482792570 :=
  chain_cut false 2 (by decide)
private def v700482702458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v700482702458 : ¬ MinimalInterpreter v700482702458 :=
  chain_cut false 2 (by decide)
private def v700482679930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v700482679930 : ¬ MinimalInterpreter v700482679930 :=
  chain_cut false 2 (by decide)
theorem row375 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,3,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,0,3,0] = [v700482440442,v700482440058,v700482417914,v700482417530,v700482411898,v700482792570,v700482702458,v700482679930] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482440442) (.cons (no_v700482440058) (.cons (no_v700482417914) (.cons (no_v700482417530) (.cons (no_v700482411898) (.cons (no_v700482792570) (.cons (no_v700482702458) (.cons (no_v700482679930) .nil))))))))

private def v700482440814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v700482440814 : ¬ MinimalInterpreter v700482440814 :=
  cost_cut false 2 (by decide)
private def v700482440110 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v700482440110 : ¬ MinimalInterpreter v700482440110 :=
  cost_cut false 2 (by decide)
private def v700482418286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v700482418286 : ¬ MinimalInterpreter v700482418286 :=
  cost_cut false 2 (by decide)
private def v700482417582 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v700482417582 : ¬ MinimalInterpreter v700482417582 :=
  cost_cut false 2 (by decide)
private def v700482411950 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v700482411950 : ¬ MinimalInterpreter v700482411950 :=
  cost_cut false 2 (by decide)
private def v700482784878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v700482784878 : ¬ MinimalInterpreter v700482784878 :=
  cost_cut false 2 (by decide)
private def v700482784174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v700482784174 : ¬ MinimalInterpreter v700482784174 :=
  cost_cut false 2 (by decide)
private def v700482700910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v700482700910 : ¬ MinimalInterpreter v700482700910 :=
  chain_cut false 2 (by decide)
private def v700482679214 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v700482679214 : ¬ MinimalInterpreter v700482679214 :=
  chain_cut false 2 (by decide)
theorem row376 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,1,0,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,1,0,2] = [v700482440814,v700482440110,v700482418286,v700482417582,v700482411950,v700482784878,v700482784174,v700482700910,v700482679214] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482440814) (.cons (no_v700482440110) (.cons (no_v700482418286) (.cons (no_v700482417582) (.cons (no_v700482411950) (.cons (no_v700482784878) (.cons (no_v700482784174) (.cons (no_v700482700910) (.cons (no_v700482679214) .nil)))))))))

theorem row377 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,1,1,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
