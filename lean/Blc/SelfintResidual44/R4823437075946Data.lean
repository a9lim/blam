import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4823437075946
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 23,.app 2 22,.app 3 8,.lam 4,.app 5 6,.var 0,.lam 7,.var 1,.lam 9,.app 10 13,.app 11 12,.var 0,.var 0,.lam 14,.lam 15,.app 16 17,.var 1,.app 18 21,.app 19 20,.var 2,.var 0,.var 0,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22415623120362 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t19 : Term := .var 2
def t44 : Term := .lam t49
def t51 : Term := .lam t52
def t10 : Term := .app t49 t49
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t18 : Term := .app t19 t49
def t4 : Term := .app t49 t51
def t41 : Term := .app t49 t43
def t3 : Term := .lam t4
def t48 : Term := .app t49 t50
def t17 : Term := .app t18 t49
def t15 : Term := .app t52 t17
def t14 : Term := .lam t15
def t47 : Term := .app t48 t53
def t13 : Term := .lam t14
def t46 : Term := .lam t47
def t9 : Term := .app t10 t13
def t8 : Term := .lam t9
def t40 : Term := .app t41 t46
def t39 : Term := .lam t40
def t2 : Term := .app t3 t8
def t33 : Term := .app t48 t39
def t32 : Term := .lam t33
def t1 : Term := .app t2 t43
def t26 : Term := .app t48 t32
def t25 : Term := .lam t26
def t0 : Term := .app t1 t25
def terms : Array Term := #[t0,t1,t2,t3,t4,t49,t51,t52,t8,t9,t10,t49,t49,t13,t14,t15,t52,t17,t18,t19,t49,t49,t43,t25]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n23 : model.term 23 = t25 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 23) (by rfl)).trans (by rfl)
theorem n22 : model.term 22 = t43 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 22) (by rfl)).trans (by rfl)
theorem n21 : model.term 21 = t49 := model.var_eq 21 0 (by rfl)
theorem n20 : model.term 20 = t49 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t19 := model.var_eq 19 2 (by rfl)
theorem n18 : model.term 18 = t18 := by rw [model.app_eq 18 19 20 (by rfl), n19, n20]; rfl
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 21 (by rfl), n18, n21]; rfl
theorem n16 : model.term 16 = t52 := model.var_eq 16 1 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t14 := by rw [model.lam_eq 14 15 (by rfl), n15]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.lam_eq 13 14 (by rfl), n14]; rfl
theorem n12 : model.term 12 = t49 := model.var_eq 12 0 (by rfl)
theorem n11 : model.term 11 = t49 := model.var_eq 11 0 (by rfl)
theorem n10 : model.term 10 = t10 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t9 := by rw [model.app_eq 9 10 13 (by rfl), n10, n13]; rfl
theorem n8 : model.term 8 = t8 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t52 := model.var_eq 7 1 (by rfl)
theorem n6 : model.term 6 = t51 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t49 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.lam_eq 3 4 (by rfl), n4]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 8 (by rfl), n3, n8]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 22 (by rfl), n2, n22]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 23 (by rfl), n1, n23]; rfl
def d : Packed.Data := ⟨⟨5,0x15ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b4a5294a5294a52939ce739ce739ce7294a5294a5294a518c6318c6318c6318c6318c6318c6318c6318c6318c63084210842108420f7bdef7bdef7bdef7bdef7bdef7bdef7bdef7bdef7bdef739ce739ce739ce739ce739ce739ce739ce739ce739ce6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b58c6318c5ad6a529294a5294a5084210839ce7398c6318a418820⟩,⟨5,0x84210842108420e739ce739cc6318c6318c6314a5294a5294a5210842108418c6318c6318c68420c6314a518c6841ce6314a420c6841ce6314a420c684210841ce739ce6318c6314a5294a42108420c6318c68398a41b9ac5a9284210841cc6318c6294a5294842108418c6318dcd62d49def7bd6b5ace739c6318c6317bdef7bded6b5ad6b569310842108421084f7bdef7bde10842108421084421042113c227844f08421084000000094a528c2108421000000⟩,⟨6,0x2591f79140f38d3039647de4503c39647de4503ce34c0e591f79140f38d3039647de4503c39647de4503ce34c0ce34c38d30e34c38d329a279a59238a181f79d71b69961759551348b28920718b28920718b28920718b28920718b28920718b28920719140f38d30b28920718b2892071822ca2481c62ca2481c62ca2481c62ca2481c60410410416584d275c5d66584d22ca2481c608b2892071822ca2481c60acbac9647de4503ce34c0e9a2389140f16591f79140f38d3034503d140f1440eeb6c0822ca2481c6b6b6da5546da554b679a1804ac2a82040⟩,⟨⟨6,0xf3ae36d32c2eb2aa279a381d69751138b205081000⟩,⟨2,0xaaaaa97fffffd4⟩,⟨4,0xc2b2a2c1b1a1c0b0a079787bc14b14a14c13b13a13c06b06a06c25b25a25ca⟩⟩,⟨5,0x2ed356b4a310d6d6b5ac6318c636a52948c6318c58c⟩,⟨5,0xf81c8723c020a0c51b9ac5a920418a341cc520c41⟩,⟨6,0x6205d75d75d77d92cb71c28a2496db20859659659679e79e79e55555555551451451475d75d75d4d34d34d31c71c71c71851451451441041041030c30c30c20820820924503ce341680321⟩,⟨6,0x822ca2481c608275c6da6585d65544d22ca2481c62ca2481c62ca2481c62ca2481c62ca2481c62ca2481c62ca2481c608b28920718b28920718b28920718b28920718104104106eb6c040⟩,⟨⟨6,0x207dd6da6574cd308080⟩,⟨3,0x12912a6332⟩,⟨6,0x207de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x18f15cb76acd8af5aad4a74a8d09f3a5c88b09fbc72d99b05aa92233a5c88b14244070c142030404000⟩,⟨3,0x4e24924924925b6db6db6f1db6249249248⟩,⟨7,0xc78b0e0bf7aedcb76acd8af5aad4a74a8d09f3a6cc972a4c88f1a2c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨10,0x247916439063f8f63b8e6378d6338c62f8b62b8a627896238861f8761b86617856138460f83609816017f5f97d5f17b5e9795e1775d9755d1735c9715c16f5b96d5b16b5a9695a167599655936458f6358b625856057d5e5755c5705bd6e5b56b5a56859d66595635856057d5e5755c56d5a5655855d565555454d525455053d4e5354c52d4a5254851d465154450d42505404fd3e4f53c4ed3a4e5384dd364d5344cd324c52f4b52b49d2347d1944d0d41d013ecfa3e4f83dcf63d4f43ccf23c4f03bcee3b4ec3acea3a4e839ce6394e438ce2384e037cde374dc36cda364d835cd634cd0334ca31cc4304be2ecb82d4b22c4b02bcae2b4ac2acaa2a4a829ca6294a428ca2284a027c9e274972589023c8e2348c218851fc791cc6d1b06b1a8691a0621845b16859160571585013c4910c3d0dc360d4340cc310bc2d0b02b0a42809c260942408c220842007c1e0741c0641604c1003c0e0340c02c0a0240801c060140400c0200400⟩,⟨3,0x249249249249249249249252492492492492492492492249252492124a44929124924924924924924924924924924924924a4a49b6db12492492492492492492492492496db6db6db24924924924924938e249c76d8924e38924e3b6c492922512492492496db249249249249⟩,⟨9,0x471a1186645191106243181085e41171005a3f160f8563d1511c68461991464441890c6042179045c3d1511c68461991464441890c6042179045c40168fc583e158f4552086c09df1f86405dd1e85c01db1d853fdd91c84bf9d71b843f5d51a83bf1d319833edd11882be9cf17823e5cd1681be1cb2086c09df1f86405dd1e85c01db1d853fdd91c84bf9d71b843f5d51a83bf1d31681be1cb2086c09df1f86405dd1e85c01db1d853fdd91c84bf9d71b843f5d51a83bf1d319833edd11882be9cf17823e5cd1681be1ca40168fc583e159005a3f160f85719833edd11882be9cf17823e5cd19833edd11882be9cf17823e5cc3c1d82813157bc51ec3a1c8200f137ac49e8d86bb59aad469b49a2d067b399acc6633196cb65b2994ca64b2592c8643218ec763b198cc662b158ac46231186c361b0984c260b058229130a04a2712391c2de6db8dc0dd6d389bedc6cb0174b4572a144bf5cacd5aa750af970b25629940bd5bac556a54faf16cb0552913cbb5aabd52a34ea71389c4e271389b4d269349a4d26932994ca6532994c26130984c2612e974ba5d2e974b255289349245068240a00fe7e41a0902803f9f8fa7c3d9e8f2783e9f0f67a3c9e0ee763a9d0e6723b9d8ea74399c8e271389c4e271371c0e070381c0e06d379bcde6f379bcd89047a391a8c45a29128843a190a84359a8d2682f978ba5c2d968b25f2f174b85b2d17cbc5d2e16cb45f2f174b85b2d17cbc5d2e16cb44a33998ca642c15cac552a14ca4582b958aa5429924c66230980a250279389a4c25944a04f2713498512813c9c4d26144a04f2713498512813c9c4d2612070371b445e7107943de23503439e02311084401f0f0783c1e0f0783a1c0d86832180b858361a0c8602e160984822100a83c1c0d0602c28050200c0401⟩⟩⟩
end Certgen.R4823437075946
