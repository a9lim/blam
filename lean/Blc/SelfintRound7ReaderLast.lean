/-
The own-head placement in a normal three-lambda hand-off helper:

  J[p] = λu v. u (λz. z p[u,v,z]).

Every own-head capture preserves the old-head lock, independently of its
payload. Routed payloads therefore fail the reader laws uniformly. A
source-cost induction isolates three remaining cheap feedback shapes;
their exclusions use positive-head self-embeddings or an advancing tower.
The result covers this helper schema, not all four-lambda source terms.
-/
import Blc.SelfintRound7ReaderRoute

namespace Blc.SelfintRound7ReaderLast
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRound7ReaderRoute (Payload realize realize_subst price payload_source Routed
  Locked Preserves rigid_locked locked_app locked_before_betas locked_not_reader
  routed_locked middleUses realize_middle_irrelevant realize_occ_zero price_positive middle_price)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def capture (p : Payload) (x y : Term) : Term :=
  .lam (.app (.var 0) (realize p (shift 1 0 x) (shift 1 0 y) (.var 0)))

theorem capture_subst (p : Payload) (x y s : Term) (j : Nat) :
    substDec j s (capture p x y)=
      capture p (substDec j s x) (substDec j s y) := by
  simp only [capture,substDec,realize_subst]
  rw [← shift_substDec_lt x s j 0 (by omega),
    ← shift_substDec_lt y s j 0 (by omega)]
  simp

theorem capture_beta (p : Payload) (x y z : Term) :
    Beta (.app (capture p x y) z) (.app z (realize p x y z)) := by
  simpa only [capture,contract,substDec,realize_subst,substDec_shift,if_true] using
    Beta.beta (.app (.var 0)
      (realize p (shift 1 0 x) (shift 1 0 y) (.var 0))) z

theorem capture_step (p : Payload) (x y z : Term) :
    weakStep (.app (capture p x y) z)=some (.app z (realize p x y z)) := by
  simp only [capture,weakStep,contract,substDec,realize_subst,substDec_shift,if_true]

def helper (p : Payload) : Term :=
  .lam (.lam (.app (.var 1) (capture p (.var 1) (.var 0))))

def helperPartial (p : Payload) (x : Term) : Term :=
  .lam (.app (shift 1 0 x) (capture p (shift 1 0 x) (.var 0)))

theorem helper_beta (p : Payload) (x : Term) :
    Beta (.app (helper p) x) (helperPartial p x) := by
  simpa [helper,helperPartial,contract,substDec,capture_subst] using
    Beta.beta (.lam (.app (.var 1) (capture p (.var 1) (.var 0)))) x

theorem helper_step (p : Payload) (x : Term) :
    weakStep (.app (helper p) x)=some (helperPartial p x) := by
  simp [helper,helperPartial,weakStep,contract,substDec,capture_subst]

theorem helperPartial_beta (p : Payload) (x y : Term) :
    Beta (.app (helperPartial p x) y) (.app x (capture p x y)) := by
  simpa [helperPartial,contract,substDec,capture_subst,substDec_shift] using
    Beta.beta (.app (shift 1 0 x) (capture p (shift 1 0 x) (.var 0))) y

theorem helper_two (p : Payload) (x y : Term) :
    Betas (.app (.app (helper p) x) y) (.app x (capture p x y)) :=
  .head (.appL y (helper_beta p x)) (.head (helperPartial_beta p x y) (.refl _))

theorem helper_preserves (p : Payload) (heads : Nat → Prop) :
    Preserves heads (helper p) := by
  intro a ha b
  obtain ⟨u,k,hu,hh,hk⟩ := ha (capture p a b)
  exact ⟨u,k,betas_trans (helper_two p a b) hu,hh,hk⟩

/-- The own-head lambda preserves a lock with no payload condition. -/
theorem capture_preserves (p : Payload) (heads : Nat → Prop) (x y : Term) :
    Preserves heads (capture p x y) := by
  intro z hz
  exact locked_before_betas (locked_app hz _)
    (.head (capture_beta p x y z) (.refl _))

def diagonal (p : Payload) (c d : Term) : Term :=
  SelfintRound6ReaderFourth.root (.app (.var 0) (.var 0))
    (.app (.var 1) (capture p (.var 1) (.var 0))) c d

def inner (p : Payload) (c : Term) : Term := capture p (helper p) c
def outer (p : Payload) (c d : Term) : Term := capture p (inner p c) d
def payload (p : Payload) (c d : Term) : Term := realize p (helper p) c (outer p c d)

theorem diagonal_capture_pair (p : Payload) (c d : Term) :
    Betas (diagonal p c d) (.app (inner p c) (outer p c d)) := by
  have h0 : Beta (diagonal p c d)
      (.app (.app (.app (helper p) (helper p)) c) d) := by
    exact .appL d (.appL c (by
      simpa [helper,contract,substDec] using
        Beta.beta (.app (.var 0) (.var 0)) (helper p)))
  exact .head h0 (betas_trans (betas_app (helper_two p (helper p) c) (.refl d))
    (helper_two p (inner p c) d))

theorem diagonal_reduces (p : Payload) (c d : Term) :
    Betas (diagonal p c d)
      (.app (payload p c d) (realize p (inner p c) d (payload p c d))) :=
  betas_trans (diagonal_capture_pair p c d)
    (.head (capture_beta p (helper p) c (outer p c d))
      (.head (capture_beta p (inner p c) d (payload p c d)) (.refl _)))

theorem diagonal_locked {p : Payload} (hp : Routed p) {heads : Nat → Prop} (c d : Term)
    (hc : Locked heads c) : Locked heads (diagonal p c d) := by
  have hh := routed_locked hp (helper p) c (outer p c d)
    (helper_preserves p heads) hc (capture_preserves p heads _ _)
  exact locked_before_betas (locked_app hh _) (diagonal_reduces p c d)

theorem routed_not_reader {p : Payload} (hp : Routed p) (c d : Term) (hc : Rigid c) :
    ¬ Reader (diagonal p c d) := by
  intro hr
  obtain ⟨k,hk⟩ := SelfintFlatSemantics.rigidHead_exists hc
  have hscope : FreeUnder 2 c := hr.scope.1.2
  have hbound := SelfintRound6ReaderFourth.rigidHead_scope hk hscope
  exact locked_not_reader
    (diagonal_locked (heads:=fun k => k<2) hp c d (rigid_locked hk hbound)) (by omega) hr

theorem helper_closed (p : Payload) : Closed (helper p) := by
  simpa [Closed,helper,capture,shift,FreeUnder] using (payload_source p).2.1

theorem helper_normal (p : Payload) : NormalForm (helper p) := by
  apply SelfintClassNext.nft_normal
  have hn := SelfintRootFlat.flat_nf _ (payload_source p).1
  simpa [helper,capture,shift,NFt,IsLam] using hn

theorem diagonal_source (p : Payload) :
    lamCount (diagonal p (.var 0) (.var 1))=4 ∧
    depth (diagonal p (.var 0) (.var 1))=0 ∧
    occ 1 (diagonal p (.var 0) (.var 1))=1 ∧
    cost (diagonal p (.var 0) (.var 1))=31+price p := by
  have hl := (payload_source p).1
  have hp := (payload_source p).2.2
  have ho := occ_of_freeUnder _ 3 4 (payload_source p).2.1 (by omega)
  have hd := occDepth_zero ho
  simp [diagonal,SelfintRound6ReaderFourth.root,capture,spine,shift,
    lamCount,depth,occDepth,occ,cost,holeCost,hl,ho,hd,hp]
  omega

theorem capture_middle_irrelevant {p : Payload} (hp : middleUses p=0)
    (x y y' : Term) : capture p x y=capture p x y' := by
  unfold capture
  rw [realize_middle_irrelevant hp _ _ (shift 1 0 y') _]

theorem capture_occ_zero (p : Payload) (x y : Term) (j : Nat)
    (hx : occ j x=0) (hy : occ j y=0) : occ j (capture p x y)=0 := by
  have hx' : occ (j+1) (shift 1 0 x)=0 := by rw [occ_shift_ge x j 0 (by omega),hx]
  have hy' : occ (j+1) (shift 1 0 y)=0 := by rw [occ_shift_ge y j 0 (by omega),hy]
  have hz : occ (j+1) (.var 0)=0 := by simp [occ]
  change occ (j+1) (.var 0)+
    occ (j+1) (realize p (shift 1 0 x) (shift 1 0 y) (.var 0))=0
  rw [hz,realize_occ_zero p _ _ _ _ hx' hy' hz]

theorem absent_middle_not_reader {p : Payload} (hp : middleUses p=0) :
    ¬ Reader (diagonal p (.var 0) (.var 1)) := by
  intro hr
  have hred := diagonal_capture_pair p (.var 0) (.var 1)
  have he : inner p (.var 0)=inner p (.var 1) :=
    capture_middle_irrelevant hp (helper p) _ _
  unfold outer at hred
  rw [he] at hred
  have hr' := reader_betas hr hred
  have hh : occ 0 (helper p)=0 := occ_of_freeUnder _ 0 0 (helper_closed p) (by omega)
  have hd : occ 0 (.var 1)=0 := by decide
  have h1 : occ 0 (inner p (.var 1))=0 := capture_occ_zero p _ _ 0 hh hd
  have h2 := capture_occ_zero p (inner p (.var 1)) (.var 1) 0 h1 hd
  have hc := reader_c hr'
  change 1≤occ 0 (inner p (.var 1))+occ 0 (capture p (inner p (.var 1)) (.var 1)) at hc
  omega

def zzv : Payload := .app (.app .last .last) .middle
def uzv : Payload := .app (.app .first .last) .middle
def zuv : Payload := .app (.app .last .first) .middle

def zzvLoop (c d : Term) : Term := .app (outer zzv c d) (outer zzv c d)

theorem zzv_embedding (c d a : Term) :
    Interleaved 1 (.app (zzvLoop c d) a)
      (spine (.app (zzvLoop c d) d)
        [.app (.app (.app (zzvLoop c d) d) (.app (zzvLoop c d) d)) d,a]) := by
  have hs : weakStep (.app (zzvLoop c d) a)=
      some (.app (.app (outer zzv c d) (.app (zzvLoop c d) d)) a) := by
    simpa only [zzvLoop,outer,zzv,realize] using
      weak_app (capture_step zzv (inner zzv c) d (outer zzv c d)) a
  have hb : Beta (.app (outer zzv c d) (.app (zzvLoop c d) d))
      (.app (.app (zzvLoop c d) d)
        (.app (.app (.app (zzvLoop c d) d) (.app (zzvLoop c d) d)) d)) := by
    simpa only [outer,zzv,realize] using
      capture_beta zzv (inner zzv c) d (.app (zzvLoop c d) d)
  exact .head hs (.beta (.appL a hb) (.refl _))

theorem zzv_loop_no_count (c d : Term) (n : Nat) :
    ¬ Count (.app (zzvLoop c d) d) n :=
  SelfintRootLetEmbedding.self_embedding_no_count (zzv_embedding c d d) (by decide) n

theorem zzv_loop_arg_no_count (c d a : Term) (n : Nat) :
    ¬ Count (.app (zzvLoop c d) a) n := by
  intro hc
  obtain ⟨m,hm,hcm⟩ := SelfintRootLetEmbedding.Interleaved.remaining hc (zzv_embedding c d a)
  obtain ⟨q,hq,hcq⟩ := count_spine_fn
    [.app (.app (.app (zzvLoop c d) d) (.app (zzvLoop c d) d)) d,a] hcm
  exact zzv_loop_no_count c d q hcq

theorem zzv_not_reader (c d : Term) : ¬ Reader (diagonal zzv c d) := by
  intro hr
  have hr' := reader_betas hr (diagonal_reduces zzv c d)
  exact SelfintRootLetEmbedding.no_reader_of_no_count (.app (zzvLoop c d) c)
    (zzv_loop_arg_no_count c d c)
    [.app (.app (.app (zzvLoop c d) c) (.app (zzvLoop c d) c)) d] hr'

def zuvPair (c d : Term) : Term := .app (inner zuv c) (outer zuv c d)
def zuvArg (c d : Term) : Term := .app (.app (outer zuv c d) (helper zuv)) c
def zuvTail (c d : Term) : Term := .app (.app (zuvArg c d) (inner zuv c)) d

theorem zuv_arg_reduces (c d : Term) :
    Betas (zuvArg c d) (.app (zuvPair c d) (capture zuv (zuvPair c d) c)) := by
  have hb : Beta (.app (outer zuv c d) (helper zuv))
      (.app (helper zuv) (.app (.app (helper zuv) (inner zuv c)) d)) := by
    simpa only [outer,zuv,realize] using capture_beta zuv (inner zuv c) d (helper zuv)
  have hp : Betas (.app (.app (helper zuv) (inner zuv c)) d) (zuvPair c d) :=
    helper_two zuv (inner zuv c) d
  exact .head (.appL c hb)
    (betas_trans (betas_app (betas_app (.refl (helper zuv)) hp) (.refl c))
      (helper_two zuv (zuvPair c d) c))

theorem zuv_embedding (c d : Term) :
    Interleaved 1 (zuvPair c d)
      (spine (zuvPair c d) [capture zuv (zuvPair c d) c,zuvTail c d]) := by
  have hs : weakStep (zuvPair c d)=some (.app (outer zuv c d) (zuvArg c d)) := by
    simpa only [zuvPair,inner,zuvArg,zuv,realize] using
      capture_step zuv (helper zuv) c (outer zuv c d)
  have hb : Beta (.app (outer zuv c d) (zuvArg c d))
      (.app (zuvArg c d) (zuvTail c d)) := by
    simpa only [outer,zuvTail,zuv,realize] using
      capture_beta zuv (inner zuv c) d (zuvArg c d)
  exact .head hs (.beta hb (SelfintRootLetEmbedding.Interleaved.of_betas
    (betas_app (zuv_arg_reduces c d) (.refl (zuvTail c d)))))

theorem zuv_no_count (c d : Term) (n : Nat) : ¬ Count (zuvPair c d) n :=
  SelfintRootLetEmbedding.self_embedding_no_count (zuv_embedding c d) (by decide) n

theorem zuv_not_reader (c d : Term) : ¬ Reader (diagonal zuv c d) := by
  intro hr
  have hr' := reader_betas hr (diagonal_capture_pair zuv c d)
  exact SelfintRootLetEmbedding.no_reader_of_no_count (zuvPair c d) (zuv_no_count c d) [] hr'

/-- Capture towers retain their bottom middle parameter. All higher
    middle parameters are arbitrary terms. -/
inductive Tower (c : Term) : Term → Prop where
  | base : Tower c (inner uzv c)
  | step {t : Term} (b : Term) : Tower c t → Tower c (capture uzv t b)

theorem tower_reduces {c t : Term} (ht : Tower c t) (h : Term) :
    ∃ cs, Betas (.app t (capture uzv h c))
      (spine (.app (.app (helper uzv) (capture uzv h c)) c) cs) := by
  let x := capture uzv h c
  induction ht with
  | base =>
    refine ⟨[.app (.app h (.app (.app (helper uzv) x) c)) c],?_⟩
    exact .head (capture_beta uzv (helper uzv) c x)
      (.head (capture_beta uzv h c (.app (.app (helper uzv) x) c)) (.refl _))
  | @step t b ht ih =>
    obtain ⟨cs,hcs⟩ := ih
    let q : Term := .app (.app t x) b
    refine ⟨cs++[b,.app (.app h q) c],?_⟩
    have hr : Betas (.app (capture uzv t b) x)
        (spine (.app t x) [b,.app (.app h q) c]) :=
      .head (capture_beta uzv t b x)
        (.head (capture_beta uzv h c q) (.refl _))
    exact betas_trans hr (by
      simpa only [SelfintLetSink.spine_append] using
        betas_spine hcs [b,.app (.app h q) c])

def grow (c d : Term) : Nat → Term
  | 0 => outer uzv c d
  | n+1 => capture uzv (grow c d n) c

theorem grow_tower (c d : Term) (n : Nat) : Tower c (grow c d n) := by
  induction n with
  | zero => exact .step d .base
  | succ n ih => exact .step c ih

def advancing (c d : Term) (n : Nat) : Term := .app (.app (helper uzv) (grow c d n)) c

theorem advancing_transition (c d : Term) (n : Nat) :
    ∃ cs, Interleaved 1 (advancing c d n) (spine (advancing c d (n+1)) cs) := by
  obtain ⟨cs,hcs⟩ := tower_reduces (grow_tower c d n) (grow c d n)
  refine ⟨cs,.head (weak_app (helper_step uzv (grow c d n)) c) ?_⟩
  exact .beta (helperPartial_beta uzv (grow c d n) c)
    (SelfintRootLetEmbedding.Interleaved.of_betas hcs)

theorem advancing_no_count (c d : Term) : ∀ n i, ¬ Count (advancing c d i) n := by
  apply SelfintRootLetEmbedding.advancing_no_count
  intro i
  obtain ⟨cs,hcs⟩ := advancing_transition c d i
  exact ⟨1,cs,by decide,hcs⟩

theorem uzv_not_reader (c d : Term) : ¬ Reader (diagonal uzv c d) := by
  intro hr
  have hr' := reader_betas hr (diagonal_reduces uzv c d)
  exact SelfintRootLetEmbedding.no_reader_of_no_count (advancing c d 0)
    (fun n => advancing_no_count c d n 0)
    [.app (.app (inner uzv c) (advancing c d 0)) d] hr'

theorem small_middle_six {p : Payload} (hp : 0<middleUses p) (hw : price p≤6) :
    p=.middle := by
  cases p with
  | first => simp [middleUses] at hp
  | middle => rfl
  | last => simp [middleUses] at hp
  | app p q =>
    have hpp := price_positive p
    have hpq := price_positive q
    have hsum : 0<middleUses p+middleUses q := hp
    by_cases hz : middleUses p=0
    · have hq := middle_price (show 0<middleUses q by omega)
      simp only [price] at hw; omega
    · have hp := middle_price (show 0<middleUses p by omega)
      simp only [price] at hw; omega

theorem small_absent_five {p : Payload} (hp : middleUses p=0) (hw : price p≤5) :
    p=.first ∨ p=.last := by
  cases p with
  | first => exact .inl rfl
  | middle => simp [middleUses] at hp
  | last => exact .inr rfl
  | app p q =>
    have hpp := price_positive p
    have hpq := price_positive q
    simp only [price] at hw; omega

def Feedback (p : Payload) : Prop := p=zzv ∨ p=uzv ∨ p=zuv

theorem feedback_price {p : Payload} (hp : Feedback p) : 11≤price p := by
  rcases hp with rfl | rfl | rfl <;> decide

/-- Structural classification by the exact payload price. Any un-routed
    live middle occurrence has one of three literal two-application
    feedback prefixes; no inventory or source generator is used. -/
theorem payload_fourteen (p : Payload) (hw : price p≤14) :
    Routed p ∨ middleUses p=0 ∨ Feedback p := by
  induction p with
  | first => exact .inr (.inl rfl)
  | middle => exact .inl .middle
  | last => exact .inr (.inl rfl)
  | app f a ihf iha =>
    have hfp := price_positive f
    have hap := price_positive a
    have hfsmall : price f≤14 := by change 2+price f+price a≤14 at hw; omega
    have hasmall : price a≤14 := by change 2+price f+price a≤14 at hw; omega
    rcases ihf hfsmall with hfr | hfz | hfe
    · exact .inl (.app a hfr)
    · by_cases haz : middleUses a=0
      · exact .inr (.inl (by simp [middleUses,hfz,haz]))
      · have hal : 0<middleUses a := by omega
        have haw := middle_price hal
        cases f with
        | first =>
          rcases iha hasmall with har | haz | hae
          · exact .inl (.first har)
          · omega
          · have hh := feedback_price hae
            simp only [price] at hw; omega
        | last =>
          rcases iha hasmall with har | haz | hae
          · exact .inl (.last har)
          · omega
          · have hh := feedback_price hae
            simp only [price] at hw; omega
        | middle => simp [middleUses] at hfz
        | app f g =>
          have hpf := price_positive f
          have hpg := price_positive g
          have hcost := hw
          simp only [price] at hcost
          have haeq : a=.middle := small_middle_six hal (by omega)
          subst a
          have huses : middleUses f+middleUses g=0 := hfz
          have hfeq : f=.first ∨ f=.last :=
            small_absent_five (by omega) (by simp only [price] at hcost; omega)
          have hgeq : g=.first ∨ g=.last :=
            small_absent_five (by omega) (by simp only [price] at hcost; omega)
          rcases hfeq with rfl | rfl <;> rcases hgeq with rfl | rfl
          · simp [price] at hw
          · exact .inr (.inr (.inr (.inl rfl)))
          · exact .inr (.inr (.inr (.inr rfl)))
          · exact .inr (.inr (.inl rfl))
    · have hh := feedback_price hfe
      change 2+price f+price a≤14 at hw
      omega

/-- Every applicative payload in the own-head helper schema is excluded
    below reader weight 46. Divergence is proved symbolically for the
    feedback branches, with unrestricted pending operands. -/
theorem diagonal_budget_not_reader (p : Payload)
    (hw : cost (diagonal p (.var 0) (.var 1))≤45) :
    ¬ Reader (diagonal p (.var 0) (.var 1)) := by
  have hp := (diagonal_source p).2.2.2
  have hbound : price p≤14 := by omega
  rcases payload_fourteen p hbound with hroute | habsent | hfeedback
  · exact routed_not_reader hroute _ _ (.var _)
  · exact absent_middle_not_reader habsent
  · rcases hfeedback with rfl | rfl | rfl
    · exact zzv_not_reader _ _
    · exact uzv_not_reader _ _
    · exact zuv_not_reader _ _

theorem diagonal_reader_weight_floor (p : Payload)
    (hr : Reader (diagonal p (.var 0) (.var 1))) :
    46≤weight 0 (diagonal p (.var 0) (.var 1)) := by
  have hcost : 46≤cost (diagonal p (.var 0) (.var 1)) := by
    by_cases h : 46≤cost (diagonal p (.var 0) (.var 1))
    · exact h
    · exact (diagonal_budget_not_reader p (by omega) hr).elim
  rw [weight_eq_class]
  omega

#print axioms capture_preserves
#print axioms routed_not_reader
#print axioms zzv_not_reader
#print axioms zuv_not_reader
#print axioms uzv_not_reader
#print axioms payload_fourteen
#print axioms diagonal_budget_not_reader
#print axioms diagonal_reader_weight_floor
end Blc.SelfintRound7ReaderLast
