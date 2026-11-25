import Blc.SelfintResidual45.ProbeModel

set_option Elab.async false
namespace Blc.Floor45.GTable051
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def op (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 1
  | 0,1 => 1
  | 0,2 => 1
  | 1,0 => 1
  | 1,1 => 2
  | 2,0 => 1
  | 2,1 => 2
  | _,_ => 3
def G : Algebra 3 := ⟨op,0,by decide,by decide,by decide⟩
private theorem b0 : Typed G (rho (n := 3) 0 0) (churchBit false) 1 := typed_eval _ _
private theorem b1 : Typed G (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem s0 : Typed G (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem s1 : Typed G (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade b0 s0 (by decide) (by decide)
private theorem s2 : Typed G (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade b1 s1 (by decide) (by decide)
private theorem s3 : Typed G (rho (n := 3) 0 0) (streamOf [true,true,false] (.var 0)) 0 := pairGrade b1 s2 (by decide) (by decide)
private theorem s4 : Typed G (rho (n := 3) 0 0) (streamOf [false,true,true,false] (.var 0)) 0 := pairGrade b0 s3 (by decide) (by decide)
private theorem s5 : Typed G (rho (n := 3) 0 0) (streamOf [true,false,true,true,false] (.var 0)) 0 := pairGrade b1 s4 (by decide) (by decide)
private theorem s6 : Typed G (rho (n := 3) 0 0) (streamOf [true,true,false,true,true,false] (.var 0)) 0 := pairGrade b1 s5 (by decide) (by decide)
private theorem s7 : Typed G (rho (n := 3) 0 0) (streamOf [true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b1 s6 (by decide) (by decide)
private theorem s8 : Typed G (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s7 (by decide) (by decide)
private theorem s9 : Typed G (rho (n := 3) 0 0) (streamOf [true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b1 s8 (by decide) (by decide)
private theorem s10 : Typed G (rho (n := 3) 0 0) (streamOf [true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b1 s9 (by decide) (by decide)
private theorem s11 : Typed G (rho (n := 3) 0 0) (streamOf [false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s10 (by decide) (by decide)
private theorem s12 : Typed G (rho (n := 3) 0 0) (streamOf [true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b1 s11 (by decide) (by decide)
private theorem s13 : Typed G (rho (n := 3) 0 0) (streamOf [false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s12 (by decide) (by decide)
private theorem s14 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s13 (by decide) (by decide)
private theorem s15 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s14 (by decide) (by decide)
private theorem s16 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s15 (by decide) (by decide)
private theorem s17 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s16 (by decide) (by decide)
private theorem s18 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s17 (by decide) (by decide)
private theorem s19 : Typed G (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,false,false,true,false,true,true,false,true,true,true,false,true,true,false] (.var 0)) 0 := pairGrade b0 s18 (by decide) (by decide)
theorem cut {t : Term} (ht : Typed G (rho (n := 3) 0 0) t 2) : ¬ IsSelfInterpreter t := by
  intro he
  have h := necessary G (m := (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (by decide) (by decide) s19 he rfl
  have hle := G.mono _ _ (G.mono _ _ (eval_le ht) 0) 0
  exact (by decide : ¬ eval G (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)) ≤ op (op 2 0) 0) (Nat.le_trans h hle)
end Blc.Floor45.GTable051
