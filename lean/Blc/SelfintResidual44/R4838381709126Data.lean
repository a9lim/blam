import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4838381709126
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 27,.app 2 14,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.app 8 13,.app 9 10,.var 2,.app 11 12,.var 1,.var 0,.opaque,.lam 15,.app 16 17,.var 0,.lam 18,.lam 19,.app 20 25,.app 21 22,.var 2,.app 23 24,.var 1,.var 0,.lam 26,.var 1,.lam 28,.lam 29,.app 30 59,.app 31 56,.app 32 44,.lam 33,.app 34 35,.var 0,.lam 36,.lam 37,.app 38 43,.app 39 40,.var 2,.app 41 42,.var 1,.var 0,.opaque,.lam 45,.app 46 47,.var 0,.lam 48,.lam 49,.app 50 55,.app 51 52,.var 2,.app 53 54,.var 1,.opaque,.opaque,.app 57 58,.var 1,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430567753542 := by decide
def t61 : Term := .var 0
def t63 : Term := .var 1
def t53 : Term := .var 2
def t62 : Term := .lam t63
def t59 : Term := .app t63 t61
def t52 : Term := .app t53 t59
def t51 : Term := .app t52 t62
def t50 : Term := .lam t51
def t49 : Term := .lam t50
def t47 : Term := .app t61 t49
def t46 : Term := .lam t47
def t32 : Term := .app t46 t46
def t31 : Term := .app t32 t59
def t30 : Term := .app t31 t62
def t29 : Term := .lam t30
def t28 : Term := .lam t29
def t0 : Term := .app t32 t28
def terms : Array Term := #[t0,t32,t46,t47,t61,t49,t50,t51,t52,t53,t59,t63,t61,t62,t46,t47,t61,t49,t50,t51,t52,t53,t59,t63,t61,t62,t63,t28,t29,t30,t31,t32,t46,t47,t61,t49,t50,t51,t52,t53,t59,t63,t61,t62,t46,t47,t61,t49,t50,t51,t52,t53,t59,t63,t61,t62,t59,t63,t61,t62]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n59 : model.term 59 = t62 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 59) (by rfl)).trans (by rfl)
theorem n58 : model.term 58 = t61 := model.var_eq 58 0 (by rfl)
theorem n57 : model.term 57 = t63 := model.var_eq 57 1 (by rfl)
theorem n56 : model.term 56 = t59 := by rw [model.app_eq 56 57 58 (by rfl), n57, n58]; rfl
theorem n55 : model.term 55 = t62 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 55) (by rfl)).trans (by rfl)
theorem n54 : model.term 54 = t61 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 54) (by rfl)).trans (by rfl)
theorem n53 : model.term 53 = t63 := model.var_eq 53 1 (by rfl)
theorem n52 : model.term 52 = t59 := by rw [model.app_eq 52 53 54 (by rfl), n53, n54]; rfl
theorem n51 : model.term 51 = t53 := model.var_eq 51 2 (by rfl)
theorem n50 : model.term 50 = t52 := by rw [model.app_eq 50 51 52 (by rfl), n51, n52]; rfl
theorem n49 : model.term 49 = t51 := by rw [model.app_eq 49 50 55 (by rfl), n50, n55]; rfl
theorem n48 : model.term 48 = t50 := by rw [model.lam_eq 48 49 (by rfl), n49]; rfl
theorem n47 : model.term 47 = t49 := by rw [model.lam_eq 47 48 (by rfl), n48]; rfl
theorem n46 : model.term 46 = t61 := model.var_eq 46 0 (by rfl)
theorem n45 : model.term 45 = t47 := by rw [model.app_eq 45 46 47 (by rfl), n46, n47]; rfl
theorem n44 : model.term 44 = t46 := by rw [model.lam_eq 44 45 (by rfl), n45]; rfl
theorem n43 : model.term 43 = t62 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 43) (by rfl)).trans (by rfl)
theorem n42 : model.term 42 = t61 := model.var_eq 42 0 (by rfl)
theorem n41 : model.term 41 = t63 := model.var_eq 41 1 (by rfl)
theorem n40 : model.term 40 = t59 := by rw [model.app_eq 40 41 42 (by rfl), n41, n42]; rfl
theorem n39 : model.term 39 = t53 := model.var_eq 39 2 (by rfl)
theorem n38 : model.term 38 = t52 := by rw [model.app_eq 38 39 40 (by rfl), n39, n40]; rfl
theorem n37 : model.term 37 = t51 := by rw [model.app_eq 37 38 43 (by rfl), n38, n43]; rfl
theorem n36 : model.term 36 = t50 := by rw [model.lam_eq 36 37 (by rfl), n37]; rfl
theorem n35 : model.term 35 = t49 := by rw [model.lam_eq 35 36 (by rfl), n36]; rfl
theorem n34 : model.term 34 = t61 := model.var_eq 34 0 (by rfl)
theorem n33 : model.term 33 = t47 := by rw [model.app_eq 33 34 35 (by rfl), n34, n35]; rfl
theorem n32 : model.term 32 = t46 := by rw [model.lam_eq 32 33 (by rfl), n33]; rfl
theorem n31 : model.term 31 = t32 := by rw [model.app_eq 31 32 44 (by rfl), n32, n44]; rfl
theorem n30 : model.term 30 = t31 := by rw [model.app_eq 30 31 56 (by rfl), n31, n56]; rfl
theorem n29 : model.term 29 = t30 := by rw [model.app_eq 29 30 59 (by rfl), n30, n59]; rfl
theorem n28 : model.term 28 = t29 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t28 := by rw [model.lam_eq 27 28 (by rfl), n28]; rfl
theorem n26 : model.term 26 = t63 := model.var_eq 26 1 (by rfl)
theorem n25 : model.term 25 = t62 := by rw [model.lam_eq 25 26 (by rfl), n26]; rfl
theorem n24 : model.term 24 = t61 := model.var_eq 24 0 (by rfl)
theorem n23 : model.term 23 = t63 := model.var_eq 23 1 (by rfl)
theorem n22 : model.term 22 = t59 := by rw [model.app_eq 22 23 24 (by rfl), n23, n24]; rfl
theorem n21 : model.term 21 = t53 := model.var_eq 21 2 (by rfl)
theorem n20 : model.term 20 = t52 := by rw [model.app_eq 20 21 22 (by rfl), n21, n22]; rfl
theorem n19 : model.term 19 = t51 := by rw [model.app_eq 19 20 25 (by rfl), n20, n25]; rfl
theorem n18 : model.term 18 = t50 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t49 := by rw [model.lam_eq 17 18 (by rfl), n18]; rfl
theorem n16 : model.term 16 = t61 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t47 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t46 := by rw [model.lam_eq 14 15 (by rfl), n15]; rfl
theorem n13 : model.term 13 = t62 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 13) (by rfl)).trans (by rfl)
theorem n12 : model.term 12 = t61 := model.var_eq 12 0 (by rfl)
theorem n11 : model.term 11 = t63 := model.var_eq 11 1 (by rfl)
theorem n10 : model.term 10 = t59 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t53 := model.var_eq 9 2 (by rfl)
theorem n8 : model.term 8 = t52 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t51 := by rw [model.app_eq 7 8 13 (by rfl), n8, n13]; rfl
theorem n6 : model.term 6 = t50 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t49 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t61 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t47 := by rw [model.app_eq 3 4 5 (by rfl), n4, n5]; rfl
theorem n2 : model.term 2 = t46 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t32 := by rw [model.app_eq 1 2 14 (by rfl), n2, n14]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 27 (by rfl), n1, n27]; rfl
def d : Packed.Data := ⟨⟨6,0xeb9e35d33cb1c70beebadb6db2cb2aa69a289e79a69659649238e28607de75d71c6db6db69a6596185d75d75d65965965555545144d34d34924914514103cf3ce38e30c30c30b2cb2ca28a2892482071c71c61861451440c2040⟩,⟨5,0x2108739ce73e54f53dea2108c6b1ac6b1ac6b598bad6b59084212d600000ad1284a0c94a1064a508325064a0c942272915ce2b8a5700001884210c6210c6210c4310c63146300842108000⟩,⟨6,0x4e48e37a285a6607607da65671b62379d82071b6996995615a27d859759538818549140f9244d39244d24503e418518538d30b28978b9a58ce2241032079a50689d44d24503c61440ce20e2289e696694b00a24134c1d4042040⟩,⟨⟨7,0x22c17af1c3464c172c52a119e3660a921a284870804000⟩,⟨3,0x2486449266d6dbaca6c8⟩,⟨5,0x95424952da952d89008a80088808c023d0f34aa204a96d7a54b6392a5a550008a01112a84aa11982951e973cec7⟩⟩,⟨6,0x34daabafb65965bbd6591aa8a23df8d2fb0c61860ed9647a30a285⟩,⟨4,0x32ddc46980f98ecdcb747a43986076542321⟩,⟨6,0x818e38e21073d145964e8555138207d235079e0092cb28a1985dd71b6c515630c0c321a⟩,⟨6,0x9a59a52c08de85a65a6568206996995565953880641851852ca25e2e6966941388388040⟩,⟨⟨5,0xdeb37b56728c1ee6b14941cc520c20⟩,⟨2,0x965955595559⟩,⟨5,0x1cdeb38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x2fbabaa9a279638a181f79c6da65859551349140f38d30b247185103081000⟩,⟨2,0x1755a55655955555a5554⟩,⟨6,0xbeeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x82807f7e7d7c7b7a79777674737271706f6e6d6c6b6a6968676665646362615f5e5d5c5b5a595857565554535251504f4e4d4c4b4a494847464544434241403f3d3c3b3a3938373635343332302f2e2d2b2a2928272625242221201f1e1c1a191817161514131211100f0e0d0c0b09080706050403020100⟩,⟨2,0x655566555555555655555555555555559555559595559569555555595555⟩,⟨7,0x7e1c2ed93a56e5c78f0dfbb0e0abb366bd5a7475e7b71e2cf9afdebb76e5bb566c57cb529d2a34284f9d3664d98f15478cf15773c74e1b8301fbe7a58a070cddb3568cd93262c17ae5ab159526153a74c952238b125ca9321db974e14a83464c174484911204080f183868b1424420080c101⟩⟩⟩
end Certgen.R4838381709126
