import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846201055046
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 40,.app 2 17,.lam 3,.app 4 15,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 12,.app 10 11,.var 2,.opaque,.app 13 14,.var 1,.opaque,.lam 16,.var 1,.lam 18,.lam 19,.app 20 37,.app 21 36,.lam 22,.app 23 34,.app 24 25,.var 0,.lam 26,.lam 27,.app 28 31,.app 29 30,.var 2,.opaque,.app 32 33,.var 1,.opaque,.lam 35,.var 1,.var 0,.app 38 39,.var 1,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.var 1)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387099462 := by decide
def t53 : Term := .var 0
def t55 : Term := .var 1
def t49 : Term := .var 2
def t54 : Term := .lam t55
def t51 : Term := .app t55 t53
def t48 : Term := .app t49 t53
def t47 : Term := .app t48 t51
def t46 : Term := .lam t47
def t45 : Term := .lam t46
def t43 : Term := .app t53 t45
def t42 : Term := .app t43 t54
def t41 : Term := .lam t42
def t40 : Term := .lam t41
def t20 : Term := .app t41 t53
def t19 : Term := .app t20 t51
def t18 : Term := .lam t19
def t17 : Term := .lam t18
def t1 : Term := .app t41 t17
def t0 : Term := .app t1 t40
def terms : Array Term := #[t0,t1,t41,t42,t43,t53,t45,t46,t47,t48,t49,t53,t51,t55,t53,t54,t55,t17,t18,t19,t20,t41,t42,t43,t53,t45,t46,t47,t48,t49,t53,t51,t55,t53,t54,t55,t53,t51,t55,t53,t40]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n40 : model.term 40 = t40 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 40) (by rfl)).trans (by rfl)
theorem n39 : model.term 39 = t53 := model.var_eq 39 0 (by rfl)
theorem n38 : model.term 38 = t55 := model.var_eq 38 1 (by rfl)
theorem n37 : model.term 37 = t51 := by rw [model.app_eq 37 38 39 (by rfl), n38, n39]; rfl
theorem n36 : model.term 36 = t53 := model.var_eq 36 0 (by rfl)
theorem n35 : model.term 35 = t55 := model.var_eq 35 1 (by rfl)
theorem n34 : model.term 34 = t54 := by rw [model.lam_eq 34 35 (by rfl), n35]; rfl
theorem n33 : model.term 33 = t53 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 33) (by rfl)).trans (by rfl)
theorem n32 : model.term 32 = t55 := model.var_eq 32 1 (by rfl)
theorem n31 : model.term 31 = t51 := by rw [model.app_eq 31 32 33 (by rfl), n32, n33]; rfl
theorem n30 : model.term 30 = t53 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 30) (by rfl)).trans (by rfl)
theorem n29 : model.term 29 = t49 := model.var_eq 29 2 (by rfl)
theorem n28 : model.term 28 = t48 := by rw [model.app_eq 28 29 30 (by rfl), n29, n30]; rfl
theorem n27 : model.term 27 = t47 := by rw [model.app_eq 27 28 31 (by rfl), n28, n31]; rfl
theorem n26 : model.term 26 = t46 := by rw [model.lam_eq 26 27 (by rfl), n27]; rfl
theorem n25 : model.term 25 = t45 := by rw [model.lam_eq 25 26 (by rfl), n26]; rfl
theorem n24 : model.term 24 = t53 := model.var_eq 24 0 (by rfl)
theorem n23 : model.term 23 = t43 := by rw [model.app_eq 23 24 25 (by rfl), n24, n25]; rfl
theorem n22 : model.term 22 = t42 := by rw [model.app_eq 22 23 34 (by rfl), n23, n34]; rfl
theorem n21 : model.term 21 = t41 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t20 := by rw [model.app_eq 20 21 36 (by rfl), n21, n36]; rfl
theorem n19 : model.term 19 = t19 := by rw [model.app_eq 19 20 37 (by rfl), n20, n37]; rfl
theorem n18 : model.term 18 = t18 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t17 := by rw [model.lam_eq 17 18 (by rfl), n18]; rfl
theorem n16 : model.term 16 = t55 := model.var_eq 16 1 (by rfl)
theorem n15 : model.term 15 = t54 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t53 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 14) (by rfl)).trans (by rfl)
theorem n13 : model.term 13 = t55 := model.var_eq 13 1 (by rfl)
theorem n12 : model.term 12 = t51 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t53 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 11) (by rfl)).trans (by rfl)
theorem n10 : model.term 10 = t49 := model.var_eq 10 2 (by rfl)
theorem n9 : model.term 9 = t48 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t47 := by rw [model.app_eq 8 9 12 (by rfl), n9, n12]; rfl
theorem n7 : model.term 7 = t46 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t45 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t53 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t43 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t42 := by rw [model.app_eq 3 4 15 (by rfl), n4, n15]; rfl
theorem n2 : model.term 2 = t41 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 17 (by rfl), n2, n17]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 40 (by rfl), n1, n40]; rfl
def d : Packed.Data := ⟨⟨6,0x279e79e79e79e79e79e69a59659649249249249249249249238e38e38e38e28a28a28a28a28a28a28a28a28a082082082081f7df7df7dd75c71b6db6da69a6996586186186175d75d75d65965965955555555545145145134d34d34d34d34d249249249249145145145145041041040f3cf3cf34d34d30c30c30a2482071c61440c2040⟩,⟨5,0x294a525294a5294a92a5252e739ce535ad4b18b5fbdeef7bcd94a5294a529484210842108739ce6318c739cc631cc731ce636b59c948511070794441c1e5110707b94d4b16e5352c5b9ca6b52962d78bdad5ad280000000001394a5292108420210842108421084318a10840000⟩,⟨6,0x61440ebaa9a279a592db1a65a66285e7157617156da65a66171585c55556baa9a279a591baeaa689e69646ebaa9a279a592171585c5628607d44d44da65a66cb1e75c6da6585d65544cc2ca2481d24503ce34c2ca2481d44c151330a04c2af8e07d858b270ba285e7175578a179c55d1851031851038a179c570bd44da66dba3042040⟩,⟨⟨7,0x12e3c37eedbb66ad19b260b96294c911203c70d19283c6090c0c000⟩,⟨3,0x124921249493692491b5b6d8⟩,⟨5,0x1992b1150b1992a9150a999299150998a4189a1681b7121c23b8cc2284811cab1a5a664a7422a13a199222a034bcab8b6f4⟩⟩,⟨6,0x228a59659689e18596599e492492491130f7df8a29652c679e6598a264e⟩,⟨5,0x41ee6b16051cc383d2e5352c58028398a452428398a410c41⟩,⟨6,0x2514487df65979e79d75d40718f3ce38504471b68d0cc0a69585d65544e490b8e328a8a18400000004a0⟩,⟨6,0xbd44e369969956171585c0607d44d44d85d65544cc2ca2481cc2ca2481d44c151330a04c2a171589e040⟩,⟨⟨5,0xff79ace2f6ace518398b5250620820⟩,⟨2,0x6655656956a5⟩,⟨5,0xffbbcdeb38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x3ef3be77d33cb1badb2baa9a269238a181f79d71b6996175955134903cd2ca205103081000⟩,⟨2,0x19ad5d556955555555669b554⟩,⟨6,0x37db5d33cb1c2eb6fbeeb6baacb2baa9a279a59238a181f79d71b69961759551349140f38d30b2892071851040c2040⟩⟩,⟨⟨8,0xcecdcccbc9c7c5c3c1bfbdbbbab8b7b6b5b4b3b2b1b0afaeacaaa8a6a5a4a3a2a1a09f9e9d9c9b9a9796959491908f8e8d8a89888784838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a69686766646261605f5e5c5a595857565554535251504f4e4d4c4b4a494847464544434241403f3e3d3c3b3a393836353331302f2e2c2b2a292827262524232221201f1e1d1a191817161514131211100f0e0d0c0b0a090806050403020100⟩,⟨2,0x156aaa9955556a95555575755d5d55555555555555695695555555555555555669595555555d555555556555⟩,⟨8,0x19181716867d857c847b837a8279817880777f76065a59a2a2a1a111100f0e0d1a6c696b686a677e75a09f9e9d9b999896959498948e8d8c8c8e8d8e8d8c8c8e8d888b8a89898b8a8b8a89898b8a87aaa9a8a7a6a5a4a37271736e6d6f9c966665646463636261605f5e5d5c5b9a9795939290918f5857565554535251504f4e4d4c4b4a49484746454443424140403f3e3e3d3d3c3b3b3a3938373637363534333231302f2e2d2c2b2a29222625242321201e1c1b1b1f1daeadacab1315121514280c0b0b0a090807270504030201⟩⟩⟩
end Certgen.R4846201055046
