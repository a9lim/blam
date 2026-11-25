import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434772622
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 8,.var 0,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 18,.app 14 15,.var 2,.app 16 17,.var 0,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620817038 := by decide
def t17 : Term := .var 0
def t19 : Term := .var 2
def t15 : Term := .app t17 t17
def t18 : Term := .lam t19
def t1 : Term := .lam t15
def t13 : Term := .app t19 t15
def t12 : Term := .app t13 t18
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t17 t10
def t6 : Term := .app t17 t8
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t15,t17,t17,t5,t6,t17,t8,t17,t10,t11,t12,t13,t19,t15,t17,t17,t18]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n18 : model.term 18 = t18 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 18) (by rfl)).trans (by rfl)
theorem n17 : model.term 17 = t17 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t17 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t19 := model.var_eq 14 2 (by rfl)
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 15 (by rfl), n14, n15]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.app_eq 12 13 18 (by rfl), n13, n18]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t17 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t17 := model.var_eq 7 0 (by rfl)
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t17 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t17 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t15 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 5 (by rfl), n1, n5]; rfl
def d : Packed.Data := ⟨⟨5,0x8c63184210842108421083def7bdef7bdef7bdef739ce739ce739ad6b5ad6b5ad6318c6318c6318b5ad6b5ad6b5ad6a5294a525294a529421084210739ce7398c6318c6318c6314a5294a5294a529084210842108418820⟩,⟨5,0x31508108420b4e62a184588421042169cc54308b105a73150c22c4169cc54308b105a73150c21174a52949ce7394a4a5294f4a9ef7bde953def7bd2353d3180c6318d4f4c610800000000000000039ce739ce739ce73800⟩,⟨6,0x6db6da8a181f79d71b6996175aa99141b6999585d79245a45544d24503ce34c2ca2481c61440c275c00b5e42881c60f0a1448daa64506da6628607e97b0beeb6caea770a1448d729a279a5930a1448d0002c91440afbadb2b9e35533ce32fbadb2b9d54cf38c8c0040⟩,⟨⟨6,0x299e59238a179b61759340d287183000⟩,⟨2,0x2a55fd7ff7c⟩,⟨5,0x40510bc2e6c01012a022c0438be02344297850f09e2124a026442b⟩⟩,⟨5,0x8446318c65294a5294a525208f7bdef529088c62f7bdef44625⟩,⟨5,0x11834ec22c4169cc54308b7bdc26a18b5254931501398a418820⟩,⟨6,0xf5d75d75ce0c30c30cd58ca279e75420820810419a52ca2648e25084c71854911108607de75c6da659600⟩,⟨6,0x1da3051235cc2851234000b245102026a9141b6999585d79245a42ca2481c61440c275c00b5e42881c60c0⟩,⟨⟨5,0x5ed5a4e0f7358a4a0e520c20⟩,⟨2,0x155d565659⟩,⟨5,0xbdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x38df6d74cf2b6caeaa669648e285e75c6da6585d65544d24503ce34c2ca2481c6144081000⟩,⟨3,0x124926924b2492c9249249249249249249448⟩,⟨6,0x38df6d74cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x9594939291908f8e8d8c8b8988878684838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c4b4a4948474645403d3c3b3a393837363534333231302f2e2d2c2b2a27262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨3,0x44924924a24a24924924924924924924924924924924924924924924924d649249249249249649249249249249249249249249249⟩,⟨8,0x8b8a897675403f3e3d3b332d8b8a88747271706d868785848383838281807f7e7d7c7b0830072f787706052e046b6a696867666564636261605f5e5d5c5b5a595958575551504d56544f4e535352464745444c4b4a4948434241320e0d0c0b0a7a3a3839373635343c310979736f6e6c2c2c2c2c2c2b2a2928272727252624232221201f1e1d1c1b1a1918171615131211100f14030201⟩⟩⟩
end Certgen.R4846434772622
