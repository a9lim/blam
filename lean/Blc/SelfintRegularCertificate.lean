import Blc.SelfintProbe

/- A finite regular closure/continuation invariant for the Krivine machine.
The allocation strategy is deliberately absent from the trusted checker. -/
namespace Certgen

inductive Code where
 | var (i : Nat) | lam (body : Nat) | app (fn arg : Nat) | opaque
 deriving DecidableEq, Repr
structure AClo where
 code : Nat
 env : List Nat
 deriving DecidableEq, Repr
structure Frame where
 arg : AClo
 rest : Nat
 deriving DecidableEq, Repr
structure AState where
 cl : AClo
 sp : Nat
 deriving DecidableEq, Repr
abbrev Values := Nat → List AClo
abbrev Konts := Nat → List Frame

inductive Clo where
 | mk (code : Nat) (env : List Clo)
structure State where
 cl : Clo
 stack : List Clo

inductive Step (P : Nat → Code) : State → State → Prop where
 | var {p es ss i c} : P p = .var i → es[i]? = some c →
     Step P ⟨.mk p es, ss⟩ ⟨c, ss⟩
 | app {p es ss f a} : P p = .app f a →
     Step P ⟨.mk p es, ss⟩ ⟨.mk f es, .mk a es :: ss⟩
 | beta {p es ss b a} : P p = .lam b →
     Step P ⟨.mk p es, a :: ss⟩ ⟨.mk b (a :: es), ss⟩

mutual
 inductive RC (V : Values) : Clo → AClo → Prop where
  | mk {p es env} : RE V es env → RC V (.mk p es) ⟨p,env⟩
 inductive RE (V : Values) : List Clo → List Nat → Prop where
  | nil : RE V [] []
  | cons {c ac adr es env} : RC V c ac → ac ∈ V adr → RE V es env →
      RE V (c::es) (adr::env)
end
inductive RK (V : Values) (K : Konts) : List Clo → Nat → Prop where
 | nil : RK V K [] 0
 | cons {c ac cs rest ptr} : ptr ≠ 0 → ⟨ac,rest⟩ ∈ K ptr →
     RC V c ac → RK V K cs rest → RK V K (c::cs) ptr

def Related (V : Values) (K : Konts) (s : State) (a : AState) : Prop :=
 RC V s.cl a.cl ∧ RK V K s.stack a.sp

theorem env_lookup {V : Values} {es env} (h : RE V es env)
 {i adr : Nat} (hi : env[i]? = some adr) :
 ∃ c ac, es[i]? = some c ∧ ac ∈ V adr ∧ RC V c ac := by
 induction i generalizing es env with
 | zero =>
  cases h with
  | nil => simp at hi
  | cons hc hm he => simp at hi; subst adr; exact ⟨_,_,rfl,hm,hc⟩
 | succ i ih =>
  cases h with
  | nil => simp at hi
  | cons hc hm he => exact ih he hi

def Good (P : Nat → Code) (V : Values) (K : Konts) (S : Array AState) (s : AState) : Prop :=
 match P s.cl.code with
 | .opaque => False
 | .var i => ∃ adr, s.cl.env[i]? = some adr ∧
     ∀ c ∈ V adr, ⟨c,s.sp⟩ ∈ S
 | .app f a => ∃ ptr, ptr ≠ 0 ∧ ⟨⟨a,s.cl.env⟩,s.sp⟩ ∈ K ptr ∧
     ⟨⟨f,s.cl.env⟩,ptr⟩ ∈ S
 | .lam b => s.sp ≠ 0 ∧ ∀ fr ∈ K s.sp, ∃ adr,
     fr.arg ∈ V adr ∧ ⟨⟨b,adr::s.cl.env⟩,fr.rest⟩ ∈ S

/-- A checked abstract state always supplies a concrete successor and a related
checked state. Cyclic stores denote regular sets of finite closures/stacks. -/
theorem progress {P V K S s a} (hg : Good P V K S a) (hr : Related V K s a) :
 ∃ s' a', Step P s s' ∧ a' ∈ S ∧ Related V K s' a' := by
 obtain ⟨hc,hk⟩ := hr
 cases s with | mk c ss =>
 cases a with | mk ac sp =>
 cases hc with | @mk p es env he =>
 cases hp : P p with
 | «opaque» => simp [Good,hp] at hg
 | var i =>
  simp only [Good,hp] at hg
  obtain ⟨adr,hi,hs⟩ := hg
  obtain ⟨c,ac,hh,hm,hc⟩ := env_lookup he hi
  exact ⟨⟨c,ss⟩,⟨ac,sp⟩,.var hp hh,hs ac hm,hc,hk⟩
 | app f x =>
  simp only [Good,hp] at hg
  obtain ⟨ptr,hptr,hfr,hs⟩ := hg
  exact ⟨⟨.mk f es,.mk x es::ss⟩,⟨⟨f,env⟩,ptr⟩,.app hp,hs,
    .mk he,.cons hptr hfr (.mk he) hk⟩
 | lam b =>
  simp only [Good,hp] at hg
  obtain ⟨hsp,hs⟩ := hg
  cases hk with
  | nil => exact (hsp rfl).elim
  | @cons c ac cs rest ptr hn hm hc hr =>
   obtain ⟨adr,hv,hst⟩ := hs ⟨ac,rest⟩ hm
   exact ⟨⟨.mk b (c::es),cs⟩,⟨⟨b,adr::env⟩,rest⟩,.beta hp,hst,
     .mk (.cons hc hv he),hr⟩

inductive Runs (P : Nat → Code) : State → State → Prop where
 | refl (s) : Runs P s s
 | cons {s t u} : Step P s t → Runs P t u → Runs P s u

theorem step_deterministic {P s t u} (h : Step P s t) (g : Step P s u) : t=u := by
 cases h <;> cases g <;> simp_all

/-- No finite concrete machine run reaches a terminal state. -/
theorem invariant_no_stop {P V K S s a}
 (closed : ∀ a ∈ S, Good P V K S a) (ha : a ∈ S) (hr : Related V K s a) :
 ∀ u, Runs P s u → ∃ v, Step P u v := by
 intro u hrun
 induction hrun generalizing a with
 | refl s => obtain ⟨v,_,hv,_,_⟩ := progress (closed a ha) hr; exact ⟨v,hv⟩
 | cons hst htu ih =>
  obtain ⟨s',a',hs',ha',hr'⟩ := progress (closed a ha) hr
  have he := step_deterministic hst hs'
  subst s'
  exact ih ha' hr'

-- Computable checker: successor IDs are hints, never trusted assumptions.
def target (S : Array AState) (ids : List Nat) (p : AState → Bool) : Bool :=
 ids.any fun i => match S[i]? with | none => false | some s => p s

theorem target_sound {S ids p} (h : target S ids p=true) :
 ∃ s ∈ S, p s=true := by
 obtain ⟨i,hi,hh⟩ := List.any_eq_true.mp h
 cases he : S[i]? with
 | none => simp [he] at hh
 | some s =>
  refine ⟨s, ?_, ?_⟩
  · exact Array.mem_of_getElem? he
  · simpa [he] using hh

def pairs {α : Type} (p : α → Nat → Bool) : List α → List Nat → Bool
 | [],[] => true
 | x::xs,i::is => p x i && pairs p xs is
 | _,_ => false

theorem pairs_sound {α : Type} {p : α → Nat → Bool} {xs ids}
 (h : pairs p xs ids=true) : ∀ x ∈ xs, ∃ i, p x i=true := by
 induction xs generalizing ids with
 | nil => simp
 | cons x xs ih =>
  cases ids with
  | nil => simp [pairs] at h
  | cons i ids =>
   simp only [pairs,Bool.and_eq_true] at h
   intro y hy
   rcases List.mem_cons.mp hy with rfl | hy
   · exact ⟨i,h.1⟩
   · exact ih h.2 y hy

def goodb (P : Nat → Code) (V : Values) (K : Konts)
 (S : Array AState) (s : AState) (ids : List Nat) : Bool :=
 match P s.cl.code with
 | .opaque => false
 | .var i => match s.cl.env[i]? with
   | none => false
   | some adr => pairs (fun c i => target S [i] (fun u => u == ⟨c,s.sp⟩)) (V adr) ids
 | .app f a => target S ids fun u =>
     decide (u.cl = ⟨f,s.cl.env⟩ ∧ u.sp ≠ 0 ∧ (⟨⟨a,s.cl.env⟩,s.sp⟩ : Frame) ∈ K u.sp)
 | .lam b => decide (s.sp ≠ 0) && pairs (fun fr i =>
     target S [i] fun u => match u.cl.env with
     | [] => false
     | adr::env => decide (u.cl.code=b ∧ env=s.cl.env ∧ u.sp=fr.rest ∧ fr.arg ∈ V adr)) (K s.sp) ids

theorem goodb_sound {P V K S s ids} (h : goodb P V K S s ids=true) : Good P V K S s := by
 cases hp : P s.cl.code with
 | «opaque» => simp [goodb,hp] at h
 | var i =>
  simp only [Good,hp]
  simp only [goodb,hp] at h
  cases he : s.cl.env[i]? with
  | none => simp [he] at h
  | some adr =>
   simp only [he] at h
   refine ⟨adr,rfl,?_⟩
   intro c hc
   obtain ⟨i,hh⟩ := pairs_sound h c hc
   obtain ⟨u,hu,heq⟩ := target_sound hh
   have hu' : u=⟨c,s.sp⟩ := by simpa using heq
   simpa [hu'] using hu
 | app f a =>
  simp only [Good,hp]
  simp only [goodb,hp] at h
  obtain ⟨u,hu,hh⟩ := target_sound h
  have hh' := of_decide_eq_true hh
  refine ⟨u.sp,hh'.2.1,hh'.2.2,?_⟩
  have eu : u=⟨⟨f,s.cl.env⟩,u.sp⟩ := by cases u; simp_all
  exact (congrArg (fun q => q ∈ S) eu).mp hu
 | lam b =>
  simp only [Good,hp]
  simp only [goodb,hp,Bool.and_eq_true] at h
  refine ⟨of_decide_eq_true h.1,?_⟩
  intro fr hf
  obtain ⟨i,hh⟩ := pairs_sound h.2 fr hf
  obtain ⟨u,hu,hh⟩ := target_sound hh
  cases he : u.cl.env with
  | nil => simp [he] at hh
  | cons adr env =>
   simp only [he] at hh
   have hh' := of_decide_eq_true hh
   refine ⟨adr,hh'.2.2.2,?_⟩
   have eu : u=⟨⟨b,adr::s.cl.env⟩,fr.rest⟩ := by
    cases u with | mk cl sp => cases cl; simp_all
   exact (congrArg (fun q => q ∈ S) eu).mp hu

def checkAll (P : Nat → Code) (V : Values) (K : Konts) (S : Array AState)
 (hints : Array (List Nat)) : Bool :=
 (List.range S.size).all fun i => match S[i]? with
 | none => false
 | some s => goodb P V K S s (hints[i]?.getD [])

theorem check_sound {P V K S hints} (h : checkAll P V K S hints=true) :
 ∀ s ∈ S, Good P V K S s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 have hh := List.all_eq_true.mp h i (List.mem_range.mpr hi)
 rw [Array.getElem?_eq_getElem hi,he] at hh
 exact goodb_sound hh

def entry : AState := ⟨⟨0,[]⟩,0⟩
def initial : State := ⟨.mk 0 [],[]⟩

theorem certified_no_stop {P V K S hints}
 (h : checkAll P V K S hints=true) (hi : entry ∈ S) :
 ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop (check_sound h) hi ⟨.mk .nil,.nil⟩

def checkRange (P : Nat → Code) (V : Values) (K : Konts) (S : Array AState)
 (hints : Array (List Nat)) (lo len : Nat) : Bool :=
 (List.range len).all fun j => match S[lo+j]? with
 | none => false
 | some s => goodb P V K S s (hints[lo+j]?.getD [])

theorem range_sound {P V K S hints lo len}
 (h : checkRange P V K S hints lo len=true) (i : Nat)
 (hl : lo ≤ i) (hh : i < lo+len) (hi : i<S.size) : Good P V K S S[i] := by
 have hj : i-lo<len := by omega
 have he : lo+(i-lo)=i := by omega
 have ht := List.all_eq_true.mp h (i-lo) (List.mem_range.mpr hj)
 rw [he,Array.getElem?_eq_getElem hi] at ht
 exact goodb_sound ht

#print axioms progress
#print axioms check_sound
#print axioms certified_no_stop
end Certgen
