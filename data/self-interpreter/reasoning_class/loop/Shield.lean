import Blc.SelfintClass

/- Rigid shielding in the ordinary lambda calculus with named free atoms.
   This is a semantic helper, not the complete split-family theorem or the
   Python finite enumeration. Named atoms make the invariant independent of
   de Bruijn shifts; only bound variables are substituted by beta reduction.
   The atoms c,j,r correspond to the reader probes' rigid free variables. -/
namespace LoopShield

inductive Atom where
  | c | j | r | other (n : Nat)
deriving DecidableEq, Repr

inductive T where
  | v (n : Nat)
  | k (a : Atom)
  | l (b : T)
  | a (f x : T)
deriving DecidableEq, Repr

def shift (d cut : Nat) : T → T
  | .v n => if cut ≤ n then .v (n+d) else .v n
  | .k a => .k a
  | .l b => .l (shift d (cut+1) b)
  | .a f x => .a (shift d cut f) (shift d cut x)

def sub (cut : Nat) (s : T) : T → T
  | .v n => if n = cut then s else if cut < n then .v (n-1) else .v n
  | .k a => .k a
  | .l b => .l (sub (cut+1) (shift 1 0 s) b)
  | .a f x => .a (sub cut s f) (sub cut s x)

inductive Step : T → T → Prop
  | beta (b x) : Step (.a (.l b) x) (sub 0 x b)
  | l {b b'} : Step b b' → Step (.l b) (.l b')
  | left {f f'} (x) : Step f f' → Step (.a f x) (.a f' x)
  | right (f) {x x'} : Step x x' → Step (.a f x) (.a f x')

inductive Steps : T → T → Prop
  | refl (t) : Steps t t
  | next {t u v} : Step t u → Steps u v → Steps t v

/-- Every j is inside a c-headed application or an r spine of arity >=2.
    Application closure also includes longer rigid spines. -/
inductive Safe : T → Prop
  | v (n) : Safe (.v n)
  | k {a} : a ≠ .j → Safe (.k a)
  | l {b} : Safe b → Safe (.l b)
  | a {f x} : Safe f → Safe x → Safe (.a f x)
  | c (x) : Safe (.a (.k .c) x)
  | r (x y) : Safe (.a (.a (.k .r) x) y)

theorem Safe.shift {t} (h : Safe t) (d cut) : Safe (shift d cut t) := by
  induction h generalizing cut with
  | v n => simp only [LoopShield.shift]; split <;> exact .v _
  | k h => exact .k h
  | l h ih => exact .l (ih (cut+1))
  | a hf hx ihf ihx => exact .a (ihf cut) (ihx cut)
  | c x => exact .c _
  | r x y => exact .r _ _

theorem Safe.sub {t} (h : Safe t) {s} (hs : Safe s) (cut) :
    Safe (sub cut s t) := by
  induction h generalizing s cut with
  | v n =>
      simp only [LoopShield.sub]
      split
      · exact hs
      · split <;> exact .v _
  | k h => exact .k h
  | l h ih => exact .l (ih (hs.shift 1 0) (cut+1))
  | a hf hx ihf ihx => exact .a (ihf hs cut) (ihx hs cut)
  | c x => exact .c _
  | r x y => exact .r _ _

theorem step_atom_absurd {a t} (h : Step (.k a) t) : False := by cases h

theorem step_rigid_one {a x t} (h : Step (.a (.k a) x) t) :
    ∃ x', t = .a (.k a) x' := by
  cases h with
  | left _ h => exact False.elim (step_atom_absurd h)
  | right _ _ => exact ⟨_, rfl⟩

theorem Safe.step {t u} (h : Step t u) (ht : Safe t) : Safe u := by
  induction h with
  | beta b x =>
      cases ht with
      | a hb hx =>
          cases hb with
          | l hb => exact hb.sub hx 0
  | l h ih =>
      cases ht with
      | l hb => exact .l (ih hb)
  | left x h ih =>
      cases ht with
      | a hf hx => exact .a (ih hf) hx
      | c x => exact False.elim (step_atom_absurd h)
      | r x y =>
          obtain ⟨x', rfl⟩ := step_rigid_one h
          exact .r _ _
  | right f h ih =>
      cases ht with
      | a hf hx => exact .a hf (ih hx)
      | c x => exact .c _
      | r x y => exact .r _ _

theorem Safe.steps {t u} (h : Steps t u) (ht : Safe t) : Safe u := by
  induction h with
  | refl => exact ht
  | next h _ ih => exact ih (ht.step h)

theorem target_not_safe : ¬ Safe (.a (.k .r) (.k .j)) := by
  intro h
  cases h with
  | a _ hj =>
      cases hj with
      | k hj => exact hj rfl

/-- Arbitrary safe contexts cannot recover r j from a protected source,
    even with source redexes, copying, erasure, and arbitrary reduction order. -/
theorem no_recovery {context source : T} (hc : Safe context) (hs : Safe source) :
    ¬ Steps (sub 0 source context) (.a (.k .r) (.k .j)) := by
  intro h
  exact target_not_safe ((hc.sub hs 0).steps h)

def NoJ : T → Prop
  | .v _ => True
  | .k a => a ≠ .j
  | .l b => NoJ b
  | .a f x => NoJ f ∧ NoJ x

theorem NoJ.safe {t : T} (h : NoJ t) : Safe t := by
  induction t with
  | v n => exact .v n
  | k a => exact .k h
  | l b ih => exact .l (ih h)
  | a f x ihf ihx => exact .a (ihf h.1) (ihx h.2)

theorem no_recovery_from_rrj {context : T} (hc : NoJ context) :
    ¬ Steps (sub 0 (.a (.a (.k .r) (.k .r)) (.k .j)) context)
      (.a (.k .r) (.k .j)) := no_recovery hc.safe (.r _ _)

#print axioms Safe.step
#print axioms no_recovery
#print axioms no_recovery_from_rrj
end LoopShield
