import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.DirectReg
open SelfintRegularSoundness WeakHeadClock Certgen
def check (P : Nat → Code) (V : Values) (K : Konts) (g : Nat → AState)
    (s : AState) (ids : List Nat) : Bool :=
  match P s.cl.code with
  | .opaque => false
  | .var i => match s.cl.env[i]? with
    | none => false
    | some a => pairs (fun c j => g j == ⟨c,s.sp⟩) (V a) ids
  | .app f a => ids.any fun j =>
    decide ((g j).cl = ⟨f,s.cl.env⟩ ∧ (g j).sp ≠ 0 ∧ (⟨⟨a,s.cl.env⟩,s.sp⟩ : Frame) ∈ K (g j).sp)
  | .lam b => decide (s.sp ≠ 0) && pairs (fun fr j =>
      match (g j).cl.env with
      | [] => false
      | adr::env => decide ((g j).cl.code=b ∧ env=s.cl.env ∧ (g j).sp=fr.rest ∧ fr.arg ∈ V adr)) (K s.sp) ids
theorem paired {α : Type} {p : α → Nat → Bool} {xs ids} (h : pairs p xs ids = true) :
    ∀ x ∈ xs, ∃ j ∈ ids, p x j = true := by
  induction xs generalizing ids with
  | nil => simp
  | cons x xs ih =>
    cases ids with
    | nil => simp [pairs] at h
    | cons i ids =>
      simp only [pairs,Bool.and_eq_true] at h
      intro y hy
      rcases List.mem_cons.mp hy with rfl | hy
      · exact ⟨i,List.mem_cons_self,h.1⟩
      · obtain ⟨j,hj,hp⟩ := ih h.2 y hy
        exact ⟨j,List.mem_cons_of_mem _ hj,hp⟩
theorem sound {P V K g s ids} (h : check P V K g s ids = true) :
    Good P V K (FloorIndex.localStates g ids) s := by
  have mem (j : Nat) (hj : j ∈ ids) : g j ∈ FloorIndex.localStates g ids := by
    simpa [FloorIndex.localStates] using (List.mem_map_of_mem (f := g) hj)
  cases hp : P s.cl.code with
  | «opaque» => simp [check,hp] at h
  | var i =>
    simp only [Good,hp]
    simp only [check,hp] at h
    cases he : s.cl.env[i]? with
    | none => simp [he] at h
    | some a =>
      simp only [he] at h
      refine ⟨a,rfl,?_⟩
      intro c hc
      obtain ⟨j,hj,eq⟩ := paired h c hc
      exact (eq_of_beq eq) ▸ mem j hj
  | app f a =>
    simp only [Good,hp]
    simp only [check,hp] at h
    obtain ⟨j,hj,hp⟩ := List.any_eq_true.mp h
    have he := of_decide_eq_true hp
    refine ⟨(g j).sp,he.2.1,he.2.2,?_⟩
    have eq : g j = ⟨⟨f,s.cl.env⟩,(g j).sp⟩ := by cases hx : g j; simp_all
    exact eq ▸ mem j hj
  | lam b =>
    simp only [Good,hp]
    simp only [check,hp,Bool.and_eq_true] at h
    refine ⟨of_decide_eq_true h.1,?_⟩
    intro fr hf
    obtain ⟨j,hj,hh⟩ := paired h.2 fr hf
    cases he : (g j).cl.env with
    | nil => simp [he] at hh
    | cons a env =>
      simp only [he] at hh
      have ok := of_decide_eq_true hh
      refine ⟨a,ok.2.2.2,?_⟩
      have eq : g j = ⟨⟨b,a::s.cl.env⟩,fr.rest⟩ := by
        cases hx : g j with | mk cl sp => cases cl; simp_all
      exact eq ▸ mem j hj
theorem noClock {P V K} (m : Model P) (n : Nat) (get : Nat → AState) (hs : Nat → List Nat)
    (he : RegProof.states n get 0 = entry)
    (h : RegProof.Span (fun i => check P V K (RegProof.states n get) (RegProof.states n get i) (hs i)) 0 n)
    (hn : 0<n) (k : Nat) : ¬ Count (m.term 0) k := by
  let g := RegProof.states n get
  let I := fun (s : State) => ∃ i, Related V K s (g i)
  have hp : ∀ s, I s → ∃ t, Step P s t ∧ I t := by
    rintro s ⟨i,hi⟩
    obtain ⟨j,hj,eq⟩ : ∃ j, j<n ∧ g i=g j := by
      by_cases hi : i<n
      · exact ⟨i,hi,rfl⟩
      · exact ⟨0,hn,by change RegProof.states n get i=RegProof.states n get 0; rw [he]; simp [RegProof.states,hi]⟩
    rw [eq] at hi
    obtain ⟨t,a,hst,ha,hr⟩ := progress (sound (h j (by omega) hj)) hi
    have mem : a ∈ (hs j).map g := by simpa [FloorIndex.localStates] using ha
    obtain ⟨l,_,el⟩ := List.mem_map.mp mem
    exact ⟨t,hst,l,el ▸ hr⟩
  have ini : I initial := ⟨0, by change Related V K initial (RegProof.states n get 0); rw [he]; exact ⟨.mk .nil,.nil⟩⟩
  simpa only [stateTerm,initial,denote,List.map_nil,SelfintSourceCost.spine,instN] using
    invariant_no_clock m I hp k initial ini
end Blc.Floor45.DirectReg
