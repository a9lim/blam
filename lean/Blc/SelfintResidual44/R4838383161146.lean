import Blc.SelfintResidual44.SafePacked

set_option Elab.async false
namespace Certgen.R4838383161146
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 51,.app 2 50,.app 3 28,.app 4 17,.lam 5,.app 6 7,.var 0,.lam 8,.app 9 10,.var 1,.lam 11,.lam 12,.app 13 14,.var 2,.app 15 16,.var 1,.var 0,.lam 18,.app 19 20,.var 0,.lam 21,.app 22 23,.var 1,.lam 24,.lam 25,.app 26 27,.var 2,.opaque,.lam 29,.app 30 49,.app 31 42,.lam 32,.app 33 34,.var 0,.lam 35,.app 36 37,.var 1,.lam 38,.lam 39,.app 40 41,.var 2,.opaque,.lam 43,.app 44 45,.var 0,.lam 46,.app 47 48,.var 1,.opaque,.opaque,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430569205562 := by decide
def t93 : Term := .var 0
def t96 : Term := .var 1
def t62 : Term := .var 2
def t88 : Term := .lam t93
def t95 : Term := .lam t96
def t87 : Term := .lam t88
def t97 : Term := .var 4
def t63 : Term := .app t96 t93
def t94 : Term := .lam t95
def t85 : Term := .app t93 t87
def t92 : Term := .app t93 t94
def t61 : Term := .app t62 t63
def t60 : Term := .lam t61
def t59 : Term := .lam t60
def t91 : Term := .app t92 t97
def t90 : Term := .lam t91
def t50 : Term := .app t96 t59
def t49 : Term := .lam t50
def t47 : Term := .app t93 t49
def t46 : Term := .lam t47
def t84 : Term := .app t85 t90
def t83 : Term := .lam t84
def t77 : Term := .app t92 t83
def t76 : Term := .lam t77
def t32 : Term := .app t46 t46
def t70 : Term := .app t92 t76
def t69 : Term := .lam t70
def t31 : Term := .app t32 t59
def t30 : Term := .lam t31
def t2 : Term := .app t32 t30
def t1 : Term := .app t2 t87
def t0 : Term := .app t1 t69
def terms : Array Term := #[t0,t1,t2,t32,t46,t47,t93,t49,t50,t96,t59,t60,t61,t62,t63,t96,t93,t46,t47,t93,t49,t50,t96,t59,t60,t61,t62,t63,t30,t31,t32,t46,t47,t93,t49,t50,t96,t59,t60,t61,t62,t63,t46,t47,t93,t49,t50,t96,t59,t59,t87,t69]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n51 : model.term 51 = t69 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 51) (by rfl)).trans (by rfl)
theorem n50 : model.term 50 = t87 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 50) (by rfl)).trans (by rfl)
theorem n49 : model.term 49 = t59 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 49) (by rfl)).trans (by rfl)
theorem n48 : model.term 48 = t59 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 48) (by rfl)).trans (by rfl)
theorem n47 : model.term 47 = t96 := model.var_eq 47 1 (by rfl)
theorem n46 : model.term 46 = t50 := by rw [model.app_eq 46 47 48 (by rfl), n47, n48]; rfl
theorem n45 : model.term 45 = t49 := by rw [model.lam_eq 45 46 (by rfl), n46]; rfl
theorem n44 : model.term 44 = t93 := model.var_eq 44 0 (by rfl)
theorem n43 : model.term 43 = t47 := by rw [model.app_eq 43 44 45 (by rfl), n44, n45]; rfl
theorem n42 : model.term 42 = t46 := by rw [model.lam_eq 42 43 (by rfl), n43]; rfl
theorem n41 : model.term 41 = t63 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 41) (by rfl)).trans (by rfl)
theorem n40 : model.term 40 = t62 := model.var_eq 40 2 (by rfl)
theorem n39 : model.term 39 = t61 := by rw [model.app_eq 39 40 41 (by rfl), n40, n41]; rfl
theorem n38 : model.term 38 = t60 := by rw [model.lam_eq 38 39 (by rfl), n39]; rfl
theorem n37 : model.term 37 = t59 := by rw [model.lam_eq 37 38 (by rfl), n38]; rfl
theorem n36 : model.term 36 = t96 := model.var_eq 36 1 (by rfl)
theorem n35 : model.term 35 = t50 := by rw [model.app_eq 35 36 37 (by rfl), n36, n37]; rfl
theorem n34 : model.term 34 = t49 := by rw [model.lam_eq 34 35 (by rfl), n35]; rfl
theorem n33 : model.term 33 = t93 := model.var_eq 33 0 (by rfl)
theorem n32 : model.term 32 = t47 := by rw [model.app_eq 32 33 34 (by rfl), n33, n34]; rfl
theorem n31 : model.term 31 = t46 := by rw [model.lam_eq 31 32 (by rfl), n32]; rfl
theorem n30 : model.term 30 = t32 := by rw [model.app_eq 30 31 42 (by rfl), n31, n42]; rfl
theorem n29 : model.term 29 = t31 := by rw [model.app_eq 29 30 49 (by rfl), n30, n49]; rfl
theorem n28 : model.term 28 = t30 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t63 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 27) (by rfl)).trans (by rfl)
theorem n26 : model.term 26 = t62 := model.var_eq 26 2 (by rfl)
theorem n25 : model.term 25 = t61 := by rw [model.app_eq 25 26 27 (by rfl), n26, n27]; rfl
theorem n24 : model.term 24 = t60 := by rw [model.lam_eq 24 25 (by rfl), n25]; rfl
theorem n23 : model.term 23 = t59 := by rw [model.lam_eq 23 24 (by rfl), n24]; rfl
theorem n22 : model.term 22 = t96 := model.var_eq 22 1 (by rfl)
theorem n21 : model.term 21 = t50 := by rw [model.app_eq 21 22 23 (by rfl), n22, n23]; rfl
theorem n20 : model.term 20 = t49 := by rw [model.lam_eq 20 21 (by rfl), n21]; rfl
theorem n19 : model.term 19 = t93 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t47 := by rw [model.app_eq 18 19 20 (by rfl), n19, n20]; rfl
theorem n17 : model.term 17 = t46 := by rw [model.lam_eq 17 18 (by rfl), n18]; rfl
theorem n16 : model.term 16 = t93 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t96 := model.var_eq 15 1 (by rfl)
theorem n14 : model.term 14 = t63 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t62 := model.var_eq 13 2 (by rfl)
theorem n12 : model.term 12 = t61 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t60 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t59 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t96 := model.var_eq 9 1 (by rfl)
theorem n8 : model.term 8 = t50 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t49 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t93 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t47 := by rw [model.app_eq 5 6 7 (by rfl), n6, n7]; rfl
theorem n4 : model.term 4 = t46 := by rw [model.lam_eq 4 5 (by rfl), n5]; rfl
theorem n3 : model.term 3 = t32 := by rw [model.app_eq 3 4 17 (by rfl), n4, n17]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 28 (by rfl), n3, n28]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 50 (by rfl), n2, n50]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 51 (by rfl), n1, n51]; rfl
def d : Packed.Data := ⟨⟨6,0x2fbadb2cb2baebaaaaa89e69a59649238e28a181f79d71c69a69a6596596186186185d75d75d75965965555555145144d34d24924914514103cf38e34d34d30c30c2cb2cb2ca28a2892482081c71c61440c2040⟩,⟨6,0x124915134544d14104186279975975975955555504100003ce3453ce3459648e28601036db69a1036da1036da08165908164208164000024928928930a24b30a24b7de75d7082071c81c8207186186180000000⟩,⟨6,0x2001b79d70059669961b00059e75a6405a071859758051351349100000049200004120818318340f38d4510021c71442ca24200c32285f5132074911851030000814510803102cf2a284200c38d25f315302040⟩,⟨⟨7,0xd39715fb966b53a1365478b0e13d74ddab362b962b4e8cf9b2e4c78d16283040404000⟩,⟨3,0x91b6db6db48d6d24d1924922462448⟩,⟨5,0x108ce908ca87534ca6952c2a1854aca85d781aec35e02bb0152541611952d08ce1194230cc310bea1781d4d7994d7952b757812578015761257601d795dd4a85b8ea328e6⟩⟩,⟨6,0x5d75299658b146db70b6a6db6f340e39038e28a1db7325d7514⟩,⟨5,0x37ace2f6ac0149ca307b9a053169525073140020c41⟩,⟨6,0x2492161d85d579d71b51a6534911830a180504101f3cc38b28d110⟩,⟨5,0x10180602d6002d6b018000011880421018c9440010420⟩,⟨⟨6,0x207de75c6da6575955124503ce34c2ca2481c6144080⟩,⟨2,0x25556565555555a⟩,⟨6,0x8607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨6,0x228607de75c6da6585d65544d24503ce34c289207185103081000⟩,⟨2,0x255555555555955554⟩,⟨6,0x8e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x1c37eedbb35ead3a33e6cb931e3c58705fbd76e5bb566c57ad56a53a54684f9d3664b95264c9911e345890e14180fdf3d78edd3970ddb3568cd93160bd72c56a94a84c911a2407cf1c3668c982e58a95284c8901e3868c16284880e182840608080⟩,⟨2,0x15555554555555555555505555555555555655a59655545955555555⟩,⟨7,0x58ddb6f5dafaf569d19f36cc58705fcb92e5bb5671d6ab529d2a495221413e74d992e549911e3458712112202443b74e5c376cd5a111e1d7af5cb562b54a68d083019b24689fbd62c1f3c3e78e9c3668c192e54a1626a138e1c3458c1498305080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 111) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 111) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 111) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 111) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 111) 96 15 = true := by decide +kernel
theorem allok (i : Nat) (h : i<111) : SafePacked.valid d P 111 i = true := by
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
  have hp : replay [[.left,.left],[.left,.left]] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  have hj := Blc.Floor44.Safe.probe he (by decide) (tgt := (.var 0)) (k := 2) (by decide) hp
  exact SafePacked.excludes d model 111 (by decide) allok (by decide) (by repeat constructor) hj n h
#print axioms excluded
end Certgen.R4838383161146
