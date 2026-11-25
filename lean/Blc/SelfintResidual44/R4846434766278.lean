import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434766278
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 8,.var 0,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 18,.app 14 15,.var 1,.app 16 17,.var 0,.var 2,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620810694 := by decide
def t16 : Term := .var 0
def t19 : Term := .var 1
def t17 : Term := .var 2
def t18 : Term := .lam t19
def t2 : Term := .app t16 t16
def t1 : Term := .lam t2
def t15 : Term := .app t16 t17
def t13 : Term := .app t19 t15
def t12 : Term := .app t13 t18
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t16 t10
def t6 : Term := .app t16 t8
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t16,t16,t5,t6,t16,t8,t16,t10,t11,t12,t13,t19,t15,t16,t17,t18]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n18 : model.term 18 = t18 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 18) (by rfl)).trans (by rfl)
theorem n17 : model.term 17 = t17 := model.var_eq 17 2 (by rfl)
theorem n16 : model.term 16 = t16 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t19 := model.var_eq 14 1 (by rfl)
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 15 (by rfl), n14, n15]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.app_eq 12 13 18 (by rfl), n13, n18]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t16 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t16 := model.var_eq 7 0 (by rfl)
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t16 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t16 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 5 (by rfl), n1, n5]; rfl
def d : Packed.Data := ⟨⟨5,0x8c6318c6318421083def7bdce739ce6b5ad6b58c6318c6318b5ad6b5ad6b5294a529294a5294a1084210841ce739cc6318c6318c5294a5294a5210842108418820⟩,⟨5,0x1090839c2111107088883844441c2b111070ac44220e10ad718c21083dcd1994a514633294a28c665294a28cca2b06318cca2b18000000000004a5294a5294a400⟩,⟨5,0x5ab35cd60f9460f739d4a21ac5a928398a418a340210731ccd67737ab9c34cbfec4bfeef37acb591ee6f58e2f6ad3b9bd400a149cdead383d6ae6f5683d6a98020⟩,⟨⟨6,0x81e71a61751348f30b287183000⟩,⟨2,0xaa9d7d77c⟩,⟨4,0xc4c3d2b2e1ae15c0d27b27dbc38ec39c46⟩⟩,⟨5,0x445f294a52520918bdea521117be4a445e5⟩,⟨4,0xc4b2487baa987876565124133210⟩,⟨5,0x108c9ce7358c631aa49dee22d41e8399cd0e717bdaa52d280⟩,⟨5,0x3591bd7b98f737a80142900e75288398a418a340210731cc0⟩,⟨⟨5,0x4e517b569418a418820⟩,⟨2,0x15aa6555⟩,⟨5,0x9ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x9a59238a07db6996165544d24503ce34c2ca2471850c1000⟩,⟨3,0x24928c24a249249249289488⟩,⟨6,0x269648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0xe9cf971dfb766bd39f365c78b0e0bf7aedcb76acd8af5aad4a74a8d09f3a6cc972a4c88f1a2c4870a0bf7cf5e3b6ed9ab466c98b05cb562b54a54274c95223427cf1d386cd19305cb1528488901e3868c16284880e182840608080⟩,⟨3,0x24948948944924924924924924924924924a249849249449249249489249249289249249249249⟩,⟨7,0x50899265c7931070cd9928478705ab37ef5db96d529cf99bd6ab529d2a3427ce9d3664b972a54487264c7911a2c282e1d407ef9ebc76e5ab44e2c509cb8d8b05eb162e5aad9a51193158ae89122448501f3c78d9a3a70c982e5cb15284c9111e3868c200c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 104) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 104) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 104) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 104) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 104) 96 8 = true := by decide +kernel
theorem allok (i : Nat) (h : i<104) : Packed.valid d P 104 i = true := by
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
  exact Packed.excludes d model 104 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4846434766278
