/-
A continuation guarded only by recursive calls cannot be a return base.

The actual self-application knot is essential. For arbitrary closed R and
arbitrary callback B, put

  W = lambda x c. R (x x) (lambda b. (x x) B),
  P = W W.

B is read under x,c,b and may contain any syntax. The continuation c occurs
outside B nowhere. Neither P nor (lambda x.x x) W is an exact interpreter.
R may use the recursive parser as well as NEXT arbitrarily.

The generic `NoReturnBody` theorem removes the leading-P shape: any body
which is safe with p interpreted as a sink and c arbitrary fails under
the shared knot. `Guarded` gives a sufficient syntax grammar closed under
applications, lambdas, and nested lets, with arbitrary payloads beneath
recursive calls. It includes tag-first choices between recursive calls.

A finite recursive intersection typing invariant proves this for every
beta reduction, without bounded execution or a claim about all equational
fixed-point solutions. Canonical NEXT has precisely the displayed leading
recursive-call shape, so removing the separate continuation input from a
reader while retaining that shape cannot work under this knot.
-/
import Blc.SelfintClass

namespace Blc.SelfintArchitecture8Guard
open Term SelfintControl SelfintClass SelfintLowerBound

inductive Shade where
  | any
  | safe
  | sink
  | loop
  deriving DecidableEq
abbrev Env := Nat → Shade

def push (k : Shade) (e : Env) : Env
  | 0 => k
  | n+1 => e n

/-- `safe` cannot expose an unsafe free head. A sink accepts any argument
and gives a safe result. A loop consumes another loop and is both a sink
and safe. This is a finite recursive intersection discipline, not STLC. -/
inductive Typed : Env → Term → Shade → Prop where
  | any (e t) : Typed e t .any
  | var (e n) : Typed e (.var n) (e n)
  | app {e f a} : Typed e f .safe → Typed e a .safe → Typed e (.app f a) .safe
  | sinkApp {e f a} : Typed e f .sink → Typed e (.app f a) .safe
  | loopAppSafe {e f a} : Typed e f .loop → Typed e a .loop → Typed e (.app f a) .safe
  | loopAppSink {e f a} : Typed e f .loop → Typed e a .loop → Typed e (.app f a) .sink
  | lam {e b} : Typed (push .safe e) b .safe → Typed e (.lam b) .safe
  | sinkLam {e b} : Typed (push .any e) b .safe → Typed e (.lam b) .sink
  | loopLam {e b} : Typed (push .loop e) b .safe → Typed (push .loop e) b .sink →
      Typed e (.lam b) .loop

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
  | app hf ha ihf iha => exact .app (ihf c e' he) (iha c e' he)
  | sinkApp hf ih => exact .sinkApp (ih c e' he)
  | loopAppSafe hf ha ihf iha => exact .loopAppSafe (ihf c e' he) (iha c e' he)
  | loopAppSink hf ha ihf iha => exact .loopAppSink (ihf c e' he) (iha c e' he)
  | lam hb ih =>
    apply Typed.lam
    apply ih (c+1) (push .safe e')
    intro n
    cases n with
    | zero => simp [bumped,push]
    | succ n =>
      by_cases hn : c≤n
      · simpa [bumped,push,hn,show c+1≤n+1 by omega,
          show n+1+d=(n+d)+1 by omega] using he n
      · simpa [bumped,push,hn,show ¬ c+1≤n+1 by omega] using he n
  | sinkLam hb ih =>
    apply Typed.sinkLam
    apply ih (c+1) (push .any e')
    intro n
    cases n with
    | zero => simp [bumped,push]
    | succ n =>
      by_cases hn : c≤n
      · simpa [bumped,push,hn,show c+1≤n+1 by omega,
          show n+1+d=(n+d)+1 by omega] using he n
      · simpa [bumped,push,hn,show ¬ c+1≤n+1 by omega] using he n
  | @loopLam e b hg hs ihg ihs =>
    have hh : ∀ n, push .loop e' (bumped d (c+1) n)=push .loop e n := by
      intro n
      cases n with
      | zero => simp [bumped,push]
      | succ n =>
        by_cases hn : c≤n
        · simpa [bumped,push,hn,show c+1≤n+1 by omega,
            show n+1+d=(n+d)+1 by omega] using he n
        · simpa [bumped,push,hn,show ¬ c+1≤n+1 by omega] using he n
    exact .loopLam (ihg (c+1) (push .loop e') hh) (ihs (c+1) (push .loop e') hh)

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
  | app hf ha ihf iha => exact .app (ihf j hs) (iha j hs)
  | sinkApp hf ih => exact .sinkApp (ih j hs)
  | loopAppSafe hf ha ihf iha => exact .loopAppSafe (ihf j hs) (iha j hs)
  | loopAppSink hf ha ihf iha => exact .loopAppSink (ihf j hs) (iha j hs)
  | lam hb ih =>
    simp only [substDec]
    apply Typed.lam
    simpa only [cutEnv_push] using
      ih (j+1) (s:=shift 1 0 s) (by
        simpa only [cutEnv_push,push] using typed_shift_one hs .safe)
  | sinkLam hb ih =>
    simp only [substDec]
    apply Typed.sinkLam
    simpa only [cutEnv_push] using
      ih (j+1) (s:=shift 1 0 s) (by
        simpa only [cutEnv_push,push] using typed_shift_one hs .any)
  | loopLam hg hb ihg ihb =>
    simp only [substDec]
    apply Typed.loopLam
    · simpa only [cutEnv_push] using
        ihg (j+1) (s:=shift 1 0 s) (by
          simpa only [cutEnv_push,push] using typed_shift_one hs .loop)
    · simpa only [cutEnv_push] using
        ihb (j+1) (s:=shift 1 0 s) (by
          simpa only [cutEnv_push,push] using typed_shift_one hs .loop)

theorem typed_contract {e : Env} {b a : Term} {k l : Shade}
    (hb : Typed (push k e) b l) (ha : Typed e a k) : Typed e (contract b a) l := by
  have he : cutEnv (push k e) 0=e := by funext n; simp [cutEnv,push]
  simpa only [contract,he] using typed_subst hb 0 (by simpa only [he,push] using ha)

theorem typed_beta {e : Env} {t u : Term} {k : Shade}
    (hb : Beta t u) (ht : Typed e t k) : Typed e u k := by
  induction hb generalizing e k with
  | beta b a =>
    cases ht with
    | any => exact .any _ _
    | app hf ha => cases hf with | lam hb => exact typed_contract hb ha
    | sinkApp hf => cases hf with | sinkLam hb => exact typed_contract hb (.any _ _)
    | loopAppSafe hf ha => cases hf with | loopLam hg hs => exact typed_contract hg ha
    | loopAppSink hf ha => cases hf with | loopLam hg hs => exact typed_contract hs ha
  | lam hb ih =>
    cases ht with
    | any => exact .any _ _
    | lam h => exact .lam (ih h)
    | sinkLam h => exact .sinkLam (ih h)
    | loopLam hg hs => exact .loopLam (ih hg) (ih hs)
  | appL a hb ih =>
    cases ht with
    | any => exact .any _ _
    | app hf ha => exact .app (ih hf) ha
    | sinkApp hf => exact .sinkApp (ih hf)
    | loopAppSafe hf ha => exact .loopAppSafe (ih hf) ha
    | loopAppSink hf ha => exact .loopAppSink (ih hf) ha
  | appR f hb ih =>
    cases ht with
    | any => exact .any _ _
    | app hf ha => exact .app hf (ih ha)
    | sinkApp hf => exact .sinkApp hf
    | loopAppSafe hf ha => exact .loopAppSafe hf (ih ha)
    | loopAppSink hf ha => exact .loopAppSink hf (ih ha)

theorem typed_betas {e : Env} {t u : Term} {k : Shade}
    (h : Betas t u) (ht : Typed e t k) : Typed e u k := by
  induction h with
  | refl => exact ht
  | head hb hr ih => exact ih (typed_beta hb ht)

theorem scope_safe (t : Term) (d : Nat) (e : Env)
    (ht : FreeUnder d t) (he : ∀ n, n<d → e n=.safe) : Typed e t .safe := by
  induction t generalizing d e with
  | var n => simpa only [he n ht] using Typed.var e n
  | app f a ihf iha => exact .app (ihf d e ht.1 he) (iha d e ht.2 he)
  | lam b ih =>
    apply Typed.lam
    apply ih (d+1) (push .safe e) ht
    intro n hn
    cases n with
    | zero => rfl
    | succ n => exact he n (by omega)

theorem closed_safe (t : Term) (ht : Closed t) (e : Env) : Typed e t .safe :=
  scope_safe t 0 e ht (by intro n hn; omega)

/-- The reader receives the parser and its guarded handler. B may have
arbitrary syntax under x,c,b, including additional recursive calls. -/
def generator (R B : Term) : Term :=
  .lam (.lam (.app (.app R (.app (.var 1) (.var 1)))
    (.lam (.app (.app (.var 2) (.var 2)) B))))

def parser (R B : Term) : Term := .app (generator R B) (generator R B)
def diagonal : Term := .lam (.app (.var 0) (.var 0))
def assembled (R B : Term) : Term := .app diagonal (generator R B)

theorem generator_loop (R B : Term) (hR : Closed R) (e : Env) :
    Typed e (generator R B) .loop := by
  apply Typed.loopLam
  · apply Typed.lam
    apply Typed.app
    · exact .app (closed_safe R hR _) (.loopAppSafe (.var _ 1) (.var _ 1))
    · exact .lam (.sinkApp (.loopAppSink (.var _ 2) (.var _ 2)))
  · apply Typed.sinkLam
    apply Typed.app
    · exact .app (closed_safe R hR _) (.loopAppSafe (.var _ 1) (.var _ 1))
    · exact .lam (.sinkApp (.loopAppSink (.var _ 2) (.var _ 2)))

theorem parser_sink (R B : Term) (hR : Closed R) (e : Env) :
    Typed e (parser R B) .sink :=
  .loopAppSink (generator_loop R B hR e) (generator_loop R B hR e)

theorem diagonal_loop (e : Env) : Typed e diagonal .loop :=
  .loopLam (.loopAppSafe (.var _ 0) (.var _ 0)) (.loopAppSink (.var _ 0) (.var _ 0))

theorem assembled_sink (R B : Term) (hR : Closed R) (e : Env) :
    Typed e (assembled R B) .sink :=
  .loopAppSink (diagonal_loop e) (generator_loop R B hR e)

def probeEnv (n : Nat) : Shade := if n=0 then .any else .safe

/-- The free head of a rigid spine, if there is one. -/
def headIndex : Term → Option Nat
  | .var n => some n
  | .lam _ => none
  | .app f _ => headIndex f

theorem unsafe_head {e : Env} {t : Term} {k : Shade} (ht : Typed e t k)
    {n : Nat} (he : e n=.any) (hh : headIndex t=some n) : k=.any := by
  induction ht with
  | any => rfl
  | var e m =>
      have hm : m=n := Option.some.inj hh
      subst m
      exact he
  | app hf ha ihf iha => cases ihf he hh
  | sinkApp hf ih => cases ih he hh
  | loopAppSafe hf ha ihf iha => cases ihf he hh
  | loopAppSink hf ha ihf iha => cases ihf he hh
  | lam h ih => cases hh
  | sinkLam h ih => cases hh
  | loopLam hg hs ihg ihs => cases hh

theorem pair_safe {e : Env} {A B : Term}
    (ha : Typed e A .safe) (hb : Typed e B .safe) :
    Typed e (pairT A B) .safe :=
  .lam (.app (.app (.var _ 0) (typed_shift_one ha .safe)) (typed_shift_one hb .safe))

theorem stream_safe {e : Env} {S : Term} (hs : Typed e S .safe) (bs : List Bool) :
    Typed e (streamOf bs S) .safe := by
  induction bs with
  | nil => exact hs
  | cons b bs ih => exact pair_safe (closed_safe _ (churchBit_closed b) e) ih

/-- No finite beta reduction of a sink parser on a safe stream can expose
its rigid continuation as the result head, regardless of the result's
arguments or normality. -/
theorem sink_no_return {E S U : Term} (he : Typed probeEnv E .sink)
    (hs : Typed probeEnv S .safe)
    (hr : Betas (.app (.app E (.var 0)) S) U) :
    headIndex U ≠ some 0 := by
  intro hh
  have hu := typed_betas hr (.app (.sinkApp he) hs)
  have hbad := unsafe_head hu (n:=0) rfl hh
  cases hbad

/-- A sink-typed program cannot satisfy even the single closed-identity
instance of the exact interpreter contract. -/
theorem sink_not_selfInterpreter {E : Term} (ht : Typed probeEnv E .sink) :
    ¬ IsSelfInterpreter E := by
  intro hE
  have hrun := contract_join hE (by decide : Closed identity) (.var 0) (.var 1)
  have hnormal : NormalForm (.app (.app (.var 0) (.lam identity)) (.var 1)) :=
    fun _ hb => nft_no_beta (by decide) hb
  have hreduction := join_normal hrun hnormal
  have hinput : Typed probeEnv (streamOf (blcCode identity) (.var 1)) .safe :=
    stream_safe (by exact .var _ 1) _
  have houtput := typed_betas hreduction (.app (.sinkApp ht) hinput)
  have hbad := unsafe_head houtput (n:=0) rfl rfl
  cases hbad

/-- All callbacks B are covered, including nonlinear source redexes,
extra recursion, and arbitrary references to the current continuation. -/
theorem parser_not_selfInterpreter (R B : Term) (hR : Closed R) :
    ¬ IsSelfInterpreter (parser R B) :=
  sink_not_selfInterpreter (parser_sink R B hR probeEnv)

theorem assembled_not_selfInterpreter (R B : Term) (hR : Closed R) :
    ¬ IsSelfInterpreter (assembled R B) :=
  sink_not_selfInterpreter (assembled_sink R B hR probeEnv)

/-- A source beta-equivalent to a sink-typed term has the same obstruction.
This also admits ordinary sharing lets before the invariant becomes visible. -/
theorem equivalent_sink_not_selfInterpreter {E Q : Term}
    (hq : Typed probeEnv Q .sink) (heq : BetaJoin E Q) :
    ¬ IsSelfInterpreter E := by
  intro hE
  have hrun := contract_join hE (by decide : Closed identity) (.var 0) (.var 1)
  have hqrun := join_trans
    (join_symm (join_appL _ (join_appL (.var 0) heq))) hrun
  have hnormal : NormalForm (.app (.app (.var 0) (.lam identity)) (.var 1)) :=
    fun _ hb => nft_no_beta (by decide) hb
  have hreduction := join_normal hqrun hnormal
  have hinput : Typed probeEnv (streamOf (blcCode identity) (.var 1)) .safe :=
    stream_safe (by exact .var _ 1) _
  have houtput := typed_betas hreduction (.app (.sinkApp hq) hinput)
  have hbad := unsafe_head houtput (n:=0) rfl rfl
  cases hbad

/-- The conventional sharing form `lambda p c. R p (lambda b. p B)`.
B is read under p,c,b, and R is closed. -/
def sharedFunctional (R B : Term) : Term :=
  .lam (.lam (.app (.app R (.var 1)) (.lam (.app (.var 2) B))))
def sharedGenerator (R B : Term) : Term :=
  .lam (.app (sharedFunctional R B) (.app (.var 0) (.var 0)))
def sharedAssembly (R B : Term) : Term := .app diagonal (sharedGenerator R B)
def unsharedCallback (B : Term) : Term :=
  substDec 2 (.app (.var 2) (.var 2)) B

theorem unshare_generator (R B : Term) (hR : Closed R) :
    Betas (sharedGenerator R B) (generator R (unsharedCallback B)) := by
  have h : Beta (sharedGenerator R B)
      (.lam (contract
        (.lam (.app (.app R (.var 1)) (.lam (.app (.var 2) B))))
        (.app (.var 0) (.var 0)))) := .lam (.beta _ _)
  have hr : substDec 1 (.app (.var 1) (.var 1)) R = R := substDec_closed _ _ hR
  simpa [sharedGenerator, sharedFunctional, generator, unsharedCallback,
    contract, substDec, shift, hr] using Betas.head h (.refl _)

/-- Arbitrary sharing of the recursive parser before constructing the
NEXT-only reader cannot supply the missing return base. -/
theorem sharedAssembly_not_selfInterpreter (R B : Term) (hR : Closed R) :
    ¬ IsSelfInterpreter (sharedAssembly R B) :=
  equivalent_sink_not_selfInterpreter
    (assembled_sink R (unsharedCallback B) hR probeEnv)
    (join_of_betas (betas_appR diagonal (unshare_generator R B hR)))

/-- The actual canonical NEXT callback under p,c,b. -/
def canonicalCallback : Term :=
  .lam (.app (.app (.var 1) (.app (.var 2) absVt))
    (.app (.var 3) (.lam (.app (.var 3) appVt))))

theorem canonical_handler_pin :
    .lam (.app (.var 2) canonicalCallback) = canonicalNext := by decide

/-- Explicit canonical instance: any closed R may manipulate both parser
and canonical NEXT; routing all continuation access through NEXT still
fails under the ordinary shared self-application knot. -/
theorem canonical_next_only_not_selfInterpreter (R : Term) (hR : Closed R) :
    ¬ IsSelfInterpreter (sharedAssembly R canonicalCallback) :=
  sharedAssembly_not_selfInterpreter R canonicalCallback hR

/-- Reclassifying an arbitrary variable cannot invalidate a derivation:
its old uses at `any` remain justified by the universal rule. -/
theorem typed_refine_env {e : Env} {t : Term} {k : Shade} (ht : Typed e t k)
    (e' : Env) (he : ∀ n, e n=.any ∨ e' n=e n) : Typed e' t k := by
  induction ht generalizing e' with
  | any => exact .any _ _
  | var e n =>
      rcases he n with ha | hs
      · rw [ha]; exact .any _ _
      · simpa only [hs] using Typed.var e' n
  | app hf ha ihf iha => exact .app (ihf e' he) (iha e' he)
  | sinkApp hf ih => exact .sinkApp (ih e' he)
  | loopAppSafe hf ha ihf iha => exact .loopAppSafe (ihf e' he) (iha e' he)
  | loopAppSink hf ha ihf iha => exact .loopAppSink (ihf e' he) (iha e' he)
  | lam hb ih =>
      apply Typed.lam
      apply ih (push .safe e')
      intro n
      cases n with
      | zero => exact Or.inr rfl
      | succ n => exact he n
  | sinkLam hb ih =>
      apply Typed.sinkLam
      apply ih (push .any e')
      intro n
      cases n with
      | zero => exact Or.inl rfl
      | succ n => exact he n
  | @loopLam e b hg hs ihg ihs =>
      have hh : ∀ n, push .loop e n=.any ∨ push .loop e' n=push .loop e n := by
        intro n
        cases n with
        | zero => exact Or.inr rfl
        | succ n => exact he n
      exact .loopLam (ihg (push .loop e') hh) (ihs (push .loop e') hh)

/-- An arbitrary functional body may use p as a continuation sink and
c as an unrestricted payload, but still yields a safe result. The body
need not begin with a recursive call or have any prescribed normal form. -/
def NoReturnBody (F : Term) : Prop :=
  ∀ e, Typed (push .any (push .sink e)) F .safe

def functionalGenerator (F : Term) : Term :=
  .lam (.app (.lam (.lam F)) (.app (.var 0) (.var 0)))
def functionalAssembly (F : Term) : Term := .app diagonal (functionalGenerator F)
def inlineBody (F : Term) : Term := substDec 1 (.app (.var 1) (.var 1)) F
def inlineGenerator (F : Term) : Term := .lam (.lam (inlineBody F))

private theorem inlineBody_safe (F : Term) (hF : NoReturnBody F) (e : Env) :
    Typed (push .any (push .loop e)) (inlineBody F) .safe := by
  have he : cutEnv (push .any (push .sink (push .loop e))) 1 =
      push .any (push .loop e) := by
    funext n
    cases n with
    | zero => rfl
    | succ n => simp [cutEnv,push]
  have hp : Typed (cutEnv (push .any (push .sink (push .loop e))) 1)
      (.app (.var 1) (.var 1)) .sink := by
    rw [he]
    exact .loopAppSink (.var _ 1) (.var _ 1)
  simpa only [inlineBody,he,push] using typed_subst (hF (push .loop e)) 1 hp

theorem inlineGenerator_loop (F : Term) (hF : NoReturnBody F) (e : Env) :
    Typed e (inlineGenerator F) .loop := by
  have hb := inlineBody_safe F hF e
  apply Typed.loopLam
  · apply Typed.lam
    apply typed_refine_env hb (push .safe (push .loop e))
    intro n
    cases n with
    | zero => exact Or.inl rfl
    | succ n => exact Or.inr rfl
  · exact .sinkLam hb

theorem functionalGenerator_unfold (F : Term) :
    Betas (functionalGenerator F) (inlineGenerator F) := by
  simpa [functionalGenerator,inlineGenerator,inlineBody,contract,substDec,shift]
    using Betas.head (Beta.lam (Beta.beta (.lam F) (.app (.var 0) (.var 0)))) (.refl _)

/-- Any body satisfying the invariant fails under the shared knot. This
strictly separates the theorem from a syntactic leading-P requirement. -/
theorem noReturnBody_not_selfInterpreter (F : Term) (hF : NoReturnBody F) :
    ¬ IsSelfInterpreter (functionalAssembly F) :=
  equivalent_sink_not_selfInterpreter
    (.loopAppSink (diagonal_loop probeEnv) (inlineGenerator_loop F hF probeEnv))
    (join_of_betas (betas_appR diagonal (functionalGenerator_unfold F)))

/-- Syntactic guarded bodies. The d local binders are safe; c sits at d
and p at d+1. An arbitrary payload is allowed beneath any recursive call.
Applications, lambdas, and therefore arbitrary shared lets compose freely.
In particular, a tag may select between guarded calls before either runs. -/
inductive Guarded : Nat → Term → Prop where
  | closed (d t) : Closed t → Guarded d t
  | bound (d n) : n<d → Guarded d (.var n)
  | app {d f a} : Guarded d f → Guarded d a → Guarded d (.app f a)
  | lam {d b} : Guarded (d+1) b → Guarded d (.lam b)
  | call (d B) : Guarded d (.app (.var (d+1)) B)

def guardEnv : Nat → Env → Env
  | 0,e => push .any (push .sink e)
  | d+1,e => push .safe (guardEnv d e)

private theorem guardEnv_bound (d n : Nat) (e : Env) (hn : n<d) :
    guardEnv d e n=.safe := by
  induction d generalizing n with
  | zero => omega
  | succ d ih =>
      cases n with
      | zero => rfl
      | succ n => exact ih n (by omega)

private theorem guardEnv_parser (d : Nat) (e : Env) :
    guardEnv d e (d+1)=.sink := by
  induction d with
  | zero => rfl
  | succ d ih => exact ih

theorem Guarded.typed {d : Nat} {F : Term} (h : Guarded d F) (e : Env) :
    Typed (guardEnv d e) F .safe := by
  induction h with
  | closed d t ht => exact closed_safe t ht _
  | bound d n hn => simpa only [guardEnv_bound d n e hn] using Typed.var (guardEnv d e) n
  | app hf ha ihf iha => exact .app ihf iha
  | lam h ih => exact .lam ih
  | call d B =>
      apply Typed.sinkApp
      simpa only [guardEnv_parser] using Typed.var (guardEnv d e) (d+1)

theorem Guarded.noReturnBody {F : Term} (h : Guarded 0 F) : NoReturnBody F :=
  fun e => h.typed e

theorem guarded_not_selfInterpreter {F : Term} (h : Guarded 0 F) :
    ¬ IsSelfInterpreter (functionalAssembly F) :=
  noReturnBody_not_selfInterpreter F h.noReturnBody

/-- A tag-first handler: lambda b. b (p A) (p B). This need not have
canonical NEXT's leading recursive call; both callbacks are unrestricted. -/
def selectedCalls (A B : Term) : Term :=
  .lam (.app (.app (.var 0) (.app (.var 2) A)) (.app (.var 2) B))

theorem selectedCalls_guarded (A B : Term) : Guarded 0 (selectedCalls A B) :=
  .lam (.app (.app (.bound 1 0 (by decide)) (.call 1 A)) (.call 1 B))

/-- An arbitrary closed consumer of a select-first handler is excluded.
The consumer may duplicate it, self-apply it, or build new stream queries. -/
theorem selectedCalls_reader_not_selfInterpreter (R A B : Term) (hR : Closed R) :
    ¬ IsSelfInterpreter (functionalAssembly (.app R (selectedCalls A B))) :=
  guarded_not_selfInterpreter (.app (.closed 0 R hR) (selectedCalls_guarded A B))

/-- Ordinary source sharing composes guarded computations, including
nested lets whose values have been dynamically assembled. -/
theorem guarded_let {d : Nat} {B A : Term}
    (hb : Guarded (d+1) B) (ha : Guarded d A) :
    Guarded d (.app (.lam B) A) := .app (.lam hb) ha

#print axioms typed_beta
#print axioms sink_no_return
#print axioms parser_not_selfInterpreter
#print axioms sharedAssembly_not_selfInterpreter
#print axioms canonical_next_only_not_selfInterpreter
#print axioms noReturnBody_not_selfInterpreter
#print axioms guarded_not_selfInterpreter
#print axioms selectedCalls_reader_not_selfInterpreter
end Blc.SelfintArchitecture8Guard
