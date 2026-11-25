import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308814646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308814646 : ¬ MinimalInterpreter v1402308814646 :=
  cost_cut false 2 (by decide)

private def v1402308814294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1402308814294 : ¬ MinimalInterpreter v1402308814294 :=
  cost_cut false 2 (by decide)

private def v1402308811574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308811574 : ¬ MinimalInterpreter v1402308811574 :=
  cost_cut false 2 (by decide)

private def v1402308811222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1402308811222 : ¬ MinimalInterpreter v1402308811222 :=
  cost_cut false 2 (by decide)

private def v1402308810454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1402308810454 : ¬ MinimalInterpreter v1402308810454 :=
  cost_cut false 2 (by decide)

private def v1402308372278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308372278 : ¬ MinimalInterpreter v1402308372278 :=
  cost_cut false 2 (by decide)

private def v1402308371926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1402308371926 : ¬ MinimalInterpreter v1402308371926 :=
  cost_cut false 2 (by decide)

private def v1402308369206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308369206 : ¬ MinimalInterpreter v1402308369206 :=
  cost_cut false 2 (by decide)

private def v1402308258614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308258614 : ¬ MinimalInterpreter v1402308258614 :=
  cost_cut false 2 (by decide)

private def v1402308368854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 1)))))))
private theorem no_v1402308368854 : ¬ MinimalInterpreter v1402308368854 :=
  cost_cut false 2 (by decide)

private def v1402308368086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 1)))))))
private theorem no_v1402308368086 : ¬ MinimalInterpreter v1402308368086 :=
  cost_cut false 2 (by decide)

private def v1402308258262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1402308258262 : ¬ MinimalInterpreter v1402308258262 :=
  cost_cut false 2 (by decide)

private def v1402308257494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1402308257494 : ¬ MinimalInterpreter v1402308257494 :=
  cost_cut false 2 (by decide)

private def v1402308229846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1402308229846 : ¬ MinimalInterpreter v1402308229846 :=
  cost_cut false 2 (by decide)

private def v1402314792134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402314792134 : ¬ MinimalInterpreter v1402314792134 :=
  chain_cut false 2 (by decide)

private def v1402314790726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402314790726 : ¬ MinimalInterpreter v1402314790726 :=
  chain_cut false 2 (by decide)

private def v1402314779846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402314779846 : ¬ MinimalInterpreter v1402314779846 :=
  chain_cut false 2 (by decide)

private def v1402314777398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402314777398 : ¬ MinimalInterpreter v1402314777398 :=
  chain_cut false 2 (by decide)

private def v1402314778438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402314778438 : ¬ MinimalInterpreter v1402314778438 :=
  chain_cut false 2 (by decide)

private def v1402314775366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402314775366 : ¬ MinimalInterpreter v1402314775366 :=
  chain_cut false 2 (by decide)

private def v1402314774742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1402314774742 : ¬ MinimalInterpreter v1402314774742 :=
  chain_cut false 2 (by decide)

private def v1402313022662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402313022662 : ¬ MinimalInterpreter v1402313022662 :=
  chain_cut false 2 (by decide)

private def v1402313021254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402313021254 : ¬ MinimalInterpreter v1402313021254 :=
  chain_cut false 2 (by decide)

private def v1402313010374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402313010374 : ¬ MinimalInterpreter v1402313010374 :=
  chain_cut false 2 (by decide)

private def v1402312568006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312568006 : ¬ MinimalInterpreter v1402312568006 :=
  chain_cut false 2 (by decide)

private def v1402313007926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402313007926 : ¬ MinimalInterpreter v1402313007926 :=
  chain_cut false 2 (by decide)

private def v1402312565558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312565558 : ¬ MinimalInterpreter v1402312565558 :=
  chain_cut false 2 (by decide)

private def v1402313008966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 1)))))))
private theorem no_v1402313008966 : ¬ MinimalInterpreter v1402313008966 :=
  chain_cut false 2 (by decide)

private def v1402313005894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402313005894 : ¬ MinimalInterpreter v1402313005894 :=
  chain_cut false 2 (by decide)

private def v1402312566598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312566598 : ¬ MinimalInterpreter v1402312566598 :=
  chain_cut false 2 (by decide)

private def v1402312563526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312563526 : ¬ MinimalInterpreter v1402312563526 :=
  chain_cut false 2 (by decide)

private def v1402312452934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312452934 : ¬ MinimalInterpreter v1402312452934 :=
  chain_cut false 2 (by decide)

private def v1402313005270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 1))))))
private theorem no_v1402313005270 : ¬ MinimalInterpreter v1402313005270 :=
  chain_cut false 2 (by decide)

private def v1402312562902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.var 1))))))
private theorem no_v1402312562902 : ¬ MinimalInterpreter v1402312562902 :=
  chain_cut false 2 (by decide)

private def v1402312452310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1402312452310 : ¬ MinimalInterpreter v1402312452310 :=
  chain_cut false 2 (by decide)

theorem four140 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,1,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,1,0,1] = [v1402308814646,v1402308814294,v1402308811574,v1402308811222,v1402308810454,v1402308372278,v1402308371926,v1402308369206,v1402308258614,v1402308368854,v1402308368086,v1402308258262,v1402308257494,v1402308229846,v1402314792134,v1402314790726,v1402314779846,v1402314777398,v1402314778438,v1402314775366,v1402314774742,v1402313022662,v1402313021254,v1402313010374,v1402312568006,v1402313007926,v1402312565558,v1402313008966,v1402313005894,v1402312566598,v1402312563526,v1402312452934,v1402313005270,v1402312562902,v1402312452310] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308814646) (.cons (no_v1402308814294) (.cons (no_v1402308811574) (.cons (no_v1402308811222) (.cons (no_v1402308810454) (.cons (no_v1402308372278) (.cons (no_v1402308371926) (.cons (no_v1402308369206) (.cons (no_v1402308258614) (.cons (no_v1402308368854) (.cons (no_v1402308368086) (.cons (no_v1402308258262) (.cons (no_v1402308257494) (.cons (no_v1402308229846) (.cons (no_v1402314792134) (.cons (no_v1402314790726) (.cons (no_v1402314779846) (.cons (no_v1402314777398) (.cons (no_v1402314778438) (.cons (no_v1402314775366) (.cons (no_v1402314774742) (.cons (no_v1402313022662) (.cons (no_v1402313021254) (.cons (no_v1402313010374) (.cons (no_v1402312568006) (.cons (no_v1402313007926) (.cons (no_v1402312565558) (.cons (no_v1402313008966) (.cons (no_v1402313005894) (.cons (no_v1402312566598) (.cons (no_v1402312563526) (.cons (no_v1402312452934) (.cons (no_v1402313005270) (.cons (no_v1402312562902) (.cons (no_v1402312452310) .nil)))))))))))))))))))))))))))))))))))

private def v1402308814650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308814650 : ¬ MinimalInterpreter v1402308814650 :=
  cost_cut false 2 (by decide)

private def v1402308814298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1402308814298 : ¬ MinimalInterpreter v1402308814298 :=
  cost_cut false 2 (by decide)

private def v1402308811578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308811578 : ¬ MinimalInterpreter v1402308811578 :=
  cost_cut false 2 (by decide)

private def v1402308811226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1402308811226 : ¬ MinimalInterpreter v1402308811226 :=
  cost_cut false 2 (by decide)

private def v1402308810458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1402308810458 : ¬ MinimalInterpreter v1402308810458 :=
  cost_cut false 2 (by decide)

private def v1402308372282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308372282 : ¬ MinimalInterpreter v1402308372282 :=
  cost_cut false 2 (by decide)

private def v1402308371930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1402308371930 : ¬ MinimalInterpreter v1402308371930 :=
  cost_cut false 2 (by decide)

private def v1402308369210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308369210 : ¬ MinimalInterpreter v1402308369210 :=
  cost_cut false 2 (by decide)

private def v1402308258618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308258618 : ¬ MinimalInterpreter v1402308258618 :=
  cost_cut false 2 (by decide)

private def v1402308368858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 0)))))))
private theorem no_v1402308368858 : ¬ MinimalInterpreter v1402308368858 :=
  cost_cut false 2 (by decide)

private def v1402308368090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 0)))))))
private theorem no_v1402308368090 : ¬ MinimalInterpreter v1402308368090 :=
  cost_cut false 2 (by decide)

private def v1402308258266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1402308258266 : ¬ MinimalInterpreter v1402308258266 :=
  cost_cut false 2 (by decide)

private def v1402308257498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1402308257498 : ¬ MinimalInterpreter v1402308257498 :=
  cost_cut false 2 (by decide)

private def v1402308229850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1402308229850 : ¬ MinimalInterpreter v1402308229850 :=
  cost_cut false 2 (by decide)

private def v1402314790682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402314790682 : ¬ MinimalInterpreter v1402314790682 :=
  chain_cut false 2 (by decide)

private def v1402314777402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402314777402 : ¬ MinimalInterpreter v1402314777402 :=
  chain_cut false 2 (by decide)

private def v1402314778394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402314778394 : ¬ MinimalInterpreter v1402314778394 :=
  chain_cut false 2 (by decide)

private def v1402314775322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402314775322 : ¬ MinimalInterpreter v1402314775322 :=
  chain_cut false 2 (by decide)

private def v1402314774746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1402314774746 : ¬ MinimalInterpreter v1402314774746 :=
  chain_cut false 2 (by decide)

private def v1402313021210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402313021210 : ¬ MinimalInterpreter v1402313021210 :=
  chain_cut false 2 (by decide)

private def v1402313007930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402313007930 : ¬ MinimalInterpreter v1402313007930 :=
  chain_cut false 2 (by decide)

private def v1402312565562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312565562 : ¬ MinimalInterpreter v1402312565562 :=
  chain_cut false 2 (by decide)

private def v1402313008922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.var 0))))))
private theorem no_v1402313008922 : ¬ MinimalInterpreter v1402313008922 :=
  chain_cut false 2 (by decide)

private def v1402313005850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402313005850 : ¬ MinimalInterpreter v1402313005850 :=
  chain_cut false 2 (by decide)

private def v1402313005274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.var 0))))))
private theorem no_v1402313005274 : ¬ MinimalInterpreter v1402313005274 :=
  chain_cut false 2 (by decide)

private def v1402312566554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312566554 : ¬ MinimalInterpreter v1402312566554 :=
  chain_cut false 2 (by decide)

private def v1402312563482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312563482 : ¬ MinimalInterpreter v1402312563482 :=
  chain_cut false 2 (by decide)

private def v1402312452890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312452890 : ¬ MinimalInterpreter v1402312452890 :=
  chain_cut false 2 (by decide)

private def v1402312562906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.var 0))))))
private theorem no_v1402312562906 : ¬ MinimalInterpreter v1402312562906 :=
  chain_cut false 2 (by decide)

private def v1402312452314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1402312452314 : ¬ MinimalInterpreter v1402312452314 :=
  chain_cut false 2 (by decide)

theorem four141 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,1,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,1,1,0] = [v1402308814650,v1402308814298,v1402308811578,v1402308811226,v1402308810458,v1402308372282,v1402308371930,v1402308369210,v1402308258618,v1402308368858,v1402308368090,v1402308258266,v1402308257498,v1402308229850,v1402314790682,v1402314777402,v1402314778394,v1402314775322,v1402314774746,v1402313021210,v1402313007930,v1402312565562,v1402313008922,v1402313005850,v1402313005274,v1402312566554,v1402312563482,v1402312452890,v1402312562906,v1402312452314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308814650) (.cons (no_v1402308814298) (.cons (no_v1402308811578) (.cons (no_v1402308811226) (.cons (no_v1402308810458) (.cons (no_v1402308372282) (.cons (no_v1402308371930) (.cons (no_v1402308369210) (.cons (no_v1402308258618) (.cons (no_v1402308368858) (.cons (no_v1402308368090) (.cons (no_v1402308258266) (.cons (no_v1402308257498) (.cons (no_v1402308229850) (.cons (no_v1402314790682) (.cons (no_v1402314777402) (.cons (no_v1402314778394) (.cons (no_v1402314775322) (.cons (no_v1402314774746) (.cons (no_v1402313021210) (.cons (no_v1402313007930) (.cons (no_v1402312565562) (.cons (no_v1402313008922) (.cons (no_v1402313005850) (.cons (no_v1402313005274) (.cons (no_v1402312566554) (.cons (no_v1402312563482) (.cons (no_v1402312452890) (.cons (no_v1402312562906) (.cons (no_v1402312452314) .nil))))))))))))))))))))))))))))))

private def v1402314777498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402314777498 : ¬ MinimalInterpreter v1402314777498 :=
  chain_cut false 2 (by decide)

private def v1402314774762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v1402314774762 : ¬ MinimalInterpreter v1402314774762 :=
  chain_cut false 2 (by decide)

private def v1402313008026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402313008026 : ¬ MinimalInterpreter v1402313008026 :=
  chain_cut false 2 (by decide)

private def v1402312565658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312565658 : ¬ MinimalInterpreter v1402312565658 :=
  chain_cut false 2 (by decide)

private def v1402313005290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.var 0))))))
private theorem no_v1402313005290 : ¬ MinimalInterpreter v1402313005290 :=
  chain_cut false 2 (by decide)

private def v1402312562922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0)) (.var 0))))))
private theorem no_v1402312562922 : ¬ MinimalInterpreter v1402312562922 :=
  chain_cut false 2 (by decide)

private def v1402312452330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1402312452330 : ¬ MinimalInterpreter v1402312452330 :=
  chain_cut false 2 (by decide)

theorem four142 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,2,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,2,0,0] = [v1402314777498,v1402314774762,v1402313008026,v1402312565658,v1402313005290,v1402312562922,v1402312452330] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314777498) (.cons (no_v1402314774762) (.cons (no_v1402313008026) (.cons (no_v1402312565658) (.cons (no_v1402313005290) (.cons (no_v1402312562922) (.cons (no_v1402312452330) .nil)))))))

private def v1402308817718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308817718 : ¬ MinimalInterpreter v1402308817718 :=
  cost_cut false 2 (by decide)

private def v1402308817622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402308817622 : ¬ MinimalInterpreter v1402308817622 :=
  cost_cut false 2 (by decide)

private def v1402308812086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308812086 : ¬ MinimalInterpreter v1402308812086 :=
  cost_cut false 2 (by decide)

private def v1402308811990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402308811990 : ¬ MinimalInterpreter v1402308811990 :=
  cost_cut false 2 (by decide)

private def v1402308810582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402308810582 : ¬ MinimalInterpreter v1402308810582 :=
  cost_cut false 2 (by decide)

private def v1402308375350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308375350 : ¬ MinimalInterpreter v1402308375350 :=
  cost_cut false 2 (by decide)

private def v1402308375254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1402308375254 : ¬ MinimalInterpreter v1402308375254 :=
  cost_cut false 2 (by decide)

private def v1402308369718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308369718 : ¬ MinimalInterpreter v1402308369718 :=
  cost_cut false 2 (by decide)

private def v1402308259126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308259126 : ¬ MinimalInterpreter v1402308259126 :=
  cost_cut false 2 (by decide)

private def v1402308369622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v1402308369622 : ¬ MinimalInterpreter v1402308369622 :=
  cost_cut false 2 (by decide)

private def v1402308368214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 1)))))))
private theorem no_v1402308368214 : ¬ MinimalInterpreter v1402308368214 :=
  cost_cut false 2 (by decide)

private def v1402308259030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1402308259030 : ¬ MinimalInterpreter v1402308259030 :=
  cost_cut false 2 (by decide)

private def v1402308257622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402308257622 : ¬ MinimalInterpreter v1402308257622 :=
  cost_cut false 2 (by decide)

private def v1402308229974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1402308229974 : ¬ MinimalInterpreter v1402308229974 :=
  cost_cut false 2 (by decide)

private def v1402314804422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402314804422 : ¬ MinimalInterpreter v1402314804422 :=
  chain_cut false 2 (by decide)

private def v1402314804038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402314804038 : ¬ MinimalInterpreter v1402314804038 :=
  chain_cut false 2 (by decide)

private def v1402314781894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402314781894 : ¬ MinimalInterpreter v1402314781894 :=
  chain_cut false 2 (by decide)

private def v1402314781510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402314781510 : ¬ MinimalInterpreter v1402314781510 :=
  chain_cut false 2 (by decide)

private def v1402314775878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402314775878 : ¬ MinimalInterpreter v1402314775878 :=
  chain_cut false 2 (by decide)

private def v1402313034950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402313034950 : ¬ MinimalInterpreter v1402313034950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313034566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402313034566 : ¬ MinimalInterpreter v1402313034566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312995638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1402312995638 : ¬ MinimalInterpreter v1402312995638 :=
  chain_cut false 2 (by decide)

private def v1402312995542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1402312995542 : ¬ MinimalInterpreter v1402312995542 :=
  chain_cut false 2 (by decide)

private def v1402313012422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402313012422 : ¬ MinimalInterpreter v1402313012422 :=
  chain_cut false 2 (by decide)

private def v1402312570054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312570054 : ¬ MinimalInterpreter v1402312570054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312559926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312559926 : ¬ MinimalInterpreter v1402312559926 :=
  chain_cut false 2 (by decide)

private def v1402313012038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 1)))))))
private theorem no_v1402313012038 : ¬ MinimalInterpreter v1402313012038 :=
  chain_cut false 2 (by decide)

private def v1402313006406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402313006406 : ¬ MinimalInterpreter v1402313006406 :=
  chain_cut false 2 (by decide)

private def v1402312569670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312569670 : ¬ MinimalInterpreter v1402312569670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312564038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312564038 : ¬ MinimalInterpreter v1402312564038 :=
  chain_cut false 2 (by decide)

private def v1402312453446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312453446 : ¬ MinimalInterpreter v1402312453446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312559830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1402312559830 : ¬ MinimalInterpreter v1402312559830 :=
  chain_cut false 2 (by decide)

private def v1402312450902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1402312450902 : ¬ MinimalInterpreter v1402312450902 :=
  chain_cut false 2 (by decide)

theorem four143 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,1,0,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,1,0,0,1] = [v1402308817718,v1402308817622,v1402308812086,v1402308811990,v1402308810582,v1402308375350,v1402308375254,v1402308369718,v1402308259126,v1402308369622,v1402308368214,v1402308259030,v1402308257622,v1402308229974,v1402314804422,v1402314804038,v1402314781894,v1402314781510,v1402314775878,v1402313034950,v1402313034566,v1402312995638,v1402312995542,v1402313012422,v1402312570054,v1402312559926,v1402313012038,v1402313006406,v1402312569670,v1402312564038,v1402312453446,v1402312559830,v1402312450902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308817718) (.cons (no_v1402308817622) (.cons (no_v1402308812086) (.cons (no_v1402308811990) (.cons (no_v1402308810582) (.cons (no_v1402308375350) (.cons (no_v1402308375254) (.cons (no_v1402308369718) (.cons (no_v1402308259126) (.cons (no_v1402308369622) (.cons (no_v1402308368214) (.cons (no_v1402308259030) (.cons (no_v1402308257622) (.cons (no_v1402308229974) (.cons (no_v1402314804422) (.cons (no_v1402314804038) (.cons (no_v1402314781894) (.cons (no_v1402314781510) (.cons (no_v1402314775878) (.cons (no_v1402313034950) (.cons (no_v1402313034566) (.cons (no_v1402312995638) (.cons (no_v1402312995542) (.cons (no_v1402313012422) (.cons (no_v1402312570054) (.cons (no_v1402312559926) (.cons (no_v1402313012038) (.cons (no_v1402313006406) (.cons (no_v1402312569670) (.cons (no_v1402312564038) (.cons (no_v1402312453446) (.cons (no_v1402312559830) (.cons (no_v1402312450902) .nil)))))))))))))))))))))))))))))))))

private def v1402308817722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308817722 : ¬ MinimalInterpreter v1402308817722 :=
  cost_cut false 2 (by decide)

private def v1402308817626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402308817626 : ¬ MinimalInterpreter v1402308817626 :=
  cost_cut false 2 (by decide)

private def v1402308812090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308812090 : ¬ MinimalInterpreter v1402308812090 :=
  cost_cut false 2 (by decide)

private def v1402308811994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402308811994 : ¬ MinimalInterpreter v1402308811994 :=
  cost_cut false 2 (by decide)

private def v1402308810586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402308810586 : ¬ MinimalInterpreter v1402308810586 :=
  cost_cut false 2 (by decide)

private def v1402308375354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308375354 : ¬ MinimalInterpreter v1402308375354 :=
  cost_cut false 2 (by decide)

private def v1402308375258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1402308375258 : ¬ MinimalInterpreter v1402308375258 :=
  cost_cut false 2 (by decide)

private def v1402308369722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308369722 : ¬ MinimalInterpreter v1402308369722 :=
  cost_cut false 2 (by decide)

private def v1402308259130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308259130 : ¬ MinimalInterpreter v1402308259130 :=
  cost_cut false 2 (by decide)

private def v1402308369626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v1402308369626 : ¬ MinimalInterpreter v1402308369626 :=
  cost_cut false 2 (by decide)

private def v1402308368218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 0)))))))
private theorem no_v1402308368218 : ¬ MinimalInterpreter v1402308368218 :=
  cost_cut false 2 (by decide)

private def v1402308259034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1402308259034 : ¬ MinimalInterpreter v1402308259034 :=
  cost_cut false 2 (by decide)

private def v1402308257626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402308257626 : ¬ MinimalInterpreter v1402308257626 :=
  cost_cut false 2 (by decide)

private def v1402308229978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1402308229978 : ¬ MinimalInterpreter v1402308229978 :=
  cost_cut false 2 (by decide)

private def v1402314803994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402314803994 : ¬ MinimalInterpreter v1402314803994 :=
  chain_cut false 2 (by decide)

private def v1402314781466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402314781466 : ¬ MinimalInterpreter v1402314781466 :=
  chain_cut false 2 (by decide)

private def v1402314775834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402314775834 : ¬ MinimalInterpreter v1402314775834 :=
  chain_cut false 2 (by decide)

private def v1402313034522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402313034522 : ¬ MinimalInterpreter v1402313034522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312995642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1402312995642 : ¬ MinimalInterpreter v1402312995642 :=
  chain_cut false 2 (by decide)

private def v1402312995546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1402312995546 : ¬ MinimalInterpreter v1402312995546 :=
  chain_cut false 2 (by decide)

private def v1402312559930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312559930 : ¬ MinimalInterpreter v1402312559930 :=
  chain_cut false 2 (by decide)

private def v1402313011994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.var 0))))))
private theorem no_v1402313011994 : ¬ MinimalInterpreter v1402313011994 :=
  chain_cut false 2 (by decide)

private def v1402313006362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402313006362 : ¬ MinimalInterpreter v1402313006362 :=
  chain_cut false 2 (by decide)

private def v1402312569626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312569626 : ¬ MinimalInterpreter v1402312569626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312559834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1402312559834 : ¬ MinimalInterpreter v1402312559834 :=
  chain_cut false 2 (by decide)

private def v1402312563994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312563994 : ¬ MinimalInterpreter v1402312563994 :=
  chain_cut false 2 (by decide)

private def v1402312453402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312453402 : ¬ MinimalInterpreter v1402312453402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312450906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1402312450906 : ¬ MinimalInterpreter v1402312450906 :=
  chain_cut false 2 (by decide)

theorem four144 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,1,0,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,1,0,1,0] = [v1402308817722,v1402308817626,v1402308812090,v1402308811994,v1402308810586,v1402308375354,v1402308375258,v1402308369722,v1402308259130,v1402308369626,v1402308368218,v1402308259034,v1402308257626,v1402308229978,v1402314803994,v1402314781466,v1402314775834,v1402313034522,v1402312995642,v1402312995546,v1402312559930,v1402313011994,v1402313006362,v1402312569626,v1402312559834,v1402312563994,v1402312453402,v1402312450906] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308817722) (.cons (no_v1402308817626) (.cons (no_v1402308812090) (.cons (no_v1402308811994) (.cons (no_v1402308810586) (.cons (no_v1402308375354) (.cons (no_v1402308375258) (.cons (no_v1402308369722) (.cons (no_v1402308259130) (.cons (no_v1402308369626) (.cons (no_v1402308368218) (.cons (no_v1402308259034) (.cons (no_v1402308257626) (.cons (no_v1402308229978) (.cons (no_v1402314803994) (.cons (no_v1402314781466) (.cons (no_v1402314775834) (.cons (no_v1402313034522) (.cons (no_v1402312995642) (.cons (no_v1402312995546) (.cons (no_v1402312559930) (.cons (no_v1402313011994) (.cons (no_v1402313006362) (.cons (no_v1402312569626) (.cons (no_v1402312559834) (.cons (no_v1402312563994) (.cons (no_v1402312453402) (.cons (no_v1402312450906) .nil))))))))))))))))))))))))))))

private def v1402308817818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308817818 : ¬ MinimalInterpreter v1402308817818 :=
  cost_cut false 2 (by decide)

private def v1402308817642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402308817642 : ¬ MinimalInterpreter v1402308817642 :=
  cost_cut false 2 (by decide)

private def v1402308812186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308812186 : ¬ MinimalInterpreter v1402308812186 :=
  cost_cut false 2 (by decide)

private def v1402308812010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402308812010 : ¬ MinimalInterpreter v1402308812010 :=
  cost_cut false 2 (by decide)

private def v1402308810602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402308810602 : ¬ MinimalInterpreter v1402308810602 :=
  cost_cut false 2 (by decide)

private def v1402308375450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308375450 : ¬ MinimalInterpreter v1402308375450 :=
  cost_cut false 2 (by decide)

private def v1402308375274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1402308375274 : ¬ MinimalInterpreter v1402308375274 :=
  cost_cut false 2 (by decide)

private def v1402308369818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308369818 : ¬ MinimalInterpreter v1402308369818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308259226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308259226 : ¬ MinimalInterpreter v1402308259226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308369642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v1402308369642 : ¬ MinimalInterpreter v1402308369642 :=
  cost_cut false 2 (by decide)

private def v1402308368234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 0)))))))
private theorem no_v1402308368234 : ¬ MinimalInterpreter v1402308368234 :=
  cost_cut false 2 (by decide)

private def v1402308259050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1402308259050 : ¬ MinimalInterpreter v1402308259050 :=
  cost_cut false 2 (by decide)

private def v1402308257642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v1402308257642 : ¬ MinimalInterpreter v1402308257642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308229994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1402308229994 : ¬ MinimalInterpreter v1402308229994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402314781082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402314781082 : ¬ MinimalInterpreter v1402314781082 :=
  chain_cut false 2 (by decide)

private def v1402314775658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v1402314775658 : ¬ MinimalInterpreter v1402314775658 :=
  chain_cut false 2 (by decide)

private def v1402312995738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1402312995738 : ¬ MinimalInterpreter v1402312995738 :=
  chain_cut false 2 (by decide)

private def v1402312995562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1402312995562 : ¬ MinimalInterpreter v1402312995562 :=
  chain_cut false 2 (by decide)

private def v1402313011610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402313011610 : ¬ MinimalInterpreter v1402313011610 :=
  chain_cut false 2 (by decide)

private def v1402312569242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312569242 : ¬ MinimalInterpreter v1402312569242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312560026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312560026 : ¬ MinimalInterpreter v1402312560026 :=
  chain_cut false 2 (by decide)

private def v1402313006186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.var 0))))))
private theorem no_v1402313006186 : ¬ MinimalInterpreter v1402313006186 :=
  chain_cut false 2 (by decide)

private def v1402312559850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1402312559850 : ¬ MinimalInterpreter v1402312559850 :=
  chain_cut false 2 (by decide)

private def v1402312563818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0)) (.var 0))))))
private theorem no_v1402312563818 : ¬ MinimalInterpreter v1402312563818 :=
  chain_cut false 2 (by decide)

private def v1402312453226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v1402312453226 : ¬ MinimalInterpreter v1402312453226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312450922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1402312450922 : ¬ MinimalInterpreter v1402312450922 :=
  chain_cut false 2 (by decide)

theorem four145 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,1,1,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,1,1,0,0] = [v1402308817818,v1402308817642,v1402308812186,v1402308812010,v1402308810602,v1402308375450,v1402308375274,v1402308369818,v1402308259226,v1402308369642,v1402308368234,v1402308259050,v1402308257642,v1402308229994,v1402314781082,v1402314775658,v1402312995738,v1402312995562,v1402313011610,v1402312569242,v1402312560026,v1402313006186,v1402312559850,v1402312563818,v1402312453226,v1402312450922] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308817818) (.cons (no_v1402308817642) (.cons (no_v1402308812186) (.cons (no_v1402308812010) (.cons (no_v1402308810602) (.cons (no_v1402308375450) (.cons (no_v1402308375274) (.cons (no_v1402308369818) (.cons (no_v1402308259226) (.cons (no_v1402308369642) (.cons (no_v1402308368234) (.cons (no_v1402308259050) (.cons (no_v1402308257642) (.cons (no_v1402308229994) (.cons (no_v1402314781082) (.cons (no_v1402314775658) (.cons (no_v1402312995738) (.cons (no_v1402312995562) (.cons (no_v1402313011610) (.cons (no_v1402312569242) (.cons (no_v1402312560026) (.cons (no_v1402313006186) (.cons (no_v1402312559850) (.cons (no_v1402312563818) (.cons (no_v1402312453226) (.cons (no_v1402312450922) .nil))))))))))))))))))))))))))

private def v1402312997274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v1402312997274 : ¬ MinimalInterpreter v1402312997274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312997226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v1402312997226 : ¬ MinimalInterpreter v1402312997226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312560282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312560282 : ¬ MinimalInterpreter v1402312560282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312560234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v1402312560234 : ¬ MinimalInterpreter v1402312560234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312450986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v1402312450986 : ¬ MinimalInterpreter v1402312450986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four146 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,2,0,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,2,0,0,0] = [v1402312997274,v1402312997226,v1402312560282,v1402312560234,v1402312450986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312997274) (.cons (no_v1402312997226) (.cons (no_v1402312560282) (.cons (no_v1402312560234) (.cons (no_v1402312450986) .nil)))))

end Blc.SelfintSingleObject.Rows40
