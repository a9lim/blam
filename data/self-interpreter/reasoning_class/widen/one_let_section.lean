namespace OneLet

/-- Partial inverse of weakening; terms referring to one of the removed
    binders cannot be extruded. -/
def unshift (d c : Nat) : Term → Option Term
  | .var n => if n < c then some (.var n)
      else if c + d ≤ n then some (.var (n-d)) else none
  | .lam b => (unshift d (c+1) b).map Term.lam
  | .app f a => do
      let f' ← unshift d c f
      let a' ← unshift d c a
      pure (.app f' a')

theorem unshift_shift (t : Term) (d c : Nat) :
    unshift d c (shift d c t) = some t := by
  induction t generalizing c with
  | var n =>
    by_cases hn : c ≤ n
    · simp [shift, unshift, hn, show ¬ n+d<c by omega, show c+d≤n+d by omega]
    · simp [shift, unshift, hn, show n<c by omega]
  | lam b ih => simp only [shift, unshift, ih, Option.map_some]
  | app f a ihf iha => simp [shift, unshift, ihf, iha]

/-- All possible arguments of a used substitution producing t. -/
def arguments (d : Nat) : Term → List Term
  | .var n => (unshift d 0 (.var n)).toList
  | .lam b => ((unshift d 0 (.lam b)).toList ++ arguments (d+1) b).eraseDups
  | .app f a => ((unshift d 0 (.app f a)).toList ++ arguments d f ++ arguments d a).eraseDups

theorem arguments_root {t a : Term} {d : Nat} (h : unshift d 0 t = some a) :
    a ∈ arguments d t := by
  cases t <;> simp [arguments, h]

theorem arguments_lam {t a : Term} {d : Nat} (h : a ∈ arguments (d+1) t) :
    a ∈ arguments d (.lam t) := by simp only [arguments, List.mem_eraseDups, List.mem_append]; exact Or.inr h

theorem arguments_appL {t u a : Term} {d : Nat} (h : a ∈ arguments d t) :
    a ∈ arguments d (.app t u) := by
  simp only [arguments, List.mem_eraseDups, List.mem_append]
  exact Or.inl (Or.inr h)

theorem arguments_appR {t u a : Term} {d : Nat} (h : a ∈ arguments d u) :
    a ∈ arguments d (.app t u) := by
  simp only [arguments, List.mem_eraseDups, List.mem_append]
  exact Or.inr h

/-- Occurrence completeness, independent of source size or multiplicity. -/
theorem arguments_complete (b a : Term) (d : Nat) (ho : 0 < occ d b) :
    a ∈ arguments d (substDec d (shift d 0 a) b) := by
  induction b generalizing d with
  | var n =>
    have hn : n = d := by
      by_cases h : n = d
      · exact h
      · simp [occ, h] at ho
    subst n
    simp only [substDec, ↓reduceIte]
    exact arguments_root (unshift_shift a d 0)
  | lam b ih =>
    have hh := arguments_lam (ih (d+1) ho)
    simpa only [substDec, shift_shift0 1 d 0 a (Nat.zero_le d), Nat.add_comm 1 d] using hh
  | app f x ihf ihx =>
    simp only [occ] at ho
    by_cases hf : 0 < occ d f
    · exact arguments_appL (ihf d hf)
    · exact arguments_appR (ihx d (by omega))

/-- Every inverse substitution body. Rebuilding a variable inserts the hole
    slot; cutting an equal subtree replaces it with the hole. -/
def inverse (j : Nat) (a : Term) : Term → List Term
  | .var n => (if .var n = a then [.var j] else []) ++ [.var (if n<j then n else n+1)]
  | .lam b => (if .lam b = a then [.var j] else []) ++
      (inverse (j+1) (shift 1 0 a) b).map Term.lam
  | .app f x => (if .app f x = a then [.var j] else []) ++
      (inverse j a f).flatMap (fun g => (inverse j a x).map (Term.app g))

theorem inverse_cut (j : Nat) (a : Term) : .var j ∈ inverse j a a := by
  cases a <;> simp [inverse]

theorem inverse_complete (b a : Term) (j : Nat) :
    b ∈ inverse j a (substDec j a b) := by
  induction b generalizing a j with
  | var n =>
    by_cases he : n = j
    · subst n; simp only [substDec, ↓reduceIte]; exact inverse_cut j a
    · by_cases hg : j < n
      · have hn : ¬ n-1<j := by omega
        simp only [substDec, if_neg he, if_pos hg, inverse, List.mem_append]
        right
        simp [hn, show n-1+1=n by omega]
      · have hn : n<j := by omega
        simp only [substDec, if_neg he, if_neg hg, inverse, List.mem_append]
        right; simp [hn]
  | lam b ih =>
    simp only [substDec, inverse, List.mem_append]
    right; exact List.mem_map.mpr ⟨b, ih _ _, rfl⟩
  | app f x ihf ihx =>
    simp only [substDec, inverse, List.mem_append]
    right
    exact List.mem_flatMap.mpr ⟨f, ihf _ _, List.mem_map.mpr ⟨x, ihx _ _, rfl⟩⟩

def cuts (t : Term) : List (Term × Term) :=
  (arguments 0 t).flatMap (fun a => (inverse 0 a t).map (fun b => (a,b)))

theorem cuts_complete (b a : Term) (ho : 0 < occ 0 b) :
    (a,b) ∈ cuts (contract b a) := by
  have hm := arguments_complete b a 0 ho
  simp only [shift_zero] at hm
  exact List.mem_flatMap.mpr ⟨a, hm, List.mem_map.mpr ⟨b, inverse_complete b a 0, rfl⟩⟩

def minOver (base : Nat) : List Nat → Nat
  | [] => base
  | x::xs => min x (minOver base xs)

theorem minOver_base (n : Nat) (xs : List Nat) : minOver n xs ≤ n := by
  induction xs with
  | nil => exact Nat.le_refl _
  | cons x xs ih => exact Nat.le_trans (Nat.min_le_right _ _) ih

theorem minOver_mem {n x : Nat} {xs : List Nat} (h : x ∈ xs) : minOver n xs ≤ x := by
  induction xs with
  | nil => simp at h
  | cons a xs ih =>
    simp only [List.mem_cons] at h
    rcases h with rfl | h
    · exact Nat.min_le_left _ _
    · exact Nat.le_trans (Nat.min_le_right _ _) (ih h)

theorem wire_two (t : Term) : 2 ≤ wire t := by cases t <;> simp only [wire_var, wire_lam, wire_app] <;> omega


/-- Structural Boolean pruning. Choices may occur in function position and
    may have further arguments. Only complete two-arm tag uses are admitted. -/
inductive Plain : Nat → Term → Term → Term → Prop
  | var (j n : Nat) (hn : n ≠ j) : Plain j (.var n) (.var n) (.var n)
  | lam {j b u v} : Plain (j+1) b u v → Plain j (.lam b) (.lam u) (.lam v)
  | app {j f f0 f1 a a0 a1} : Plain j f f0 f1 → Plain j a a0 a1 →
      Plain j (.app f a) (.app f0 a0) (.app f1 a1)
  | select {j s s0 s1 t t0 t1} : Plain j s s0 s1 → Plain j t t0 t1 →
      Plain j (.app (.app (.var j) s) t) s0 t1

theorem Plain.single (bits : Bool) {j : Nat} {t u v : Term} (h : Plain j t u v) :
    SelfintClassNext.measure bits j u ≤ SelfintClassNext.measure bits j t ∧
    SelfintClassNext.measure bits j v ≤ SelfintClassNext.measure bits j t := by
  induction h with
  | var => exact ⟨Nat.le_refl _, Nat.le_refl _⟩
  | lam h ih => simp only [measure_lam]; constructor <;> omega
  | app hf ha ihf iha => simp only [measure_app]; constructor <;> omega
  | select hs ht ihs iht => simp only [measure_select]; constructor <;> omega

theorem Plain.absent {j : Nat} {t u v : Term} (h : Plain j t u v) :
    occ j u = 0 ∧ occ j v = 0 := by
  induction h with
  | var j n hn => simp [occ, hn]
  | lam h ih => exact ih
  | app hf ha ihf iha => simp [occ, ihf.1, ihf.2, iha.1, iha.2]
  | select hs ht ihs iht => exact ⟨ihs.1,iht.2⟩

theorem Plain.semantic (first : Bool) {j : Nat} {t u v : Term} (h : Plain j t u v) :
    Betas (substDec j (tagValue first) t)
      (substDec j churchTrue (if first then u else v)) := by
  induction h with
  | var j n hn => cases first <;> simp only [Bool.false_eq_true, ↓reduceIte, substDec, if_neg hn] <;> exact .refl _
  | lam h ih =>
    cases first <;>
      simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift, shift_churchTrue] using betas_lam ih
  | app hf ha ihf iha =>
    cases first <;> exact betas_app ihf iha
  | select hs ht ihs iht =>
    rename_i j s s0 s1 t t0 t1
    have hh := select_beta first (substDec j (tagValue first) s) (substDec j (tagValue first) t)
    simp only [substDec, ↓reduceIte]
    cases first
    · exact betas_trans hh iht
    · exact betas_trans hh ihs

/-- The merge recurrence deliberately allows every shared application node;
    it needs no same-spine or source-normality restriction. -/
def merge (bits : Bool) (j : Nat) : Term → Term → Nat
  | .var n, .var m => if n=m then
      min (choicePrice bits j (.var n) (.var m)) (SelfintClassNext.measure bits j (.var n))
      else choicePrice bits j (.var n) (.var m)
  | .lam a, .lam b => min (choicePrice bits j (.lam a) (.lam b))
      (nodeCharge bits + merge bits (j+1) a b)
  | .app f a, .app g b => min (choicePrice bits j (.app f a) (.app g b))
      (nodeCharge bits + merge bits j f g + merge bits j a b)
  | a,b => choicePrice bits j a b

theorem merge_choice (bits : Bool) (j : Nat) (a b : Term) :
    merge bits j a b ≤ choicePrice bits j a b := by
  cases a <;> cases b <;> simp only [merge]
  all_goals try first | exact Nat.le_refl _ | exact Nat.min_le_left _ _
  split <;> first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem Plain.merged (bits : Bool) {j : Nat} {t u v : Term} (h : Plain j t u v) :
    merge bits j u v ≤ SelfintClassNext.measure bits j t := by
  induction h with
  | var => simp only [merge, ↓reduceIte]; exact Nat.min_le_right _ _
  | lam h ih =>
    simp only [merge, measure_lam]
    exact Nat.le_trans (Nat.min_le_right _ _) (Nat.add_le_add_left ih _)
  | app hf ha ihf iha =>
    simp only [merge, measure_app]
    exact Nat.le_trans (Nat.min_le_right _ _) (Nat.add_le_add (Nat.add_le_add_left ihf _) iha)
  | select hs ht ihs iht =>
    rename_i j s s0 s1 t t0 t1
    have h := merge_choice bits j s0 t1
    have hu := (hs.single bits).1
    have hv := (ht.single bits).2
    simp only [choicePrice, measure_select] at h ⊢
    exact Nat.le_trans h (Nat.add_le_add (Nat.add_le_add_left hu _) hv)

theorem merge_targets (e0 e1 : Bool) :
    90 ≤ merge true 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) ∧
    4 ≤ merge false 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide


/-- The semantic bridge only needs a normal, tag-absent projection. -/
theorem rigid_projection {Q t : Term} (h : RigidNext Q) (first : Bool)
    (hn : NFt t) (ha : occ 0 t = 0)
    (hr : Betas (.app Q (tagValue first)) (substDec 0 churchTrue t)) :
    ∃ e, t = shift 1 0 (etaChoice e (nextTarget first)) := by
  let w := substDec 0 churchTrue t
  have hw : NFt w := nft_subst_absent _ 0 churchTrue hn ha
  have hws : FreeUnder 2 w := SelfintClassNext.betas_scope hr 2 ⟨h.scope, by cases first <;> decide⟩
  have htn := nft_normal (show NFt (.app (nextTarget first) (.var 2)) from
    ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩)
  have hl : Betas (.app w (.var 2)) (.app (nextTarget first) (.var 2)) :=
    betas_preserve_nf (betas_appL (.var 2) hr) (h.red first) htn
  have hp := normal_applied_fresh hw hws (nextTarget_normal first) (nextTarget_nonlam first)
    (nextTarget_scope first) ⟨_, hl, .refl _⟩
  have hi : shift 1 0 w = t := shift_subst_absent _ 0 churchTrue ha
  rcases hp with hp | hp
  · exact ⟨false, hi.symm.trans (congrArg (shift 1 0) hp)⟩
  · exact ⟨true, hi.symm.trans (congrArg (shift 1 0) hp)⟩

theorem plain_next_price {b u v : Term} (h : RigidNext (.lam b))
    (hp : Plain 0 b u v) (hu : NFt u) (hv : NFt v) : NextPrice (.lam b) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu hp.absent.1
    (.head (.beta b (tagValue true)) (hp.semantic true))
  obtain ⟨e1,h1⟩ := rigid_projection h false hv hp.absent.2
    (.head (.beta b (tagValue false)) (hp.semantic false))
  have hm := merge_targets e0 e1
  have hb := hp.merged true
  have hc := hp.merged false
  rw [h0,h1] at hb hc
  refine ⟨?_, Nat.le_trans hm.2 hc⟩
  have hn : 90 ≤ wire b := Nat.le_trans hm.1 hb
  simp only [wire_lam]; omega

/-- The local one-let price; both branch-specific argument trees are merged
    into one source argument and therefore charged once. -/
def root (j : Nat) (t u : Term) : Nat :=
  minOver (6 + merge true (j+1) (shift 1 0 t) (shift 1 0 u))
    (((cuts t).map (fun ab => 4 + wire ab.1 + merge true (j+1) ab.2 (shift 1 0 u))) ++
     ((cuts u).map (fun ab => 4 + wire ab.1 + merge true (j+1) (shift 1 0 t) ab.2)) ++
     ((cuts t).flatMap (fun ab => (cuts u).map (fun cd =>
        4 + merge true j ab.1 cd.1 + merge true (j+1) ab.2 cd.2))))

theorem root_none (j : Nat) (t u : Term) :
    root j t u ≤ 6 + merge true (j+1) (shift 1 0 t) (shift 1 0 u) := minOver_base _ _

theorem root_left {j : Nat} {t u a b : Term} (h : (a,b) ∈ cuts t) :
    root j t u ≤ 4 + wire a + merge true (j+1) b (shift 1 0 u) := by
  apply minOver_mem
  exact List.mem_append_left _ (List.mem_append_left _ (List.mem_map.mpr ⟨(a,b),h,rfl⟩))

theorem root_right {j : Nat} {t u a b : Term} (h : (a,b) ∈ cuts u) :
    root j t u ≤ 4 + wire a + merge true (j+1) (shift 1 0 t) b := by
  apply minOver_mem
  exact List.mem_append_left _ (List.mem_append_right _ (List.mem_map.mpr ⟨(a,b),h,rfl⟩))

theorem root_both {j : Nat} {t u a b c d : Term}
    (h : (a,b) ∈ cuts t) (k : (c,d) ∈ cuts u) :
    root j t u ≤ 4 + merge true j a c + merge true (j+1) b d := by
  apply minOver_mem
  exact List.mem_append_right _ (List.mem_flatMap.mpr ⟨(a,b),h,List.mem_map.mpr ⟨(c,d),k,rfl⟩⟩)

theorem root_lower {j : Nat} {b b0 b1 a a0 a1 : Term}
    (hb : Plain (j+1) b b0 b1) (ha : Plain j a a0 a1) :
    root j (contract b0 a0) (contract b1 a1) ≤ wire (.app (.lam b) a) := by
  have hbm : merge true (j+1) b0 b1 ≤ wire b := hb.merged true
  have ham : merge true j a0 a1 ≤ wire a := ha.merged true
  have ha0 : wire a0 ≤ wire a := (ha.single true).1
  have ha1 : wire a1 ≤ wire a := (ha.single true).2
  have wa := wire_two a
  simp only [wire_app, wire_lam]
  by_cases h0 : occ 0 b0 = 0
  · have he0 := shift_subst_absent b0 0 a0 h0
    change shift 1 0 (contract b0 a0) = b0 at he0
    by_cases h1 : occ 0 b1 = 0
    · have he1 := shift_subst_absent b1 0 a1 h1
      change shift 1 0 (contract b1 a1) = b1 at he1
      have hm := root_none j (contract b0 a0) (contract b1 a1)
      rw [he0,he1] at hm
      omega
    · have hm := root_right (j:=j) (t:=contract b0 a0) (cuts_complete b1 a1 (by omega))
      rw [he0] at hm
      omega
  · by_cases h1 : occ 0 b1 = 0
    · have he1 := shift_subst_absent b1 0 a1 h1
      change shift 1 0 (contract b1 a1) = b1 at he1
      have hm := root_left (j:=j) (u:=contract b1 a1) (cuts_complete b0 a0 (by omega))
      rw [he1] at hm
      omega
    · have hm := root_both (j:=j) (cuts_complete b0 a0 (by omega)) (cuts_complete b1 a1 (by omega))
      omega

/-- A one-branch source lower bound when exactly one designated let is
    present; the +6 alternative covers a let erased by Boolean selection. -/
def singleBase (t : Term) : Nat :=
  minOver (wire t + 6) ((cuts t).map (fun ab => 4 + wire ab.1 + wire ab.2))

def singleExact : Term → Nat
  | .var n => singleBase (.var n)
  | .lam b => min (singleBase (.lam b)) (2 + singleExact b)
  | .app f a => min (singleBase (.app f a))
      (min (2 + singleExact f + wire a) (2 + wire f + singleExact a))

theorem singleExact_base (t : Term) : singleExact t ≤ singleBase t := by
  cases t <;> simp only [singleExact]
  · exact Nat.le_refl _
  · exact Nat.min_le_left _ _
  · exact Nat.min_le_left _ _

theorem singleExact_wire (t : Term) : singleExact t ≤ wire t + 6 :=
  Nat.le_trans (singleExact_base t) (minOver_base _ _)

theorem singleExact_let (b a : Term) :
    singleExact (contract b a) ≤ 4 + wire a + wire b := by
  by_cases hz : occ 0 b = 0
  · have he := shift_subst_absent b 0 a hz
    change shift 1 0 (contract b a) = b at he
    have hw := wire_shift (contract b a) 1 0
    change wire (shift 1 0 (contract b a)) = _ at hw
    rw [he] at hw
    have hb := singleExact_wire (contract b a)
    have ha := wire_two a
    omega
  · exact Nat.le_trans (singleExact_base _) (minOver_mem
      (List.mem_map.mpr ⟨(a,b),cuts_complete b a (by omega),rfl⟩))


theorem singleExact_lam (b : Term) : singleExact (.lam b) ≤ 2 + singleExact b :=
  Nat.min_le_right _ _

theorem singleExact_appL (f a : Term) : singleExact (.app f a) ≤ 2 + singleExact f + wire a :=
  Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _)

theorem singleExact_appR (f a : Term) : singleExact (.app f a) ≤ 2 + wire f + singleExact a :=
  Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _)

/-- Exactly one designated let in arbitrary context, including a discarded
    Boolean arm. Its two projections contract that let syntactically. -/
inductive Once : Nat → Term → Term → Term → Prop
  | lam {j b u v} : Once (j+1) b u v → Once j (.lam b) (.lam u) (.lam v)
  | appL {j f f0 f1 a a0 a1} : Once j f f0 f1 → Plain j a a0 a1 →
      Once j (.app f a) (.app f0 a0) (.app f1 a1)
  | appR {j f f0 f1 a a0 a1} : Plain j f f0 f1 → Once j a a0 a1 →
      Once j (.app f a) (.app f0 a0) (.app f1 a1)
  | selectL {j s s0 s1 t t0 t1} : Once j s s0 s1 → Plain j t t0 t1 →
      Once j (.app (.app (.var j) s) t) s0 t1
  | selectR {j s s0 s1 t t0 t1} : Plain j s s0 s1 → Once j t t0 t1 →
      Once j (.app (.app (.var j) s) t) s0 t1
  | letNode {j b b0 b1 a a0 a1} : Plain (j+1) b b0 b1 → Plain j a a0 a1 →
      Once j (.app (.lam b) a) (contract b0 a0) (contract b1 a1)

theorem Once.absent {j : Nat} {t u v : Term} (h : Once j t u v) :
    occ j u = 0 ∧ occ j v = 0 := by
  induction h with
  | lam h ih => exact ih
  | appL hf ha ih => simp [occ, ih.1, ih.2, ha.absent.1, ha.absent.2]
  | appR hf ha ih => simp [occ, ih.1, ih.2, hf.absent.1, hf.absent.2]
  | selectL hs ht ih => exact ⟨ih.1,ht.absent.2⟩
  | selectR hs ht ih => exact ⟨hs.absent.1,ih.2⟩
  | letNode hb ha =>
    rename_i j b b0 b1 a a0 a1
    simp [contract, occ_substDec_ge b0 a0 j 0 (Nat.zero_le j),
      occ_substDec_ge b1 a1 j 0 (Nat.zero_le j), hb.absent.1, hb.absent.2,
      ha.absent.1, ha.absent.2]

theorem Once.semantic (first : Bool) {j : Nat} {t u v : Term} (h : Once j t u v) :
    Betas (substDec j (tagValue first) t)
      (substDec j churchTrue (if first then u else v)) := by
  induction h with
  | lam h ih =>
    cases first <;>
      simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift, shift_churchTrue] using betas_lam ih
  | appL hf ha ih => cases first <;> exact betas_app ih (ha.semantic _)
  | appR hf ha ih => cases first <;> exact betas_app (hf.semantic _) ih
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hh := select_beta first (substDec j (tagValue first) s) (substDec j (tagValue first) t)
    simp only [substDec, ↓reduceIte]
    cases first
    · exact betas_trans hh (ht.semantic false)
    · exact betas_trans hh ih
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hh := select_beta first (substDec j (tagValue first) s) (substDec j (tagValue first) t)
    simp only [substDec, ↓reduceIte]
    cases first
    · exact betas_trans hh ih
    · exact betas_trans hh (hs.semantic true)
  | letNode hb ha =>
    rename_i j b b0 b1 a a0 a1
    have hh := betas_app (betas_lam (hb.semantic first)) (ha.semantic first)
    have hr := Beta.beta (substDec (j+1) churchTrue (if first then b0 else b1))
      (substDec j churchTrue (if first then a0 else a1))
    cases first <;>
      simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift,
        substDec_contract, shift_churchTrue] using betas_trans hh (.head hr (.refl _))

theorem Once.single {j : Nat} {t u v : Term} (h : Once j t u v) :
    singleExact u ≤ wire t ∧ singleExact v ≤ wire t := by
  induction h with
  | lam h ih =>
    rename_i j b u v
    have h0 := singleExact_lam u
    have h1 := singleExact_lam v
    simp only [wire_lam]; constructor <;> omega
  | appL hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have h0 := singleExact_appL f0 a0
    have h1 := singleExact_appL f1 a1
    have ha0 : wire a0 ≤ wire a := (ha.single true).1
    have ha1 : wire a1 ≤ wire a := (ha.single true).2
    simp only [wire_app]; constructor <;> omega
  | appR hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have h0 := singleExact_appR f0 a0
    have h1 := singleExact_appR f1 a1
    have hf0 : wire f0 ≤ wire f := (hf.single true).1
    have hf1 : wire f1 ≤ wire f := (hf.single true).2
    simp only [wire_app]; constructor <;> omega
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have h1 := singleExact_wire t1
    have ht1 : wire t1 ≤ wire t := (ht.single true).2
    simp only [wire_app, wire_var]; constructor <;> omega
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have h0 := singleExact_wire s0
    have hs0 : wire s0 ≤ wire s := (hs.single true).1
    simp only [wire_app, wire_var]; constructor <;> omega
  | letNode hb ha =>
    rename_i j b b0 b1 a a0 a1
    have h0 := singleExact_let b0 a0
    have h1 := singleExact_let b1 a1
    have hb0 : wire b0 ≤ wire b := (hb.single true).1
    have hb1 : wire b1 ≤ wire b := (hb.single true).2
    have ha0 : wire a0 ≤ wire a := (ha.single true).1
    have ha1 : wire a1 ≤ wire a := (ha.single true).2
    simp only [wire_app, wire_lam]; constructor <;> omega

/-- Recurrence for the entire source context around its one let. -/
def exactBase (j : Nat) (t u : Term) : Nat :=
  min (root j t u) (min (j+6+singleExact t+wire u) (j+6+wire t+singleExact u))

def mergeExact (j : Nat) : Term → Term → Nat
  | .lam b, .lam c => min (exactBase j (.lam b) (.lam c)) (2+mergeExact (j+1) b c)
  | .app f a, .app g b => min (exactBase j (.app f a) (.app g b))
      (min (2+mergeExact j f g+merge true j a b) (2+merge true j f g+mergeExact j a b))
  | t,u => exactBase j t u

theorem mergeExact_base (j : Nat) (t u : Term) : mergeExact j t u ≤ exactBase j t u := by
  cases t <;> cases u <;> simp only [mergeExact]
  all_goals first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem mergeExact_root (j : Nat) (t u : Term) : mergeExact j t u ≤ root j t u :=
  Nat.le_trans (mergeExact_base j t u) (Nat.min_le_left _ _)

theorem mergeExact_choiceL (j : Nat) (t u : Term) :
    mergeExact j t u ≤ j+6+singleExact t+wire u :=
  Nat.le_trans (mergeExact_base j t u)
    (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _))

theorem mergeExact_choiceR (j : Nat) (t u : Term) :
    mergeExact j t u ≤ j+6+wire t+singleExact u :=
  Nat.le_trans (mergeExact_base j t u)
    (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _))

theorem Once.merged {j : Nat} {t u v : Term} (h : Once j t u v) :
    mergeExact j u v ≤ wire t := by
  induction h with
  | lam h ih =>
    simp only [mergeExact, wire_lam]
    apply Nat.le_trans (Nat.min_le_right _ _)
    omega
  | appL hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have ham : merge true j a0 a1 ≤ wire a := ha.merged true
    simp only [mergeExact, wire_app]
    apply Nat.le_trans (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _))
    omega
  | appR hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have hfm : merge true j f0 f1 ≤ wire f := hf.merged true
    simp only [mergeExact, wire_app]
    apply Nat.le_trans (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _))
    omega
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hm := mergeExact_choiceL j s0 t1
    have hs0 := hs.single.1
    have ht1 : wire t1 ≤ wire t := (ht.single true).2
    simp only [wire_app, wire_var]; omega
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hm := mergeExact_choiceR j s0 t1
    have hs0 : wire s0 ≤ wire s := (hs.single true).1
    have ht1 := ht.single.2
    simp only [wire_app, wire_var]; omega
  | letNode hb ha => exact Nat.le_trans (mergeExact_root _ _ _) (root_lower hb ha)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 8000000 in
theorem mergeExact_targets (e0 e1 : Bool) :
    96 ≤ mergeExact 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

theorem once_next_bits {b u v : Term} (h : RigidNext (.lam b))
    (hp : Once 0 b u v) (hu : NFt u) (hv : NFt v) : 98 ≤ wire (.lam b) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu hp.absent.1
    (.head (.beta b (tagValue true)) (hp.semantic true))
  obtain ⟨e1,h1⟩ := rigid_projection h false hv hp.absent.2
    (.head (.beta b (tagValue false)) (hp.semantic false))
  have hm := mergeExact_targets e0 e1
  have hb := hp.merged
  rw [h0,h1] at hb
  have hh : 96 ≤ wire b := Nat.le_trans hm hb
  simp only [wire_lam]; omega


/-- A single shared argument introduced before the Boolean binder. -/
def outside (t u : Term) : Nat :=
  minOver (8 + merge true 0 (shift 1 1 t) (shift 1 1 u))
    ((arguments 1 t ++ arguments 1 u).flatMap (fun a =>
      (inverse 1 (shift 1 0 a) t).flatMap (fun b =>
        (inverse 1 (shift 1 0 a) u).map (fun c => 6 + wire a + merge true 0 b c))))

theorem outside_none (t u : Term) :
    outside t u ≤ 8 + merge true 0 (shift 1 1 t) (shift 1 1 u) := minOver_base _ _

theorem outside_used {t u a b c : Term}
    (ha : a ∈ arguments 1 t ++ arguments 1 u)
    (hb : b ∈ inverse 1 (shift 1 0 a) t)
    (hc : c ∈ inverse 1 (shift 1 0 a) u) :
    outside t u ≤ 6 + wire a + merge true 0 b c := by
  apply minOver_mem
  exact List.mem_flatMap.mpr ⟨a,ha,List.mem_flatMap.mpr ⟨b,hb,List.mem_map.mpr ⟨c,hc,rfl⟩⟩⟩

theorem outside_lower {b u v : Term} (a : Term) (h : Plain 0 b u v) :
    outside (substDec 1 (shift 1 0 a) u) (substDec 1 (shift 1 0 a) v) ≤
      wire (.app (.lam (.lam b)) a) := by
  have hm : merge true 0 u v ≤ wire b := h.merged true
  have wa := wire_two a
  simp only [wire_app, wire_lam]
  by_cases h0 : occ 1 u = 0
  · by_cases h1 : occ 1 v = 0
    · have he0 := shift_subst_absent u 1 (shift 1 0 a) h0
      have he1 := shift_subst_absent v 1 (shift 1 0 a) h1
      have hh := outside_none (substDec 1 (shift 1 0 a) u) (substDec 1 (shift 1 0 a) v)
      rw [he0,he1] at hh
      omega
    · have hh := outside_used
        (List.mem_append_right _ (arguments_complete v a 1 (by omega)))
        (inverse_complete u (shift 1 0 a) 1) (inverse_complete v (shift 1 0 a) 1)
      omega
  · have hh := outside_used
      (List.mem_append_left _ (arguments_complete u a 1 (by omega)))
      (inverse_complete u (shift 1 0 a) 1) (inverse_complete v (shift 1 0 a) 1)
    omega

theorem outside_absent (a u : Term) (hu : occ 0 u = 0) :
    occ 0 (substDec 1 (shift 1 0 a) u) = 0 := by
  rw [occ_substDec_lt u (shift 1 0 a) 0 1 (by omega), hu, occ_shift_eq]
  omega

theorem outside_semantic (first : Bool) (a : Term) {b u v : Term} (h : Plain 0 b u v) :
    Betas (.app (.app (.lam (.lam b)) a) (tagValue first))
      (substDec 0 churchTrue (substDec 1 (shift 1 0 a) (if first then u else v))) := by
  have hh := SelfintControl.betas_subst (h.semantic first) 0 a
  rw [substDec_substDec b (tagValue first) a 0 0 (Nat.le_refl 0),
    substDec_substDec (if first then u else v) churchTrue a 0 0 (Nat.le_refl 0),
    substDec_churchTrue] at hh
  have ht : substDec 0 a (tagValue first) = tagValue first := by
    cases first <;> simp [tagValue, substDec_churchTrue, substDec_churchFalse]
  rw [ht] at hh
  exact .head (.appL (tagValue first) (.beta (.lam b) a))
    (.head (.beta (substDec 1 (shift 1 0 a) b) (tagValue first)) hh)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 8000000 in
theorem outside_targets (e0 e1 : Bool) :
    99 ≤ outside (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

theorem outside_next_bits {a b u v : Term} (h : RigidNext (.app (.lam (.lam b)) a))
    (hp : Plain 0 b u v) (hu : NFt (substDec 1 (shift 1 0 a) u))
    (hv : NFt (substDec 1 (shift 1 0 a) v)) : 99 ≤ wire (.app (.lam (.lam b)) a) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu (outside_absent a u hp.absent.1)
    (outside_semantic true a hp)
  obtain ⟨e1,h1⟩ := rigid_projection h false hv (outside_absent a v hp.absent.2)
    (outside_semantic false a hp)
  have hm := outside_targets e0 e1
  have hb := outside_lower a hp
  rw [h0,h1] at hb
  exact Nat.le_trans hm hb

/-- Precisely the source family settled here. Normality is imposed on the
    two projections, after the designated let contraction, not on the source. -/
inductive Covered : Term → Prop
  | plain {b u v} : Plain 0 b u v → NFt u → NFt v → Covered (.lam b)
  | once {b u v} : Once 0 b u v → NFt u → NFt v → Covered (.lam b)
  | outside {a b u v} : Plain 0 b u v → NFt (substDec 1 (shift 1 0 a) u) →
      NFt (substDec 1 (shift 1 0 a) v) → Covered (.app (.lam (.lam b)) a)

theorem covered_frontier {Q : Term} (h : RigidNext Q) (hc : Covered Q) : FrontierPrice Q := by
  cases hc with
  | plain hp hu hv =>
    have hn := plain_next_price h hp hu hv
    have hq := hn.bits
    have hf := hn.captures
    constructor <;> omega
  | once hp hu hv => exact large_rigid_next_frontier h (once_next_bits h hp hu hv)
  | outside hp hu hv =>
    have hq := outside_next_bits h hp hu hv
    exact large_rigid_next_frontier h (by omega)

/-- Any number of previously proved cost-safe administrative contractions
    may precede the covered endpoint. -/
theorem covered_admin_frontier {Q Q0 : Term} (h : RigidNext Q)
    (hr : AdminBetas Q Q0) (hc : Covered Q0) : FrontierPrice Q := by
  have hs := SelfintClassNext.betas_scope hr.betas 2 h.scope
  have h0 : RigidNext Q0 := ⟨hs, fun first => ⟨_,
    betas_preserve_nf (betas_appL (.var 2) (betas_appL (tagValue first) hr.betas))
      (h.red first) (nft_normal ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩),
    .refl _⟩⟩
  have hp := covered_frontier h0 hc
  have hm := hr.price h.scope
  have hb := hp.bits
  have hd := hp.depth_three
  constructor <;> omega


/-- The old two-arm normal fragment embeds in the new projection grammar. -/
theorem plain_of_tagged {k : Bool} {j : Nat} {t : Term} (h : Tagged k j t) :
    Plain j t (prune true j t) (prune false j t) := by
  induction h with
  | var hn => exact .var _ _ hn
  | app hf ha ihf iha =>
    rw [prune_ordinary_app true hf, prune_ordinary_app false hf]
    exact .app ihf iha
  | neutral h ih => exact ih
  | lam h ih => exact .lam ih
  | select hu hv ihu ihv =>
    simp only [prune_select, Bool.false_eq_true, ↓reduceIte]
    exact .select ihu ihv

theorem next_covered {Q : Term} (h : Next Q) : Covered Q := by
  obtain ⟨b,he⟩ := h.lambda
  subst Q
  have ht : Tagged false 0 b :=
    (tagged_of_twoArm b 0 0 (normal_nft (t:=.lam b) h.normal) (h.twoArm b rfl)).1 rfl
  exact .plain (plain_of_tagged ht) (prune_normal true ht).1 (prune_normal false ht).1

set_option maxRecDepth 100000 in
set_option maxHeartbeats 12000000 in
theorem fixed_target_values (e0 e1 : Bool) :
    let t := shift 1 0 (etaChoice e0 nextZero)
    let u := shift 1 0 (etaChoice e1 nextOne)
    merge true 0 t u = (if e0 then if e1 then 101 else 105 else if e1 then 106 else 90) ∧
    merge false 0 t u = (if e0 then if e1 then 4 else 5 else if e1 then 5 else 4) ∧
    mergeExact 0 t u = (if e0 then if e1 then 103 else 110 else if e1 then 110 else 96) ∧
    outside t u = (if e0 then if e1 then 110 else 113 else if e1 then 112 else 99) := by
  cases e0 <;> cases e1 <;> decide

/-- A fixed head-position choice witnesses a strict widening of the old
    two-arm restriction, while both projections are already normal. -/
def canonicalCont : Term := match canonicalBody with | .app _ a => a | _ => .var 0

def headChoiceNext : Term := .lam
  (.app (.app (.app (.var 0) (.var 2)) (.var 2)) canonicalCont)

theorem canonicalCont_tagged : Tagged false 0 canonicalCont :=
  (tagged_of_twoArm canonicalCont 0 0 (by decide)
    (by simp only [canonicalCont, canonicalBody, canonicalNext, TwoArmUse]; decide)).1 rfl

theorem headChoice_covered : Covered headChoiceNext := by
  exact .plain (.app (.select (.var 0 2 (by decide)) (.var 0 2 (by decide)))
    (plain_of_tagged canonicalCont_tagged)) (by decide) (by decide)

theorem headChoice_laws : RigidNext headChoiceNext := by
  refine ⟨by decide, fun first => ⟨_, ?_, .refl _⟩⟩
  apply normalSteps_sound (n:=5)
  cases first <;> decide

theorem headChoice_not_old : ¬ Next headChoiceNext := by
  intro h
  have hh := h.twoArm _ rfl
  have hn : 3 = 2 := hh.1.1.1 rfl
  omega

theorem headChoice_prices : wire headChoiceNext = 102 ∧ freeLeaves 0 headChoiceNext = 5 := by decide

/-- One administrative identity let attains the 98-bit source bound. -/
def identityNext : Term := .lam (.app (.app (.lam (.var 0)) (.var 2)) canonicalCont)

theorem identityNext_covered : Covered identityNext := by
  exact .once (.appL (.letNode (.var 1 0 (by decide)) (.var 0 2 (by decide)))
    (plain_of_tagged canonicalCont_tagged)) (by decide) (by decide)

theorem identityNext_laws : RigidNext identityNext :=
  RigidNext.of_betas (by decide)
    (normalSteps_sound (by decide : normalSteps 1 identityNext = some canonicalNext))
    (rigid_of_next canonicalNext_is_Next)

theorem identityNext_prices : wire identityNext = 98 ∧ freeLeaves 0 identityNext = 4 := by decide

theorem outside_99_covered : Covered (shareP canonicalNext) := by
  have ht : Tagged false 0 canonicalBody :=
    (tagged_of_twoArm canonicalBody 0 0 (by decide) canonicalBody_twoArm).1 rfl
  exact .outside (plain_of_tagged (bindHole_tagged ht 1 (by decide))) (by decide) (by decide)

/-- All three family bounds are attained by explicit rigid NEXT sources. -/
theorem sharp_witnesses :
    (RigidNext canonicalNext ∧ Covered canonicalNext ∧ wire canonicalNext = 92) ∧
    (RigidNext identityNext ∧ Covered identityNext ∧ wire identityNext = 98) ∧
    (RigidNext (shareP canonicalNext) ∧ Covered (shareP canonicalNext) ∧ wire (shareP canonicalNext) = 99) := by
  exact ⟨⟨rigid_of_next canonicalNext_is_Next, next_covered canonicalNext_is_Next, by decide⟩,
    ⟨identityNext_laws, identityNext_covered, by decide⟩,
    ⟨shareP_laws (rigid_of_next canonicalNext_is_Next), outside_99_covered, by decide⟩⟩

end OneLet

#print axioms OneLet.arguments_complete
#print axioms OneLet.inverse_complete
#print axioms OneLet.cuts_complete
#print axioms OneLet.Plain.semantic
#print axioms OneLet.Plain.merged
#print axioms OneLet.plain_next_price
#print axioms OneLet.root_lower
#print axioms OneLet.Once.single
#print axioms OneLet.Once.semantic
#print axioms OneLet.Once.merged
#print axioms OneLet.once_next_bits
#print axioms OneLet.outside_lower
#print axioms OneLet.outside_semantic
#print axioms OneLet.outside_next_bits
#print axioms OneLet.covered_frontier
#print axioms OneLet.covered_admin_frontier
#print axioms OneLet.next_covered
#print axioms OneLet.fixed_target_values
#print axioms OneLet.headChoice_laws
#print axioms OneLet.headChoice_covered
#print axioms OneLet.headChoice_not_old
#print axioms OneLet.sharp_witnesses
