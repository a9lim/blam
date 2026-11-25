import Blc.SelfintFiniteChain
namespace Blc.SelfintGradeProbes
open Term SelfintLowerBound SelfintControl SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 5000000
def opM0 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 0
  | 1,1 => 0
  | 1,2 => 0
  | 1,3 => 1
  | 2,0 => 0
  | 2,1 => 0
  | 2,2 => 2
  | _,_ => 3
def gM0 : Algebra 3 := ⟨opM0,0,by decide,by decide,by decide⟩
private theorem bM0_0 : Typed gM0 (rho (n := 3) 1 3) (churchBit false) 3 := typed_eval _ _
private theorem bM0_1 : Typed gM0 (rho (n := 3) 1 3) (churchBit true) 3 := typed_eval _ _
private theorem sM0_0 : Typed gM0 (rho (n := 3) 1 3) (streamOf [] (.var 0)) 3 := .var _ _ (Nat.le_refl _)
private theorem sM0_1 : Typed gM0 (rho (n := 3) 1 3) (streamOf [false] (.var 0)) 3 := pairGrade bM0_0 sM0_0 (by decide) (by decide)
private theorem sM0_2 : Typed gM0 (rho (n := 3) 1 3) (streamOf [true,false] (.var 0)) 3 := pairGrade bM0_1 sM0_1 (by decide) (by decide)
private theorem sM0_3 : Typed gM0 (rho (n := 3) 1 3) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bM0_0 sM0_2 (by decide) (by decide)
private theorem sM0_4 : Typed gM0 (rho (n := 3) 1 3) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bM0_0 sM0_3 (by decide) (by decide)
theorem cutM0_0 {t : Term} (hv : eval gM0 (rho (n := 3) 1 3) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM0 (m := (.lam (.var 0))) (by decide) (by decide) sM0_4 he hv
  exact (by decide : ¬ eval gM0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM0 (opM0 0 1) 3) hz
theorem cutM0_1 {t : Term} (hv : eval gM0 (rho (n := 3) 1 3) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM0 (m := (.lam (.var 0))) (by decide) (by decide) sM0_4 he hv
  exact (by decide : ¬ eval gM0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM0 (opM0 1 1) 3) hz
theorem cutM0_2 {t : Term} (hv : eval gM0 (rho (n := 3) 1 3) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM0 (m := (.lam (.var 0))) (by decide) (by decide) sM0_4 he hv
  exact (by decide : ¬ eval gM0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM0 (opM0 2 1) 3) hz
def opM1 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 0
  | 1,1 => 0
  | 1,2 => 0
  | 1,3 => 2
  | 2,0 => 0
  | 2,1 => 1
  | 2,2 => 2
  | _,_ => 3
def gM1 : Algebra 3 := ⟨opM1,0,by decide,by decide,by decide⟩
private theorem bM1_0 : Typed gM1 (rho (n := 3) 1 3) (churchBit false) 3 := typed_eval _ _
private theorem bM1_1 : Typed gM1 (rho (n := 3) 1 3) (churchBit true) 3 := typed_eval _ _
private theorem sM1_0 : Typed gM1 (rho (n := 3) 1 3) (streamOf [] (.var 0)) 3 := .var _ _ (Nat.le_refl _)
private theorem sM1_1 : Typed gM1 (rho (n := 3) 1 3) (streamOf [false] (.var 0)) 3 := pairGrade bM1_0 sM1_0 (by decide) (by decide)
private theorem sM1_2 : Typed gM1 (rho (n := 3) 1 3) (streamOf [true,false] (.var 0)) 3 := pairGrade bM1_1 sM1_1 (by decide) (by decide)
private theorem sM1_3 : Typed gM1 (rho (n := 3) 1 3) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bM1_0 sM1_2 (by decide) (by decide)
private theorem sM1_4 : Typed gM1 (rho (n := 3) 1 3) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bM1_0 sM1_3 (by decide) (by decide)
theorem cutM1_0 {t : Term} (hv : eval gM1 (rho (n := 3) 1 3) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM1 (m := (.lam (.var 0))) (by decide) (by decide) sM1_4 he hv
  exact (by decide : ¬ eval gM1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM1 (opM1 0 1) 3) hz
theorem cutM1_1 {t : Term} (hv : eval gM1 (rho (n := 3) 1 3) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM1 (m := (.lam (.var 0))) (by decide) (by decide) sM1_4 he hv
  exact (by decide : ¬ eval gM1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM1 (opM1 1 1) 3) hz
theorem cutM1_2 {t : Term} (hv : eval gM1 (rho (n := 3) 1 3) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM1 (m := (.lam (.var 0))) (by decide) (by decide) sM1_4 he hv
  exact (by decide : ¬ eval gM1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM1 (opM1 2 1) 3) hz
def opM2 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 0
  | 1,1 => 0
  | 1,2 => 0
  | 2,0 => 0
  | 2,1 => 1
  | 2,2 => 1
  | _,_ => 3
def gM2 : Algebra 3 := ⟨opM2,0,by decide,by decide,by decide⟩
private theorem bM2_0 : Typed gM2 (rho (n := 3) 1 0) (churchBit false) 3 := typed_eval _ _
private theorem bM2_1 : Typed gM2 (rho (n := 3) 1 0) (churchBit true) 3 := typed_eval _ _
private theorem sM2_0 : Typed gM2 (rho (n := 3) 1 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM2_1 : Typed gM2 (rho (n := 3) 1 0) (streamOf [false] (.var 0)) 3 := pairGrade bM2_0 sM2_0 (by decide) (by decide)
private theorem sM2_2 : Typed gM2 (rho (n := 3) 1 0) (streamOf [true,false] (.var 0)) 3 := pairGrade bM2_1 sM2_1 (by decide) (by decide)
private theorem sM2_3 : Typed gM2 (rho (n := 3) 1 0) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bM2_0 sM2_2 (by decide) (by decide)
private theorem sM2_4 : Typed gM2 (rho (n := 3) 1 0) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bM2_0 sM2_3 (by decide) (by decide)
theorem cutM2_0 {t : Term} (hv : eval gM2 (rho (n := 3) 1 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM2 (m := (.lam (.var 0))) (by decide) (by decide) sM2_4 he hv
  exact (by decide : ¬ eval gM2 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM2 (opM2 0 1) 3) hz
theorem cutM2_1 {t : Term} (hv : eval gM2 (rho (n := 3) 1 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM2 (m := (.lam (.var 0))) (by decide) (by decide) sM2_4 he hv
  exact (by decide : ¬ eval gM2 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM2 (opM2 1 1) 3) hz
def opM3 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 0
  | 1,1 => 0
  | 1,2 => 0
  | 2,0 => 1
  | 2,1 => 1
  | 2,2 => 1
  | _,_ => 3
def gM3 : Algebra 3 := ⟨opM3,0,by decide,by decide,by decide⟩
private theorem bM3_0 : Typed gM3 (rho (n := 3) 1 0) (churchBit false) 3 := typed_eval _ _
private theorem bM3_1 : Typed gM3 (rho (n := 3) 1 0) (churchBit true) 3 := typed_eval _ _
private theorem sM3_0 : Typed gM3 (rho (n := 3) 1 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM3_1 : Typed gM3 (rho (n := 3) 1 0) (streamOf [false] (.var 0)) 3 := pairGrade bM3_0 sM3_0 (by decide) (by decide)
private theorem sM3_2 : Typed gM3 (rho (n := 3) 1 0) (streamOf [true,false] (.var 0)) 3 := pairGrade bM3_1 sM3_1 (by decide) (by decide)
private theorem sM3_3 : Typed gM3 (rho (n := 3) 1 0) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bM3_0 sM3_2 (by decide) (by decide)
private theorem sM3_4 : Typed gM3 (rho (n := 3) 1 0) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bM3_0 sM3_3 (by decide) (by decide)
theorem cutM3_0 {t : Term} (hv : eval gM3 (rho (n := 3) 1 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM3 (m := (.lam (.var 0))) (by decide) (by decide) sM3_4 he hv
  exact (by decide : ¬ eval gM3 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM3 (opM3 0 1) 3) hz
theorem cutM3_1 {t : Term} (hv : eval gM3 (rho (n := 3) 1 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM3 (m := (.lam (.var 0))) (by decide) (by decide) sM3_4 he hv
  exact (by decide : ¬ eval gM3 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM3 (opM3 1 1) 3) hz
def opM4 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 0
  | 1,1 => 0
  | 1,2 => 1
  | 2,0 => 1
  | 2,1 => 1
  | 2,2 => 1
  | _,_ => 3
def gM4 : Algebra 3 := ⟨opM4,0,by decide,by decide,by decide⟩
private theorem bM4_0 : Typed gM4 (rho (n := 3) 1 0) (churchBit false) 3 := typed_eval _ _
private theorem bM4_1 : Typed gM4 (rho (n := 3) 1 0) (churchBit true) 3 := typed_eval _ _
private theorem sM4_0 : Typed gM4 (rho (n := 3) 1 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM4_1 : Typed gM4 (rho (n := 3) 1 0) (streamOf [false] (.var 0)) 3 := pairGrade bM4_0 sM4_0 (by decide) (by decide)
private theorem sM4_2 : Typed gM4 (rho (n := 3) 1 0) (streamOf [true,false] (.var 0)) 3 := pairGrade bM4_1 sM4_1 (by decide) (by decide)
private theorem sM4_3 : Typed gM4 (rho (n := 3) 1 0) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bM4_0 sM4_2 (by decide) (by decide)
private theorem sM4_4 : Typed gM4 (rho (n := 3) 1 0) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bM4_0 sM4_3 (by decide) (by decide)
theorem cutM4_0 {t : Term} (hv : eval gM4 (rho (n := 3) 1 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM4 (m := (.lam (.var 0))) (by decide) (by decide) sM4_4 he hv
  exact (by decide : ¬ eval gM4 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM4 (opM4 0 1) 3) hz
theorem cutM4_1 {t : Term} (hv : eval gM4 (rho (n := 3) 1 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM4 (m := (.lam (.var 0))) (by decide) (by decide) sM4_4 he hv
  exact (by decide : ¬ eval gM4 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM4 (opM4 1 1) 3) hz
def opM5 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 1
  | 1,1 => 2
  | 2,0 => 1
  | 2,1 => 2
  | _,_ => 3
def gM5 : Algebra 3 := ⟨opM5,0,by decide,by decide,by decide⟩
private theorem bM5_0 : Typed gM5 (rho (n := 3) 1 0) (churchBit false) 1 := typed_eval _ _
private theorem bM5_1 : Typed gM5 (rho (n := 3) 1 0) (churchBit true) 1 := typed_eval _ _
private theorem sM5_0 : Typed gM5 (rho (n := 3) 1 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM5_1 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false] (.var 0)) 1 := pairGrade bM5_0 sM5_0 (by decide) (by decide)
private theorem sM5_2 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_1 (by decide) (by decide)
private theorem sM5_3 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_2 (by decide) (by decide)
private theorem sM5_4 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,false,true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_3 (by decide) (by decide)
private theorem sM5_5 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_4 (by decide) (by decide)
private theorem sM5_6 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_5 (by decide) (by decide)
private theorem sM5_7 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_6 (by decide) (by decide)
private theorem sM5_8 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_7 (by decide) (by decide)
private theorem sM5_9 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_8 (by decide) (by decide)
private theorem sM5_10 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_9 (by decide) (by decide)
private theorem sM5_11 : Typed gM5 (rho (n := 3) 1 0) (streamOf [true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_1 sM5_10 (by decide) (by decide)
private theorem sM5_12 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_11 (by decide) (by decide)
private theorem sM5_13 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_12 (by decide) (by decide)
private theorem sM5_14 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_13 (by decide) (by decide)
private theorem sM5_15 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_14 (by decide) (by decide)
private theorem sM5_16 : Typed gM5 (rho (n := 3) 1 0) (streamOf [false,false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM5_0 sM5_15 (by decide) (by decide)
theorem cutM5_0 {t : Term} (hv : eval gM5 (rho (n := 3) 1 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM5 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM5_16 he hv
  exact (by decide : ¬ eval gM5 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM5 (opM5 0 1) 1) hz
theorem cutM5_1 {t : Term} (hv : eval gM5 (rho (n := 3) 1 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM5 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM5_16 he hv
  exact (by decide : ¬ eval gM5 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM5 (opM5 1 1) 1) hz
theorem cutM5_2 {t : Term} (hv : eval gM5 (rho (n := 3) 1 0) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM5 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM5_16 he hv
  exact (by decide : ¬ eval gM5 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM5 (opM5 2 1) 1) hz
def opM6 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 1,0 => 1
  | 1,1 => 2
  | 2,0 => 2
  | 2,1 => 2
  | _,_ => 3
def gM6 : Algebra 3 := ⟨opM6,0,by decide,by decide,by decide⟩
private theorem bM6_0 : Typed gM6 (rho (n := 3) 1 0) (churchBit false) 1 := typed_eval _ _
private theorem bM6_1 : Typed gM6 (rho (n := 3) 1 0) (churchBit true) 1 := typed_eval _ _
private theorem sM6_0 : Typed gM6 (rho (n := 3) 1 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM6_1 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false] (.var 0)) 1 := pairGrade bM6_0 sM6_0 (by decide) (by decide)
private theorem sM6_2 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_1 (by decide) (by decide)
private theorem sM6_3 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_2 (by decide) (by decide)
private theorem sM6_4 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,false,true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_3 (by decide) (by decide)
private theorem sM6_5 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_4 (by decide) (by decide)
private theorem sM6_6 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_5 (by decide) (by decide)
private theorem sM6_7 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_6 (by decide) (by decide)
private theorem sM6_8 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_7 (by decide) (by decide)
private theorem sM6_9 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_8 (by decide) (by decide)
private theorem sM6_10 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_9 (by decide) (by decide)
private theorem sM6_11 : Typed gM6 (rho (n := 3) 1 0) (streamOf [true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_1 sM6_10 (by decide) (by decide)
private theorem sM6_12 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_11 (by decide) (by decide)
private theorem sM6_13 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_12 (by decide) (by decide)
private theorem sM6_14 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_13 (by decide) (by decide)
private theorem sM6_15 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_14 (by decide) (by decide)
private theorem sM6_16 : Typed gM6 (rho (n := 3) 1 0) (streamOf [false,false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 1 := pairGrade bM6_0 sM6_15 (by decide) (by decide)
theorem cutM6_0 {t : Term} (hv : eval gM6 (rho (n := 3) 1 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM6 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM6_16 he hv
  exact (by decide : ¬ eval gM6 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM6 (opM6 0 1) 1) hz
theorem cutM6_1 {t : Term} (hv : eval gM6 (rho (n := 3) 1 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM6 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM6_16 he hv
  exact (by decide : ¬ eval gM6 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM6 (opM6 1 1) 1) hz
theorem cutM6_2 {t : Term} (hv : eval gM6 (rho (n := 3) 1 0) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM6 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM6_16 he hv
  exact (by decide : ¬ eval gM6 (rho (n := 3) 1 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM6 (opM6 2 1) 1) hz
def opM7 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 1
  | 1,0 => 0
  | 1,1 => 1
  | 1,2 => 1
  | 2,0 => 1
  | 2,1 => 1
  | 2,2 => 1
  | _,_ => 3
def gM7 : Algebra 3 := ⟨opM7,0,by decide,by decide,by decide⟩
private theorem bM7_0 : Typed gM7 (rho (n := 3) 0 3) (churchBit false) 3 := typed_eval _ _
private theorem bM7_1 : Typed gM7 (rho (n := 3) 0 3) (churchBit true) 3 := typed_eval _ _
private theorem sM7_0 : Typed gM7 (rho (n := 3) 0 3) (streamOf [] (.var 0)) 3 := .var _ _ (Nat.le_refl _)
private theorem sM7_1 : Typed gM7 (rho (n := 3) 0 3) (streamOf [false] (.var 0)) 3 := pairGrade bM7_0 sM7_0 (by decide) (by decide)
private theorem sM7_2 : Typed gM7 (rho (n := 3) 0 3) (streamOf [true,false] (.var 0)) 3 := pairGrade bM7_1 sM7_1 (by decide) (by decide)
private theorem sM7_3 : Typed gM7 (rho (n := 3) 0 3) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bM7_0 sM7_2 (by decide) (by decide)
private theorem sM7_4 : Typed gM7 (rho (n := 3) 0 3) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bM7_0 sM7_3 (by decide) (by decide)
theorem cutM7_0 {t : Term} (hv : eval gM7 (rho (n := 3) 0 3) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM7 (m := (.lam (.var 0))) (by decide) (by decide) sM7_4 he hv
  exact (by decide : ¬ eval gM7 (rho (n := 3) 0 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM7 (opM7 0 0) 3) hz
theorem cutM7_1 {t : Term} (hv : eval gM7 (rho (n := 3) 0 3) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM7 (m := (.lam (.var 0))) (by decide) (by decide) sM7_4 he hv
  exact (by decide : ¬ eval gM7 (rho (n := 3) 0 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM7 (opM7 1 0) 3) hz
def opM8 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 1,0 => 0
  | 1,1 => 1
  | 2,0 => 1
  | _,_ => 3
def gM8 : Algebra 3 := ⟨opM8,0,by decide,by decide,by decide⟩
private theorem bM8_0 : Typed gM8 (rho (n := 3) 0 0) (churchBit false) 2 := typed_eval _ _
private theorem bM8_1 : Typed gM8 (rho (n := 3) 0 0) (churchBit true) 2 := typed_eval _ _
private theorem sM8_0 : Typed gM8 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM8_1 : Typed gM8 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 2 := pairGrade bM8_0 sM8_0 (by decide) (by decide)
private theorem sM8_2 : Typed gM8 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 2 := pairGrade bM8_1 sM8_1 (by decide) (by decide)
private theorem sM8_3 : Typed gM8 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 2 := pairGrade bM8_0 sM8_2 (by decide) (by decide)
private theorem sM8_4 : Typed gM8 (rho (n := 3) 0 0) (streamOf [false,false,true,false] (.var 0)) 2 := pairGrade bM8_0 sM8_3 (by decide) (by decide)
private theorem sM8_5 : Typed gM8 (rho (n := 3) 0 0) (streamOf [false,false,false,true,false] (.var 0)) 2 := pairGrade bM8_0 sM8_4 (by decide) (by decide)
private theorem sM8_6 : Typed gM8 (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,false] (.var 0)) 2 := pairGrade bM8_0 sM8_5 (by decide) (by decide)
theorem cutM8_0 {t : Term} (hv : eval gM8 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM8 (m := (.lam (.lam (.var 0)))) (by decide) (by decide) sM8_6 he hv
  exact (by decide : ¬ eval gM8 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)) ≤ opM8 (opM8 0 0) 2) hz
theorem cutM8_1 {t : Term} (hv : eval gM8 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM8 (m := (.lam (.lam (.var 0)))) (by decide) (by decide) sM8_6 he hv
  exact (by decide : ¬ eval gM8 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)) ≤ opM8 (opM8 1 0) 2) hz
def opM9 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 0,2 => 2
  | 0,3 => 2
  | 1,0 => 0
  | 1,1 => 2
  | _,_ => 3
def gM9 : Algebra 3 := ⟨opM9,0,by decide,by decide,by decide⟩
private theorem bM9_0 : Typed gM9 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM9_1 : Typed gM9 (rho (n := 3) 0 0) (churchBit true) 2 := typed_eval _ _
private theorem sM9_0 : Typed gM9 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM9_1 : Typed gM9 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 1 := pairGrade bM9_0 sM9_0 (by decide) (by decide)
private theorem sM9_2 : Typed gM9 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 2 := pairGrade bM9_1 sM9_1 (by decide) (by decide)
private theorem sM9_3 : Typed gM9 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 2 := pairGrade bM9_0 sM9_2 (by decide) (by decide)
private theorem sM9_4 : Typed gM9 (rho (n := 3) 0 0) (streamOf [false,false,true,false] (.var 0)) 2 := pairGrade bM9_0 sM9_3 (by decide) (by decide)
theorem cutM9_0 {t : Term} (hv : eval gM9 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM9 (m := (.lam (.var 0))) (by decide) (by decide) sM9_4 he hv
  exact (by decide : ¬ eval gM9 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM9 (opM9 0 0) 2) hz
theorem cutM9_1 {t : Term} (hv : eval gM9 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM9 (m := (.lam (.var 0))) (by decide) (by decide) sM9_4 he hv
  exact (by decide : ¬ eval gM9 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM9 (opM9 1 0) 2) hz
def opM10 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 0,2 => 2
  | 0,3 => 2
  | 1,0 => 0
  | _,_ => 3
def gM10 : Algebra 3 := ⟨opM10,0,by decide,by decide,by decide⟩
private theorem bM10_0 : Typed gM10 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM10_1 : Typed gM10 (rho (n := 3) 0 0) (churchBit true) 2 := typed_eval _ _
private theorem sM10_0 : Typed gM10 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM10_1 : Typed gM10 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 1 := pairGrade bM10_0 sM10_0 (by decide) (by decide)
private theorem sM10_2 : Typed gM10 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 2 := pairGrade bM10_1 sM10_1 (by decide) (by decide)
private theorem sM10_3 : Typed gM10 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 2 := pairGrade bM10_0 sM10_2 (by decide) (by decide)
private theorem sM10_4 : Typed gM10 (rho (n := 3) 0 0) (streamOf [false,false,true,false] (.var 0)) 2 := pairGrade bM10_0 sM10_3 (by decide) (by decide)
theorem cutM10_0 {t : Term} (hv : eval gM10 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM10 (m := (.lam (.var 0))) (by decide) (by decide) sM10_4 he hv
  exact (by decide : ¬ eval gM10 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM10 (opM10 0 0) 2) hz
theorem cutM10_1 {t : Term} (hv : eval gM10 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM10 (m := (.lam (.var 0))) (by decide) (by decide) sM10_4 he hv
  exact (by decide : ¬ eval gM10 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opM10 (opM10 1 0) 2) hz
def opM11 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 0,2 => 2
  | 1,0 => 2
  | 1,1 => 2
  | 2,0 => 2
  | 2,1 => 2
  | _,_ => 3
def gM11 : Algebra 3 := ⟨opM11,0,by decide,by decide,by decide⟩
private theorem bM11_0 : Typed gM11 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM11_1 : Typed gM11 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem sM11_0 : Typed gM11 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM11_1 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bM11_0 sM11_0 (by decide) (by decide)
private theorem sM11_2 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_1 (by decide) (by decide)
private theorem sM11_3 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_2 (by decide) (by decide)
private theorem sM11_4 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,false,true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_3 (by decide) (by decide)
private theorem sM11_5 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_4 (by decide) (by decide)
private theorem sM11_6 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_5 (by decide) (by decide)
private theorem sM11_7 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_6 (by decide) (by decide)
private theorem sM11_8 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_7 (by decide) (by decide)
private theorem sM11_9 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_8 (by decide) (by decide)
private theorem sM11_10 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_9 (by decide) (by decide)
private theorem sM11_11 : Typed gM11 (rho (n := 3) 0 0) (streamOf [true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_1 sM11_10 (by decide) (by decide)
private theorem sM11_12 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_11 (by decide) (by decide)
private theorem sM11_13 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_12 (by decide) (by decide)
private theorem sM11_14 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_13 (by decide) (by decide)
private theorem sM11_15 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_14 (by decide) (by decide)
private theorem sM11_16 : Typed gM11 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM11_0 sM11_15 (by decide) (by decide)
theorem cutM11_0 {t : Term} (hv : eval gM11 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM11 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM11_16 he hv
  exact (by decide : ¬ eval gM11 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM11 (opM11 0 0) 0) hz
theorem cutM11_1 {t : Term} (hv : eval gM11 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM11 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM11_16 he hv
  exact (by decide : ¬ eval gM11 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM11 (opM11 1 0) 0) hz
theorem cutM11_2 {t : Term} (hv : eval gM11 (rho (n := 3) 0 0) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM11 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM11_16 he hv
  exact (by decide : ¬ eval gM11 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM11 (opM11 2 0) 0) hz
def opM12 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 1,0 => 0
  | 1,1 => 2
  | 2,0 => 2
  | _,_ => 3
def gM12 : Algebra 3 := ⟨opM12,0,by decide,by decide,by decide⟩
private theorem bM12_0 : Typed gM12 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM12_1 : Typed gM12 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem sM12_0 : Typed gM12 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM12_1 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bM12_0 sM12_0 (by decide) (by decide)
private theorem sM12_2 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_1 (by decide) (by decide)
private theorem sM12_3 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_2 (by decide) (by decide)
private theorem sM12_4 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,false,true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_3 (by decide) (by decide)
private theorem sM12_5 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_4 (by decide) (by decide)
private theorem sM12_6 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_5 (by decide) (by decide)
private theorem sM12_7 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_6 (by decide) (by decide)
private theorem sM12_8 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_7 (by decide) (by decide)
private theorem sM12_9 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_8 (by decide) (by decide)
private theorem sM12_10 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_9 (by decide) (by decide)
private theorem sM12_11 : Typed gM12 (rho (n := 3) 0 0) (streamOf [true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_1 sM12_10 (by decide) (by decide)
private theorem sM12_12 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_11 (by decide) (by decide)
private theorem sM12_13 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_12 (by decide) (by decide)
private theorem sM12_14 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_13 (by decide) (by decide)
private theorem sM12_15 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_14 (by decide) (by decide)
private theorem sM12_16 : Typed gM12 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM12_0 sM12_15 (by decide) (by decide)
theorem cutM12_0 {t : Term} (hv : eval gM12 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM12 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM12_16 he hv
  exact (by decide : ¬ eval gM12 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM12 (opM12 0 0) 0) hz
theorem cutM12_1 {t : Term} (hv : eval gM12 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM12 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM12_16 he hv
  exact (by decide : ¬ eval gM12 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM12 (opM12 1 0) 0) hz
theorem cutM12_2 {t : Term} (hv : eval gM12 (rho (n := 3) 0 0) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM12 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM12_16 he hv
  exact (by decide : ¬ eval gM12 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM12 (opM12 2 0) 0) hz
def opM13 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 1,0 => 0
  | 1,1 => 2
  | _,_ => 3
def gM13 : Algebra 3 := ⟨opM13,0,by decide,by decide,by decide⟩
private theorem bM13_0 : Typed gM13 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM13_1 : Typed gM13 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem sM13_0 : Typed gM13 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM13_1 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bM13_0 sM13_0 (by decide) (by decide)
private theorem sM13_2 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_1 (by decide) (by decide)
private theorem sM13_3 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_2 (by decide) (by decide)
private theorem sM13_4 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,false,true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_3 (by decide) (by decide)
private theorem sM13_5 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_4 (by decide) (by decide)
private theorem sM13_6 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_5 (by decide) (by decide)
private theorem sM13_7 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_6 (by decide) (by decide)
private theorem sM13_8 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_7 (by decide) (by decide)
private theorem sM13_9 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_8 (by decide) (by decide)
private theorem sM13_10 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_9 (by decide) (by decide)
private theorem sM13_11 : Typed gM13 (rho (n := 3) 0 0) (streamOf [true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_1 sM13_10 (by decide) (by decide)
private theorem sM13_12 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_11 (by decide) (by decide)
private theorem sM13_13 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_12 (by decide) (by decide)
private theorem sM13_14 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_13 (by decide) (by decide)
private theorem sM13_15 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_14 (by decide) (by decide)
private theorem sM13_16 : Typed gM13 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM13_0 sM13_15 (by decide) (by decide)
theorem cutM13_0 {t : Term} (hv : eval gM13 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM13 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM13_16 he hv
  exact (by decide : ¬ eval gM13 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM13 (opM13 0 0) 0) hz
theorem cutM13_1 {t : Term} (hv : eval gM13 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM13 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM13_16 he hv
  exact (by decide : ¬ eval gM13 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM13 (opM13 1 0) 0) hz
def opM14 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 1,0 => 0
  | _,_ => 3
def gM14 : Algebra 3 := ⟨opM14,0,by decide,by decide,by decide⟩
private theorem bM14_0 : Typed gM14 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM14_1 : Typed gM14 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem sM14_0 : Typed gM14 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM14_1 : Typed gM14 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bM14_0 sM14_0 (by decide) (by decide)
private theorem sM14_2 : Typed gM14 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bM14_1 sM14_1 (by decide) (by decide)
private theorem sM14_3 : Typed gM14 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 0 := pairGrade bM14_0 sM14_2 (by decide) (by decide)
private theorem sM14_4 : Typed gM14 (rho (n := 3) 0 0) (streamOf [true,false,true,false] (.var 0)) 0 := pairGrade bM14_1 sM14_3 (by decide) (by decide)
private theorem sM14_5 : Typed gM14 (rho (n := 3) 0 0) (streamOf [true,true,false,true,false] (.var 0)) 0 := pairGrade bM14_1 sM14_4 (by decide) (by decide)
private theorem sM14_6 : Typed gM14 (rho (n := 3) 0 0) (streamOf [false,true,true,false,true,false] (.var 0)) 0 := pairGrade bM14_0 sM14_5 (by decide) (by decide)
private theorem sM14_7 : Typed gM14 (rho (n := 3) 0 0) (streamOf [false,false,true,true,false,true,false] (.var 0)) 0 := pairGrade bM14_0 sM14_6 (by decide) (by decide)
private theorem sM14_8 : Typed gM14 (rho (n := 3) 0 0) (streamOf [false,false,false,true,true,false,true,false] (.var 0)) 0 := pairGrade bM14_0 sM14_7 (by decide) (by decide)
theorem cutM14_0 {t : Term} (hv : eval gM14 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM14 (m := (.lam (.app (.var 0) (.var 0)))) (by decide) (by decide) sM14_8 he hv
  exact (by decide : ¬ eval gM14 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) ≤ opM14 (opM14 0 0) 0) hz
theorem cutM14_1 {t : Term} (hv : eval gM14 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM14 (m := (.lam (.app (.var 0) (.var 0)))) (by decide) (by decide) sM14_8 he hv
  exact (by decide : ¬ eval gM14 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) ≤ opM14 (opM14 1 0) 0) hz
def opM15 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 1,0 => 1
  | 1,1 => 2
  | 2,0 => 2
  | _,_ => 3
def gM15 : Algebra 3 := ⟨opM15,0,by decide,by decide,by decide⟩
private theorem bM15_0 : Typed gM15 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bM15_1 : Typed gM15 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem sM15_0 : Typed gM15 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sM15_1 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bM15_0 sM15_0 (by decide) (by decide)
private theorem sM15_2 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_1 (by decide) (by decide)
private theorem sM15_3 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_2 (by decide) (by decide)
private theorem sM15_4 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,false,true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_3 (by decide) (by decide)
private theorem sM15_5 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_4 (by decide) (by decide)
private theorem sM15_6 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_5 (by decide) (by decide)
private theorem sM15_7 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_6 (by decide) (by decide)
private theorem sM15_8 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_7 (by decide) (by decide)
private theorem sM15_9 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_8 (by decide) (by decide)
private theorem sM15_10 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_9 (by decide) (by decide)
private theorem sM15_11 : Typed gM15 (rho (n := 3) 0 0) (streamOf [true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_1 sM15_10 (by decide) (by decide)
private theorem sM15_12 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_11 (by decide) (by decide)
private theorem sM15_13 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_12 (by decide) (by decide)
private theorem sM15_14 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_13 (by decide) (by decide)
private theorem sM15_15 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_14 (by decide) (by decide)
private theorem sM15_16 : Typed gM15 (rho (n := 3) 0 0) (streamOf [false,false,false,false,false,true,true,true,false,false,true,true,true,false,true,false] (.var 0)) 0 := pairGrade bM15_0 sM15_15 (by decide) (by decide)
theorem cutM15_0 {t : Term} (hv : eval gM15 (rho (n := 3) 0 0) t = 0) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM15 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM15_16 he hv
  exact (by decide : ¬ eval gM15 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM15 (opM15 0 0) 0) hz
theorem cutM15_1 {t : Term} (hv : eval gM15 (rho (n := 3) 0 0) t = 1) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM15 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM15_16 he hv
  exact (by decide : ¬ eval gM15 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM15 (opM15 1 0) 0) hz
theorem cutM15_2 {t : Term} (hv : eval gM15 (rho (n := 3) 0 0) t = 2) : ¬ IsSelfInterpreter t := by
  intro he
  have hz := necessary gM15 (m := (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (by decide) (by decide) sM15_16 he hv
  exact (by decide : ¬ eval gM15 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) ≤ opM15 (opM15 2 0) 0) hz
end Blc.SelfintGradeProbes
