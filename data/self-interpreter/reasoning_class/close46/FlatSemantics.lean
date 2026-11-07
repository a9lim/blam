import SourceFront
import Blc.SelfintInert

/- Exact, all-length semantics of lambda-free source arguments. No search. -/
namespace Blc.Close46Flat
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Close46Source Close46Local Close46Dispatch Round3Reader SelfintInert

set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def input (n : Nat) : Term := streamOf (vbits n) (.var 2)
def out (n : Nat) : Term := .app (.app (.var 0) (input n)) (.var 2)
def zconst : Term := .lam (.var 4)
def uconst : Term := .lam (.var 3)

/-- Applications of a free neutral never occur inside a Scott bitstream. -/
theorem rigidHead_shift {k : Nat} {t : Term} (h : RigidHead k t) :
    RigidHead (k+1) (shift 1 0 t) := by
  induction h with
  | var => simp only [shift, Nat.zero_le, if_true]; exact .var
  | app a h ih => exact .app _ ih

theorem rigidHead_unique {i j : Nat} {t : Term}
    (h : RigidHead i t) (h' : RigidHead j t) : i = j := by
  induction h with
  | var => cases h'; rfl
  | app a h ih => cases h' with | app _ h' => exact ih h'

theorem avoid_bit (b : Bool) (f a : Term) : Avoid (.app f a) (churchBit b) := by
  cases b <;> simp [churchBit, churchTrue, churchFalse, Avoid, shift]

theorem avoid_stream (bits : List Bool) (N k : Nat) (f a : Term)
    (h : RigidHead k f) : Avoid (.app f a) (streamOf bits (.var N)) := by
  induction bits generalizing N k f a with
  | nil => simp [streamOf, Avoid]
  | cons b bs ih =>
    rw [streamOf_cons]
    change ((Term.lam _) ≠ Term.app f a) ∧ Avoid (.app (shift 1 0 f) (shift 1 0 a))
      (.app (.app (.var 0) (shift 1 0 (churchBit b)))
        (shift 1 0 (streamOf bs (.var N))))
    have hh := rigidHead_shift h
    have hne : ∀ args, spine (.var 0) args ≠ .app (shift 1 0 f) (shift 1 0 a) := by
      intro args he
      have hx := spine_rigidHead 0 args
      rw [he] at hx
      have hk := rigidHead_unique hx (RigidHead.app _ hh)
      omega
    refine And.intro (by intro he; cases he) ?_
    refine ⟨?_, ⟨?_, ?_, ?_⟩, ?_⟩
    · exact hne [shift 1 0 (churchBit b), shift 1 0 (streamOf bs (.var N))]
    · exact hne [shift 1 0 (churchBit b)]
    · simp [Avoid]
    · rw [shift_churchBit]; exact avoid_bit b _ _
    · rw [shift_streamOf]
      simp only [shift, Nat.zero_le, if_true]
      exact ih (N+1) (k+1) _ _ hh

theorem rigidHead_exists {t : Term} (h : Rigid t) : ∃ k, RigidHead k t := by
  induction h with
  | var n => exact ⟨n,.var⟩
  | app a h ih => obtain ⟨k,hk⟩ := ih; exact ⟨k,.app a hk⟩

theorem avoid_input {f : Term} (h : Rigid f) (a : Term) (n : Nat) :
    Avoid (.app f a) (input n) := by
  obtain ⟨k,hk⟩ := rigidHead_exists h
  exact avoid_stream (vbits n) 2 k f a hk

theorem input_nf (n : Nat) : NFt (input n) := by
  have aux (bits : List Bool) (N : Nat) : NFt (streamOf bits (.var N)) := by
    induction bits generalizing N with
    | nil => trivial
    | cons b bs ih =>
      rw [streamOf_cons]
      change NFt (.app (.app (.var 0) (shift 1 0 (churchBit b)))
        (shift 1 0 (streamOf bs (.var N))))
      refine ⟨by simp [IsLam], ⟨by simp [IsLam], trivial, ?_⟩, ?_⟩
      · rw [shift_churchBit]; cases b <;> decide
      · rw [shift_streamOf]; simp only [shift, Nat.zero_le, if_true]
        exact ih (N+1)
  exact aux _ _

theorem input_lam (n : Nat) : IsLam (input n) := by
  cases n with
  | zero => trivial
  | succ n =>
    unfold input
    rw [stream_vbits_succ]
    trivial

theorem input_lambdas (n : Nat) : lamCount (input n) = 3*(n+1) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change lamCount (streamOf (vbits (n+1)) (.var 2)) = _
    rw [stream_vbits_succ]
    simp only [pairT, lamCount, lamCount_shift]
    change 0 + 2 + lamCount (input n) + 1 = _
    omega

theorem input_ne_prev (n : Nat) : input (n+1) ≠ input n := by
  intro he
  have hh := congrArg lamCount he
  rw [input_lambdas, input_lambdas] at hh
  omega

theorem out_normal (n : Nat) : NormalForm (out n) :=
  fun _ h => nft_no_beta
    (show NFt (out n) from ⟨by simp [IsLam],
      ⟨by simp [IsLam], trivial, input_nf n⟩, trivial⟩) h

/-- The only problematic c-headed prefixes of the target are c (input n)
    and that prefix applied to N. -/
def Guard (n : Nat) : Term → Prop
  | .var _ => True
  | .lam _ => True
  | .app f a => Guard n f ∧ (f = .var 0 → a ≠ input n)

theorem guard_not_out {n : Nat} {t : Term} (h : Guard n t) : t ≠ out n := by
  intro he; subst t; exact h.1.2 rfl rfl

theorem guard_not_prefix {n : Nat} {t : Term} (h : Guard n t) :
    t ≠ .app (.var 0) (input n) := by
  intro he; subst t; exact h.2 rfl rfl

theorem guard_avoid_out {n : Nat} {f a : Term} (hr : Rigid f)
    (hg : Guard n (.app f a)) : Avoid (.app f a) (out n) := by
  refine ⟨fun h => guard_not_out hg h.symm,
    ⟨fun h => guard_not_prefix hg h.symm, ?_, avoid_input hr a n⟩, ?_⟩ <;> simp [Avoid]

theorem zapp_avoid {f a : Term} (hne : .app f a ≠ zeroOut) :
    Avoid (.app f a) zeroOut := by
  exact ⟨fun h => hne h.symm, by simp [Avoid], by simp [Avoid]⟩

theorem zsquare : Betas (.app Z Z) zconst :=
  normalSteps_sound (by decide : normalSteps 5 (.app Z Z) = some zconst)

theorem usquare (n : Nat) : Betas (.app (input (n+1)) (input (n+1))) uconst :=
  betas_of_spineReds (skip_self (n+1) (.var 2))

theorem zconst_apply (a : Term) : Beta (.app zconst a) (.var 3) := .beta _ _

theorem input_apply (n : Nat) (a : Term) :
    Beta (.app (input (n+1)) a) (.app (.app a churchFalse) (input n)) := by
  unfold input
  rw [stream_vbits_succ]
  exact pair_apply _ _ _

theorem rigid_nf_app {f a : Term} (hr : Rigid f) (hf : NFt f) (ha : NFt a) :
    NFt (.app f a) := ⟨by cases hr <;> simp [IsLam], hf, ha⟩

theorem w_ne_input (n : Nat) : uconst ≠ input n := by
  intro he
  have hh := congrArg lamCount he
  rw [input_lambdas] at hh
  change 1 = 3*(n+1) at hh
  omega

/-- Source-aware pairs. The six non-junk cases retain their exact source
    shape, rather than merely giving a necessary value-set membership. -/
inductive Result (n : Nat) : Term → Term → Term → Prop
  | stream : Result n (.var 0) Z (input (n+1))
  | cont : Result n (.var 1) (.var 0) (.var 0)
  | hole : Result n (.var 2) (.var 1) (.var 1)
  | square : Result n (.app (.var 0) (.var 0)) zconst uconst
  | rest (a : Term) : Result n (.app (.app (.var 0) (.var 0)) a) (.var 3) (.var 2)
  | restHole (a : Term) : Result n (.app (.app (.app (.var 0) (.var 0)) a) (.var 2))
      zeroOut (.app (.var 2) (.var 1))
  | junk {e z u : Term} : Rigid z → NFt z → (∃ f a, z = .app f a) → z ≠ zeroOut →
      Rigid u → NFt u → (∃ f a, u = .app f a) → Guard n u → Result n e z u

theorem result_nf {e z u : Term} {n : Nat} (h : Result n e z u) : NFt z ∧ NFt u := by
  cases h with
  | stream => exact ⟨by decide, input_nf _⟩
  | cont => exact ⟨trivial,trivial⟩
  | hole => exact ⟨trivial,trivial⟩
  | square => exact ⟨by decide,by decide⟩
  | rest _ => exact ⟨trivial,trivial⟩
  | restHole _ => exact ⟨by decide,by decide⟩
  | junk _ hz _ _ _ hu _ _ => exact ⟨hz,hu⟩

theorem result_guard {e z u : Term} {n : Nat} (h : Result n e z u) : Guard n u := by
  cases h <;> try trivial
  case restHole a => exact ⟨trivial,by intro he; cases he⟩

theorem result_ne_tail {e z u : Term} {n : Nat} (h : Result n e z u) : u ≠ input n := by
  cases h with
  | stream => exact input_ne_prev n
  | square => exact w_ne_input n
  | cont => intro he; have hh := input_lam n; rw [← he] at hh; exact hh
  | hole => intro he; have hh := input_lam n; rw [← he] at hh; exact hh
  | rest _ => intro he; have hh := input_lam n; rw [← he] at hh; exact hh
  | restHole _ => intro he; have hh := input_lam n; rw [← he] at hh; exact hh
  | junk _ _ _ _ hr _ _ _ =>
      intro he; have hh := input_lam n; rw [← he] at hh
      cases hr <;> exact hh

theorem result_ne_hole {e z u : Term} {n : Nat} (h : Result n e z u)
    (he : e ≠ .var 2) : z ≠ .var 1 := by
  cases h with
  | stream => decide
  | square => decide
  | cont => decide
  | hole => exact (he rfl).elim
  | rest _ => decide
  | restHole _ => decide
  | junk _ _ happ _ _ _ _ _ => obtain ⟨f,a,rfl⟩ := happ; intro h; cases h

theorem junk_neutral_app {n : Nat} {e z u za ua : Term}
    (hz : Rigid z) (hu : Rigid u) (hzn : NFt z) (hun : NFt u)
    (hg : Guard n u) (hza : NFt za) (hua : NFt ua)
    (hne : .app z za ≠ zeroOut) (hguard : u = .var 0 → ua ≠ input n) :
    Result n e (.app z za) (.app u ua) :=
  .junk (.app _ hz) (rigid_nf_app hz hzn hza) ⟨_,_,rfl⟩ hne
    (.app _ hu) (rigid_nf_app hu hun hua) ⟨_,_,rfl⟩ ⟨hg,hguard⟩

theorem false_ne_input (n : Nat) : churchFalse ≠ input n := by
  intro he
  have hh := congrArg lamCount he
  rw [input_lambdas] at hh
  change 2 = 3*(n+1) at hh
  omega

theorem callback_junk {n : Nat} {e z u : Term}
    (hz : Rigid z) (hu : Rigid u) (hzn : NFt z) (hun : NFt u) (hg : Guard n u) :
    Result n e (.app (.app z churchTrue) (.var 3))
      (.app (.app u churchFalse) (input n)) := by
  apply junk_neutral_app (.app _ hz) (.app _ hu)
    (rigid_nf_app hz hzn (by decide)) (rigid_nf_app hu hun (by decide))
    ⟨hg,fun _ => false_ne_input n⟩ (by trivial) (input_nf n)
  · intro he
    have hf := (Term.app.inj he).1
    cases hf
  · intro he; cases he

theorem result_apply {n : Nat} {e f z u za ua : Term}
    (hf : Result n e z u) (ha : Result n f za ua) :
    ∃ zr ur, Betas (.app z za) zr ∧ Betas (.app u ua) ur ∧
      Result n (.app e f) zr ur := by
  have haz := (result_nf ha).1
  have hau := (result_nf ha).2
  cases hf with
  | stream =>
    have helper {ee zz uu : Term} (hz : Rigid zz) (hu : Rigid uu)
        (hzn : NFt zz) (hun : NFt uu) (hg : Guard n uu) :
        ∃ zr ur, Betas (.app Z zz) zr ∧ Betas (.app (input (n+1)) uu) ur ∧
          Result n (.app (.var 0) ee) zr ur := by
      exact ⟨_,_,.head (pair_apply _ _ _) (.refl _),
        .head (input_apply n _) (.refl _), callback_junk hz hu hzn hun hg⟩
    cases ha with
    | stream => exact ⟨_,_,zsquare,usquare n,.square⟩
    | square =>
      refine ⟨.app (.var 3) (.var 3), .app (.var 2) (input n), ?_, ?_, ?_⟩
      · exact .head (pair_apply _ _ _) (.head (.appL _ (zconst_apply _)) (.refl _))
      · exact .head (input_apply n _) (.head (.appL _ (.beta _ _)) (.refl _))
      · apply junk_neutral_app (.var 3) (.var 2) (by trivial) (by trivial)
          (by trivial) (by trivial) (input_nf n)
        · intro he; cases he
        · intro he; cases he
    | cont => exact helper (.var 0) (.var 0) (by trivial) (by trivial) (by trivial)
    | hole => exact helper (.var 1) (.var 1) (by trivial) (by trivial) (by trivial)
    | rest a => exact helper (.var 3) (.var 2) (by trivial) (by trivial) (by trivial)
    | restHole a =>
      exact helper (.app _ (.var 3)) (.app _ (.var 2)) (by decide) (by decide)
        ⟨trivial,by intro he; cases he⟩
    | junk hz hzn _ _ hu hun _ hg => exact helper hz hu hzn hun hg
  | square => exact ⟨_,_,.head (zconst_apply _) (.refl _),
      .head (.beta _ _) (.refl _), .rest f⟩
  | cont =>
    refine ⟨_,_,.refl _,.refl _,?_⟩
    apply junk_neutral_app (.var 0) (.var 0) (by trivial) (by trivial)
      (by trivial) haz hau
    · intro he; cases he
    · exact fun _ => result_ne_tail ha
  | hole =>
    refine ⟨_,_,.refl _,.refl _,?_⟩
    apply junk_neutral_app (.var 1) (.var 1) (by trivial) (by trivial)
      (by trivial) haz hau
    · intro he; cases he
    · intro he; cases he
  | rest a =>
    by_cases he : za = .var 1
    · subst za
      cases ha with
      | hole => exact ⟨_,_,.refl _,.refl _,.restHole a⟩
      | junk _ _ happ _ _ _ _ _ =>
          obtain ⟨f,b,hb⟩ := happ
          cases hb
    · refine ⟨_,_,.refl _,.refl _,?_⟩
      apply junk_neutral_app (.var 3) (.var 2) (by trivial) (by trivial)
        (by trivial) haz hau
      · intro h; exact he (Term.app.inj h).2
      · intro h; cases h
  | restHole a =>
    refine ⟨_,_,.refl _,.refl _,?_⟩
    apply junk_neutral_app (.app _ (.var 3)) (.app _ (.var 2)) (by decide) (by decide)
      ⟨trivial,by intro h; cases h⟩ haz hau
    · intro he; have hh := (Term.app.inj he).1; cases hh
    · intro he; cases he
  | junk hz hzn hzapp hne hu hun huapp hg =>
    refine ⟨_,_,.refl _,.refl _,?_⟩
    apply junk_neutral_app hz hu hzn hun hg haz hau
    · obtain ⟨f,a,rfl⟩ := hzapp
      intro he; have hh := (Term.app.inj he).1; cases hh
    · obtain ⟨f,a,rfl⟩ := huapp
      intro he; cases he

/-- Complete classification for every flat source tree, with the short
    unary instance n=0 (U_1) included in the quantifier. -/
theorem flat_algebra (e : Term) (hl : lamCount e = 0) (hs : FreeUnder 3 e) (n : Nat) :
    ∃ z u, Betas (contract e Z) z ∧ Betas (contract e (input (n+1))) u ∧ Result n e z u := by
  induction e with
  | var k =>
    have hk : k < 3 := hs
    have hc : k = 0 ∨ k = 1 ∨ k = 2 := by omega
    rcases hc with rfl | rfl | rfl
    · exact ⟨_,_,.refl _,.refl _,.stream⟩
    · exact ⟨_,_,.refl _,.refl _,.cont⟩
    · exact ⟨_,_,.refl _,.refl _,.hole⟩
  | lam b => simp [lamCount] at hl
  | app f a ihf iha =>
    have hL : lamCount f + lamCount a = 0 := hl
    obtain ⟨fz,fu,hfz,hfu,hf⟩ := ihf (by omega) hs.1
    obtain ⟨az,au,haz,hau,ha⟩ := iha (by omega) hs.2
    obtain ⟨z,u,hz,hu,h⟩ := result_apply hf ha
    exact ⟨z,u,betas_trans (betas_app hfz haz) hz,betas_trans (betas_app hfu hau) hu,h⟩

inductive Relevant : Term → Prop
  | stream : Relevant (.var 0)
  | cont : Relevant (.var 1)
  | hole : Relevant (.var 2)
  | square : Relevant (.app (.var 0) (.var 0))
  | rest (a : Term) : Relevant (.app (.app (.var 0) (.var 0)) a)
  | restHole (a : Term) : Relevant (.app (.app (.app (.var 0) (.var 0)) a) (.var 2))

/-- Every other flat argument is a normal rigid block absent from BOTH
    required outputs. The property is uniform in every unary length. -/
theorem irrelevant_inert (e : Term) (hl : lamCount e = 0) (hs : FreeUnder 3 e)
    (he : ¬ Relevant e) (n : Nat) :
    ∃ z u, Betas (contract e Z) z ∧ Betas (contract e (input (n+1))) u ∧
      Rigid z ∧ NFt z ∧ Avoid z zeroOut ∧ Rigid u ∧ NFt u ∧ Avoid u (out n) := by
  obtain ⟨z,u,hz,hu,h⟩ := flat_algebra e hl hs n
  refine ⟨z,u,hz,hu,?_⟩
  cases h with
  | stream => exact (he .stream).elim
  | cont => exact (he .cont).elim
  | hole => exact (he .hole).elim
  | square => exact (he .square).elim
  | rest a => exact (he (.rest a)).elim
  | restHole a => exact (he (.restHole a)).elim
  | junk hz hzn hzapp hne hu hun huapp hg =>
    refine ⟨hz,hzn,?_,hu,hun,?_⟩
    · obtain ⟨f,a,rfl⟩ := hzapp; exact zapp_avoid hne
    · obtain ⟨f,a,rfl⟩ := huapp
      cases hu with | app _ hf => exact guard_avoid_out hf hg

#print axioms flat_algebra
#print axioms irrelevant_inert
end Blc.Close46Flat
