import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4844814953326
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 52,.app 2 51,.app 3 50,.app 4 35,.app 5 34,.app 6 20,.lam 7,.lam 8,.lam 9,.app 10 19,.app 11 18,.app 12 13,.var 2,.app 14 17,.app 15 16,.var 0,.var 0,.opaque,.opaque,.var 2,.lam 21,.lam 22,.lam 23,.app 24 33,.app 25 32,.app 26 27,.var 2,.app 28 31,.app 29 30,.var 0,.var 0,.opaque,.opaque,.var 2,.opaque,.lam 36,.app 37 42,.app 38 39,.var 0,.lam 40,.lam 41,.var 1,.lam 43,.app 44 49,.app 45 46,.var 0,.lam 47,.lam 48,.var 1,.opaque,.opaque,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.var 2))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22437000997742 := by decide
def t92 : Term := .var 0
def t64 : Term := .var 1
def t33 : Term := .var 2
def t56 : Term := .lam t92
def t63 : Term := .lam t64
def t90 : Term := .app t92 t92
def t55 : Term := .lam t56
def t65 : Term := .var 4
def t62 : Term := .lam t63
def t89 : Term := .lam t90
def t53 : Term := .app t92 t55
def t27 : Term := .app t90 t64
def t60 : Term := .app t92 t62
def t25 : Term := .app t33 t27
def t84 : Term := .app t89 t89
def t59 : Term := .app t60 t65
def t58 : Term := .lam t59
def t24 : Term := .app t25 t64
def t23 : Term := .app t24 t33
def t22 : Term := .lam t23
def t21 : Term := .lam t22
def t52 : Term := .app t53 t58
def t20 : Term := .lam t21
def t51 : Term := .lam t52
def t45 : Term := .app t60 t51
def t44 : Term := .lam t45
def t38 : Term := .app t60 t44
def t37 : Term := .lam t38
def t5 : Term := .app t20 t20
def t4 : Term := .app t5 t55
def t3 : Term := .app t4 t37
def t2 : Term := .app t3 t84
def t1 : Term := .app t2 t84
def t0 : Term := .app t1 t84
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t20,t21,t22,t23,t24,t25,t33,t27,t90,t92,t92,t64,t64,t33,t20,t21,t22,t23,t24,t25,t33,t27,t90,t92,t92,t64,t64,t33,t55,t37,t38,t60,t92,t62,t63,t64,t44,t45,t60,t92,t62,t63,t64,t51,t84,t84,t84]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n52 : model.term 52 = t84 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 52) (by rfl)).trans (by rfl)
theorem n51 : model.term 51 = t84 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 51) (by rfl)).trans (by rfl)
theorem n50 : model.term 50 = t84 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 50) (by rfl)).trans (by rfl)
theorem n49 : model.term 49 = t51 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 49) (by rfl)).trans (by rfl)
theorem n48 : model.term 48 = t64 := model.var_eq 48 1 (by rfl)
theorem n47 : model.term 47 = t63 := by rw [model.lam_eq 47 48 (by rfl), n48]; rfl
theorem n46 : model.term 46 = t62 := by rw [model.lam_eq 46 47 (by rfl), n47]; rfl
theorem n45 : model.term 45 = t92 := model.var_eq 45 0 (by rfl)
theorem n44 : model.term 44 = t60 := by rw [model.app_eq 44 45 46 (by rfl), n45, n46]; rfl
theorem n43 : model.term 43 = t45 := by rw [model.app_eq 43 44 49 (by rfl), n44, n49]; rfl
theorem n42 : model.term 42 = t44 := by rw [model.lam_eq 42 43 (by rfl), n43]; rfl
theorem n41 : model.term 41 = t64 := model.var_eq 41 1 (by rfl)
theorem n40 : model.term 40 = t63 := by rw [model.lam_eq 40 41 (by rfl), n41]; rfl
theorem n39 : model.term 39 = t62 := by rw [model.lam_eq 39 40 (by rfl), n40]; rfl
theorem n38 : model.term 38 = t92 := model.var_eq 38 0 (by rfl)
theorem n37 : model.term 37 = t60 := by rw [model.app_eq 37 38 39 (by rfl), n38, n39]; rfl
theorem n36 : model.term 36 = t38 := by rw [model.app_eq 36 37 42 (by rfl), n37, n42]; rfl
theorem n35 : model.term 35 = t37 := by rw [model.lam_eq 35 36 (by rfl), n36]; rfl
theorem n34 : model.term 34 = t55 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 34) (by rfl)).trans (by rfl)
theorem n33 : model.term 33 = t33 := model.var_eq 33 2 (by rfl)
theorem n32 : model.term 32 = t64 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 32) (by rfl)).trans (by rfl)
theorem n31 : model.term 31 = t64 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 31) (by rfl)).trans (by rfl)
theorem n30 : model.term 30 = t92 := model.var_eq 30 0 (by rfl)
theorem n29 : model.term 29 = t92 := model.var_eq 29 0 (by rfl)
theorem n28 : model.term 28 = t90 := by rw [model.app_eq 28 29 30 (by rfl), n29, n30]; rfl
theorem n27 : model.term 27 = t27 := by rw [model.app_eq 27 28 31 (by rfl), n28, n31]; rfl
theorem n26 : model.term 26 = t33 := model.var_eq 26 2 (by rfl)
theorem n25 : model.term 25 = t25 := by rw [model.app_eq 25 26 27 (by rfl), n26, n27]; rfl
theorem n24 : model.term 24 = t24 := by rw [model.app_eq 24 25 32 (by rfl), n25, n32]; rfl
theorem n23 : model.term 23 = t23 := by rw [model.app_eq 23 24 33 (by rfl), n24, n33]; rfl
theorem n22 : model.term 22 = t22 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t21 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t20 := by rw [model.lam_eq 20 21 (by rfl), n21]; rfl
theorem n19 : model.term 19 = t33 := model.var_eq 19 2 (by rfl)
theorem n18 : model.term 18 = t64 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 18) (by rfl)).trans (by rfl)
theorem n17 : model.term 17 = t64 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 17) (by rfl)).trans (by rfl)
theorem n16 : model.term 16 = t92 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t92 := model.var_eq 15 0 (by rfl)
theorem n14 : model.term 14 = t90 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t27 := by rw [model.app_eq 13 14 17 (by rfl), n14, n17]; rfl
theorem n12 : model.term 12 = t33 := model.var_eq 12 2 (by rfl)
theorem n11 : model.term 11 = t25 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t24 := by rw [model.app_eq 10 11 18 (by rfl), n11, n18]; rfl
theorem n9 : model.term 9 = t23 := by rw [model.app_eq 9 10 19 (by rfl), n10, n19]; rfl
theorem n8 : model.term 8 = t22 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t21 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t20 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.app_eq 5 6 20 (by rfl), n6, n20]; rfl
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 34 (by rfl), n5, n34]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 35 (by rfl), n4, n35]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 50 (by rfl), n3, n50]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 51 (by rfl), n2, n51]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 52 (by rfl), n1, n52]; rfl
def d : Packed.Data := ⟨⟨6,0x30c30befbeebaeb6caeaa69a289e79a69659248e386186186186179e79e79e79e79e75d75d71c71c6db6db6db69a69a6596596186185d75d75965965955555555145145134d34d03ce34c2ca2481c61440c2040⟩,⟨5,0x6317b5aa6318c631e939450741d0741c0018c6210884294a318844210a3110a3110a31884428c4428c4428c4428c44841ef735ac62c000000108421084210842a4800000000⟩,⟨6,0x1940859531a6508e23d375378576081f79d7457c66124584916506124594194184916da6585d65548d94194084d24503ce34c2ca2481e28a28c828995750e3436d849111b61245f1854c40e51dc86485c1c2040⟩,⟨⟨6,0x33beca668e17dd6d96175944d244f309183000⟩,⟨3,0x48db69248928929b6d8⟩,⟨5,0x2a12a2a119aa125422a6bd6c729ab608a120062082b6aad4a80069090c22a0453d6d7⟩⟩,⟨6,0x31821cb3d238947df81e79b6ea467aa7413ba18617df82049e79b6cd⟩,⟨4,0x6550000003243245818771164325432154321⟩,⟨6,0xe70d91d4905117846170c96db69a2150815a31c66622ca3213d300581f⟩,⟨6,0x78623dc79d7451d759552365065020f38d30b2892078a28821530e5040⟩,⟨⟨5,0xf779acded5a4e5183dcd6290628c20⟩,⟨2,0x566555556a69⟩,⟨5,0x7bbcdeb38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x9a59238a181f79d71b69961651349140f38d30b289207185103081000⟩,⟨2,0x5555555695555555554⟩,⟨6,0x269648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x807e7d7b797877767574737271706f6e6d6c6b6a69686766656463615f5d5b595755535251504f4e4d4c4a484645444341403f3e3d3c3b3a393837363432302f2e2d2c2b2a292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨2,0x29a55555555555aaaa5556a56555556a555555555555555555555555⟩,⟨7,0x24468f15a6edbbb6ecd7ab4b9cb931ddc58705ebf7085bb566c57ad2e24a872614b892a1c984e1b376a4c911cf9a6cca74294fa338a689b4e84180fdf3d78f1dbb74365439309bb566c98b05eb96ac56a94a84c952244e8d121407cf1d386cd19305cb55a83c715182c509101c305080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 111) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 111) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 111) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 111) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 111) 96 15 = true := by decide +kernel
theorem allok (i : Nat) (h : i<111) : Packed.valid d P 111 i = true := by
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
  have hp : replay [[.left,.left,.left,.left,.left]] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Packed.excludes d model 111 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4844814953326
