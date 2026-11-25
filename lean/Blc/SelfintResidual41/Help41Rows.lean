import Blc.SelfintFiniteChain

set_option Elab.async false
namespace Blc.Help41
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
private def sentinel (t : Term) : Nat := (blcCode t).foldl (fun n b => 2*n + if b then 1 else 0) 1
private def opm0 (i j : Fin 4) : Fin 4 := match i.val,j.val with
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
private def gm0 : Algebra 3 := ⟨opm0,0,by decide,by decide,by decide⟩
private theorem bm0_0 : Typed gm0 (rho (n := 3) 1 3) (churchBit false) 3 := typed_eval _ _
private theorem bm0_1 : Typed gm0 (rho (n := 3) 1 3) (churchBit true) 3 := typed_eval _ _
private theorem sm0_0 : Typed gm0 (rho (n := 3) 1 3) (streamOf [] (.var 0)) 3 := .var _ _ (Nat.le_refl _)
private theorem sm0_1 : Typed gm0 (rho (n := 3) 1 3) (streamOf [false] (.var 0)) 3 := pairGrade bm0_0 sm0_0 (by decide) (by decide)
private theorem sm0_2 : Typed gm0 (rho (n := 3) 1 3) (streamOf [true,false] (.var 0)) 3 := pairGrade bm0_1 sm0_1 (by decide) (by decide)
private theorem sm0_3 : Typed gm0 (rho (n := 3) 1 3) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bm0_0 sm0_2 (by decide) (by decide)
private theorem sm0_4 : Typed gm0 (rho (n := 3) 1 3) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bm0_0 sm0_3 (by decide) (by decide)
def e596279824186 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e596279824186 : Closed e596279824186 ∧ sentinel e596279824186 = 2795303079738 := by decide
theorem ex_e596279824186 : ¬ IsSelfInterpreter e596279824186 := by
  intro he
  have hz := necessary gm0 (m := (.lam (.var 0))) (by decide) (by decide) sm0_4 he (by decide : eval gm0 (rho (n := 3) 1 3) e596279824186 = 2)
  exact (by decide : ¬ eval gm0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm0 (opm0 2 1) 3) hz
#print axioms ex_e596279824186
def e597890436922 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e597890436922 : Closed e597890436922 ∧ sentinel e597890436922 = 2796913692474 := by decide
theorem ex_e597890436922 : ¬ IsSelfInterpreter e597890436922 := by
  intro he
  have hz := necessary gm0 (m := (.lam (.var 0))) (by decide) (by decide) sm0_4 he (by decide : eval gm0 (rho (n := 3) 1 3) e597890436922 = 2)
  exact (by decide : ¬ eval gm0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm0 (opm0 2 1) 3) hz
#print axioms ex_e597890436922
def e604332887866 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e604332887866 : Closed e604332887866 ∧ sentinel e604332887866 = 2803356143418 := by decide
theorem ex_e604332887866 : ¬ IsSelfInterpreter e604332887866 := by
  intro he
  have hz := necessary gm0 (m := (.lam (.var 0))) (by decide) (by decide) sm0_4 he (by decide : eval gm0 (rho (n := 3) 1 3) e604332887866 = 2)
  exact (by decide : ¬ eval gm0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm0 (opm0 2 1) 3) hz
#print axioms ex_e604332887866
def e604735541050 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e604735541050 : Closed e604735541050 ∧ sentinel e604735541050 = 2803758796602 := by decide
theorem ex_e604735541050 : ¬ IsSelfInterpreter e604735541050 := by
  intro he
  have hz := necessary gm0 (m := (.lam (.var 0))) (by decide) (by decide) sm0_4 he (by decide : eval gm0 (rho (n := 3) 1 3) e604735541050 = 2)
  exact (by decide : ¬ eval gm0 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm0 (opm0 2 1) 3) hz
#print axioms ex_e604735541050
private def opm1 (i j : Fin 4) : Fin 4 := match i.val,j.val with
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
private def gm1 : Algebra 3 := ⟨opm1,0,by decide,by decide,by decide⟩
private theorem bm1_0 : Typed gm1 (rho (n := 3) 1 3) (churchBit false) 3 := typed_eval _ _
private theorem bm1_1 : Typed gm1 (rho (n := 3) 1 3) (churchBit true) 3 := typed_eval _ _
private theorem sm1_0 : Typed gm1 (rho (n := 3) 1 3) (streamOf [] (.var 0)) 3 := .var _ _ (Nat.le_refl _)
private theorem sm1_1 : Typed gm1 (rho (n := 3) 1 3) (streamOf [false] (.var 0)) 3 := pairGrade bm1_0 sm1_0 (by decide) (by decide)
private theorem sm1_2 : Typed gm1 (rho (n := 3) 1 3) (streamOf [true,false] (.var 0)) 3 := pairGrade bm1_1 sm1_1 (by decide) (by decide)
private theorem sm1_3 : Typed gm1 (rho (n := 3) 1 3) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bm1_0 sm1_2 (by decide) (by decide)
private theorem sm1_4 : Typed gm1 (rho (n := 3) 1 3) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bm1_0 sm1_3 (by decide) (by decide)
def e598356004474 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
theorem wire_e598356004474 : Closed e598356004474 ∧ sentinel e598356004474 = 2797379260026 := by decide
theorem ex_e598356004474 : ¬ IsSelfInterpreter e598356004474 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.var 0))) (by decide) (by decide) sm1_4 he (by decide : eval gm1 (rho (n := 3) 1 3) e598356004474 = 2)
  exact (by decide : ¬ eval gm1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm1 (opm1 2 1) 3) hz
#print axioms ex_e598356004474
def e604735540846 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
theorem wire_e604735540846 : Closed e604735540846 ∧ sentinel e604735540846 = 2803758796398 := by decide
theorem ex_e604735540846 : ¬ IsSelfInterpreter e604735540846 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.var 0))) (by decide) (by decide) sm1_4 he (by decide : eval gm1 (rho (n := 3) 1 3) e604735540846 = 2)
  exact (by decide : ¬ eval gm1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm1 (opm1 2 1) 3) hz
#print axioms ex_e604735540846
def e604798455418 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
theorem wire_e604798455418 : Closed e604798455418 ∧ sentinel e604798455418 = 2803821710970 := by decide
theorem ex_e604798455418 : ¬ IsSelfInterpreter e604798455418 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.var 0))) (by decide) (by decide) sm1_4 he (by decide : eval gm1 (rho (n := 3) 1 3) e604798455418 = 2)
  exact (by decide : ¬ eval gm1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm1 (opm1 2 1) 3) hz
#print axioms ex_e604798455418
def e605775175322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.app (.var 0) (.var 0)))))
theorem wire_e605775175322 : Closed e605775175322 ∧ sentinel e605775175322 = 2804798430874 := by decide
theorem ex_e605775175322 : ¬ IsSelfInterpreter e605775175322 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.var 0))) (by decide) (by decide) sm1_4 he (by decide : eval gm1 (rho (n := 3) 1 3) e605775175322 = 2)
  exact (by decide : ¬ eval gm1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm1 (opm1 2 1) 3) hz
#print axioms ex_e605775175322
def e605804357242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
theorem wire_e605804357242 : Closed e605804357242 ∧ sentinel e605804357242 = 2804827612794 := by decide
theorem ex_e605804357242 : ¬ IsSelfInterpreter e605804357242 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.var 0))) (by decide) (by decide) sm1_4 he (by decide : eval gm1 (rho (n := 3) 1 3) e605804357242 = 2)
  exact (by decide : ¬ eval gm1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm1 (opm1 2 1) 3) hz
#print axioms ex_e605804357242
def e605805088378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
theorem wire_e605805088378 : Closed e605805088378 ∧ sentinel e605805088378 = 2804828343930 := by decide
theorem ex_e605805088378 : ¬ IsSelfInterpreter e605805088378 := by
  intro he
  have hz := necessary gm1 (m := (.lam (.var 0))) (by decide) (by decide) sm1_4 he (by decide : eval gm1 (rho (n := 3) 1 3) e605805088378 = 2)
  exact (by decide : ¬ eval gm1 (rho (n := 3) 1 3) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm1 (opm1 2 1) 3) hz
#print axioms ex_e605805088378
private def opm2 (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 1,0 => 0
  | _,_ => 3
private def gm2 : Algebra 3 := ⟨opm2,0,by decide,by decide,by decide⟩
private theorem bm2_0 : Typed gm2 (rho (n := 3) 0 0) (churchBit false) 0 := typed_eval _ _
private theorem bm2_1 : Typed gm2 (rho (n := 3) 0 0) (churchBit true) 0 := typed_eval _ _
private theorem sm2_0 : Typed gm2 (rho (n := 3) 0 0) (streamOf [] (.var 0)) 0 := .var _ _ (Nat.le_refl _)
private theorem sm2_1 : Typed gm2 (rho (n := 3) 0 0) (streamOf [false] (.var 0)) 0 := pairGrade bm2_0 sm2_0 (by decide) (by decide)
private theorem sm2_2 : Typed gm2 (rho (n := 3) 0 0) (streamOf [true,false] (.var 0)) 0 := pairGrade bm2_1 sm2_1 (by decide) (by decide)
private theorem sm2_3 : Typed gm2 (rho (n := 3) 0 0) (streamOf [false,true,false] (.var 0)) 0 := pairGrade bm2_0 sm2_2 (by decide) (by decide)
private theorem sm2_4 : Typed gm2 (rho (n := 3) 0 0) (streamOf [true,false,true,false] (.var 0)) 0 := pairGrade bm2_1 sm2_3 (by decide) (by decide)
private theorem sm2_5 : Typed gm2 (rho (n := 3) 0 0) (streamOf [true,true,false,true,false] (.var 0)) 0 := pairGrade bm2_1 sm2_4 (by decide) (by decide)
private theorem sm2_6 : Typed gm2 (rho (n := 3) 0 0) (streamOf [false,true,true,false,true,false] (.var 0)) 0 := pairGrade bm2_0 sm2_5 (by decide) (by decide)
private theorem sm2_7 : Typed gm2 (rho (n := 3) 0 0) (streamOf [false,false,true,true,false,true,false] (.var 0)) 0 := pairGrade bm2_0 sm2_6 (by decide) (by decide)
private theorem sm2_8 : Typed gm2 (rho (n := 3) 0 0) (streamOf [false,false,false,true,true,false,true,false] (.var 0)) 0 := pairGrade bm2_0 sm2_7 (by decide) (by decide)
def e596279824182 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
theorem wire_e596279824182 : Closed e596279824182 ∧ sentinel e596279824182 = 2795303079734 := by decide
theorem ex_e596279824182 : ¬ IsSelfInterpreter e596279824182 := by
  intro he
  have hz := necessary gm2 (m := (.lam (.app (.var 0) (.var 0)))) (by decide) (by decide) sm2_8 he (by decide : eval gm2 (rho (n := 3) 0 0) e596279824182 = 0)
  exact (by decide : ¬ eval gm2 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) ≤ opm2 (opm2 0 0) 0) hz
#print axioms ex_e596279824182
def e598355276598 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
theorem wire_e598355276598 : Closed e598355276598 ∧ sentinel e598355276598 = 2797378532150 := by decide
theorem ex_e598355276598 : ¬ IsSelfInterpreter e598355276598 := by
  intro he
  have hz := necessary gm2 (m := (.lam (.app (.var 0) (.var 0)))) (by decide) (by decide) sm2_8 he (by decide : eval gm2 (rho (n := 3) 0 0) e598355276598 = 0)
  exact (by decide : ¬ eval gm2 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) ≤ opm2 (opm2 0 0) 0) hz
#print axioms ex_e598355276598
def e604332887862 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
theorem wire_e604332887862 : Closed e604332887862 ∧ sentinel e604332887862 = 2803356143414 := by decide
theorem ex_e604332887862 : ¬ IsSelfInterpreter e604332887862 := by
  intro he
  have hz := necessary gm2 (m := (.lam (.app (.var 0) (.var 0)))) (by decide) (by decide) sm2_8 he (by decide : eval gm2 (rho (n := 3) 0 0) e604332887862 = 0)
  exact (by decide : ¬ eval gm2 (rho (n := 3) 0 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) ≤ opm2 (opm2 0 0) 0) hz
#print axioms ex_e604332887862
private def opm3 (i j : Fin 5) : Fin 5 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 0,4 => 1
  | 1,0 => 1
  | 1,1 => 2
  | 1,2 => 2
  | 1,3 => 2
  | 2,0 => 1
  | 2,1 => 2
  | 2,2 => 2
  | 3,0 => 1
  | _,_ => 4
private def gm3 : Algebra 4 := ⟨opm3,0,by decide,by decide,by decide⟩
private theorem bm3_0 : Typed gm3 (rho (n := 4) 0 4) (churchBit false) 3 := typed_eval _ _
private theorem bm3_1 : Typed gm3 (rho (n := 4) 0 4) (churchBit true) 4 := typed_eval _ _
private theorem sm3_0 : Typed gm3 (rho (n := 4) 0 4) (streamOf [] (.var 0)) 4 := .var _ _ (Nat.le_refl _)
private theorem sm3_1 : Typed gm3 (rho (n := 4) 0 4) (streamOf [false] (.var 0)) 3 := pairGrade bm3_0 sm3_0 (by decide) (by decide)
private theorem sm3_2 : Typed gm3 (rho (n := 4) 0 4) (streamOf [true,false] (.var 0)) 4 := pairGrade bm3_1 sm3_1 (by decide) (by decide)
private theorem sm3_3 : Typed gm3 (rho (n := 4) 0 4) (streamOf [false,true,false] (.var 0)) 3 := pairGrade bm3_0 sm3_2 (by decide) (by decide)
private theorem sm3_4 : Typed gm3 (rho (n := 4) 0 4) (streamOf [false,false,true,false] (.var 0)) 3 := pairGrade bm3_0 sm3_3 (by decide) (by decide)
def e598355276602 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
theorem wire_e598355276602 : Closed e598355276602 ∧ sentinel e598355276602 = 2797378532154 := by decide
theorem ex_e598355276602 : ¬ IsSelfInterpreter e598355276602 := by
  intro he
  have hz := necessary gm3 (m := (.lam (.var 0))) (by decide) (by decide) sm3_4 he (by decide : eval gm3 (rho (n := 4) 0 4) e598355276602 = 2)
  exact (by decide : ¬ eval gm3 (rho (n := 4) 0 4) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) ≤ opm3 (opm3 2 0) 3) hz
#print axioms ex_e598355276602
end Blc.Help41
