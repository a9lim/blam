import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4838381679022
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 27,.app 2 15,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.app 8 14,.app 9 13,.app 10 11,.var 1,.lam 12,.var 1,.var 0,.opaque,.lam 16,.app 17 18,.var 0,.lam 19,.lam 20,.app 21 26,.app 22 25,.app 23 24,.var 1,.opaque,.var 0,.var 2,.lam 28,.lam 29,.app 30 36,.app 31 35,.app 32 33,.var 1,.lam 34,.var 1,.var 0,.app 37 50,.lam 38,.app 39 40,.var 0,.lam 41,.lam 42,.app 43 49,.app 44 48,.app 45 46,.var 1,.lam 47,.var 1,.var 0,.opaque,.lam 51,.app 52 53,.var 0,.lam 54,.lam 55,.app 56 61,.app 57 60,.app 58 59,.var 1,.opaque,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430567723438 := by decide
def t62 : Term := .var 0
def t61 : Term := .var 1
def t63 : Term := .var 2
def t60 : Term := .lam t61
def t58 : Term := .app t61 t60
def t57 : Term := .app t58 t62
def t56 : Term := .app t57 t63
def t55 : Term := .lam t56
def t54 : Term := .lam t55
def t52 : Term := .app t62 t54
def t51 : Term := .lam t52
def t37 : Term := .app t51 t51
def t30 : Term := .app t57 t37
def t29 : Term := .lam t30
def t28 : Term := .lam t29
def t0 : Term := .app t37 t28
def terms : Array Term := #[t0,t37,t51,t52,t62,t54,t55,t56,t57,t58,t61,t60,t61,t62,t63,t51,t52,t62,t54,t55,t56,t57,t58,t61,t60,t62,t63,t28,t29,t30,t57,t58,t61,t60,t61,t62,t37,t51,t52,t62,t54,t55,t56,t57,t58,t61,t60,t61,t62,t63,t51,t52,t62,t54,t55,t56,t57,t58,t61,t60,t62,t63]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n61 : model.term 61 = t63 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 61) (by rfl)).trans (by rfl)
theorem n60 : model.term 60 = t62 := model.var_eq 60 0 (by rfl)
theorem n59 : model.term 59 = t60 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 59) (by rfl)).trans (by rfl)
theorem n58 : model.term 58 = t61 := model.var_eq 58 1 (by rfl)
theorem n57 : model.term 57 = t58 := by rw [model.app_eq 57 58 59 (by rfl), n58, n59]; rfl
theorem n56 : model.term 56 = t57 := by rw [model.app_eq 56 57 60 (by rfl), n57, n60]; rfl
theorem n55 : model.term 55 = t56 := by rw [model.app_eq 55 56 61 (by rfl), n56, n61]; rfl
theorem n54 : model.term 54 = t55 := by rw [model.lam_eq 54 55 (by rfl), n55]; rfl
theorem n53 : model.term 53 = t54 := by rw [model.lam_eq 53 54 (by rfl), n54]; rfl
theorem n52 : model.term 52 = t62 := model.var_eq 52 0 (by rfl)
theorem n51 : model.term 51 = t52 := by rw [model.app_eq 51 52 53 (by rfl), n52, n53]; rfl
theorem n50 : model.term 50 = t51 := by rw [model.lam_eq 50 51 (by rfl), n51]; rfl
theorem n49 : model.term 49 = t63 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 49) (by rfl)).trans (by rfl)
theorem n48 : model.term 48 = t62 := model.var_eq 48 0 (by rfl)
theorem n47 : model.term 47 = t61 := model.var_eq 47 1 (by rfl)
theorem n46 : model.term 46 = t60 := by rw [model.lam_eq 46 47 (by rfl), n47]; rfl
theorem n45 : model.term 45 = t61 := model.var_eq 45 1 (by rfl)
theorem n44 : model.term 44 = t58 := by rw [model.app_eq 44 45 46 (by rfl), n45, n46]; rfl
theorem n43 : model.term 43 = t57 := by rw [model.app_eq 43 44 48 (by rfl), n44, n48]; rfl
theorem n42 : model.term 42 = t56 := by rw [model.app_eq 42 43 49 (by rfl), n43, n49]; rfl
theorem n41 : model.term 41 = t55 := by rw [model.lam_eq 41 42 (by rfl), n42]; rfl
theorem n40 : model.term 40 = t54 := by rw [model.lam_eq 40 41 (by rfl), n41]; rfl
theorem n39 : model.term 39 = t62 := model.var_eq 39 0 (by rfl)
theorem n38 : model.term 38 = t52 := by rw [model.app_eq 38 39 40 (by rfl), n39, n40]; rfl
theorem n37 : model.term 37 = t51 := by rw [model.lam_eq 37 38 (by rfl), n38]; rfl
theorem n36 : model.term 36 = t37 := by rw [model.app_eq 36 37 50 (by rfl), n37, n50]; rfl
theorem n35 : model.term 35 = t62 := model.var_eq 35 0 (by rfl)
theorem n34 : model.term 34 = t61 := model.var_eq 34 1 (by rfl)
theorem n33 : model.term 33 = t60 := by rw [model.lam_eq 33 34 (by rfl), n34]; rfl
theorem n32 : model.term 32 = t61 := model.var_eq 32 1 (by rfl)
theorem n31 : model.term 31 = t58 := by rw [model.app_eq 31 32 33 (by rfl), n32, n33]; rfl
theorem n30 : model.term 30 = t57 := by rw [model.app_eq 30 31 35 (by rfl), n31, n35]; rfl
theorem n29 : model.term 29 = t30 := by rw [model.app_eq 29 30 36 (by rfl), n30, n36]; rfl
theorem n28 : model.term 28 = t29 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t28 := by rw [model.lam_eq 27 28 (by rfl), n28]; rfl
theorem n26 : model.term 26 = t63 := model.var_eq 26 2 (by rfl)
theorem n25 : model.term 25 = t62 := model.var_eq 25 0 (by rfl)
theorem n24 : model.term 24 = t60 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 24) (by rfl)).trans (by rfl)
theorem n23 : model.term 23 = t61 := model.var_eq 23 1 (by rfl)
theorem n22 : model.term 22 = t58 := by rw [model.app_eq 22 23 24 (by rfl), n23, n24]; rfl
theorem n21 : model.term 21 = t57 := by rw [model.app_eq 21 22 25 (by rfl), n22, n25]; rfl
theorem n20 : model.term 20 = t56 := by rw [model.app_eq 20 21 26 (by rfl), n21, n26]; rfl
theorem n19 : model.term 19 = t55 := by rw [model.lam_eq 19 20 (by rfl), n20]; rfl
theorem n18 : model.term 18 = t54 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t62 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t52 := by rw [model.app_eq 16 17 18 (by rfl), n17, n18]; rfl
theorem n15 : model.term 15 = t51 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t63 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 14) (by rfl)).trans (by rfl)
theorem n13 : model.term 13 = t62 := model.var_eq 13 0 (by rfl)
theorem n12 : model.term 12 = t61 := model.var_eq 12 1 (by rfl)
theorem n11 : model.term 11 = t60 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t61 := model.var_eq 10 1 (by rfl)
theorem n9 : model.term 9 = t58 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t57 := by rw [model.app_eq 8 9 13 (by rfl), n9, n13]; rfl
theorem n7 : model.term 7 = t56 := by rw [model.app_eq 7 8 14 (by rfl), n8, n14]; rfl
theorem n6 : model.term 6 = t55 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t54 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t62 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t52 := by rw [model.app_eq 3 4 5 (by rfl), n4, n5]; rfl
theorem n2 : model.term 2 = t51 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t37 := by rw [model.app_eq 1 2 15 (by rfl), n2, n15]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 27 (by rfl), n1, n27]; rfl
def d : Packed.Data := ⟨⟨6,0xf3ae78df7db6d75d33cf2c30befbaeb6db2caebaaaa69a279a69659248e38a18207df79e75d71c6db69a65759551349140f34d34c30b2ca28a2492482081c71c61861451440c2040⟩,⟨5,0x421084235a39ce7399acce1ac6b1ac6b1acbdd6b5acc6318c5b14c5314c5316b400021084210cd294804a24a2a20944128825104a241ee18c6318000⟩,⟨6,0x65a6584915135955e065065965969a5955134917588195d08193ce8198a22cd34c2ca24821b28430588b3061446de8430476593201631a38a181f79d71b70801f24188b0c7042040⟩,⟨⟨7,0x13234078e5c376ac56ab529d11d345cb111c305070c0c000⟩,⟨3,0x1368c95224ad6cd6932d8⟩,⟨5,0x3a6743a56c73ce95b1af3a56c32147308658dc25858059162581d2b638e95b1a74acb1b88e99d2a74cce9320b0b14b2c0864⟩⟩,⟨6,0x38e3bdc7190d91bc30baea0b8d2ecdf35ca18da8593cd2c52d8⟩,⟨4,0x2a48dc5a60dcdcba698287665151044321⟩,⟨6,0x520ce6848607cf35e78c31551759d7134cb2ca1d12596c2006210158⟩,⟨6,0x81f79d71b7080196124606544d245d62065980b2892086c11446c1040⟩,⟨⟨5,0x1ace2d49ca307b9ac5a928398a418820⟩,⟨2,0x15a5555555555⟩,⟨5,0x6b38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x9648e28607de75c6d95d65544d244f38d30b289207185103081000⟩,⟨2,0x555556955655555554⟩,⟨6,0x9648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0xc582fdebb72ddab362bd6ab4e951a13e74d992e549911e345890e0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩,⟨2,0xa55555655555555955555555555555555555555555555555⟩,⟨7,0xa3426ccbd76e5cb76acd88356ad4a676f9dbf3e757ad2e549911e345890e1528101f3f78f5c2950ddb276ad19b262c17ae5ab0386365d325488d105407ce3a56ed51a3261ca12c54a13244480f1c3460b142441e080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 96) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 96) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 96) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 96) 72 24 = true := by decide +kernel
theorem allok (i : Nat) (h : i<96) : Packed.valid d P 96 i = true := by
 by_cases h48 : i<48
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
 · by_cases h72 : i<72
   · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[],[]] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 96 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4838381679022
