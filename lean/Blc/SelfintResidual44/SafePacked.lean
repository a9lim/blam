import Blc.SelfintResidual44.Packed
import Blc.SelfintResidual44.Safe

set_option Elab.async false
namespace Blc.Floor44.SafePacked
open Term Certgen Certgen.FloorIndex SelfintProbe SelfintSharp SelfintRegularSoundness WeakHeadClock SelfintSourceCost
def valid (d : Packed.Data) (P : Nat → Code) (N i : Nat) :=
  Safe.stop P (Packed.get d N i) || Packed.valid d P N i

theorem excludes (d : Packed.Data) (m : Model P) (N : Nat)
    (h0 : Packed.get d N 0 = entry) (hv : ∀ i<N, valid d P N i = true) (pos : 0<N)
    {r : Term} (hr : Rigid r) (hj : BetaJoin (m.term 0) r) (n : Nat) :
    ¬ Count (m.term 0) n := by
  let S := ((List.range N).map (Packed.get d N)).toArray
  have inside (i : Nat) : Packed.get d N i ∈ S := by
    by_cases hi : i<N
    · exact List.mem_toArray.mpr (List.mem_map.mpr ⟨i,List.mem_range.mpr hi,rfl⟩)
    · rw [show Packed.get d N i = entry by simp [Packed.get,hi],←h0]
      exact List.mem_toArray.mpr (List.mem_map.mpr ⟨0,List.mem_range.mpr pos,rfl⟩)
  apply Safe.rejects (V := d.v) (K := d.k) (S := S) m _ (h0 ▸ inside 0) hr hj n
  intro a ha
  obtain ⟨i,hi,rfl⟩ := List.mem_map.mp (List.mem_toArray.mp ha)
  rcases Bool.or_eq_true_iff.mp (hv i (List.mem_range.mp hi)) with hs | hg
  · exact Or.inl hs
  · apply Or.inr
    have h := goodb_sound hg
    have sub : ∀ x∈localStates (Packed.get d N) (d.hints.map id i), x∈S := by
      intro x hx
      obtain ⟨j,_,rfl⟩ := List.mem_map.mp (List.mem_toArray.mp hx)
      exact inside j
    cases hp : P (Packed.get d N i).cl.code <;> simp only [Good,hp] at h ⊢
    · obtain ⟨adr,he,hh⟩ := h
      exact ⟨adr,he,fun c hc => sub _ (hh c hc)⟩
    · obtain ⟨hn,hh⟩ := h
      exact ⟨hn,fun fr hm => by obtain ⟨j,hj,hs⟩ := hh fr hm; exact ⟨j,hj,sub _ hs⟩⟩
    · obtain ⟨j,hj,hk,hs⟩ := h
      exact ⟨j,hj,hk,sub _ hs⟩
end Blc.Floor44.SafePacked
