/-
A source self-embedding criterion allowing internal beta simplification
between genuine weak-head steps. If t returns to t C1...Ck with at least
one selected weak-head step, it has no finite weak-head clock. The proof
uses clock monotonicity under arbitrary beta reduction, so it does not
mistake an arbitrary beta cycle for divergence.

For A=lambda x.x(lambda y.x(y(lambda z.x))), four selected head steps and
five internal beta steps take A A to (A A) F(A A), where
F(X)=lambda y.X(y(K X)). Therefore A A has no weak-head normal form,
independently of all pending arguments. The nine concrete pending sources
2162--2164 and 9030--9035 are instances. No bounded reduction or source
inventory is used in this proof.
-/
import Blc.SelfintRootLetOrbit
namespace Blc.SelfintRootLetEmbedding
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (keep keep_apply reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

theorem Interleaved.remaining {t u : Term} {n k : Nat} (ht : Count t n)
    (hr : Interleaved k t u) : ∃ m, k+m≤n ∧ Count u m := by
  induction hr generalizing n with
  | refl t => exact ⟨n,by omega,ht⟩
  | beta hb hr ih =>
    obtain ⟨q,hq,hcq⟩ := count_reduct n ht (.head hb (.refl _))
    obtain ⟨m,hm,hcm⟩ := ih hcq
    exact ⟨m,by omega,hcm⟩
  | head hs hr ih =>
    obtain ⟨q,hq,hcq⟩ := head_decreases ht hs
    obtain ⟨m,hm,hcm⟩ := ih hcq
    exact ⟨m,by omega,hcm⟩

/-- A self-embedding with at least one genuine weak-head step precludes a
    finite head clock. Other beta steps may occur anywhere. -/
theorem self_embedding_no_count {t : Term} {cs : List Term} {k : Nat}
    (hr : Interleaved k t (spine t cs)) (hk : 0<k) (n : Nat) : ¬ Count t n := by
  intro hc
  obtain ⟨m,hm,hcm⟩ := Interleaved.remaining hc hr
  obtain ⟨q,hq,hcq⟩ := count_spine_fn cs hcm
  have he := count_unique hc hcq
  omega

theorem Interleaved.of_betas {t u : Term} (hr : Betas t u) : Interleaved 0 t u := by
  induction hr with
  | refl t => exact .refl _
  | head hb hs ih => exact .beta hb ih

theorem Interleaved.trans {t u v : Term} {n m : Nat}
    (hr : Interleaved n t u) (hs : Interleaved m u v) : Interleaved (n+m) t v := by
  induction hr with
  | refl => simpa only [Nat.zero_add] using hs
  | beta hb ht ih => exact .beta hb (ih hs)
  | head hh ht ih => simpa only [Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using Interleaved.head hh (ih hs)

/-- A positive-head transition to the next member of any family, with
    arbitrary extra arguments, likewise rules out every finite clock. -/
theorem advancing_no_count (state : Nat → Term)
    (hs : ∀ i, ∃ k cs, 0<k ∧ Interleaved k (state i) (spine (state (i+1)) cs)) :
    ∀ n i, ¬ Count (state i) n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro i hc
    obtain ⟨k,cs,hk,hr⟩ := hs i
    obtain ⟨m,hm,hcm⟩ := Interleaved.remaining hc hr
    obtain ⟨q,hq,hcq⟩ := count_spine_fn cs hcm
    exact ih q (by omega) (i+1) hcq

def weakRun : Nat → Term → Option Term
  | 0, t => some t
  | n+1, t => (weakStep t).bind (weakRun n)

theorem weakRun_interleaved : ∀ n t u, weakRun n t=some u → Interleaved n t u := by
  intro n
  induction n with
  | zero => intro t u h; simp only [weakRun,Option.some.injEq] at h; subst u; exact .refl _
  | succ n ih =>
    intro t u h
    simp only [weakRun,Option.bind_eq_some_iff] at h
    obtain ⟨v,hv,hu⟩ := h
    exact .head hv (ih v u hu)

theorem no_reader_of_no_count (a : Term) (hn : ∀ n, ¬ Count a n) (cs : List Term) :
    ¬ Reader (spine a cs) := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨q,hq,hcq⟩ := count_spine_fn cs hcm
  exact hn q hcq

/-- F(X)=lambda y. X (y (K X)). -/
def F (x : Term) : Term :=
  .lam (.app (shift 1 0 x) (.app (.var 0) (shift 1 0 (keep x))))

/-- A=lambda x. x (lambda y. x (y (lambda z.x))). -/
def A : Term := .lam (.app (.var 0) (.lam
  (.app (.var 1) (.app (.var 0) (.lam (.var 2))))))

theorem F_apply (x y : Term) : Beta (.app (F x) y) (.app x (.app y (keep x))) := by
  simpa only [F,contract,substDec,substDec_shift,if_true] using
    Beta.beta (.app (shift 1 0 x) (.app (.var 0) (shift 1 0 (keep x)))) y

theorem A_apply (x : Term) : Beta (.app A x) (.app x (F x)) := by
  simpa [A,F,keep,contract,substDec,shift,shift_shift x 0 0 (Nat.le_refl 0)] using
    Beta.beta (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))) x

theorem A_step (x : Term) : weakStep (.app A x)=some (.app x (F x)) := by
  simp [A,F,keep,weakStep,contract,substDec,shift,shift_shift x 0 0 (Nat.le_refl 0)]

theorem F_step (x y : Term) : weakStep (.app (F x) y)=some (.app x (.app y (keep x))) := by
  simp only [F,weakStep,contract,substDec,substDec_shift,if_true]

theorem argument_return : Betas (.app (F (F A)) (keep A)) (.app A A) :=
  .head (F_apply _ _) (.head (.appR (F A) (keep_apply _ _))
    (.head (F_apply _ _) (.head (.appR A (A_apply _))
      (.head (.appR A (keep_apply _ _)) (.refl _)))))

/-- Four selected head contractions, with five internal beta steps between
    the third and fourth, recreate A A with one extra pending argument. -/
theorem A_embedding : Interleaved 4 (.app A A) (spine (.app A A) [F (.app A A)]) := by
  have hs : Interleaved 1 (.app A (.app (F (F A)) (keep A)))
      (.app (.app A A) (F (.app A A))) := by
    exact Interleaved.trans (Interleaved.of_betas (betas_appR A argument_return))
      (.head (A_step _) (.refl _))
  exact .head (A_step A) (.head (A_step _) (.head (F_step _ _) hs))

theorem A_diagonal_no_count (n : Nat) : ¬ Count (.app A A) n :=
  self_embedding_no_count A_embedding (by decide) n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem diagonal_not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  have hb := SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs
  have hr' := hr.beta hb
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr'.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨q,hq,hcq⟩ := count_spine_fn cs hcm
  exact A_diagonal_no_count q hcq

def I : Term := .lam (.var 0)

def pending2162 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending2163 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending2164 : Term := spine diagonal [.var 0,.var 0,.var 1]
def pending9030 : Term := spine diagonal [I,.var 1,.var 0]
def pending9031 : Term := spine diagonal [I,.var 0,.var 1]
def pending9032 : Term := spine diagonal [.var 1,I,.var 0]
def pending9033 : Term := spine diagonal [.var 1,.var 0,I]
def pending9034 : Term := spine diagonal [.var 0,I,.var 1]
def pending9035 : Term := spine diagonal [.var 0,.var 1,I]

theorem pending_weights :
    weight 0 pending2162=43 ∧ weight 0 pending2163=43 ∧ weight 0 pending2164=43 ∧
    weight 0 pending9030=45 ∧ weight 0 pending9031=45 ∧ weight 0 pending9032=45 ∧
    weight 0 pending9033=45 ∧ weight 0 pending9034=45 ∧ weight 0 pending9035=45 := by decide

theorem pending2162_not_reader : ¬ Reader pending2162 := diagonal_not_reader _
theorem pending2163_not_reader : ¬ Reader pending2163 := diagonal_not_reader _
theorem pending2164_not_reader : ¬ Reader pending2164 := diagonal_not_reader _
theorem pending9030_not_reader : ¬ Reader pending9030 := diagonal_not_reader _
theorem pending9031_not_reader : ¬ Reader pending9031 := diagonal_not_reader _
theorem pending9032_not_reader : ¬ Reader pending9032 := diagonal_not_reader _
theorem pending9033_not_reader : ¬ Reader pending9033 := diagonal_not_reader _
theorem pending9034_not_reader : ¬ Reader pending9034 := diagonal_not_reader _
theorem pending9035_not_reader : ¬ Reader pending9035 := diagonal_not_reader _

#print axioms A_embedding
#print axioms diagonal_not_reader
end Blc.SelfintRootLetEmbedding
