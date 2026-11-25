import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846201055074
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 37,.app 2 17,.lam 3,.app 4 15,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 12,.app 10 11,.var 2,.opaque,.app 13 14,.var 1,.var 1,.lam 16,.var 0,.lam 18,.lam 19,.app 20 34,.app 21 33,.lam 22,.app 23 32,.app 24 25,.var 0,.lam 26,.lam 27,.app 28 31,.app 29 30,.var 2,.var 0,.opaque,.opaque,.var 0,.app 35 36,.var 1,.var 1,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387099490 := by decide
def t41 : Term := .var 0
def t39 : Term := .var 1
def t29 : Term := .var 2
def t40 : Term := .lam t41
def t28 : Term := .app t29 t41
def t37 : Term := .app t39 t39
def t27 : Term := .app t28 t37
def t26 : Term := .lam t27
def t25 : Term := .lam t26
def t23 : Term := .app t41 t25
def t22 : Term := .app t23 t40
def t21 : Term := .lam t22
def t20 : Term := .app t21 t41
def t19 : Term := .app t20 t37
def t18 : Term := .lam t19
def t17 : Term := .lam t18
def t1 : Term := .app t21 t17
def t0 : Term := .app t1 t40
def terms : Array Term := #[t0,t1,t21,t22,t23,t41,t25,t26,t27,t28,t29,t41,t37,t39,t39,t40,t41,t17,t18,t19,t20,t21,t22,t23,t41,t25,t26,t27,t28,t29,t41,t37,t40,t41,t37,t39,t39,t40]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n37 : model.term 37 = t40 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 37) (by rfl)).trans (by rfl)
theorem n36 : model.term 36 = t39 := model.var_eq 36 1 (by rfl)
theorem n35 : model.term 35 = t39 := model.var_eq 35 1 (by rfl)
theorem n34 : model.term 34 = t37 := by rw [model.app_eq 34 35 36 (by rfl), n35, n36]; rfl
theorem n33 : model.term 33 = t41 := model.var_eq 33 0 (by rfl)
theorem n32 : model.term 32 = t40 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 32) (by rfl)).trans (by rfl)
theorem n31 : model.term 31 = t37 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 31) (by rfl)).trans (by rfl)
theorem n30 : model.term 30 = t41 := model.var_eq 30 0 (by rfl)
theorem n29 : model.term 29 = t29 := model.var_eq 29 2 (by rfl)
theorem n28 : model.term 28 = t28 := by rw [model.app_eq 28 29 30 (by rfl), n29, n30]; rfl
theorem n27 : model.term 27 = t27 := by rw [model.app_eq 27 28 31 (by rfl), n28, n31]; rfl
theorem n26 : model.term 26 = t26 := by rw [model.lam_eq 26 27 (by rfl), n27]; rfl
theorem n25 : model.term 25 = t25 := by rw [model.lam_eq 25 26 (by rfl), n26]; rfl
theorem n24 : model.term 24 = t41 := model.var_eq 24 0 (by rfl)
theorem n23 : model.term 23 = t23 := by rw [model.app_eq 23 24 25 (by rfl), n24, n25]; rfl
theorem n22 : model.term 22 = t22 := by rw [model.app_eq 22 23 32 (by rfl), n23, n32]; rfl
theorem n21 : model.term 21 = t21 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t20 := by rw [model.app_eq 20 21 33 (by rfl), n21, n33]; rfl
theorem n19 : model.term 19 = t19 := by rw [model.app_eq 19 20 34 (by rfl), n20, n34]; rfl
theorem n18 : model.term 18 = t18 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t17 := by rw [model.lam_eq 17 18 (by rfl), n18]; rfl
theorem n16 : model.term 16 = t41 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t40 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t39 := model.var_eq 14 1 (by rfl)
theorem n13 : model.term 13 = t39 := model.var_eq 13 1 (by rfl)
theorem n12 : model.term 12 = t37 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t41 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 11) (by rfl)).trans (by rfl)
theorem n10 : model.term 10 = t29 := model.var_eq 10 2 (by rfl)
theorem n9 : model.term 9 = t28 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t27 := by rw [model.app_eq 8 9 12 (by rfl), n9, n12]; rfl
theorem n7 : model.term 7 = t26 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t25 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t41 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t23 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t22 := by rw [model.app_eq 3 4 15 (by rfl), n4, n15]; rfl
theorem n2 : model.term 2 = t21 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 17 (by rfl), n2, n17]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 37 (by rfl), n1, n37]; rfl
def d : Packed.Data := ⟨⟨6,0x249248e286186186179d71b6996186175d75965955555145134d34d249249145145040f3ce38e38d34d30c30c30c28a2892492082082071c71c71861861440c2040⟩,⟨5,0x1ce739d29420e710842a056a0ad415a82941d283a5083ce5288000041e3198c5218a4318a5210c5218a4314a4239ad6306318c6318000⟩,⟨5,0x1483aca308c26f94e41332307b9ac41ccb52507305cd0e717a737ab499379063194838c2308c39bd67170b9ae6ca308c2a520ed408820⟩,⟨⟨6,0x2baa9a2692281e6d859448f309203000⟩,⟨3,0x424a4926d24db358⟩,⟨5,0x8a9590624050043d0e4348750cca21c661150f8a1d0436081152b608a9⟩⟩,⟨6,0x8208a295f65990e38e8a086185130c30f2cb2c6799⟩,⟨4,0xba9802ba76547198706543654321⟩,⟨5,0xa41a50839c53306d5a037a7358bce30f94a3184157⟩,⟨5,0x338b85cd736920c82e6b107320e60b9a18c2308c020⟩,⟨⟨5,0x2d49ca0f7316a49cc518820⟩,⟨2,0x659656595⟩,⟨5,0x5ab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x2181f79c69961759551349140f38d30b248184081000⟩,⟨2,0x156955555559a94⟩,⟨6,0x8607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x18705fbd76e5bb35eb55a94e951a13e6cb95264478d16243850603f7cf5e3b74e5bb568cd93160bd72d58ad5294e992a3448501f3c74e1b3464c172c54a13244480f1c3460a10182840608080⟩,⟨2,0x1555a5555a555555555a55555596555555555556a555⟩,⟨7,0x4070c2699f3c74d9c34a13d29b2a4c88f467d09d322c4870a0c07ef9ebc76e9cb870ddb3568d5a3364c582f9719529ab512a447593244689121428102e5ab0c982e58a952850992224078e1a3058a1629585080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 87) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 87) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 87) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 87) 72 15 = true := by decide +kernel
theorem allok (i : Nat) (h : i<87) : Packed.valid d P 87 i = true := by
 by_cases h48 : i<48
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
 · by_cases h72 : i<72
   · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[],[]] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 87 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4846201055074
