import NonlinearCertificates
namespace Blc.FirstopNonlinear
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- A reader cannot reach a head whose finite weak-head clock is impossible. -/
theorem nocount_reduct {r : Term} (z : Bool) (n : Nat) (core : Term)
    (rest : List Term) (he : advance n (.app r (input z))=spine core rest)
    (hc : ∀ k, ¬ Count core k) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound n _) (reader_red hr z) (output_nf z)
  rw [he] at red
  obtain ⟨k,hk⟩ := hasNormalForm_count ⟨_,red,output_nf z⟩
  obtain ⟨m,_,hm⟩ := count_spine_reflect rest core k hk
  exact hc m hm

/-- A positive clock cost remains positive when the carried argument changes. -/
theorem argument_ratchet (core : Term) (f : Term → Term) (k : Nat) (hk : 0<k)
    (hs : ∀ a, weakSteps k (.app core a)=some (.app core (f a))) :
    ∀ n a, ¬ Count (.app core a) n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro a hc
    obtain ⟨m,hm,hcm⟩ := weakSteps_clock k (hs a) hc
    exact ih m (by omega) (f a) hcm

-- The two carried-argument cases: A A a ->^2 A A (a c) or A A (c a).
def carryRight : Term := .lam (.lam
  (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))
def carryLeft : Term := .lam (.lam
  (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))

theorem carryRight_step (a : Term) :
    weakSteps 2 (.app (.app carryRight carryRight) a) =
    some (.app (.app carryRight carryRight) (.app a (.var 0))) := by
  simp [carryRight, weakSteps, weakStep, contract, substDec, shift]

theorem carryLeft_step (a : Term) :
    weakSteps 2 (.app (.app carryLeft carryLeft) a) =
    some (.app (.app carryLeft carryLeft) (.app (.var 0) a)) := by
  simp [carryLeft, weakSteps, weakStep, contract, substDec, shift]

theorem carryRight_nocount (n : Nat) (a : Term) :
    ¬ Count (.app (.app carryRight carryRight) a) n :=
  argument_ratchet _ (fun a => .app a (.var 0)) 2 (by decide) carryRight_step n a

theorem carryLeft_nocount (n : Nat) (a : Term) :
    ¬ Count (.app (.app carryLeft carryLeft) a) n :=
  argument_ratchet _ (fun a => .app (.var 0) a) 2 (by decide) carryLeft_step n a

-- Eta-like towers are retained as source syntax; no eta quotient is used.
def wrapC (x : Term) : Term :=
  .lam (.app (.app (shift 1 0 x) (.var 0)) (.var 1))
def towerBase : Term := .lam (.app (.var 0)
  (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))
def towerC : Nat → Term
  | 0 => towerBase
  | n+1 => wrapC (towerC n)

theorem towerBase_step (a : Term) :
    weakStep (.app towerBase a)=some (.app a (wrapC a)) := by
  simp [towerBase,wrapC,weakStep,contract,substDec]

theorem wrapC_step (x a : Term) :
    weakStep (.app (wrapC x) a)=some (.app (.app x a) (.var 0)) := by
  simp [wrapC,weakStep,contract,substDec,substDec_shift]

theorem towerC_nocount : ∀ n i j, ¬ Count (.app (towerC i) (towerC j)) n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro i j hc
    cases i with
    | zero =>
      have hs : weakStep (.app (towerC 0) (towerC j))=
          some (.app (towerC j) (towerC (j+1))) := towerBase_step _
      obtain ⟨m,hm,hcm⟩ := head_decreases hc hs
      exact ih m hm j (j+1) hcm
    | succ i =>
      have hs : weakStep (.app (towerC (i+1)) (towerC j))=
          some (.app (.app (towerC i) (towerC j)) (.var 0)) := wrapC_step _ _
      obtain ⟨m,hm,hcm⟩ := head_decreases hc hs
      obtain ⟨k,hk,hck⟩ := count_app_reflect m _ _ hcm
      exact ih k (by omega) i j hck

#print axioms carryRight_nocount
#print axioms carryLeft_nocount
#print axioms towerC_nocount
end Blc.FirstopNonlinear
