/-
Continuation contamination for the remaining flat outer-headed family.

The first operand of lambda a b.a R1 ... Rm is now a-headed.  A finite
recursive intersection discipline tracks continuation reuse through pure
application contexts.  It forbids returning a rigid continuation with
only continuation-free operands; the interpreter's exact result has
precisely that form.  The invariant does not require the *first* returned
operand to be continuation-headed.
-/
import Blc.SelfintRound8GlobalOuterSpine

namespace Blc.SelfintRound8GlobalOuterSelf
open Term SelfintLowerBound SelfintControl SelfintClass SelfintFloor
  SelfintSourceCost QuoteOrigins
open SelfintRound8GlobalOuterSpine (Pure body helper)

set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

inductive Shade where
  | any | clear | raw | pending | marked
  deriving DecidableEq
abbrev Env := Nat → Shade

def push (k : Shade) (e : Env) : Env
  | 0 => k
  | n+1 => e n

inductive AppRule : Shade → Shade → Shade → Prop where
  | cc : AppRule .clear .clear .clear
  | cr : AppRule .clear .raw .pending
  | cp : AppRule .clear .pending .pending
  | pa : AppRule .pending .any .marked
  | ra : AppRule .raw .any .raw
  | rr : AppRule .raw .raw .marked
  | rp : AppRule .raw .pending .marked
  | ma : AppRule .marked .any .marked

inductive Typed : Env → Term → Shade → Prop where
  | any (e t) : Typed e t .any
  | var (e n) : Typed e (.var n) (e n)
  | app {e f a kf ka k} : AppRule kf ka k → Typed e f kf → Typed e a ka →
      Typed e (.app f a) k
  | rawClear {e t} : Typed e t .raw → Typed e t .clear
  | pendingClear {e t} : Typed e t .pending → Typed e t .clear
  | markedPending {e t} : Typed e t .marked → Typed e t .pending
  | lamClear {e b} : Typed (push .clear e) b .clear →
      Typed (push .raw e) b .pending → Typed (push .pending e) b .pending →
      Typed e (.lam b) .clear
  | lamPending {e b} : Typed (push .any e) b .marked → Typed e (.lam b) .pending

def bumped (d c n : Nat) := if c≤n then n+d else n

theorem typed_shift {e : Env} {t : Term} {k : Shade} (h : Typed e t k)
    (d c : Nat) (e' : Env) (he : ∀ n, e' (bumped d c n)=e n) :
    Typed e' (shift d c t) k := by
  induction h generalizing c e' with
  | any e t => exact .any _ _
  | var e n =>
      have hv := Typed.var e' (bumped d c n)
      rw [he n] at hv
      by_cases hn : c≤n <;> simpa [shift,bumped,hn] using hv
  | app hk hf ha ihf iha => exact .app hk (ihf c e' he) (iha c e' he)
  | rawClear h ih => exact .rawClear (ih c e' he)
  | pendingClear h ih => exact .pendingClear (ih c e' he)
  | markedPending h ih => exact .markedPending (ih c e' he)
  | @lamClear e b hx hr hp ihx ihr ihp =>
      have hh : ∀ a n, push a e' (bumped d (c+1) n)=push a e n := by
        intro a n
        cases n with
        | zero => simp [bumped,push]
        | succ n =>
            by_cases hn : c≤n
            · simpa [bumped,push,hn,show c+1≤n+1 by omega,
                show n+1+d=(n+d)+1 by omega] using he n
            · simpa [bumped,push,hn,show ¬ c+1≤n+1 by omega] using he n
      exact .lamClear (ihx (c+1) _ (hh .clear)) (ihr (c+1) _ (hh .raw))
        (ihp (c+1) _ (hh .pending))
  | lamPending hb ih =>
      apply Typed.lamPending
      apply ih (c+1) (push .any e')
      intro n
      cases n with
      | zero => simp [bumped,push]
      | succ n =>
          by_cases hn : c≤n
          · simpa [bumped,push,hn,show c+1≤n+1 by omega,
              show n+1+d=(n+d)+1 by omega] using he n
          · simpa [bumped,push,hn,show ¬ c+1≤n+1 by omega] using he n

theorem typed_shift_one {e : Env} {t : Term} {k : Shade} (h : Typed e t k)
    (l : Shade) : Typed (push l e) (shift 1 0 t) k :=
  typed_shift h 1 0 (push l e) (by intro n; simp [bumped,push])

def cutEnv (e : Env) (j : Nat) : Env := fun n => if n<j then e n else e (n+1)

theorem cutEnv_push (e : Env) (j : Nat) (k : Shade) :
    cutEnv (push k e) (j+1)=push k (cutEnv e j) := by
  funext n
  cases n <;> simp [cutEnv,push]

theorem typed_subst {e : Env} {t s : Term} {k : Shade} (h : Typed e t k)
    (j : Nat) (hs : Typed (cutEnv e j) s (e j)) :
    Typed (cutEnv e j) (substDec j s t) k := by
  induction h generalizing j s with
  | any e t => exact .any _ _
  | var e n =>
      simp only [substDec]
      split
      · rename_i hn; subst n; exact hs
      · rename_i hn
        split
        · rename_i hgt
          have he : cutEnv e j (n-1)=e n := by
            simp only [cutEnv,show ¬ n-1<j by omega,if_false]
            congr 1; omega
          simpa only [he] using Typed.var (cutEnv e j) (n-1)
        · rename_i hgt
          have he : cutEnv e j n=e n := by simp [cutEnv,show n<j by omega]
          simpa only [he] using Typed.var (cutEnv e j) n
  | app hk hf ha ihf iha => exact .app hk (ihf j hs) (iha j hs)
  | rawClear h ih => exact .rawClear (ih j hs)
  | pendingClear h ih => exact .pendingClear (ih j hs)
  | markedPending h ih => exact .markedPending (ih j hs)
  | @lamClear e b hx hr hp ihx ihr ihp =>
      have hh : ∀ a, Typed (cutEnv (push a e) (j+1)) (shift 1 0 s) (push a e (j+1)) := by
        intro a
        simpa only [cutEnv_push,push] using typed_shift_one hs a
      simp only [substDec]
      exact .lamClear (by simpa only [cutEnv_push] using ihx (j+1) (hh .clear))
        (by simpa only [cutEnv_push] using ihr (j+1) (hh .raw))
        (by simpa only [cutEnv_push] using ihp (j+1) (hh .pending))
  | lamPending hb ih =>
      simp only [substDec]
      apply Typed.lamPending
      simpa only [cutEnv_push] using
        ih (j+1) (s:=shift 1 0 s) (by
          simpa only [cutEnv_push,push] using typed_shift_one hs .any)

theorem typed_contract {e : Env} {b a : Term} {k l : Shade}
    (hb : Typed (push k e) b l) (ha : Typed e a k) : Typed e (contract b a) l := by
  have he : cutEnv (push k e) 0=e := by funext n; simp [cutEnv,push]
  simpa only [contract,he] using typed_subst hb 0 (by simpa only [he,push] using ha)

theorem raw_no_lam {e : Env} {b : Term} : ¬ Typed e (.lam b) .raw := by
  intro h; cases h

theorem marked_no_lam {e : Env} {b : Term} : ¬ Typed e (.lam b) .marked := by
  intro h; cases h

theorem pending_lam {e : Env} {b : Term} (h : Typed e (.lam b) .pending) :
    Typed (push .any e) b .marked := by
  cases h with
  | lamPending hb => exact hb
  | markedPending hm => exact (marked_no_lam hm).elim

theorem clear_lam {e : Env} {b : Term} (h : Typed e (.lam b) .clear) :
    (Typed (push .clear e) b .clear ∧ Typed (push .raw e) b .pending ∧
      Typed (push .pending e) b .pending) ∨ Typed (push .any e) b .marked := by
  cases h with
  | lamClear hx hr hp => exact .inl ⟨hx,hr,hp⟩
  | rawClear hr => exact (raw_no_lam hr).elim
  | pendingClear hp => exact .inr (pending_lam hp)

theorem typed_beta {e : Env} {t u : Term} {k : Shade}
    (hb : Beta t u) (ht : Typed e t k) : Typed e u k := by
  induction ht generalizing u with
  | any e t => exact .any _ _
  | var e n => cases hb
  | @app e f a kf ka k hk hf ha ihf iha =>
      cases hb with
      | appL a h => exact .app hk (ihf h) ha
      | appR f h => exact .app hk hf (iha h)
      | beta b a =>
          cases hk with
          | cc =>
              rcases clear_lam hf with ⟨hx,hr,hp⟩ | hm
              · exact typed_contract hx ha
              · exact .pendingClear (.markedPending (typed_contract hm (.any _ _)))
          | cr =>
              rcases clear_lam hf with ⟨hx,hr,hp⟩ | hm
              · exact typed_contract hr ha
              · exact .markedPending (typed_contract hm (.any _ _))
          | cp =>
              rcases clear_lam hf with ⟨hx,hr,hp⟩ | hm
              · exact typed_contract hp ha
              · exact .markedPending (typed_contract hm (.any _ _))
          | pa => exact typed_contract (pending_lam hf) ha
          | ra => exact (raw_no_lam hf).elim
          | rr => exact (raw_no_lam hf).elim
          | rp => exact (raw_no_lam hf).elim
          | ma => exact (marked_no_lam hf).elim
  | rawClear h ih => exact .rawClear (ih hb)
  | pendingClear h ih => exact .pendingClear (ih hb)
  | markedPending h ih => exact .markedPending (ih hb)
  | @lamClear e b hx hr hp ihx ihr ihp =>
      cases hb with | lam hb => exact .lamClear (ihx hb) (ihr hb) (ihp hb)
  | lamPending hbody ih =>
      cases hb with | lam h => exact .lamPending (ih h)

theorem typed_betas {e : Env} {t u : Term} {k : Shade}
    (h : Betas t u) (ht : Typed e t k) : Typed e u k := by
  induction h with
  | refl => exact ht
  | head hb hr ih => exact ih (typed_beta hb ht)

/-- Flat syntax can be checked at clear grade when its variables can. -/
theorem flat_clear (t : Term) (d : Nat) (e : Env) (hl : lamCount t=0)
    (hs : FreeUnder d t) (he : ∀ n, n<d → Typed e (.var n) .clear) : Typed e t .clear := by
  induction t with
  | var n => exact he n hs
  | lam b ih => simp [lamCount] at hl
  | app f a ihf iha =>
      have hh : lamCount f+lamCount a=0 := hl
      exact .app .cc (ihf (by omega) hs.1) (iha (by omega) hs.2)

theorem flat_pending_occ (t : Term) (d : Nat) (e : Env) (hl : lamCount t=0)
    (hs : FreeUnder d t) (he : ∀ n, n<d → Typed e (.var n) .clear)
    (j : Nat) (hj : e j=.pending) (ho : 0<occ j t) : Typed e t .pending := by
  induction t with
  | var n =>
      have hn : n=j := by by_cases hn : n=j <;> simp_all [occ]
      subst n
      simpa only [hj] using Typed.var e j
  | lam b ih => simp [lamCount] at hl
  | app f a ihf iha =>
      have hh : lamCount f+lamCount a=0 := hl
      by_cases hof : 0<occ j f
      · exact .markedPending (.app .pa (ihf (by omega) hs.1 hof) (.any _ _))
      · have hoa : 0<occ j a := by change 0<occ j f+occ j a at ho; omega
        exact .app .cp (flat_clear f d e (by omega) hs.1 he) (iha (by omega) hs.2 hoa)

theorem flat_raw_occ (t : Term) (d : Nat) (e : Env) (hl : lamCount t=0)
    (hs : FreeUnder d t) (he : ∀ n, n<d → Typed e (.var n) .clear)
    (j : Nat) (hj : e j=.raw) (ho : 0<occ j t) :
    Typed e t .raw ∨ Typed e t .pending := by
  induction t with
  | var n =>
      have hn : n=j := by by_cases hn : n=j <;> simp_all [occ]
      subst n
      exact .inl (by simpa only [hj] using Typed.var e j)
  | lam b ih => simp [lamCount] at hl
  | app f a ihf iha =>
      have hh : lamCount f+lamCount a=0 := hl
      by_cases hof : 0<occ j f
      · rcases ihf (by omega) hs.1 hof with hr | hp
        · exact .inl (.app .ra hr (.any _ _))
        · exact .inr (.markedPending (.app .pa hp (.any _ _)))
      · have hoa : 0<occ j a := by change 0<occ j f+occ j a at ho; omega
        have hf := flat_clear f d e (by omega) hs.1 he
        rcases iha (by omega) hs.2 hoa with hr | hp
        · exact .inr (.app .cr hf hr)
        · exact .inr (.app .cp hf hp)

theorem flat_clear_head_pending {t : Term} {d j k : Nat} {e : Env}
    (ht : RigidAt k t) (hl : lamCount t=0) (hs : FreeUnder d t)
    (he : ∀ n, n<d → Typed e (.var n) .clear)
    (_hk : e k=.clear) (hj : e j=.raw) (hjk : j≠k) (ho : 0<occ j t) :
    Typed e t .pending := by
  induction ht with
  | var => simp [occ,Ne.symm hjk] at ho
  | @app f a ht ih =>
      have hh : lamCount f+lamCount a=0 := hl
      by_cases hof : 0<occ j f
      · exact .markedPending (.app .pa (ih (by omega) hs.1 hof) (.any _ _))
      · have hoa : 0<occ j a := by change 0<occ j f+occ j a at ho; omega
        have hf := flat_clear f d e (by omega) hs.1 he
        rcases flat_raw_occ a d e (by omega) hs.2 he j hj hoa with hr | hp
        · exact .app .cr hf hr
        · exact .app .cp hf hp

theorem rigidAt_raw {t : Term} {j : Nat} (ht : RigidAt j t) (e : Env) (hj : e j=.raw) :
    Typed e t .raw := by
  induction ht with
  | var => simpa only [hj] using Typed.var e j
  | app a h ih => exact .app .ra ih (.any _ _)

theorem marked_spine {e : Env} {t : Term} (ht : Typed e t .marked) (as : List Term) :
    Typed e (spine t as) .marked := by
  induction as generalizing t with
  | nil => exact ht
  | cons a as ih => exact ih (.app .ma ht (.any _ _))

theorem two_clear_vars (e : Env) (a b : Shade)
    (ha : Typed (push b (push a e)) (.var 1) .clear)
    (hb : Typed (push b (push a e)) (.var 0) .clear) :
    ∀ n, n<2 → Typed (push b (push a e)) (.var n) .clear := by
  intro n hn
  have hh : n=0 ∨ n=1 := by omega
  rcases hh with rfl | rfl
  · exact hb
  · exact ha

/-- Both source binders are live. The a-headed first operand duplicates
the continuation effect under every possible recursive application mode. -/
theorem helper_clear (R : Term) (Rs : List Term)
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 1 R) (h0 : 0<occ 0 (body R Rs)) (e : Env) :
    Typed e (helper R Rs) .clear := by
  have hhead : RigidAt 1 (body R Rs) :=
    SelfintRound8GlobalOuterSpine.rigidAt_spine .var _
  apply Typed.lamClear
  · apply Typed.lamClear
    · exact flat_clear _ 2 _ hl hD (two_clear_vars e .clear .clear (.var _ 1) (.var _ 0))
    · exact flat_clear_head_pending hhead hl hD
        (two_clear_vars e .clear .raw (.var _ 1) (.rawClear (.var _ 0)))
        rfl rfl (by decide) h0
    · exact flat_pending_occ _ 2 _ hl hD
        (two_clear_vars e .clear .pending (.var _ 1) (.pendingClear (.var _ 0))) 0 rfl h0
  · apply Typed.lamPending
    exact marked_spine (.app .rr (.var _ 1) (rigidAt_raw hroute _ rfl)) Rs
  · apply Typed.lamPending
    exact marked_spine (.app .pa (.var _ 1) (.any _ _)) Rs

theorem pure_clear {R E : Term} {Rs : List Term}
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 1 R) (h0 : 0<occ 0 (body R Rs))
    (hE : Pure (helper R Rs) E) (e : Env) : Typed e E .clear := by
  induction hE with
  | atom => exact helper_clear R Rs hD hl hroute h0 e
  | app hf ha ihf iha => exact .app .cc ihf iha

def Loose (k : Shade) : Prop := k=.any ∨ k=.clear
/-- None of the free variables of this term carries a continuation mark. -/
def Clean (e : Env) (t : Term) : Prop := ∀ n, 0<occ n t → Loose (e n)

theorem clean_left {e : Env} {f a : Term} (h : Clean e (.app f a)) : Clean e f := by
  intro n hn
  exact h n (by change 0<occ n f+occ n a; omega)

theorem clean_right {e : Env} {f a : Term} (h : Clean e (.app f a)) : Clean e a := by
  intro n hn
  exact h n (by change 0<occ n f+occ n a; omega)

theorem clean_lam_any {e : Env} {b : Term} (h : Clean e (.lam b)) :
    Clean (push .any e) b := by
  intro n hn
  cases n with
  | zero => exact .inl rfl
  | succ n => exact h n hn

theorem clean_closed (e : Env) {t : Term} (ht : Closed t) : Clean e t := by
  intro n hn
  have hz := occ_of_freeUnder t 0 n ht (by omega)
  omega

/-- Clean terms cannot have any of the three continuation-bearing grades. -/
theorem clean_typed {e : Env} {t : Term} {k : Shade} (ht : Typed e t k)
    (hc : Clean e t) : Loose k := by
  induction ht with
  | any => exact .inl rfl
  | var e n => exact hc n (by simp [occ])
  | app hk hf ha ihf iha =>
      have hfc := clean_left hc
      have hac := clean_right hc
      cases hk with
      | cc => exact .inr rfl
      | cr => have hh := iha hac; simp [Loose] at hh
      | cp => have hh := iha hac; simp [Loose] at hh
      | pa => have hh := ihf hfc; simp [Loose] at hh
      | ra => have hh := ihf hfc; simp [Loose] at hh
      | rr => have hh := ihf hfc; simp [Loose] at hh
      | rp => have hh := ihf hfc; simp [Loose] at hh
      | ma => have hh := ihf hfc; simp [Loose] at hh
  | rawClear => exact .inr rfl
  | pendingClear => exact .inr rfl
  | markedPending h ih => have hh := ih hc; simp [Loose] at hh
  | lamClear => exact .inr rfl
  | lamPending h ih => have hh := ih (clean_lam_any hc); simp [Loose] at hh

inductive CleanSpine (e : Env) (c : Nat) : Term → Prop where
  | base : CleanSpine e c (.var c)
  | app {f a : Term} : CleanSpine e c f → Clean e a → CleanSpine e c (.app f a)

def SpineShade (k : Shade) : Prop := k=.any ∨ k=.clear ∨ k=.raw

/-- A bare continuation supplied only clean operands cannot be marked or
pending. A later c-headed operand would invalidate this premise, which is
why the invariant permits the first-payload counterexamples. -/
theorem clean_spine_typed {e : Env} {t : Term} {k : Shade} {c : Nat}
    (ht : Typed e t k) (hc : CleanSpine e c t) (he : e c=.raw) : SpineShade k := by
  induction ht generalizing c with
  | any => exact .inl rfl
  | var e n => cases hc with | base => exact .inr (.inr he)
  | app hk hf ha ihf iha =>
      cases hc with
      | app hfc hac =>
          have hft := ihf hfc he
          have hat := clean_typed ha hac
          cases hk with
          | cc => exact .inr (.inl rfl)
          | cr => simp [Loose] at hat
          | cp => simp [Loose] at hat
          | pa => simp [SpineShade] at hft
          | ra => exact .inr (.inr rfl)
          | rr => simp [Loose] at hat
          | rp => simp [Loose] at hat
          | ma => simp [SpineShade] at hft
  | rawClear => exact .inr (.inl rfl)
  | pendingClear => exact .inr (.inl rfl)
  | markedPending h ih => have hh := ih hc he; simp [SpineShade] at hh
  | lamClear => cases hc
  | lamPending => cases hc

def probeEnv (n : Nat) : Shade := if n=0 then .raw else .any

/-- This clear grade is incompatible with exact interpretation.  After
receiving c, it marks the result of any further argument, whereas the
required c (lambda z.M) N has continuation-free operands. -/
theorem clear_not_selfInterpreter {E : Term} (ht : Typed probeEnv E .clear) :
    ¬ IsSelfInterpreter E := by
  intro hi
  have hrun := join_normal (hi.2 (.lam (.var 0)) (by decide)) idOutput_normal
  have hstart : Typed probeEnv
      (.app (.app E (.var 0)) (streamOf (blcCode (.lam (.var 0))) (.var 1))) .marked :=
    .app .pa (.app .cr ht (.var _ 0)) (.any _ _)
  have hout := typed_betas hrun hstart
  have hclean : CleanSpine probeEnv 0 idOutput := by
    apply CleanSpine.app
    · exact .app .base (clean_closed probeEnv (by decide))
    · intro n hn
      have hn' : n=1 := by
        by_cases hn' : n=1
        · exact hn'
        · simp [occ,Ne.symm hn'] at hn
      subst n
      exact .inl rfl
  have hh := clean_spine_typed hout hclean rfl
  simp [SpineShade] at hh

/-- Pure application contexts cannot turn a flat binary helper with an
outer-headed first operand into an exact interpreter. The b binder is
live; the vacuous arm is handled separately by separation. -/
theorem pure_selfroute_not_selfInterpreter {R E : Term} {Rs : List Term}
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 1 R) (h0 : 0<occ 0 (body R Rs))
    (hE : Pure (helper R Rs) E) : ¬ IsSelfInterpreter E :=
  clear_not_selfInterpreter (pure_clear hD hl hroute h0 hE probeEnv)

theorem pure_separated {A E : Term} (hA : SelfintCapture.Separated 0 A)
    (hE : Pure A E) : SelfintCapture.Separated 0 E := by
  induction hE with
  | atom => exact hA
  | app hf ha ihf iha => exact ⟨ihf,iha⟩

/-- Complete classification of one flat binary helper, at unbounded size.
The generated context is application-only; it may share, duplicate and
self-apply the helper arbitrarily. Neither binder needs a liveness premise. -/
theorem pure_flat_binary_not_selfInterpreter {D E : Term}
    (hD : FreeUnder 2 D) (hl : lamCount D=0)
    (hE : Pure (SelfintRound7GlobalLastHead.helper D) E) : ¬ IsSelfInterpreter E := by
  have hLive : live D=0 := lamfree_live D hl
  by_cases h0 : occ 0 D=0
  · intro hi
    have hsmall : live (SelfintRound7GlobalLastHead.helper D)≤1 := by
      simp only [SelfintRound7GlobalLastHead.helper,live,hLive,h0,Nat.lt_irrefl,
        if_false,Nat.add_zero]
      split <;> omega
    exact SelfintCapture.selfinterpreter_not_separated E hi
      (pure_separated (SelfintWiden.one_live_separated _ hsmall) hE)
  · have hp : 0<occ 0 D := by omega
    obtain ⟨n,as,rfl⟩ := SelfintSourceFront.rigid_spine (SelfintRootFlat.flat_rigid D hl)
    have hn : n<2 := spine_scope (.var n) as 2 hD
    have hcases : n=0 ∨ n=1 := by omega
    rcases hcases with rfl | rfl
    · exact SelfintRound7GlobalLastHead.generated_not_selfInterpreter hD hLive
        (SelfintRound8GlobalOuterSpine.rigidAt_spine .var as) hE.generated
    · cases as with
      | nil => simp [spine,occ] at hp
      | cons R Rs =>
          have hRs : FreeUnder 2 R := (spine_scope (.app (.var 1) R) Rs 2 hD).2
          have hRl : lamCount R=0 := by
            simp only [spine,spine_lambdas,lamCount] at hl
            omega
          obtain ⟨k,ks,hk⟩ := SelfintSourceFront.rigid_spine (SelfintRootFlat.flat_rigid R hRl)
          have hkn : k<2 := spine_scope (.var k) ks 2 (hk ▸ hRs)
          have hkc : k=0 ∨ k=1 := by omega
          have hroute : RigidAt k R := by
            rw [hk]
            exact SelfintRound8GlobalOuterSpine.rigidAt_spine .var ks
          rcases hkc with rfl | rfl
          · exact SelfintRound8GlobalOuterSpine.pure_route_not_selfInterpreter hD hl hroute hE
          · exact pure_selfroute_not_selfInterpreter hD hl hroute hp hE

/-- Full three-lambda source slice with a literal two-binder helper.
There is no bound on the flat sharing body or flat helper body. -/
theorem flat_binary_sharing_not_selfInterpreter (B D : Term)
    (hB : FreeUnder 1 B) (hb : lamCount B=0)
    (hD : FreeUnder 2 D) (hd : lamCount D=0) :
    ¬ IsSelfInterpreter (.app (.lam B) (.lam (.lam D))) := by
  intro hi
  have hA : Closed (SelfintRound7GlobalLastHead.helper D) := hD
  exact pure_flat_binary_not_selfInterpreter hD hd
    (SelfintRound8GlobalOuterSpine.flat_one_template hA .atom B hB hb)
    (descend_interpreter hi)

#print axioms typed_beta
#print axioms clean_spine_typed
#print axioms pure_selfroute_not_selfInterpreter
#print axioms pure_flat_binary_not_selfInterpreter
#print axioms flat_binary_sharing_not_selfInterpreter

end Blc.SelfintRound8GlobalOuterSelf
