import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row6 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,0,2,2,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,0,2,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v75700489454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75700489454 : ¬ MinimalInterpreter v75700489454 :=
  chain_cut false 2 (by decide)

private def v75700489070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75700489070 : ¬ MinimalInterpreter v75700489070 :=
  chain_cut false 2 (by decide)

private def v75700466926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v75700466926 : ¬ MinimalInterpreter v75700466926 :=
  chain_cut false 2 (by decide)

private def v75700466542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v75700466542 : ¬ MinimalInterpreter v75700466542 :=
  chain_cut false 2 (by decide)

private def v75700460910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v75700460910 : ¬ MinimalInterpreter v75700460910 :=
  chain_cut false 2 (by decide)

private def v75700292846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75700292846 : ¬ MinimalInterpreter v75700292846 :=
  chain_cut false 2 (by decide)

private def v75700292462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75700292462 : ¬ MinimalInterpreter v75700292462 :=
  chain_cut false 2 (by decide)

private def v75700270318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v75700270318 : ¬ MinimalInterpreter v75700270318 :=
  chain_cut false 2 (by decide)

private def v75700221166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v75700221166 : ¬ MinimalInterpreter v75700221166 :=
  chain_cut false 2 (by decide)

private def v75700269934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v75700269934 : ¬ MinimalInterpreter v75700269934 :=
  chain_cut false 2 (by decide)

private def v75700264302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v75700264302 : ¬ MinimalInterpreter v75700264302 :=
  chain_cut false 2 (by decide)

private def v75700220782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v75700220782 : ¬ MinimalInterpreter v75700220782 :=
  chain_cut false 2 (by decide)

private def v75700215150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v75700215150 : ¬ MinimalInterpreter v75700215150 :=
  chain_cut false 2 (by decide)

private def v75700202862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v75700202862 : ¬ MinimalInterpreter v75700202862 :=
  chain_cut false 2 (by decide)

private def v75705208046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75705208046 : ¬ MinimalInterpreter v75705208046 :=
  chain_cut false 2 (by decide)

private def v75705207662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75705207662 : ¬ MinimalInterpreter v75705207662 :=
  chain_cut false 2 (by decide)

private def v75705185518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v75705185518 : ¬ MinimalInterpreter v75705185518 :=
  chain_cut false 2 (by decide)

private def v75705185134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v75705185134 : ¬ MinimalInterpreter v75705185134 :=
  chain_cut false 2 (by decide)

private def v75705179502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v75705179502 : ¬ MinimalInterpreter v75705179502 :=
  chain_cut false 2 (by decide)

private def v75705552110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75705552110 : ¬ MinimalInterpreter v75705552110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75705551726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75705551726 : ¬ MinimalInterpreter v75705551726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704765678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75704765678 : ¬ MinimalInterpreter v75704765678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704765294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75704765294 : ¬ MinimalInterpreter v75704765294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75724082414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75724082414 : ¬ MinimalInterpreter v75724082414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724082030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75724082030 : ¬ MinimalInterpreter v75724082030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724059886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v75724059886 : ¬ MinimalInterpreter v75724059886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724059502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v75724059502 : ¬ MinimalInterpreter v75724059502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724053870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v75724053870 : ¬ MinimalInterpreter v75724053870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724426478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75724426478 : ¬ MinimalInterpreter v75724426478 :=
  w_cut false 0 (by decide)

private def v75724426094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75724426094 : ¬ MinimalInterpreter v75724426094 :=
  w_cut false 0 (by decide)

theorem row7 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,0,1,2]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,0,1,2] = [v75700489454,v75700489070,v75700466926,v75700466542,v75700460910,v75700292846,v75700292462,v75700270318,v75700221166,v75700269934,v75700264302,v75700220782,v75700215150,v75700202862,v75705208046,v75705207662,v75705185518,v75705185134,v75705179502,v75705552110,v75705551726,v75704765678,v75704765294,v75724082414,v75724082030,v75724059886,v75724059502,v75724053870,v75724426478,v75724426094] := by decide
  rw [h]
  exact (.cons (no_v75700489454) (.cons (no_v75700489070) (.cons (no_v75700466926) (.cons (no_v75700466542) (.cons (no_v75700460910) (.cons (no_v75700292846) (.cons (no_v75700292462) (.cons (no_v75700270318) (.cons (no_v75700221166) (.cons (no_v75700269934) (.cons (no_v75700264302) (.cons (no_v75700220782) (.cons (no_v75700215150) (.cons (no_v75700202862) (.cons (no_v75705208046) (.cons (no_v75705207662) (.cons (no_v75705185518) (.cons (no_v75705185134) (.cons (no_v75705179502) (.cons (no_v75705552110) (.cons (no_v75705551726) (.cons (no_v75704765678) (.cons (no_v75704765294) (.cons (no_v75724082414) (.cons (no_v75724082030) (.cons (no_v75724059886) (.cons (no_v75724059502) (.cons (no_v75724053870) (.cons (no_v75724426478) (.cons (no_v75724426094) .nil))))))))))))))))))))))))))))))

private def v75700489462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75700489462 : ¬ MinimalInterpreter v75700489462 :=
  chain_cut false 2 (by decide)

private def v75700489078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75700489078 : ¬ MinimalInterpreter v75700489078 :=
  chain_cut false 2 (by decide)

private def v75700466934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v75700466934 : ¬ MinimalInterpreter v75700466934 :=
  chain_cut false 2 (by decide)

private def v75700466550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v75700466550 : ¬ MinimalInterpreter v75700466550 :=
  chain_cut false 2 (by decide)

private def v75700460918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v75700460918 : ¬ MinimalInterpreter v75700460918 :=
  chain_cut false 2 (by decide)

private def v75700292854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75700292854 : ¬ MinimalInterpreter v75700292854 :=
  chain_cut false 2 (by decide)

private def v75700292470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75700292470 : ¬ MinimalInterpreter v75700292470 :=
  chain_cut false 2 (by decide)

private def v75700270326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v75700270326 : ¬ MinimalInterpreter v75700270326 :=
  chain_cut false 2 (by decide)

private def v75700221174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v75700221174 : ¬ MinimalInterpreter v75700221174 :=
  chain_cut false 2 (by decide)

private def v75700269942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v75700269942 : ¬ MinimalInterpreter v75700269942 :=
  chain_cut false 2 (by decide)

private def v75700264310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v75700264310 : ¬ MinimalInterpreter v75700264310 :=
  chain_cut false 2 (by decide)

private def v75700220790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v75700220790 : ¬ MinimalInterpreter v75700220790 :=
  chain_cut false 2 (by decide)

private def v75700215158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v75700215158 : ¬ MinimalInterpreter v75700215158 :=
  chain_cut false 2 (by decide)

private def v75700202870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v75700202870 : ¬ MinimalInterpreter v75700202870 :=
  chain_cut false 2 (by decide)

private def v75705208054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75705208054 : ¬ MinimalInterpreter v75705208054 :=
  chain_cut false 2 (by decide)

private def v75705207670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75705207670 : ¬ MinimalInterpreter v75705207670 :=
  chain_cut false 2 (by decide)

private def v75705185526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v75705185526 : ¬ MinimalInterpreter v75705185526 :=
  chain_cut false 2 (by decide)

private def v75705185142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v75705185142 : ¬ MinimalInterpreter v75705185142 :=
  chain_cut false 2 (by decide)

private def v75705179510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v75705179510 : ¬ MinimalInterpreter v75705179510 :=
  chain_cut false 2 (by decide)

private def v75705552118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75705552118 : ¬ MinimalInterpreter v75705552118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75705551734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75705551734 : ¬ MinimalInterpreter v75705551734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704765686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75704765686 : ¬ MinimalInterpreter v75704765686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704765302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75704765302 : ¬ MinimalInterpreter v75704765302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704595318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 1)))))
private theorem no_v75704595318 : ¬ MinimalInterpreter v75704595318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704589686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 1)))))
private theorem no_v75704589686 : ¬ MinimalInterpreter v75704589686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75724082422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75724082422 : ¬ MinimalInterpreter v75724082422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724082038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75724082038 : ¬ MinimalInterpreter v75724082038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724059894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v75724059894 : ¬ MinimalInterpreter v75724059894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724059510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v75724059510 : ¬ MinimalInterpreter v75724059510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724053878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v75724053878 : ¬ MinimalInterpreter v75724053878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724426486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75724426486 : ¬ MinimalInterpreter v75724426486 :=
  w_cut false 0 (by decide)

private def v75724426102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75724426102 : ¬ MinimalInterpreter v75724426102 :=
  w_cut false 0 (by decide)

theorem row8 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,0,2,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,0,2,1] = [v75700489462,v75700489078,v75700466934,v75700466550,v75700460918,v75700292854,v75700292470,v75700270326,v75700221174,v75700269942,v75700264310,v75700220790,v75700215158,v75700202870,v75705208054,v75705207670,v75705185526,v75705185142,v75705179510,v75705552118,v75705551734,v75704765686,v75704765302,v75704595318,v75704589686,v75724082422,v75724082038,v75724059894,v75724059510,v75724053878,v75724426486,v75724426102] := by decide
  rw [h]
  exact (.cons (no_v75700489462) (.cons (no_v75700489078) (.cons (no_v75700466934) (.cons (no_v75700466550) (.cons (no_v75700460918) (.cons (no_v75700292854) (.cons (no_v75700292470) (.cons (no_v75700270326) (.cons (no_v75700221174) (.cons (no_v75700269942) (.cons (no_v75700264310) (.cons (no_v75700220790) (.cons (no_v75700215158) (.cons (no_v75700202870) (.cons (no_v75705208054) (.cons (no_v75705207670) (.cons (no_v75705185526) (.cons (no_v75705185142) (.cons (no_v75705179510) (.cons (no_v75705552118) (.cons (no_v75705551734) (.cons (no_v75704765686) (.cons (no_v75704765302) (.cons (no_v75704595318) (.cons (no_v75704589686) (.cons (no_v75724082422) (.cons (no_v75724082038) (.cons (no_v75724059894) (.cons (no_v75724059510) (.cons (no_v75724053878) (.cons (no_v75724426486) (.cons (no_v75724426102) .nil))))))))))))))))))))))))))))))))

private def v75700489838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75700489838 : ¬ MinimalInterpreter v75700489838 :=
  chain_cut false 2 (by decide)

private def v75700489134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75700489134 : ¬ MinimalInterpreter v75700489134 :=
  chain_cut false 2 (by decide)

private def v75700467310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v75700467310 : ¬ MinimalInterpreter v75700467310 :=
  chain_cut false 2 (by decide)

private def v75700466606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v75700466606 : ¬ MinimalInterpreter v75700466606 :=
  chain_cut false 2 (by decide)

private def v75700460974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v75700460974 : ¬ MinimalInterpreter v75700460974 :=
  chain_cut false 2 (by decide)

private def v75700293230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v75700293230 : ¬ MinimalInterpreter v75700293230 :=
  chain_cut false 2 (by decide)

private def v75700292526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v75700292526 : ¬ MinimalInterpreter v75700292526 :=
  chain_cut false 2 (by decide)

private def v75700270702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v75700270702 : ¬ MinimalInterpreter v75700270702 :=
  chain_cut false 2 (by decide)

private def v75700221550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v75700221550 : ¬ MinimalInterpreter v75700221550 :=
  chain_cut false 2 (by decide)

private def v75700269998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v75700269998 : ¬ MinimalInterpreter v75700269998 :=
  chain_cut false 2 (by decide)

private def v75700264366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v75700264366 : ¬ MinimalInterpreter v75700264366 :=
  chain_cut false 2 (by decide)

private def v75700220846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v75700220846 : ¬ MinimalInterpreter v75700220846 :=
  chain_cut false 2 (by decide)

private def v75700215214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v75700215214 : ¬ MinimalInterpreter v75700215214 :=
  chain_cut false 2 (by decide)

private def v75700202926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v75700202926 : ¬ MinimalInterpreter v75700202926 :=
  chain_cut false 2 (by decide)

private def v75705208430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75705208430 : ¬ MinimalInterpreter v75705208430 :=
  chain_cut false 2 (by decide)

private def v75705207726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75705207726 : ¬ MinimalInterpreter v75705207726 :=
  chain_cut false 2 (by decide)

private def v75705185902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v75705185902 : ¬ MinimalInterpreter v75705185902 :=
  chain_cut false 2 (by decide)

private def v75705185198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v75705185198 : ¬ MinimalInterpreter v75705185198 :=
  chain_cut false 2 (by decide)

private def v75705179566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v75705179566 : ¬ MinimalInterpreter v75705179566 :=
  chain_cut false 2 (by decide)

private def v75705552494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75705552494 : ¬ MinimalInterpreter v75705552494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75705551790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75705551790 : ¬ MinimalInterpreter v75705551790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704766062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v75704766062 : ¬ MinimalInterpreter v75704766062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704765358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v75704765358 : ¬ MinimalInterpreter v75704765358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75724082798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75724082798 : ¬ MinimalInterpreter v75724082798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724082094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75724082094 : ¬ MinimalInterpreter v75724082094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724060270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v75724060270 : ¬ MinimalInterpreter v75724060270 :=
  w_cut false 0 (by decide)

private def v75724059566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v75724059566 : ¬ MinimalInterpreter v75724059566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724053934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v75724053934 : ¬ MinimalInterpreter v75724053934 :=
  w_cut false 0 (by decide)

private def v75724426862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75724426862 : ¬ MinimalInterpreter v75724426862 :=
  w_cut false 0 (by decide)

private def v75724426158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75724426158 : ¬ MinimalInterpreter v75724426158 :=
  w_cut false 0 (by decide)

theorem row9 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,1,0,2]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,1,0,2] = [v75700489838,v75700489134,v75700467310,v75700466606,v75700460974,v75700293230,v75700292526,v75700270702,v75700221550,v75700269998,v75700264366,v75700220846,v75700215214,v75700202926,v75705208430,v75705207726,v75705185902,v75705185198,v75705179566,v75705552494,v75705551790,v75704766062,v75704765358,v75724082798,v75724082094,v75724060270,v75724059566,v75724053934,v75724426862,v75724426158] := by decide
  rw [h]
  exact (.cons (no_v75700489838) (.cons (no_v75700489134) (.cons (no_v75700467310) (.cons (no_v75700466606) (.cons (no_v75700460974) (.cons (no_v75700293230) (.cons (no_v75700292526) (.cons (no_v75700270702) (.cons (no_v75700221550) (.cons (no_v75700269998) (.cons (no_v75700264366) (.cons (no_v75700220846) (.cons (no_v75700215214) (.cons (no_v75700202926) (.cons (no_v75705208430) (.cons (no_v75705207726) (.cons (no_v75705185902) (.cons (no_v75705185198) (.cons (no_v75705179566) (.cons (no_v75705552494) (.cons (no_v75705551790) (.cons (no_v75704766062) (.cons (no_v75704765358) (.cons (no_v75724082798) (.cons (no_v75724082094) (.cons (no_v75724060270) (.cons (no_v75724059566) (.cons (no_v75724053934) (.cons (no_v75724426862) (.cons (no_v75724426158) .nil))))))))))))))))))))))))))))))

theorem row10 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,1,1,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v75700489850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75700489850 : ¬ MinimalInterpreter v75700489850 :=
  chain_cut false 2 (by decide)

private def v75700489146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75700489146 : ¬ MinimalInterpreter v75700489146 :=
  chain_cut false 2 (by decide)

private def v75700467322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v75700467322 : ¬ MinimalInterpreter v75700467322 :=
  chain_cut false 2 (by decide)

private def v75700466618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v75700466618 : ¬ MinimalInterpreter v75700466618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700460986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v75700460986 : ¬ MinimalInterpreter v75700460986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700293242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v75700293242 : ¬ MinimalInterpreter v75700293242 :=
  chain_cut false 2 (by decide)

private def v75700292538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v75700292538 : ¬ MinimalInterpreter v75700292538 :=
  chain_cut false 2 (by decide)

private def v75700270714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v75700270714 : ¬ MinimalInterpreter v75700270714 :=
  chain_cut false 2 (by decide)

private def v75700221562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v75700221562 : ¬ MinimalInterpreter v75700221562 :=
  chain_cut false 2 (by decide)

private def v75700270010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v75700270010 : ¬ MinimalInterpreter v75700270010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700264378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v75700264378 : ¬ MinimalInterpreter v75700264378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700220858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v75700220858 : ¬ MinimalInterpreter v75700220858 :=
  chain_cut false 2 (by decide)

private def v75700215226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v75700215226 : ¬ MinimalInterpreter v75700215226 :=
  chain_cut false 2 (by decide)

private def v75700202938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v75700202938 : ¬ MinimalInterpreter v75700202938 :=
  chain_cut false 2 (by decide)

private def v75705208442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75705208442 : ¬ MinimalInterpreter v75705208442 :=
  chain_cut false 2 (by decide)

private def v75705207738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75705207738 : ¬ MinimalInterpreter v75705207738 :=
  chain_cut false 2 (by decide)

private def v75705185914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v75705185914 : ¬ MinimalInterpreter v75705185914 :=
  chain_cut false 2 (by decide)

private def v75705185210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v75705185210 : ¬ MinimalInterpreter v75705185210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75705179578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v75705179578 : ¬ MinimalInterpreter v75705179578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75705552506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75705552506 : ¬ MinimalInterpreter v75705552506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75705551802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75705551802 : ¬ MinimalInterpreter v75705551802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75704766074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v75704766074 : ¬ MinimalInterpreter v75704766074 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704765370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v75704765370 : ¬ MinimalInterpreter v75704765370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75724082810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75724082810 : ¬ MinimalInterpreter v75724082810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75724082106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75724082106 : ¬ MinimalInterpreter v75724082106 :=
  w_cut false 0 (by decide)

private def v75724060282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v75724060282 : ¬ MinimalInterpreter v75724060282 :=
  w_cut false 0 (by decide)

private def v75724059578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v75724059578 : ¬ MinimalInterpreter v75724059578 :=
  w_cut false 0 (by decide)

private def v75724053946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v75724053946 : ¬ MinimalInterpreter v75724053946 :=
  w_cut false 0 (by decide)

private def v75724426874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75724426874 : ¬ MinimalInterpreter v75724426874 :=
  w_cut false 0 (by decide)

private def v75724426170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75724426170 : ¬ MinimalInterpreter v75724426170 :=
  w_cut false 0 (by decide)

theorem row11 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,1,2,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,1,1,2,0] = [v75700489850,v75700489146,v75700467322,v75700466618,v75700460986,v75700293242,v75700292538,v75700270714,v75700221562,v75700270010,v75700264378,v75700220858,v75700215226,v75700202938,v75705208442,v75705207738,v75705185914,v75705185210,v75705179578,v75705552506,v75705551802,v75704766074,v75704765370,v75724082810,v75724082106,v75724060282,v75724059578,v75724053946,v75724426874,v75724426170] := by decide
  rw [h]
  exact (.cons (no_v75700489850) (.cons (no_v75700489146) (.cons (no_v75700467322) (.cons (no_v75700466618) (.cons (no_v75700460986) (.cons (no_v75700293242) (.cons (no_v75700292538) (.cons (no_v75700270714) (.cons (no_v75700221562) (.cons (no_v75700270010) (.cons (no_v75700264378) (.cons (no_v75700220858) (.cons (no_v75700215226) (.cons (no_v75700202938) (.cons (no_v75705208442) (.cons (no_v75705207738) (.cons (no_v75705185914) (.cons (no_v75705185210) (.cons (no_v75705179578) (.cons (no_v75705552506) (.cons (no_v75705551802) (.cons (no_v75704766074) (.cons (no_v75704765370) (.cons (no_v75724082810) (.cons (no_v75724082106) (.cons (no_v75724060282) (.cons (no_v75724059578) (.cons (no_v75724053946) (.cons (no_v75724426874) (.cons (no_v75724426170) .nil))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows38
