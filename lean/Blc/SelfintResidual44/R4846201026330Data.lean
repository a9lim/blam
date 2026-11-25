import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846201026330
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 54,.app 2 32,.lam 3,.app 4 30,.app 5 14,.lam 6,.lam 7,.app 8 13,.app 9 10,.var 1,.app 11 12,.var 0,.opaque,.opaque,.app 15 16,.var 0,.lam 17,.app 18 29,.app 19 20,.var 0,.lam 21,.lam 22,.app 23 28,.app 24 25,.var 1,.app 26 27,.var 0,.var 2,.opaque,.opaque,.lam 31,.var 1,.lam 33,.lam 34,.app 35 53,.app 36 37,.var 1,.app 38 39,.var 0,.lam 40,.app 41 52,.app 42 43,.var 0,.lam 44,.lam 45,.app 46 51,.app 47 48,.var 1,.app 49 50,.var 0,.var 2,.opaque,.opaque,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387070746 := by decide
def t95 : Term := .var 0
def t94 : Term := .var 1
def t92 : Term := .var 2
def t93 : Term := .lam t94
def t90 : Term := .app t95 t92
def t88 : Term := .app t94 t90
def t87 : Term := .app t88 t93
def t86 : Term := .lam t87
def t85 : Term := .lam t86
def t83 : Term := .app t95 t85
def t82 : Term := .app t83 t95
def t81 : Term := .lam t82
def t62 : Term := .app t95 t81
def t60 : Term := .app t94 t62
def t59 : Term := .app t60 t93
def t58 : Term := .lam t59
def t57 : Term := .lam t58
def t10 : Term := .app t95 t57
def t8 : Term := .app t94 t10
def t7 : Term := .app t8 t93
def t6 : Term := .lam t7
def t5 : Term := .lam t6
def t4 : Term := .app t5 t62
def t3 : Term := .app t4 t93
def t2 : Term := .lam t3
def t1 : Term := .app t2 t57
def t0 : Term := .app t1 t81
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t6,t7,t8,t94,t10,t95,t57,t93,t62,t95,t81,t82,t83,t95,t85,t86,t87,t88,t94,t90,t95,t92,t93,t95,t93,t94,t57,t58,t59,t60,t94,t62,t95,t81,t82,t83,t95,t85,t86,t87,t88,t94,t90,t95,t92,t93,t95,t93,t81]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n54 : model.term 54 = t81 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 54) (by rfl)).trans (by rfl)
theorem n53 : model.term 53 = t93 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 53) (by rfl)).trans (by rfl)
theorem n52 : model.term 52 = t95 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 52) (by rfl)).trans (by rfl)
theorem n51 : model.term 51 = t93 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 51) (by rfl)).trans (by rfl)
theorem n50 : model.term 50 = t92 := model.var_eq 50 2 (by rfl)
theorem n49 : model.term 49 = t95 := model.var_eq 49 0 (by rfl)
theorem n48 : model.term 48 = t90 := by rw [model.app_eq 48 49 50 (by rfl), n49, n50]; rfl
theorem n47 : model.term 47 = t94 := model.var_eq 47 1 (by rfl)
theorem n46 : model.term 46 = t88 := by rw [model.app_eq 46 47 48 (by rfl), n47, n48]; rfl
theorem n45 : model.term 45 = t87 := by rw [model.app_eq 45 46 51 (by rfl), n46, n51]; rfl
theorem n44 : model.term 44 = t86 := by rw [model.lam_eq 44 45 (by rfl), n45]; rfl
theorem n43 : model.term 43 = t85 := by rw [model.lam_eq 43 44 (by rfl), n44]; rfl
theorem n42 : model.term 42 = t95 := model.var_eq 42 0 (by rfl)
theorem n41 : model.term 41 = t83 := by rw [model.app_eq 41 42 43 (by rfl), n42, n43]; rfl
theorem n40 : model.term 40 = t82 := by rw [model.app_eq 40 41 52 (by rfl), n41, n52]; rfl
theorem n39 : model.term 39 = t81 := by rw [model.lam_eq 39 40 (by rfl), n40]; rfl
theorem n38 : model.term 38 = t95 := model.var_eq 38 0 (by rfl)
theorem n37 : model.term 37 = t62 := by rw [model.app_eq 37 38 39 (by rfl), n38, n39]; rfl
theorem n36 : model.term 36 = t94 := model.var_eq 36 1 (by rfl)
theorem n35 : model.term 35 = t60 := by rw [model.app_eq 35 36 37 (by rfl), n36, n37]; rfl
theorem n34 : model.term 34 = t59 := by rw [model.app_eq 34 35 53 (by rfl), n35, n53]; rfl
theorem n33 : model.term 33 = t58 := by rw [model.lam_eq 33 34 (by rfl), n34]; rfl
theorem n32 : model.term 32 = t57 := by rw [model.lam_eq 32 33 (by rfl), n33]; rfl
theorem n31 : model.term 31 = t94 := model.var_eq 31 1 (by rfl)
theorem n30 : model.term 30 = t93 := by rw [model.lam_eq 30 31 (by rfl), n31]; rfl
theorem n29 : model.term 29 = t95 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 29) (by rfl)).trans (by rfl)
theorem n28 : model.term 28 = t93 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 28) (by rfl)).trans (by rfl)
theorem n27 : model.term 27 = t92 := model.var_eq 27 2 (by rfl)
theorem n26 : model.term 26 = t95 := model.var_eq 26 0 (by rfl)
theorem n25 : model.term 25 = t90 := by rw [model.app_eq 25 26 27 (by rfl), n26, n27]; rfl
theorem n24 : model.term 24 = t94 := model.var_eq 24 1 (by rfl)
theorem n23 : model.term 23 = t88 := by rw [model.app_eq 23 24 25 (by rfl), n24, n25]; rfl
theorem n22 : model.term 22 = t87 := by rw [model.app_eq 22 23 28 (by rfl), n23, n28]; rfl
theorem n21 : model.term 21 = t86 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t85 := by rw [model.lam_eq 20 21 (by rfl), n21]; rfl
theorem n19 : model.term 19 = t95 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t83 := by rw [model.app_eq 18 19 20 (by rfl), n19, n20]; rfl
theorem n17 : model.term 17 = t82 := by rw [model.app_eq 17 18 29 (by rfl), n18, n29]; rfl
theorem n16 : model.term 16 = t81 := by rw [model.lam_eq 16 17 (by rfl), n17]; rfl
theorem n15 : model.term 15 = t95 := model.var_eq 15 0 (by rfl)
theorem n14 : model.term 14 = t62 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t93 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 13) (by rfl)).trans (by rfl)
theorem n12 : model.term 12 = t57 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 12) (by rfl)).trans (by rfl)
theorem n11 : model.term 11 = t95 := model.var_eq 11 0 (by rfl)
theorem n10 : model.term 10 = t10 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t94 := model.var_eq 9 1 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.app_eq 7 8 13 (by rfl), n8, n13]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 14 (by rfl), n5, n14]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 30 (by rfl), n4, n30]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 32 (by rfl), n2, n32]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 54 (by rfl), n1, n54]; rfl
def d : Packed.Data := ⟨⟨6,0xcb2cb2c71c71c71c30c30c30befbeebaeb6db6db6db6db2cb2cb2caebaebaebaaaaa9a69a28a28a289e79e79e79e79a69a69a69659659659659249238e38a28a186182081f7de79b69a69a6596596185d75965955555144d24503ce2cb28a2481c61440c2040⟩,⟨5,0x4a4a44a4a521129294844948929129294a4212d6ad694738636b5c36b86d738636b4216318c10821630420858c608420b0416082c14e7200011898ca5ad4a5ad4a5a96a5ad508410842106318e739ce73bcc630000⟩,⟨6,0xa688e3c2fbadb2b6da450450aa9a279a581ea688a9a226da6da8e1c2f3cec2f8e28607de4504d22ca595badb2b34c75c6da658a89a688a9a225d65544d292722a27175c19d7040ea4503ce8e18e134c2ca9a57e9a226582485171b110375cc640451c5042040⟩,⟨⟨6,0x3de75d33c6eb299a481c5d5491307102000⟩,⟨3,0x1242534da92a66d690⟩,⟨5,0x853e284b6275ba08380c008805429e84b50a00444004433add0980202b00853e32425b191d6e424eb⟩⟩,⟨6,0xcf3ccdd34d35d756dc71ddabae7c9bcb296565978ac149d030ec30ae7960⟩,⟨4,0x9547e3d1c2bba80edc9a54c2ba67981676543210⟩,⟨6,0x3155534d248b1449e79a69a59659180d78e38a28612495965820820514207de75d5143ce71c6ca68620d1c7019⟩,⟨6,0x91b6914114279a581ea688a9a220607de4504d22caa89a688a9a225134a49c88e18e12ca9a57c8505c4175c040⟩,⟨⟨5,0xbdab4941cd62d4941cc418820⟩,⟨2,0x95a9555655⟩,⟨5,0x18bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0xefae78df6d74cf2c2daa9a279a48a07de71b6585d65544d24503ce34c289207185103081000⟩,⟨2,0x55555bd56a599555555955554⟩,⟨6,0xefae78df6d74cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x9492908e8c8a898887868584838281807f7e7d7c7b7a7978777675747372706f6d6c6b6a69686766656462605e5d5c5b5a595857565554535251504f4e4d4c4b4a494847464544434241403f3e3d3c3b3a393837363534333231302f2e2d2c2b2927262524232221201f1e1d1c1b1a1918171514131211100f0e0d0c0b0a09080706050403020100⟩,⟨2,0xaaa555555555555995555a95555555555555555555555555a5555555595555555555⟩,⟨8,0x413e403d85842321635f625e4f4e4d4c838281807f7e28878677767574747373737272726f6e6d6c6b6a717069686564676685843f3c22205d5c5b5a5a5959585855545756575653520b0a7d7c151449484747464545441051503b3a393837363433353231302f2e2c2b437b797a786160272625244b4a1f1e1d1d1c1b1a19181716421312112d0f2a290d0c0e090807060504030201⟩⟩⟩
end Certgen.R4846201026330
