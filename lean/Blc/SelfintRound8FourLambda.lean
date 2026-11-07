/-
The exact three-source-lambda boundary.

The unconditional three-live-binder source theorem forces a flat nonlinear
sharing body and a closed two-lambda helper. Both helper binders are live
and lie on one ancestor path. A beta step in that helper would remove a
lambda without copying another, violating the three-live-binder floor.
Thus the helper is already normal, with no minimum-size assumption.
Every pure application algebra over a normal closed two-lambda helper is
excluded. Therefore every exact self-interpreter has at least four source
lambdas. This does not raise the three-live-binder bound: dead source
abstractions remain possible.
-/
import Blc.SelfintRound7NextSourceShape
import Blc.SelfintRound8GlobalOffPrefix

namespace Blc.SelfintRound8FourLambda
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintClass SelfintClassNext SelfintWiden SelfintRound7SourceShape

/-- Exact source shape at at most three lambdas. Normality is forced by
the interpreter contract, rather than imposed as an architecture premise. -/
theorem three_lambda_root_normal {E : Term} (hE : IsSelfInterpreter E)
    (hl : lamCount E ≤ 3) :
    ∃ B A, E = .app (.lam B) A ∧ FreeUnder 1 B ∧ lamCount B = 0 ∧
      Closed A ∧ lamCount A = 2 ∧ NFt A := by
  have hLive : live E ≤ 3 := Nat.le_trans (live_le_lamCount E) hl
  obtain ⟨B,A,rfl,hB,hA,ho,hbLive,haLive,hcap⟩ :=
    three_live_root_resources hE hLive
  have haCount := live_le_lamCount A
  have hbCount : lamCount B = 0 := by simp only [lamCount] at hl; omega
  have haCountEq : lamCount A = 2 := by simp only [lamCount] at hl; omega
  have hchain := linearLiveTree_of_marked A
    (QuoteOrigins.Marked.two_live_capture_chain A (by omega) hcap)
  have hnormal : NormalForm A := by
    intro A' hstep
    have hless := SelfintRound7NextSourceShape.live_chain_beta_lambdas
      hstep hchain (by omega)
    have hi := selfInterpreter_beta hE (Beta.appR (.lam B) hstep)
    have hlo := selfInterpreter_three_live hi
    have hhi := live_le_lamCount (.app (.lam B) A')
    simp only [lamCount,hbCount] at hhi
    omega
  exact ⟨B,A,rfl,hB,hbCount,hA,haCountEq,normal_nft hnormal⟩

/-- Unconditional source-lambda lower bound for the exact closed-source
interpreter contract. No architecture, normality, or size assumption. -/
theorem selfInterpreter_four_lambdas {E : Term} (hE : IsSelfInterpreter E) :
    4 ≤ lamCount E := by
  by_cases hl : 4 ≤ lamCount E
  · exact hl
  · obtain ⟨B,A,rfl,hB,hb,hA,ha,hn⟩ := three_lambda_root_normal hE (by omega)
    exact (SelfintRound8GlobalOffPrefix.normal_two_lambda_sharing_not_selfInterpreter
      B A hB hb hA hn (by omega) hE).elim

#print axioms three_lambda_root_normal
#print axioms selfInterpreter_four_lambdas
end Blc.SelfintRound8FourLambda
