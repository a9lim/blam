import Blc.SelfintSourceRefutations

namespace Blc.SelfintSingleObject.TwoPending
open Term SelfintFloor SelfintControl SelfintLowerBound WeakHeadClock SelfintWireCost
open Round3Floor38 (M tApps Advance advance_apps count_app_left)

inductive Mode where | leftPair | rightPair | single
inductive Perm where | xyz | xzy | yxz | yzx | zxy | zyx

def triple {α} (p : Perm) (ap : α → α → α) (x y z : α) : α :=
  match p with
  | .xyz => ap (ap x y) z
  | .xzy => ap (ap x z) y
  | .yxz => ap (ap y x) z
  | .yzx => ap (ap y z) x
  | .zxy => ap (ap z x) y
  | .zyx => ap (ap z y) x

def stepN {α} (m : Mode) (ap : α → α → α) (x j : α) : α :=
  match m with
  | .leftPair => ap (ap x j) x
  | .rightPair => ap x (ap x j)
  | .single => ap x j

def helper (m : Mode) (p : Perm) : Term :=
  .lam (stepN m Term.app (.var 0) (.lam (.lam (triple p Term.app (.var 2) (.var 1) (.var 0)))))

def inner (p : Perm) (x : Term) : Term :=
  .lam (.lam (triple p Term.app x (.var 1) (.var 0)))

def term (m : Mode) (p : Perm) : M → Term
  | .n => helper m p
  | .j x => inner p (term m p x)
  | .ap f a => .app (term m p f) (term m p a)

private theorem closed (m p) (x : M) : Closed (term m p x) := by
  induction x with
  | n => cases m <;> cases p <;> decide
  | ap _ _ hf ha => exact ⟨hf,ha⟩
  | j x ih =>
    have hx := closed_freeUnder ih 2
    cases p <;> simp [term,inner,triple,Closed,FreeUnder,hx]

private theorem nstep (m p) (x : Term) (hx : Closed x) :
    weakStep (.app (helper m p) x) = some (stepN m Term.app x (inner p x)) := by
  cases m <;> cases p <;> simp [helper,inner,stepN,triple,weakStep,contract,substDec,shift_closed _ _ hx]

private theorem jstep (p) (x y z : Term) (hx : Closed x) (hy : Closed y) :
    Advance (.app (.app (inner p x) y) z) (triple p Term.app x y z) := by
  let b := triple p Term.app x y (.var 0)
  have k : weakStep (.app (inner p x) y) = some (.lam b) := by
    cases p <;> simp [b,inner,triple,weakStep,contract,substDec,substDec_closed _ _ hx,shift_closed _ _ hy]
  refine ⟨_,weak_app k z,?_⟩
  have he : contract b z = triple p Term.app x y z := by
    cases p <;> simp [b,triple,contract,substDec,substDec_closed _ _ hx,substDec_closed _ _ hy]
  exact he ▸ (Betas.head (Beta.beta _ _) (.refl _))

/-- A head with two closed macro arguments can always contract and still
has two closed macro arguments pending. Additional terms may be arbitrary. -/
private theorem progress (m p) (f a b : M) (tail : List Term) :
    ∃ g c d rest, Advance (tApps (term m p f) (term m p a :: term m p b :: tail))
      (tApps (term m p g) (term m p c :: term m p d :: rest)) := by
  induction f generalizing a b tail with
  | ap u v ih _ => exact ih v a (term m p b :: tail)
  | n =>
    have h := nstep m p (term m p a) (closed m p a)
    have adv : Advance (.app (helper m p) (term m p a))
        (stepN m Term.app (term m p a) (inner p (term m p a))) :=
      ⟨_,h,.refl _⟩
    have lifted := advance_apps adv (term m p b :: tail)
    cases m with
    | leftPair => exact ⟨a,.j a,a,term .leftPair p b :: tail,lifted⟩
    | rightPair => exact ⟨a,.ap a (.j a),b,_,lifted⟩
    | single => exact ⟨a,.j a,b,_,lifted⟩
  | j x _ =>
    have h := advance_apps (jstep p (term m p x) (term m p a) (term m p b)
      (closed m p x) (closed m p a)) tail
    cases p with
    | xyz => exact ⟨x,a,b,_,h⟩
    | xzy => exact ⟨x,b,a,_,h⟩
    | yxz => exact ⟨a,x,b,_,h⟩
    | yzx => exact ⟨a,b,x,_,h⟩
    | zxy => exact ⟨b,x,a,_,h⟩
    | zyx => exact ⟨b,a,x,_,h⟩

theorem no_count (m p) (n : Nat) (f a b : M) (tail : List Term) :
    ¬ Count (tApps (term m p f) (term m p a :: term m p b :: tail)) n := by
  induction n using Nat.strongRecOn generalizing f a b tail with
  | ind n ih =>
    intro hn
    obtain ⟨g,c,d,rest,u,hu,hr⟩ := progress m p f a b tail
    obtain ⟨k,hk,hc⟩ := head_decreases hn hu
    obtain ⟨j,hj,hc'⟩ := count_reduct k hc hr
    exact ih j (by omega) g c d rest hc'

theorem excluded {e : Term} (m p) (f a b : M) (steps : Nat)
    (h : headSteps steps e = some (.app (.app (term m p f) (term m p a)) (term m p b))) :
    ¬ MinimalInterpreter e := by
  intro he
  obtain ⟨n,hc⟩ := hasNormalForm_count ⟨_,interpreter_idCall_betas he.1,idOutput_normal⟩
  obtain ⟨_,_,hf⟩ := count_app_left hc
  obtain ⟨k,_,hk⟩ := count_app_left hf
  obtain ⟨j,_,hj⟩ := count_reduct k hk (SelfintProbe.headReds_betas' h)
  exact no_count m p j f a b [] hj

end Blc.SelfintSingleObject.TwoPending
