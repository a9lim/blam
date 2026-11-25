import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4785411505366
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 8,.lam 2,.app 3 6,.app 4 5,.var 0,.var 0,.lam 7,.var 1,.lam 9,.app 10 11,.var 0,.lam 12,.lam 13,.app 14 19,.app 15 16,.var 2,.app 17 18,.var 0,.var 0,.var 1]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22377597549782 := by decide
def t18 : Term := .var 0
def t19 : Term := .var 1
def t15 : Term := .var 2
def t6 : Term := .lam t19
def t16 : Term := .app t18 t18
def t14 : Term := .app t15 t16
def t2 : Term := .app t16 t6
def t1 : Term := .lam t2
def t13 : Term := .app t14 t19
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t9 : Term := .app t18 t11
def t8 : Term := .lam t9
def t0 : Term := .app t1 t8
def terms : Array Term := #[t0,t1,t2,t16,t18,t18,t6,t19,t8,t9,t18,t11,t12,t13,t14,t15,t16,t18,t18,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 1 (by rfl)
theorem n18 : model.term 18 = t18 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t18 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t16 := by rw [model.app_eq 16 17 18 (by rfl), n17, n18]; rfl
theorem n15 : model.term 15 = t15 := model.var_eq 15 2 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 19 (by rfl), n14, n19]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t18 := model.var_eq 10 0 (by rfl)
theorem n9 : model.term 9 = t9 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t8 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t19 := model.var_eq 7 1 (by rfl)
theorem n6 : model.term 6 = t6 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t18 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t18 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t16 := by rw [model.app_eq 3 4 5 (by rfl), n4, n5]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 6 (by rfl), n3, n6]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 8 (by rfl), n1, n8]; rfl
def d : Packed.Data := ⟨⟨5,0x9ce739ce7294a52946318c6308421083def7bdee739ce735ad6b5ad6b5ad6b5ac6318c62d6b5ad6b5ad6a5294a4a5294a52842108420e7398c6294a418820⟩,⟨5,0x1082142105290831a10829068420a418828290620a0a41884208428294a4210739460f71ce7318cc62d673316a3998b5294000000001ad6a5294a5294a400⟩,⟨5,0x83e0f83dd07c1f07ce5183dd74a2d6b358b52507314831106220c4020c44188142dac7341ee83dda6e59ace2f6a168520c58bd56a4a2e944e51c2d55a0020⟩,⟨⟨6,0x92281e71a61759551140f309183000⟩,⟨2,0xaaa9575ffc⟩,⟨4,0xb3a3d2c2b1a108ba90b36dcb15a15a34d27c27⟩⟩,⟨5,0x9ce6b596108424b34e735ae5294208⟩,⟨4,0x543cb985438a921876543210⟩,⟨5,0x39a93631925b5ad290620c60f7294a4a528bdef6b5aa0⟩,⟨5,0xa168520c5405d28b5ac7314831106220c4020c4418800⟩,⟨⟨5,0x293945cd62d2830c20⟩,⟨2,0x55d59b9⟩,⟨5,0x149ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x238a181d71b69961759551349140f309205081000⟩,⟨2,0x1575555555f7d4⟩,⟨6,0x8e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0xf9e7b73e3bf6ebd39f2e4c78b0e0bd72ddab362bd6ab529d2a3427ce9b325ca93223c68b121c28301fbe7af1dba72d99b05ab15aa52a13a64a911a24280f9c3668c982e58a9426488901e3868c16284880e182840608080⟩,⟨2,0xffaaa955a555555555555555557fd555555755555555555555⟩,⟨7,0x172d58b766bdcb562dd9aea93a94ca12e3c38b063c38b05fbc28488c787160bb5aad4a74a8a342182cf9d2a4c88f1a2c489121c3870a0c183020407ee18be7af1dba72ddb3568cd92e5cb96ad5ac162f5691107a13664b407cf1d3870e1b3464c172c5498f1c3460b2844812080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 96 4 = true := by decide +kernel
theorem allok (i : Nat) (h : i<100) : Packed.valid d P 100 i = true := by
 by_cases h48 : i<48
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
 · by_cases h72 : i<72
   · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
   · by_cases h96 : i<96
     · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok96 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 100 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4785411505366
