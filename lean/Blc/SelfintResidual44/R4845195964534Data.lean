import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4845195964534
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 40,.app 2 39,.lam 3,.app 4 18,.lam 5,.lam 6,.app 7 8,.var 1,.lam 9,.app 10 17,.app 11 12,.var 2,.app 13 14,.var 0,.lam 15,.lam 16,.var 2,.opaque,.lam 19,.app 20 38,.app 21 33,.lam 22,.lam 23,.app 24 25,.var 1,.lam 26,.app 27 32,.app 28 29,.var 2,.app 30 31,.var 0,.opaque,.opaque,.app 34 35,.var 0,.lam 36,.lam 37,.var 2,.opaque,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22437382008950 := by decide
def t68 : Term := .var 0
def t71 : Term := .var 1
def t39 : Term := .var 2
def t63 : Term := .lam t68
def t70 : Term := .lam t71
def t38 : Term := .lam t39
def t62 : Term := .lam t63
def t72 : Term := .var 4
def t69 : Term := .lam t70
def t37 : Term := .lam t38
def t60 : Term := .app t68 t62
def t67 : Term := .app t68 t69
def t35 : Term := .app t68 t37
def t27 : Term := .app t39 t35
def t66 : Term := .app t67 t72
def t65 : Term := .lam t66
def t26 : Term := .app t27 t71
def t25 : Term := .lam t26
def t23 : Term := .app t71 t25
def t22 : Term := .lam t23
def t59 : Term := .app t60 t65
def t21 : Term := .lam t22
def t58 : Term := .lam t59
def t20 : Term := .app t21 t35
def t52 : Term := .app t67 t58
def t51 : Term := .lam t52
def t19 : Term := .app t20 t71
def t18 : Term := .lam t19
def t45 : Term := .app t67 t51
def t44 : Term := .lam t45
def t3 : Term := .app t21 t18
def t2 : Term := .lam t3
def t1 : Term := .app t2 t62
def t0 : Term := .app t1 t44
def terms : Array Term := #[t0,t1,t2,t3,t21,t22,t23,t71,t25,t26,t27,t39,t35,t68,t37,t38,t39,t71,t18,t19,t20,t21,t22,t23,t71,t25,t26,t27,t39,t35,t68,t37,t71,t35,t68,t37,t38,t39,t71,t62,t44]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n40 : model.term 40 = t44 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 40) (by rfl)).trans (by rfl)
theorem n39 : model.term 39 = t62 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 39) (by rfl)).trans (by rfl)
theorem n38 : model.term 38 = t71 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 38) (by rfl)).trans (by rfl)
theorem n37 : model.term 37 = t39 := model.var_eq 37 2 (by rfl)
theorem n36 : model.term 36 = t38 := by rw [model.lam_eq 36 37 (by rfl), n37]; rfl
theorem n35 : model.term 35 = t37 := by rw [model.lam_eq 35 36 (by rfl), n36]; rfl
theorem n34 : model.term 34 = t68 := model.var_eq 34 0 (by rfl)
theorem n33 : model.term 33 = t35 := by rw [model.app_eq 33 34 35 (by rfl), n34, n35]; rfl
theorem n32 : model.term 32 = t71 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 32) (by rfl)).trans (by rfl)
theorem n31 : model.term 31 = t37 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 31) (by rfl)).trans (by rfl)
theorem n30 : model.term 30 = t68 := model.var_eq 30 0 (by rfl)
theorem n29 : model.term 29 = t35 := by rw [model.app_eq 29 30 31 (by rfl), n30, n31]; rfl
theorem n28 : model.term 28 = t39 := model.var_eq 28 2 (by rfl)
theorem n27 : model.term 27 = t27 := by rw [model.app_eq 27 28 29 (by rfl), n28, n29]; rfl
theorem n26 : model.term 26 = t26 := by rw [model.app_eq 26 27 32 (by rfl), n27, n32]; rfl
theorem n25 : model.term 25 = t25 := by rw [model.lam_eq 25 26 (by rfl), n26]; rfl
theorem n24 : model.term 24 = t71 := model.var_eq 24 1 (by rfl)
theorem n23 : model.term 23 = t23 := by rw [model.app_eq 23 24 25 (by rfl), n24, n25]; rfl
theorem n22 : model.term 22 = t22 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t21 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t20 := by rw [model.app_eq 20 21 33 (by rfl), n21, n33]; rfl
theorem n19 : model.term 19 = t19 := by rw [model.app_eq 19 20 38 (by rfl), n20, n38]; rfl
theorem n18 : model.term 18 = t18 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t71 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 17) (by rfl)).trans (by rfl)
theorem n16 : model.term 16 = t39 := model.var_eq 16 2 (by rfl)
theorem n15 : model.term 15 = t38 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t37 := by rw [model.lam_eq 14 15 (by rfl), n15]; rfl
theorem n13 : model.term 13 = t68 := model.var_eq 13 0 (by rfl)
theorem n12 : model.term 12 = t35 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t39 := model.var_eq 11 2 (by rfl)
theorem n10 : model.term 10 = t27 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t26 := by rw [model.app_eq 9 10 17 (by rfl), n10, n17]; rfl
theorem n8 : model.term 8 = t25 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t71 := model.var_eq 7 1 (by rfl)
theorem n6 : model.term 6 = t23 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t22 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t21 := by rw [model.lam_eq 4 5 (by rfl), n5]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 18 (by rfl), n4, n18]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 39 (by rfl), n2, n39]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 40 (by rfl), n1, n40]; rfl
def d : Packed.Data := ⟨⟨6,0x259659659659659249249249238e38e38e38e38e38e28a28a28a186186186186186185e79e79e79e79e79e79e79e79d75d75d75d75d75d75d75d75c71c71b6db6da69a69a69a69a69a69a69a69a6996596596596596596596586175d75d65955545134d34d24924904103cf3cf38e38e38e38e34d34d34d34d34d34d30c30c30c30c30b2cb28a2892492492492492492492482082082082081c61440c2040⟩,⟨5,0x5ad6b5ad5ad694a52739a10841ce739ce73a10839ce84210841ce739cea529494a522108410842a529494a522108410842a4882a4882a5294a525294a522108210b5ad6b5ad6318c6318d6358c64a283a0e839ceb5ad70841ef7bc8421084210a52946318c84210a528c6321085190a3214a5294a318c6421086318c6318c6319cb58000⟩,⟨6,0x1f79d7175b3cb134c2cacf2c5140f3afbadb2baa9a36d74cf2c5f79d71759f79d7175afbadb2baa9a279a59238a180d30b28d30b28d30b28d30b29f79d71b69961f79d71759f79d7175b3cb1cf2c73cb12481c6cf2c49207197580eb9e13495513480eb9e371440f3cb134c2ca9e69648e28604503ce34c2ca2481c6cf2c73cb1cf2c45103eb9e1f79d71759b69963ae78036d747de75c5d6dc0070042040⟩,⟨⟨7,0x1364c68701eb764c16284e88e9b325890e1414000⟩,⟨3,0x1236deaa436a4e4968⟩,⟨4,0x439842a142a4394354254bcd014bcd04b435642564435684256843424bc4bcf4bcd4bce4356742567⟩⟩,⟨6,0x114518208208dd75d75966849f7ce8ce9a68619c830c30e7df⟩,⟨4,0x534a9218a921dc0ba9574878706534321⟩,⟨6,0x8208208207df7df79e79e19965965964d34d34d3514104103cf3cf04104100000061759575d75d75d71c71c71c6db6da69a5134d32482ca28a38e38208230c3051031d2⟩,⟨6,0x7de75c5d66da658eb9e0001f79d71759f79d71758134c2ca34c2ca34c2ca34c2ca6da6587de75c5d67de75c5d6cf2c73cb103ae784d203ae78cf2c73cb1cf2c7ae78040⟩,⟨⟨5,0xcd6728bdcd6290730c40⟩,⟨3,0x3112892912ca⟩,⟨5,0x338bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨7,0x176cd5a94a84e992a4478d16243850603f7cf5e3b74e5c376cd5a335a9d2214074e1b345ca13244470d182c4070c142030404000⟩,⟨3,0x1a4292491249249249249249d9b2c92d9259259249248⟩,⟨7,0x166c57ad56a53a54684f9d3664b95264478d16243850603f7cf5e3b74e5c376cd5a3364c582f5cb562b54a54274c95223448501f3c74e1b3464c172c54a13244480f1c3460b1a3058a1220509101c3050e182840608080⟩⟩,⟨⟨9,0x446210f8743619098340e00ff7f3f5f6f97bbd1e6f278bc1deee76bb1d6ea74ba1cee671b81badc6db69b2d86bb59aad469b49a2d067b399acc65b2992c863b198ac461b0982c05faf97abc5dae972b85bad96ab459ac962af56aad52a853a994aa451a8942a04fa793a9c4da6932984ba592a9449a451e8d45225108742a0d027e3e9f0f6793b9d8ea74399c8de6e369b0d66a349a0ce6632990c6612f974b4592c15cac552a14ca4512813c9c4d2612c8e431f8ec72371a8cc6431180bc5c2d160ac54291409c4c251208c44211007c3c1d0e06c34190c05c2c14090401e0e068301608038180a04018080200⟩,⟨3,0x4924b6d92524c92492492496d924924924924924924924924924924924a49124924924924924929264949324a44925924924924a49924924924926491248924924924924924924924a48924b249249⟩,⟨8,0xd0c0b0a09082d2a272c29262b2825cccbcacccbcad2d1d0cfcecdc5c4c3c5c4c3c9c8c7c6c9c8c7c6100f0e2d2a272c29262b2825b6b6b5b5b4b4b3b3b2b2b1b1bebdbcbbbab9b8b741403f3e3d3c3b3aa4a3a2a1a09f9e9d9c9b9a9998979695b0aaafa9aea8ada7848382818080808080807f7f7f7f7f7f7e7e7e7d7d7d7c7b7a797877706f6e706f6e7675747372716d6c6b6d6c6baca6aba55c5b5b5b5a5958575655545352515151504f4e4d6a63696268614847464847464544434245444342c2c1c0bf94908c88938f8b87928e8a86918d89856760665f655e645d383736343332302f2e4b4a49242322212121212121202020201f1f1f1f1e1d1c1b1a1918171615111413124c07060504030201⟩⟩⟩
end Certgen.R4845195964534
