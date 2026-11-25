import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434482806
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 73,.app 2 72,.app 3 71,.app 4 70,.app 5 69,.app 6 34,.app 7 17,.lam 8,.lam 9,.lam 10,.app 11 14,.app 12 13,.var 2,.opaque,.app 15 16,.var 1,.var 1,.app 18 26,.lam 19,.lam 20,.lam 21,.app 22 25,.app 23 24,.var 2,.var 0,.opaque,.lam 27,.lam 28,.lam 29,.app 30 33,.app 31 32,.var 2,.opaque,.opaque,.app 35 61,.app 36 51,.lam 37,.app 38 39,.var 0,.app 40 41,.var 0,.lam 42,.lam 43,.lam 44,.app 45 48,.app 46 47,.var 2,.opaque,.app 49 50,.var 1,.opaque,.lam 52,.lam 53,.lam 54,.app 55 58,.app 56 57,.var 2,.var 0,.app 59 60,.var 1,.var 1,.lam 62,.lam 63,.lam 64,.app 65 68,.app 66 67,.var 2,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620527222 := by decide
def t133 : Term := .var 0
def t105 : Term := .var 1
def t70 : Term := .var 2
def t97 : Term := .lam t133
def t104 : Term := .lam t105
def t96 : Term := .lam t97
def t106 : Term := .var 4
def t131 : Term := .app t133 t133
def t103 : Term := .lam t104
def t69 : Term := .app t70 t133
def t72 : Term := .app t105 t105
def t130 : Term := .lam t131
def t94 : Term := .app t133 t96
def t101 : Term := .app t133 t103
def t68 : Term := .app t69 t72
def t125 : Term := .app t130 t130
def t100 : Term := .app t101 t106
def t67 : Term := .lam t68
def t99 : Term := .lam t100
def t66 : Term := .lam t67
def t65 : Term := .lam t66
def t43 : Term := .app t133 t65
def t41 : Term := .app t133 t43
def t93 : Term := .app t94 t99
def t40 : Term := .lam t41
def t92 : Term := .lam t93
def t86 : Term := .app t101 t92
def t17 : Term := .app t65 t65
def t85 : Term := .lam t86
def t39 : Term := .app t40 t65
def t79 : Term := .app t101 t85
def t78 : Term := .lam t79
def t6 : Term := .app t65 t17
def t38 : Term := .app t39 t65
def t5 : Term := .app t6 t38
def t4 : Term := .app t5 t96
def t3 : Term := .app t4 t78
def t2 : Term := .app t3 t125
def t1 : Term := .app t2 t125
def t0 : Term := .app t1 t125
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t6,t65,t66,t67,t68,t69,t70,t133,t72,t105,t105,t17,t65,t66,t67,t68,t69,t70,t133,t72,t65,t66,t67,t68,t69,t70,t133,t72,t38,t39,t40,t41,t133,t43,t133,t65,t66,t67,t68,t69,t70,t133,t72,t105,t105,t65,t66,t67,t68,t69,t70,t133,t72,t105,t105,t65,t66,t67,t68,t69,t70,t133,t72,t96,t78,t125,t125,t125]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n73 : model.term 73 = t125 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 73) (by rfl)).trans (by rfl)
theorem n72 : model.term 72 = t125 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 72) (by rfl)).trans (by rfl)
theorem n71 : model.term 71 = t125 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 71) (by rfl)).trans (by rfl)
theorem n70 : model.term 70 = t78 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 70) (by rfl)).trans (by rfl)
theorem n69 : model.term 69 = t96 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 69) (by rfl)).trans (by rfl)
theorem n68 : model.term 68 = t72 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 68) (by rfl)).trans (by rfl)
theorem n67 : model.term 67 = t133 := model.var_eq 67 0 (by rfl)
theorem n66 : model.term 66 = t70 := model.var_eq 66 2 (by rfl)
theorem n65 : model.term 65 = t69 := by rw [model.app_eq 65 66 67 (by rfl), n66, n67]; rfl
theorem n64 : model.term 64 = t68 := by rw [model.app_eq 64 65 68 (by rfl), n65, n68]; rfl
theorem n63 : model.term 63 = t67 := by rw [model.lam_eq 63 64 (by rfl), n64]; rfl
theorem n62 : model.term 62 = t66 := by rw [model.lam_eq 62 63 (by rfl), n63]; rfl
theorem n61 : model.term 61 = t65 := by rw [model.lam_eq 61 62 (by rfl), n62]; rfl
theorem n60 : model.term 60 = t105 := model.var_eq 60 1 (by rfl)
theorem n59 : model.term 59 = t105 := model.var_eq 59 1 (by rfl)
theorem n58 : model.term 58 = t72 := by rw [model.app_eq 58 59 60 (by rfl), n59, n60]; rfl
theorem n57 : model.term 57 = t133 := model.var_eq 57 0 (by rfl)
theorem n56 : model.term 56 = t70 := model.var_eq 56 2 (by rfl)
theorem n55 : model.term 55 = t69 := by rw [model.app_eq 55 56 57 (by rfl), n56, n57]; rfl
theorem n54 : model.term 54 = t68 := by rw [model.app_eq 54 55 58 (by rfl), n55, n58]; rfl
theorem n53 : model.term 53 = t67 := by rw [model.lam_eq 53 54 (by rfl), n54]; rfl
theorem n52 : model.term 52 = t66 := by rw [model.lam_eq 52 53 (by rfl), n53]; rfl
theorem n51 : model.term 51 = t65 := by rw [model.lam_eq 51 52 (by rfl), n52]; rfl
theorem n50 : model.term 50 = t105 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 50) (by rfl)).trans (by rfl)
theorem n49 : model.term 49 = t105 := model.var_eq 49 1 (by rfl)
theorem n48 : model.term 48 = t72 := by rw [model.app_eq 48 49 50 (by rfl), n49, n50]; rfl
theorem n47 : model.term 47 = t133 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 47) (by rfl)).trans (by rfl)
theorem n46 : model.term 46 = t70 := model.var_eq 46 2 (by rfl)
theorem n45 : model.term 45 = t69 := by rw [model.app_eq 45 46 47 (by rfl), n46, n47]; rfl
theorem n44 : model.term 44 = t68 := by rw [model.app_eq 44 45 48 (by rfl), n45, n48]; rfl
theorem n43 : model.term 43 = t67 := by rw [model.lam_eq 43 44 (by rfl), n44]; rfl
theorem n42 : model.term 42 = t66 := by rw [model.lam_eq 42 43 (by rfl), n43]; rfl
theorem n41 : model.term 41 = t65 := by rw [model.lam_eq 41 42 (by rfl), n42]; rfl
theorem n40 : model.term 40 = t133 := model.var_eq 40 0 (by rfl)
theorem n39 : model.term 39 = t43 := by rw [model.app_eq 39 40 41 (by rfl), n40, n41]; rfl
theorem n38 : model.term 38 = t133 := model.var_eq 38 0 (by rfl)
theorem n37 : model.term 37 = t41 := by rw [model.app_eq 37 38 39 (by rfl), n38, n39]; rfl
theorem n36 : model.term 36 = t40 := by rw [model.lam_eq 36 37 (by rfl), n37]; rfl
theorem n35 : model.term 35 = t39 := by rw [model.app_eq 35 36 51 (by rfl), n36, n51]; rfl
theorem n34 : model.term 34 = t38 := by rw [model.app_eq 34 35 61 (by rfl), n35, n61]; rfl
theorem n33 : model.term 33 = t72 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 33) (by rfl)).trans (by rfl)
theorem n32 : model.term 32 = t133 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 32) (by rfl)).trans (by rfl)
theorem n31 : model.term 31 = t70 := model.var_eq 31 2 (by rfl)
theorem n30 : model.term 30 = t69 := by rw [model.app_eq 30 31 32 (by rfl), n31, n32]; rfl
theorem n29 : model.term 29 = t68 := by rw [model.app_eq 29 30 33 (by rfl), n30, n33]; rfl
theorem n28 : model.term 28 = t67 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t66 := by rw [model.lam_eq 27 28 (by rfl), n28]; rfl
theorem n26 : model.term 26 = t65 := by rw [model.lam_eq 26 27 (by rfl), n27]; rfl
theorem n25 : model.term 25 = t72 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 25) (by rfl)).trans (by rfl)
theorem n24 : model.term 24 = t133 := model.var_eq 24 0 (by rfl)
theorem n23 : model.term 23 = t70 := model.var_eq 23 2 (by rfl)
theorem n22 : model.term 22 = t69 := by rw [model.app_eq 22 23 24 (by rfl), n23, n24]; rfl
theorem n21 : model.term 21 = t68 := by rw [model.app_eq 21 22 25 (by rfl), n22, n25]; rfl
theorem n20 : model.term 20 = t67 := by rw [model.lam_eq 20 21 (by rfl), n21]; rfl
theorem n19 : model.term 19 = t66 := by rw [model.lam_eq 19 20 (by rfl), n20]; rfl
theorem n18 : model.term 18 = t65 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 26 (by rfl), n18, n26]; rfl
theorem n16 : model.term 16 = t105 := model.var_eq 16 1 (by rfl)
theorem n15 : model.term 15 = t105 := model.var_eq 15 1 (by rfl)
theorem n14 : model.term 14 = t72 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t133 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 13) (by rfl)).trans (by rfl)
theorem n12 : model.term 12 = t70 := model.var_eq 12 2 (by rfl)
theorem n11 : model.term 11 = t69 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t68 := by rw [model.app_eq 10 11 14 (by rfl), n11, n14]; rfl
theorem n9 : model.term 9 = t67 := by rw [model.lam_eq 9 10 (by rfl), n10]; rfl
theorem n8 : model.term 8 = t66 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t65 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 17 (by rfl), n7, n17]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.app_eq 5 6 34 (by rfl), n6, n34]; rfl
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 69 (by rfl), n5, n69]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 70 (by rfl), n4, n70]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 71 (by rfl), n3, n71]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 72 (by rfl), n2, n72]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 73 (by rfl), n1, n73]; rfl
def d : Packed.Data := ⟨⟨7,0x21c3850a141830604081020407efdfbf7ef9f3e7af5ebd7af1e3c78eddbb76eddba74e9d3a74e9d3972e5cb972e1c386eddbb66cd9b366cd9b366cd5ab56ad5a3468d1a3366cd8b162c583060c172e5ab562c58ad5ab56ad52950a13a74c952a54891223468d122447cf1d386cd182e58a942648890203c70c16284880e182840608080⟩,⟨5,0x14a6296c52d8c5294be739bdeb390000002463425231a10948c631a10948c684246848d094a52318c6346317bded6ad6a0000c6294c6294c5314c62d294a526739ce739ce700000000000108494402108507800108421085cd0000000000⟩,⟨6,0xcb0cb1c2fbadbedcb02c7cb02d85ee699c6cae89f1aa9c6caeaa689da65f79d71a66aa5a66aa659238a181f79d71f79d70c32282aa459633ce3565547de75ccb0cb0699617cb02df79d70c86459596350f38d49140f38daa914c2c728824c24828310612aa453040ca4db99b4ca1c2040⟩,⟨⟨6,0x3ceb9e36d33cafb6baa89e592179b615510309183000⟩,⟨3,0x244a44b48a28b6db3236d8⟩,⟨5,0x275952726396d62cc7418e320c01067599d713ada54badb15b5e631d0a31d09190ac740011675b⟩⟩,⟨7,0x89123c89315111870d83043117af86f1e3c74e883972f54a764c903a72ce319303869a⟩,⟨4,0xcb000000cb654a65a98398198077654330022110⟩,⟨6,0x1f5de9e769a6a65965145145558101cf4d34d32082082122cb28a85961d75c34d30c32218618e38e25b143125011042923⟩,⟨6,0x2fbadbedcb02c76997dd79c6996e28607de75c7de75c30ccb0cb04d85f2c0b9633ce34a3ce36aa452c71c828210c0ca040⟩,⟨⟨6,0x8a181e71b6985d551244f38d30a2481c61440c2040⟩,⟨2,0x56966665655555⟩,⟨6,0x228607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x101fbe78e5c376cd193160bd72d58a11a24280f9e3a70d99305cb13244480f1c3460b14244070c142030404000⟩,⟨3,0x494c929124932924924a24b249249249249248⟩,⟨7,0x407ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨8,0xaba9a8a6a5a4a3a2a1a09f9e9d9c9b9a999796939291908f8e8d8c8b898786858482807f7e7d7c7b7a79787776757472706f6e6d6c6b6a696867666564636261605f5e5a59575554535251504f4e4d4a494847464544434241403f3e3d3c3b3a3938373631302f2e2d2c2b2a292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨3,0x1228924924924a2c924925224a44924924929124924924924930a4492492c9249249249249269249249249249249249249249249249249249⟩,⟨8,0x413f403e957a779493929190908f8f8f8e8d8c888b8a89878685848382818081807f686467637f7e7d686467637c7b76757473747372717978706a6f69100f2d302c6261605f5f5f5f5e5e5e5e5e5d58575655545c5a5b59535251504f4e4d4c4b4a496e6d6c6b4544434266653d3c3b3b3a393839383736353433323148472f2e462b2b2b2a2928272625242322181e1d1c1b1a0d1917161514131221201f0e110c0b0a090807060504030201⟩⟩⟩
end Certgen.R4846434482806
