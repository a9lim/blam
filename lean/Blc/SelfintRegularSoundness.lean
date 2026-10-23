/-
Bridge from finite regular closure certificates to ordinary lambda terms.
The code interpretation may replace each opaque node by arbitrary scoped
code. Administrative moves decrease a finite closure rank; beta moves
strictly decrease the deterministic weak-head clock. No accepted run can
therefore denote a weak-head-normalizing lambda term.
-/
import Blc.SelfintRegularCertificate
import Blc.SelfintSourceCost
import Blc.WeakHeadClock

namespace Blc.SelfintRegularSoundness
open Term SelfintLowerBound SelfintSourceCost WeakHeadClock SelfintProbe

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem instN_app (es : List Term) (d : Nat) (f a : Term) :
    instN es d (.app f a) = .app (instN es d f) (instN es d a) := by
  induction es generalizing d with
  | nil => rfl
  | cons e es ih => simp only [instN,ih,substDec]

theorem instN_lam (es : List Term) (d : Nat) (b : Term) :
    instN es d (.lam b) = .lam (instN es (d+1) b) := by
  induction es generalizing d with
  | nil => rfl
  | cons e es ih =>
    simp only [instN,ih,substDec]
    rw [shift_shift0 1 d 0 e (by omega)]
    simp only [Nat.add_comm 1 d]

theorem instN_var_below (es : List Term) (d i : Nat) (hi : i<d) :
    instN es d (.var i) = .var i := by
  induction es generalizing d with
  | nil => rfl
  | cons e es ih =>
    simp only [instN,ih (d+1) (by omega),substDec,
      if_neg (show i≠d from by omega),if_neg (show ¬i>d from by omega)]

theorem instN_var_lookup (es : List Term) (d i : Nat) (a : Term)
    (ha : es[i]?=some a) : instN es d (.var (d+i)) = shift d 0 a := by
  induction es generalizing d i with
  | nil => simp at ha
  | cons e es ih =>
    cases i with
    | zero =>
      simp only [List.getElem?_cons_zero,Option.some.injEq] at ha
      subst e
      simp only [Nat.add_zero,instN,instN_var_below es (d+1) d (by omega),
        substDec,if_true]
    | succ i =>
      have h := ih (d+1) i ha
      have he : d+(i+1)=(d+1)+i := by omega
      simp only [instN,he,h]
      rw [substDec_shift0 d (d+1) _ a (by omega)]
      simp

def nodes : Term → Nat
  | .var _ => 1
  | .lam b => nodes b + 1
  | .app f a => nodes f + nodes a + 1

theorem nodes_pos (t : Term) : 0<nodes t := by
  cases t <;> simp [nodes]

/-- A structural interpretation of a source code table. Opaque nodes have
no equation: their fillings can mention the surrounding local binders. -/
structure Model (P : Nat → Certgen.Code) where
  term : Nat → Term
  var_eq : ∀ p i, P p = .var i → term p = .var i
  lam_eq : ∀ p b, P p = .lam b → term p = .lam (term b)
  app_eq : ∀ p f a, P p = .app f a → term p = .app (term f) (term a)

/-- A finite-source ranking. It rules out an administrative loop in a
cyclic code table without restricting the cyclic closure/stack stores. -/
structure CodeRank (P : Nat → Certgen.Code) where
  height : Nat → Nat
  lam_lt : ∀ p b, P p = .lam b → height b < height p
  app_left_lt : ∀ p f a, P p = .app f a → height f < height p
  app_right_lt : ∀ p f a, P p = .app f a → height a < height p

def decode (r : CodeRank P) (fill : Nat → Term) (p : Nat) : Term :=
  match _hp : P p with
  | .var i => .var i
  | .lam b => .lam (decode r fill b)
  | .app f a => .app (decode r fill f) (decode r fill a)
  | .opaque => fill p
termination_by r.height p
decreasing_by
  · exact r.lam_lt p b _hp
  · exact r.app_left_lt p f a _hp
  · exact r.app_right_lt p f a _hp

/-- Every well-founded code graph has a model for every filling; no
closedness or independence of local binders is required of a payload. -/
def codeModel (r : CodeRank P) (fill : Nat → Term) : Model P where
  term := decode r fill
  var_eq := by intro p i hp; rw [decode]; split <;> simp_all
  lam_eq := by intro p b hp; rw [decode]; split <;> simp_all
  app_eq := by intro p f a hp; rw [decode]; split <;> simp_all

def codeAt (code : Array Certgen.Code) (p : Nat) : Certgen.Code :=
  code[p]?.getD .opaque

/-- The source graph may share nodes, but every child must follow its
parent and lie inside the finite table. Cyclic stores remain permitted. -/
def ordered (code : Array Certgen.Code) : Bool :=
  (List.range code.size).all fun p => match codeAt code p with
    | .lam b => decide (p<b ∧ b<code.size)
    | .app f a => decide (p<f ∧ f<code.size ∧ p<a ∧ a<code.size)
    | _ => true

def rankedCode (code : Array Certgen.Code) (h : ordered code=true) :
    CodeRank (codeAt code) where
  height p := code.size-p
  lam_lt := by
    intro p b hp
    by_cases hi : p<code.size
    · have hh := List.all_eq_true.mp h p (List.mem_range.mpr hi)
      simp only [hp,decide_eq_true_eq] at hh
      omega
    · have hn : code[p]?=none := by simp [hi]
      simp [codeAt,hn] at hp
  app_left_lt := by
    intro p f a hp
    by_cases hi : p<code.size
    · have hh := List.all_eq_true.mp h p (List.mem_range.mpr hi)
      simp only [hp,decide_eq_true_eq] at hh
      omega
    · have hn : code[p]?=none := by simp [hi]
      simp [codeAt,hn] at hp
  app_right_lt := by
    intro p f a hp
    by_cases hi : p<code.size
    · have hh := List.all_eq_true.mp h p (List.mem_range.mpr hi)
      simp only [hp,decide_eq_true_eq] at hh
      omega
    · have hn : code[p]?=none := by simp [hi]
      simp [codeAt,hn] at hp

def denote (m : Model P) : Certgen.Clo → Term
  | .mk p es => instN (es.map (denote m)) 0 (m.term p)

def rank (m : Model P) : Certgen.Clo → Nat
  | .mk p es => nodes (m.term p) * (1 + (es.map (rank m)).sum)

def stateTerm (m : Model P) (s : Certgen.State) : Term :=
  spine (denote m s.cl) (s.stack.map (denote m))

theorem rank_lookup (m : Model P) (es : List Certgen.Clo) (i : Nat) (c : Certgen.Clo)
    (hc : es[i]?=some c) : rank m c ≤ (es.map (rank m)).sum := by
  induction es generalizing i with
  | nil => simp at hc
  | cons a es ih =>
    cases i with
    | zero => simp at hc; subst c; simp
    | succ i =>
      have hh := ih i hc
      simp only [List.map_cons,List.sum_cons]
      omega

theorem weak_spine {f g : Term} (h : weakStep f = some g) :
    ∀ cs, weakStep (spine f cs) = some (spine g cs)
  | [] => h
  | a::cs => weak_spine (weak_app h a) cs

theorem beta_spine (b a : Term) (cs : List Term) :
    weakStep (spine (.app (.lam b) a) cs) = some (spine (contract b a) cs) :=
  weak_spine rfl cs

/-- Administrative transitions preserve the interpreted term and strictly
decrease the head closure's rank. A lambda/pop transition is exactly one
ordinary weak-head beta contraction. -/
theorem step_model (m : Model P) {s t : Certgen.State} (h : Certgen.Step P s t) :
    (stateTerm m s = stateTerm m t ∧ rank m t.cl < rank m s.cl) ∨
      weakStep (stateTerm m s) = some (stateTerm m t) := by
  cases h with
  | @var p es ss i c hp hc =>
    left
    have he : (es.map (denote m))[i]?=some (denote m c) := by
      simp only [List.getElem?_map,hc,Option.map_some]
    constructor
    · have hl : instN (es.map (denote m)) 0 (.var i) = denote m c := by
        simpa only [Nat.zero_add,shift_zero] using instN_var_lookup _ 0 i _ he
      simp only [stateTerm,denote,m.var_eq p i hp,hl]
    · have hh := rank_lookup m es i c hc
      simp only [rank,m.var_eq p i hp,nodes,Nat.one_mul]
      omega
  | @app p es ss f a hp =>
    left
    constructor
    · simp only [stateTerm,denote,m.app_eq p f a hp,instN_app,List.map_cons,spine]
    · simp only [rank,m.app_eq p f a hp,nodes]
      exact Nat.mul_lt_mul_of_pos_right (by omega) (by omega)
  | @beta p es ss b a hp =>
    right
    have hh := beta_spine (instN (es.map (denote m)) 1 (m.term b))
      (denote m a) (ss.map (denote m))
    simpa only [stateTerm,denote,m.lam_eq p b hp,instN_lam,List.map_cons,
      instN,shift_zero,contract,spine] using hh

/-- A progressive invariant cannot have a finite weak-head clock. The two
well-founded measures separate real beta work from administrative moves. -/
theorem invariant_no_clock (m : Model P) (S : Certgen.State → Prop)
    (progress : ∀ s, S s → ∃ t, Certgen.Step P s t ∧ S t) :
    ∀ n s, S s → ¬ Count (stateTerm m s) n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ihn =>
    have inner : ∀ r s, rank m s.cl=r → S s → ¬ Count (stateTerm m s) n := by
      intro r
      induction r using Nat.strongRecOn with
      | ind r ihr =>
        intro s he hs hn
        obtain ⟨t,ht,hSt⟩ := progress s hs
        rcases step_model m ht with ⟨heq,hr⟩ | hb
        · exact ihr (rank m t.cl) (by omega) t rfl hSt (heq ▸ hn)
        · obtain ⟨q,hq,hcq⟩ := head_decreases hn hb
          exact ihn q hq t hSt hcq
    intro s hs
    exact inner (rank m s.cl) s rfl hs

/-- The finite regular checker now excludes ordinary weak-head
normalization for every structural interpretation, including every scoped
choice of opaque payloads. -/
theorem regular_no_clock {P V K S}
    (m : Model P) (closed : ∀ a∈S, Certgen.Good P V K S a)
    (hi : Certgen.entry ∈ S) :
    ∀ n, ¬ Count (m.term 0) n := by
  let Inv := fun s => ∃ a, a∈S ∧ Certgen.Related V K s a
  have hp : ∀ s, Inv s → ∃ t, Certgen.Step P s t ∧ Inv t := by
    rintro s ⟨a,ha,hr⟩
    obtain ⟨t,b,ht,hb,hrb⟩ := Certgen.progress (closed a ha) hr
    exact ⟨t,ht,b,hb,hrb⟩
  have hini : Inv Certgen.initial :=
    ⟨Certgen.entry,hi,⟨.mk .nil,.nil⟩⟩
  intro n
  simpa only [stateTerm,Certgen.initial,denote,List.map_nil,spine,instN] using
    invariant_no_clock m Inv hp n Certgen.initial hini

theorem certified_no_clock {P V K S hints}
    (m : Model P) (h : Certgen.checkAll P V K S hints=true)
    (hi : Certgen.entry ∈ S) : ∀ n, ¬ Count (m.term 0) n :=
  regular_no_clock m (Certgen.check_sound h) hi

theorem certified_no_normal_form {P V K S hints}
    (m : Model P) (h : Certgen.checkAll P V K S hints=true)
    (hi : Certgen.entry ∈ S) : ¬ HasNormalForm (m.term 0) := by
  intro hn
  obtain ⟨n,hc⟩ := hasNormalForm_count hn
  exact certified_no_clock m h hi n hc

theorem solvable_count {t : Term} (h : Solvable t) : ∃ n, Count t n := by
  obtain ⟨k,p,hk,hp⟩ := h
  have hr := headReds_of_headSteps k hk
  clear hk
  induction hr with
  | refl => exact ⟨0,.stop (head_stop_weak hp)⟩
  | @head t u v n hs ht ih =>
    cases t with
    | lam b => exact ⟨0,.stop rfl⟩
    | var i => cases hs
    | app f a =>
      obtain ⟨n,hn⟩ := ih hp
      exact ⟨n+1,.step (head_nonlam_weak hs (by intro b h; cases h)) hn⟩

theorem certified_unsolvable {P V K S hints}
    (m : Model P) (h : Certgen.checkAll P V K S hints=true)
    (hi : Certgen.entry ∈ S) : ¬ Solvable (m.term 0) := by
  intro hs
  obtain ⟨n,hc⟩ := solvable_count hs
  exact certified_no_clock m h hi n hc

/-- The arbitrary-scoped-hole corollary has no remaining semantic bridge
assumption: the source ranking and finite certificate are its hypotheses. -/
theorem filled_certificate_no_normal_form {P V K S hints}
    (r : CodeRank P) (h : Certgen.checkAll P V K S hints=true)
    (hi : Certgen.entry ∈ S) (fill : Nat → Term) :
    ¬ HasNormalForm (decode r fill 0) :=
  certified_no_normal_form (codeModel r fill) h hi

theorem checked_source_unsolvable {code V K S hints}
    (ho : ordered code=true)
    (h : Certgen.checkAll (codeAt code) V K S hints=true)
    (hi : Certgen.entry ∈ S) (fill : Nat → Term) :
    ¬ Solvable (decode (rankedCode code ho) fill 0) :=
  certified_unsolvable (codeModel (rankedCode code ho) fill) h hi

theorem checked_source_unsolvable_of_good {code V K S}
    (ho : ordered code=true)
    (closed : ∀ a∈S, Certgen.Good (codeAt code) V K S a)
    (hi : Certgen.entry ∈ S) (fill : Nat → Term) :
    ¬ Solvable (decode (rankedCode code ho) fill 0) := by
  intro hs
  obtain ⟨n,hc⟩ := solvable_count hs
  exact regular_no_clock (codeModel (rankedCode code ho) fill) closed hi n hc

#print axioms step_model
#print axioms invariant_no_clock
#print axioms certified_no_normal_form
#print axioms filled_certificate_no_normal_form
#print axioms checked_source_unsolvable

end Blc.SelfintRegularSoundness
