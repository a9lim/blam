import Blc.SelfintResidual45.ProbeModel

set_option Elab.async false
namespace Blc.Floor45.GTable026
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def op (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 2
  | 0,3 => 2
  | 1,0 => 0
  | 1,1 => 1
  | _,_ => 3
def G : Algebra 3 := ⟨op,0,by decide,by decide,by decide⟩
private theorem b0 : Typed G (rho (n := 3) 0 0) (churchBit false) 2 := typed_eval _ _
private theorem b1 : Typed G (rho (n := 3) 0 0) (churchBit true) 2 := typed_eval _ _
private theorem s0 : Typed G (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem s1 : Typed G (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 2 := pairGrade b0 s0 (by decide) (by decide)
private theorem s2 : Typed G (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 2 := pairGrade b1 s1 (by decide) (by decide)
private theorem s3 : Typed G (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 2 := pairGrade b0 s2 (by decide) (by decide)
private theorem s4 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,true,false] (.var 0)) 2 := pairGrade b0 s3 (by decide) (by decide)
theorem cut {t : Term} (ht : Typed G (rho (n := 3) 0 0) t 1) : ¬ IsSelfInterpreter t := by
  intro he
  have h := necessary G (m := (.lam (.var 0))) (by decide) (by decide) s4 he rfl
  have hle := G.mono _ _ (G.mono _ _ (eval_le ht) 0) 2
  exact (by decide : ¬ eval G (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ op (op 1 0) 2) (Nat.le_trans h hle)
end Blc.Floor45.GTable026
