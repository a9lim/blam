import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five48 : BadRow (bucket false 3 2 4 [0,3,0,0]) := by
  have h : bucket false 3 2 4 [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five49 : BadRow (bucket true 3 2 4 [0,3,0,0]) := by
  have h : bucket true 3 2 4 [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400612382318 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1400612382318 : ¬ MinimalInterpreter v1400612382318 :=
  chain_cut false 2 (by decide)

private def v1400645936750 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1400645936750 : ¬ MinimalInterpreter v1400645936750 :=
  chain_cut false 2 (by decide)

private def v1400612382126 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1400612382126 : ¬ MinimalInterpreter v1400612382126 :=
  chain_cut false 2 (by decide)

private def v1400645936558 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1400645936558 : ¬ MinimalInterpreter v1400645936558 :=
  chain_cut false 2 (by decide)

private def v1400612371054 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400612371054 : ¬ MinimalInterpreter v1400612371054 :=
  chain_cut false 2 (by decide)

private def v1400645925486 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400645925486 : ¬ MinimalInterpreter v1400645925486 :=
  chain_cut false 2 (by decide)

private def v1400612370862 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1400612370862 : ¬ MinimalInterpreter v1400612370862 :=
  chain_cut false 2 (by decide)

private def v1400645925294 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1400645925294 : ¬ MinimalInterpreter v1400645925294 :=
  chain_cut false 2 (by decide)

private def v1400612368046 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1400612368046 : ¬ MinimalInterpreter v1400612368046 :=
  chain_cut false 2 (by decide)

private def v1400645922478 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1400645922478 : ¬ MinimalInterpreter v1400645922478 :=
  chain_cut false 2 (by decide)

theorem five50 : BadRow (bucket false 3 2 4 [1,0,0,2]) := by
  have h : bucket false 3 2 4 [1,0,0,2] = [v1400612382318,v1400645936750,v1400612382126,v1400645936558,v1400612371054,v1400645925486,v1400612370862,v1400645925294,v1400612368046,v1400645922478] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612382318) (.cons (no_v1400645936750) (.cons (no_v1400612382126) (.cons (no_v1400645936558) (.cons (no_v1400612371054) (.cons (no_v1400645925486) (.cons (no_v1400612370862) (.cons (no_v1400645925294) (.cons (no_v1400612368046) (.cons (no_v1400645922478) .nil))))))))))

private def v1175126599278 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175126599278 : ¬ MinimalInterpreter v1175126599278 :=
  chain_cut false 2 (by decide)

private def v1174321292910 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174321292910 : ¬ MinimalInterpreter v1174321292910 :=
  chain_cut false 2 (by decide)

private def v1175160153710 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175160153710 : ¬ MinimalInterpreter v1175160153710 :=
  chain_cut false 2 (by decide)

private def v1174354847342 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174354847342 : ¬ MinimalInterpreter v1174354847342 :=
  chain_cut false 3 (by decide)

private def v1175965460078 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175965460078 : ¬ MinimalInterpreter v1175965460078 :=
  chain_cut true 2 (by decide)

private def v1174489065070 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174489065070 : ¬ MinimalInterpreter v1174489065070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126599086 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1175126599086 : ¬ MinimalInterpreter v1175126599086 :=
  chain_cut false 2 (by decide)

private def v1174321292718 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1174321292718 : ¬ MinimalInterpreter v1174321292718 :=
  chain_cut false 2 (by decide)

private def v1175160153518 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1175160153518 : ¬ MinimalInterpreter v1175160153518 :=
  chain_cut false 2 (by decide)

private def v1174354847150 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1174354847150 : ¬ MinimalInterpreter v1174354847150 :=
  chain_cut false 3 (by decide)

private def v1175965459886 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1175965459886 : ¬ MinimalInterpreter v1175965459886 :=
  chain_cut true 2 (by decide)

private def v1174489064878 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1174489064878 : ¬ MinimalInterpreter v1174489064878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588014 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1175126588014 : ¬ MinimalInterpreter v1175126588014 :=
  chain_cut false 2 (by decide)

private def v1174321281646 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1174321281646 : ¬ MinimalInterpreter v1174321281646 :=
  chain_cut false 2 (by decide)

private def v1175160142446 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1175160142446 : ¬ MinimalInterpreter v1175160142446 :=
  chain_cut false 2 (by decide)

private def v1174354836078 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1174354836078 : ¬ MinimalInterpreter v1174354836078 :=
  chain_cut false 3 (by decide)

private def v1175965448814 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1175965448814 : ¬ MinimalInterpreter v1175965448814 :=
  chain_cut true 2 (by decide)

private def v1174489053806 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1174489053806 : ¬ MinimalInterpreter v1174489053806 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126587822 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1175126587822 : ¬ MinimalInterpreter v1175126587822 :=
  chain_cut false 2 (by decide)

private def v1174321281454 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1174321281454 : ¬ MinimalInterpreter v1174321281454 :=
  chain_cut false 2 (by decide)

private def v1175160142254 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1175160142254 : ¬ MinimalInterpreter v1175160142254 :=
  chain_cut false 2 (by decide)

private def v1174354835886 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1174354835886 : ¬ MinimalInterpreter v1174354835886 :=
  chain_cut false 3 (by decide)

private def v1175965448622 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1175965448622 : ¬ MinimalInterpreter v1175965448622 :=
  chain_cut true 2 (by decide)

private def v1174489053614 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1174489053614 : ¬ MinimalInterpreter v1174489053614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126585006 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1175126585006 : ¬ MinimalInterpreter v1175126585006 :=
  chain_cut false 2 (by decide)

private def v1174321278638 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1174321278638 : ¬ MinimalInterpreter v1174321278638 :=
  chain_cut false 2 (by decide)

private def v1175160139438 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1175160139438 : ¬ MinimalInterpreter v1175160139438 :=
  chain_cut false 2 (by decide)

private def v1174354833070 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1174354833070 : ¬ MinimalInterpreter v1174354833070 :=
  chain_cut false 3 (by decide)

private def v1175965445806 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1175965445806 : ¬ MinimalInterpreter v1175965445806 :=
  chain_cut true 2 (by decide)

private def v1174489050798 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1174489050798 : ¬ MinimalInterpreter v1174489050798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five51 : BadRow (bucket true 3 2 4 [1,0,0,2]) := by
  have h : bucket true 3 2 4 [1,0,0,2] = [v1175126599278,v1174321292910,v1175160153710,v1174354847342,v1175965460078,v1174489065070,v1175126599086,v1174321292718,v1175160153518,v1174354847150,v1175965459886,v1174489064878,v1175126588014,v1174321281646,v1175160142446,v1174354836078,v1175965448814,v1174489053806,v1175126587822,v1174321281454,v1175160142254,v1174354835886,v1175965448622,v1174489053614,v1175126585006,v1174321278638,v1175160139438,v1174354833070,v1175965445806,v1174489050798] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126599278) (.cons (no_v1174321292910) (.cons (no_v1175160153710) (.cons (no_v1174354847342) (.cons (no_v1175965460078) (.cons (no_v1174489065070) (.cons (no_v1175126599086) (.cons (no_v1174321292718) (.cons (no_v1175160153518) (.cons (no_v1174354847150) (.cons (no_v1175965459886) (.cons (no_v1174489064878) (.cons (no_v1175126588014) (.cons (no_v1174321281646) (.cons (no_v1175160142446) (.cons (no_v1174354836078) (.cons (no_v1175965448814) (.cons (no_v1174489053806) (.cons (no_v1175126587822) (.cons (no_v1174321281454) (.cons (no_v1175160142254) (.cons (no_v1174354835886) (.cons (no_v1175965448622) (.cons (no_v1174489053614) (.cons (no_v1175126585006) (.cons (no_v1174321278638) (.cons (no_v1175160139438) (.cons (no_v1174354833070) (.cons (no_v1175965445806) (.cons (no_v1174489050798) .nil))))))))))))))))))))))))))))))

theorem five52 : BadRow (bucket false 3 2 4 [1,0,1,1]) := by
  have h : bucket false 3 2 4 [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five53 : BadRow (bucket true 3 2 4 [1,0,1,1]) := by
  have h : bucket true 3 2 4 [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400612382330 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1400612382330 : ¬ MinimalInterpreter v1400612382330 :=
  chain_cut false 2 (by decide)

private def v1400645936762 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1400645936762 : ¬ MinimalInterpreter v1400645936762 :=
  chain_cut false 2 (by decide)

private def v1400612382138 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1400612382138 : ¬ MinimalInterpreter v1400612382138 :=
  chain_cut false 2 (by decide)

private def v1400645936570 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1400645936570 : ¬ MinimalInterpreter v1400645936570 :=
  chain_cut false 2 (by decide)

private def v1400612371066 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400612371066 : ¬ MinimalInterpreter v1400612371066 :=
  chain_cut false 2 (by decide)

private def v1400645925498 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400645925498 : ¬ MinimalInterpreter v1400645925498 :=
  chain_cut false 2 (by decide)

private def v1400612370874 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1400612370874 : ¬ MinimalInterpreter v1400612370874 :=
  chain_cut false 2 (by decide)

private def v1400645925306 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1400645925306 : ¬ MinimalInterpreter v1400645925306 :=
  chain_cut false 2 (by decide)

private def v1400612368058 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1400612368058 : ¬ MinimalInterpreter v1400612368058 :=
  chain_cut false 2 (by decide)

private def v1400645922490 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1400645922490 : ¬ MinimalInterpreter v1400645922490 :=
  chain_cut false 2 (by decide)

theorem five54 : BadRow (bucket false 3 2 4 [1,0,2,0]) := by
  have h : bucket false 3 2 4 [1,0,2,0] = [v1400612382330,v1400645936762,v1400612382138,v1400645936570,v1400612371066,v1400645925498,v1400612370874,v1400645925306,v1400612368058,v1400645922490] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612382330) (.cons (no_v1400645936762) (.cons (no_v1400612382138) (.cons (no_v1400645936570) (.cons (no_v1400612371066) (.cons (no_v1400645925498) (.cons (no_v1400612370874) (.cons (no_v1400645925306) (.cons (no_v1400612368058) (.cons (no_v1400645922490) .nil))))))))))

private def v1175126599290 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175126599290 : ¬ MinimalInterpreter v1175126599290 :=
  chain_cut false 2 (by decide)

private def v1174321292922 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174321292922 : ¬ MinimalInterpreter v1174321292922 :=
  chain_cut false 2 (by decide)

private def v1175160153722 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175160153722 : ¬ MinimalInterpreter v1175160153722 :=
  chain_cut false 2 (by decide)

private def v1174354847354 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174354847354 : ¬ MinimalInterpreter v1174354847354 :=
  chain_cut false 3 (by decide)

private def v1175965460090 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175965460090 : ¬ MinimalInterpreter v1175965460090 :=
  chain_cut true 2 (by decide)

private def v1174489065082 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174489065082 : ¬ MinimalInterpreter v1174489065082 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126599098 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1175126599098 : ¬ MinimalInterpreter v1175126599098 :=
  chain_cut false 2 (by decide)

private def v1174321292730 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1174321292730 : ¬ MinimalInterpreter v1174321292730 :=
  chain_cut false 2 (by decide)

private def v1175160153530 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1175160153530 : ¬ MinimalInterpreter v1175160153530 :=
  chain_cut false 2 (by decide)

private def v1174354847162 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1174354847162 : ¬ MinimalInterpreter v1174354847162 :=
  chain_cut false 3 (by decide)

private def v1175965459898 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1175965459898 : ¬ MinimalInterpreter v1175965459898 :=
  chain_cut true 2 (by decide)

private def v1174489064890 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1174489064890 : ¬ MinimalInterpreter v1174489064890 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588026 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1175126588026 : ¬ MinimalInterpreter v1175126588026 :=
  chain_cut false 2 (by decide)

private def v1174321281658 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1174321281658 : ¬ MinimalInterpreter v1174321281658 :=
  chain_cut false 2 (by decide)

private def v1175160142458 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1175160142458 : ¬ MinimalInterpreter v1175160142458 :=
  chain_cut false 2 (by decide)

private def v1174354836090 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1174354836090 : ¬ MinimalInterpreter v1174354836090 :=
  chain_cut false 3 (by decide)

private def v1175965448826 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1175965448826 : ¬ MinimalInterpreter v1175965448826 :=
  chain_cut true 2 (by decide)

private def v1174489053818 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1174489053818 : ¬ MinimalInterpreter v1174489053818 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126587834 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1175126587834 : ¬ MinimalInterpreter v1175126587834 :=
  chain_cut false 2 (by decide)

private def v1174321281466 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1174321281466 : ¬ MinimalInterpreter v1174321281466 :=
  chain_cut false 2 (by decide)

private def v1175160142266 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1175160142266 : ¬ MinimalInterpreter v1175160142266 :=
  chain_cut false 2 (by decide)

private def v1174354835898 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1174354835898 : ¬ MinimalInterpreter v1174354835898 :=
  chain_cut false 3 (by decide)

private def v1175965448634 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1175965448634 : ¬ MinimalInterpreter v1175965448634 :=
  chain_cut true 2 (by decide)

private def v1174489053626 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1174489053626 : ¬ MinimalInterpreter v1174489053626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126585018 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1175126585018 : ¬ MinimalInterpreter v1175126585018 :=
  chain_cut false 2 (by decide)

private def v1174321278650 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1174321278650 : ¬ MinimalInterpreter v1174321278650 :=
  chain_cut false 2 (by decide)

private def v1175160139450 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1175160139450 : ¬ MinimalInterpreter v1175160139450 :=
  chain_cut false 2 (by decide)

private def v1174354833082 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1174354833082 : ¬ MinimalInterpreter v1174354833082 :=
  chain_cut false 3 (by decide)

private def v1175965445818 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1175965445818 : ¬ MinimalInterpreter v1175965445818 :=
  chain_cut true 2 (by decide)

private def v1174489050810 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1174489050810 : ¬ MinimalInterpreter v1174489050810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five55 : BadRow (bucket true 3 2 4 [1,0,2,0]) := by
  have h : bucket true 3 2 4 [1,0,2,0] = [v1175126599290,v1174321292922,v1175160153722,v1174354847354,v1175965460090,v1174489065082,v1175126599098,v1174321292730,v1175160153530,v1174354847162,v1175965459898,v1174489064890,v1175126588026,v1174321281658,v1175160142458,v1174354836090,v1175965448826,v1174489053818,v1175126587834,v1174321281466,v1175160142266,v1174354835898,v1175965448634,v1174489053626,v1175126585018,v1174321278650,v1175160139450,v1174354833082,v1175965445818,v1174489050810] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126599290) (.cons (no_v1174321292922) (.cons (no_v1175160153722) (.cons (no_v1174354847354) (.cons (no_v1175965460090) (.cons (no_v1174489065082) (.cons (no_v1175126599098) (.cons (no_v1174321292730) (.cons (no_v1175160153530) (.cons (no_v1174354847162) (.cons (no_v1175965459898) (.cons (no_v1174489064890) (.cons (no_v1175126588026) (.cons (no_v1174321281658) (.cons (no_v1175160142458) (.cons (no_v1174354836090) (.cons (no_v1175965448826) (.cons (no_v1174489053818) (.cons (no_v1175126587834) (.cons (no_v1174321281466) (.cons (no_v1175160142266) (.cons (no_v1174354835898) (.cons (no_v1175965448634) (.cons (no_v1174489053626) (.cons (no_v1175126585018) (.cons (no_v1174321278650) (.cons (no_v1175160139450) (.cons (no_v1174354833082) (.cons (no_v1175965445818) (.cons (no_v1174489050810) .nil))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
