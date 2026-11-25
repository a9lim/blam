import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4785411504618
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 8,.lam 2,.app 3 6,.app 4 5,.var 0,.var 0,.lam 7,.var 1,.lam 9,.app 10 11,.var 0,.lam 12,.lam 13,.app 14 19,.app 15 16,.var 1,.app 17 18,.var 2,.var 0,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22377597549034 := by decide
def t19 : Term := .var 0
def t15 : Term := .var 1
def t17 : Term := .var 2
def t6 : Term := .lam t15
def t3 : Term := .app t19 t19
def t16 : Term := .app t17 t19
def t2 : Term := .app t3 t6
def t14 : Term := .app t15 t16
def t1 : Term := .lam t2
def t13 : Term := .app t14 t19
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t9 : Term := .app t19 t11
def t8 : Term := .lam t9
def t0 : Term := .app t1 t8
def terms : Array Term := #[t0,t1,t2,t3,t19,t19,t6,t15,t8,t9,t19,t11,t12,t13,t14,t15,t16,t17,t19,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t19 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t17 := model.var_eq 17 2 (by rfl)
theorem n16 : model.term 16 = t16 := by rw [model.app_eq 16 17 18 (by rfl), n17, n18]; rfl
theorem n15 : model.term 15 = t15 := model.var_eq 15 1 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 19 (by rfl), n14, n19]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t19 := model.var_eq 10 0 (by rfl)
theorem n9 : model.term 9 = t9 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t8 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t15 := model.var_eq 7 1 (by rfl)
theorem n6 : model.term 6 = t6 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t19 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t19 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 5 (by rfl), n4, n5]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 6 (by rfl), n3, n6]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 8 (by rfl), n1, n8]; rfl
def d : Packed.Data := ⟨⟨5,0x4e739ce739ce739ce739ce739ce739ce739ca5294a5294a518c6318c2108420f7bdef7bdee739ce739cd6b5ad6b5ad6b18c6318c6316b5ad6b5ad4a5294a4a5294a529421084210841ce739ce6318c6314a418820⟩,⟨5,0x318c5ad621084252484210810842118c63188842102318c62210231888408c6c589492046c589492046c62d62524811e718bded6ad0cf7bd08414cf720ad33dc8414ad000000000004e518c20739ce739ce739c00⟩,⟨5,0x6e72dce5a8c1cdd6b51839ba8c1cdd460e6f63073751839b7b5693933945729183dcd62d4941cc520c44110405280006082e539438dffb577392ffeef37ac61841104af66ec525062b149418bdd460e6faf9c0020⟩,⟨⟨6,0xc6fb6ba6796385f79d71959340f38d309183000⟩,⟨2,0xaaaaa57fd57fc⟩,⟨5,0x4cb124c711d050081c0681805ce4f98d511aa634446888290a08f009a654c486⟩⟩,⟨5,0xb2ca109ce735ae108416694e739ad7294208⟩,⟨4,0xf7243cba9edcba987124136543210⟩,⟨5,0x1b936b4a596d9a211631c6027bb21c5ef6b2ab44a0e0⟩,⟨5,0x630c208825600ce515ca250731483110441014a00000⟩,⟨⟨5,0x1cdeb16a4e507358b51cc518820⟩,⟨2,0x15a96957595⟩,⟨5,0x1cdeb38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x8a181e71b69961759551349140f38d30b247185103081000⟩,⟨2,0x56955555555a5554⟩,⟨6,0x228607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0xb3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a29f9c999693908d8a8784838281807f7c797673706f6e6d6b69676665646362615f5d5c5a5857565554535251504f4e4d4c4b4a494847464544434241403e3d3b3a3938373635343231302f2e2d2c2a28262524232221201f1e1d1c1b1a19171514131211100f0e0d0c0b0a09080706050403020100⟩,⟨2,0x1555555557ffffd55ffd5a95569a555555555555995559556a555555695555555555⟩,⟨8,0x2d2c2b2d2c2b0b0a0908076565807f7e7d7c79746f78736e77726d76716c75706b79746f78736e77726d76716c75706b0c7f7e7d7c79746f78736e77726d76716c75706b052f2e585585828481605f5e5d5c5b6964686331676266615a2a5754535251504f4e4d4c4c4b4b4a4948474645403c3c44433f42413e3d3b333a3736393835343230066a595686837b7a2928272626252524232221201f1e1d1e1d1c1c1817161514131211100f0e0d1b191a04030201⟩⟩⟩
end Certgen.R4785411504618
