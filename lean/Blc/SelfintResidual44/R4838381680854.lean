import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4838381680854
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 28,.lam 2,.app 3 12,.app 4 11,.app 5 9,.lam 6,.app 7 8,.var 0,.opaque,.lam 10,.var 1,.opaque,.lam 13,.lam 14,.app 15 27,.app 16 25,.app 17 24,.app 18 22,.lam 19,.app 20 21,.var 0,.opaque,.lam 23,.var 1,.var 0,.lam 26,.var 1,.var 1,.lam 29,.lam 30,.app 31 54,.app 32 53,.app 33 51,.app 34 47,.lam 35,.app 36 37,.var 0,.lam 38,.lam 39,.app 40 46,.app 41 45,.app 42 43,.var 2,.lam 44,.var 1,.opaque,.opaque,.lam 48,.app 49 50,.var 0,.opaque,.lam 52,.var 1,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430567725270 := by decide
def t80 : Term := .var 0
def t81 : Term := .var 1
def t73 : Term := .var 2
def t78 : Term := .lam t81
def t72 : Term := .app t73 t78
def t71 : Term := .app t72 t80
def t70 : Term := .app t71 t81
def t69 : Term := .lam t70
def t68 : Term := .lam t69
def t66 : Term := .app t80 t68
def t65 : Term := .lam t66
def t26 : Term := .app t65 t78
def t25 : Term := .app t26 t80
def t24 : Term := .app t25 t78
def t23 : Term := .app t24 t81
def t22 : Term := .lam t23
def t21 : Term := .lam t22
def t51 : Term := .app t65 t65
def t50 : Term := .app t51 t78
def t49 : Term := .app t50 t80
def t48 : Term := .app t49 t81
def t47 : Term := .lam t48
def t46 : Term := .lam t47
def t2 : Term := .app t25 t21
def t1 : Term := .lam t2
def t0 : Term := .app t1 t46
def terms : Array Term := #[t0,t1,t2,t25,t26,t65,t66,t80,t68,t78,t81,t80,t21,t22,t23,t24,t25,t26,t65,t66,t80,t68,t78,t81,t80,t78,t81,t81,t46,t47,t48,t49,t50,t51,t65,t66,t80,t68,t69,t70,t71,t72,t73,t78,t81,t80,t81,t65,t66,t80,t68,t78,t81,t80,t81]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n54 : model.term 54 = t81 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 54) (by rfl)).trans (by rfl)
theorem n53 : model.term 53 = t80 := model.var_eq 53 0 (by rfl)
theorem n52 : model.term 52 = t81 := model.var_eq 52 1 (by rfl)
theorem n51 : model.term 51 = t78 := by rw [model.lam_eq 51 52 (by rfl), n52]; rfl
theorem n50 : model.term 50 = t68 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 50) (by rfl)).trans (by rfl)
theorem n49 : model.term 49 = t80 := model.var_eq 49 0 (by rfl)
theorem n48 : model.term 48 = t66 := by rw [model.app_eq 48 49 50 (by rfl), n49, n50]; rfl
theorem n47 : model.term 47 = t65 := by rw [model.lam_eq 47 48 (by rfl), n48]; rfl
theorem n46 : model.term 46 = t81 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 46) (by rfl)).trans (by rfl)
theorem n45 : model.term 45 = t80 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 45) (by rfl)).trans (by rfl)
theorem n44 : model.term 44 = t81 := model.var_eq 44 1 (by rfl)
theorem n43 : model.term 43 = t78 := by rw [model.lam_eq 43 44 (by rfl), n44]; rfl
theorem n42 : model.term 42 = t73 := model.var_eq 42 2 (by rfl)
theorem n41 : model.term 41 = t72 := by rw [model.app_eq 41 42 43 (by rfl), n42, n43]; rfl
theorem n40 : model.term 40 = t71 := by rw [model.app_eq 40 41 45 (by rfl), n41, n45]; rfl
theorem n39 : model.term 39 = t70 := by rw [model.app_eq 39 40 46 (by rfl), n40, n46]; rfl
theorem n38 : model.term 38 = t69 := by rw [model.lam_eq 38 39 (by rfl), n39]; rfl
theorem n37 : model.term 37 = t68 := by rw [model.lam_eq 37 38 (by rfl), n38]; rfl
theorem n36 : model.term 36 = t80 := model.var_eq 36 0 (by rfl)
theorem n35 : model.term 35 = t66 := by rw [model.app_eq 35 36 37 (by rfl), n36, n37]; rfl
theorem n34 : model.term 34 = t65 := by rw [model.lam_eq 34 35 (by rfl), n35]; rfl
theorem n33 : model.term 33 = t51 := by rw [model.app_eq 33 34 47 (by rfl), n34, n47]; rfl
theorem n32 : model.term 32 = t50 := by rw [model.app_eq 32 33 51 (by rfl), n33, n51]; rfl
theorem n31 : model.term 31 = t49 := by rw [model.app_eq 31 32 53 (by rfl), n32, n53]; rfl
theorem n30 : model.term 30 = t48 := by rw [model.app_eq 30 31 54 (by rfl), n31, n54]; rfl
theorem n29 : model.term 29 = t47 := by rw [model.lam_eq 29 30 (by rfl), n30]; rfl
theorem n28 : model.term 28 = t46 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t81 := model.var_eq 27 1 (by rfl)
theorem n26 : model.term 26 = t81 := model.var_eq 26 1 (by rfl)
theorem n25 : model.term 25 = t78 := by rw [model.lam_eq 25 26 (by rfl), n26]; rfl
theorem n24 : model.term 24 = t80 := model.var_eq 24 0 (by rfl)
theorem n23 : model.term 23 = t81 := model.var_eq 23 1 (by rfl)
theorem n22 : model.term 22 = t78 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t68 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 21) (by rfl)).trans (by rfl)
theorem n20 : model.term 20 = t80 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t66 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t65 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t26 := by rw [model.app_eq 17 18 22 (by rfl), n18, n22]; rfl
theorem n16 : model.term 16 = t25 := by rw [model.app_eq 16 17 24 (by rfl), n17, n24]; rfl
theorem n15 : model.term 15 = t24 := by rw [model.app_eq 15 16 25 (by rfl), n16, n25]; rfl
theorem n14 : model.term 14 = t23 := by rw [model.app_eq 14 15 27 (by rfl), n15, n27]; rfl
theorem n13 : model.term 13 = t22 := by rw [model.lam_eq 13 14 (by rfl), n14]; rfl
theorem n12 : model.term 12 = t21 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t80 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 11) (by rfl)).trans (by rfl)
theorem n10 : model.term 10 = t81 := model.var_eq 10 1 (by rfl)
theorem n9 : model.term 9 = t78 := by rw [model.lam_eq 9 10 (by rfl), n10]; rfl
theorem n8 : model.term 8 = t68 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 8) (by rfl)).trans (by rfl)
theorem n7 : model.term 7 = t80 := model.var_eq 7 0 (by rfl)
theorem n6 : model.term 6 = t66 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t65 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t26 := by rw [model.app_eq 4 5 9 (by rfl), n5, n9]; rfl
theorem n3 : model.term 3 = t25 := by rw [model.app_eq 3 4 11 (by rfl), n4, n11]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 12 (by rfl), n3, n12]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 28 (by rfl), n1, n28]; rfl
def d : Packed.Data := ⟨⟨6,0xd75d75d33c71c30befb2baa9a279a59238a181f79d71b6db6db6da69a6996596586186186175d75d75d65965965945145134d34d249249145145041040f3cf3ce38e38e34d34d34c30c30c2891c61440c2040⟩,⟨5,0xe739fc7735cd39fa6318c6e3def39ce73ec0318c4216b59c94a4214a521098bded6a94631088b5250b525051888518885188851888518884a4e518b18c6320c0858c63000⟩,⟨6,0x38b24879f8e27db81d7e381f79a6e275b71b6990025cb2482c920920920d30d30b2482c920e34c34c2d65545544d65544ce34c2d24503ce34c2ca2481c61440d918318368a1c511e38b2485e1857617080040⟩,⟨⟨7,0x172b52a3364c582f5cb76acd8af58a53254274c9526385880a08000⟩,⟨3,0xf43249224926d992455b6d0⟩,⟨5,0x3e187c253a55f094de02a5c0119c02a5a0221a019da0119a028080180400be127c2ef858002a5802216019d601194f83e129d005480460110019c11⟩⟩,⟨6,0x366dbb6b972cf2bc930b618555555596596d5965b6ee61865921c⟩,⟨4,0x75466fe7d7ccc32ba985324754326543210⟩,⟨6,0x71a05e7c67596cb89859349140f38d30555410a0c22612078205c0⟩,⟨5,0xfeefff6b7bd6417139ac5b9ac5a928398a41e4c330c00⟩,⟨⟨5,0x1ff779bd6717b520f6b16a49cc520820⟩,⟨3,0x12492492a1449289289⟩,⟨5,0xffbbcdeb38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0x8e28607de75c6da6585d65544d24503ce34c2ca2481c6144081000⟩,⟨2,0x555555555555555594⟩,⟨6,0x8e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x3af4e7cb8f0dfbb6ecd7ab4e8cf9b2e4c78b0e0bf7aedcb76acd8af5aad4a74a8cf9b325ca93223c6890a03f7cf5e3b72e1bb66ad19b260b96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩,⟨2,0x55555555555555555569555a9559555a55555555555555555555555⟩,⟨7,0x68c1628769c16b3e6cb93461c77ef5db96f159b15eb55a94e9428301fbe7baf54f993a5ca93223ecd7aa84d9f3274bdb1a2c487426bc76e9cb86ed9ab368c98b05eb96ac56a94a84e992a446890a03e78e9c3668c99305cb15284c911203e889101c305080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 110) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 110) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 110) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 110) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 110) 96 14 = true := by decide +kernel
theorem allok (i : Nat) (h : i<110) : Packed.valid d P 110 i = true := by
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
  have hp : replay [[],[],[.left],[.left],[.left],[.left,.under,.right,.under,.under,.left,.left],[.left,.under,.right,.under,.under,.left]] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 110 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4838381680854
