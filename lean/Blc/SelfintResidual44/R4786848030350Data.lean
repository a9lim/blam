import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4786848030350
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 90,.app 2 89,.app 3 88,.app 4 87,.app 5 86,.app 6 82,.app 7 31,.app 8 14,.lam 9,.app 10 11,.var 0,.app 12 13,.var 0,.opaque,.lam 15,.lam 16,.app 17 29,.app 18 19,.var 0,.app 20 21,.var 0,.lam 22,.lam 23,.app 24 27,.app 25 26,.var 2,.var 0,.lam 28,.var 2,.lam 30,.var 2,.app 32 54,.app 33 46,.lam 34,.app 35 36,.var 0,.app 37 38,.var 0,.lam 39,.lam 40,.app 41 44,.app 42 43,.var 2,.opaque,.lam 45,.var 2,.lam 47,.lam 48,.app 49 52,.app 50 51,.var 0,.opaque,.lam 53,.var 2,.lam 55,.lam 56,.app 57 81,.app 58 80,.app 59 72,.lam 60,.app 61 62,.var 0,.app 63 64,.var 0,.lam 65,.lam 66,.app 67 70,.app 68 69,.var 2,.var 0,.lam 71,.var 2,.lam 73,.lam 74,.app 75 78,.app 76 77,.var 0,.opaque,.lam 79,.var 2,.var 0,.opaque,.lam 83,.app 84 85,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.app 91 95,.lam 92,.app 93 94,.var 0,.var 0,.lam 96,.app 97 98,.var 0,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22379034074766 := by decide
def t179 : Term := .var 0
def t151 : Term := .var 1
def t120 : Term := .var 2
def t143 : Term := .lam t179
def t150 : Term := .lam t151
def t119 : Term := .lam t120
def t142 : Term := .lam t143
def t152 : Term := .var 4
def t177 : Term := .app t179 t179
def t149 : Term := .lam t150
def t116 : Term := .app t120 t179
def t176 : Term := .lam t177
def t140 : Term := .app t179 t142
def t147 : Term := .app t179 t149
def t115 : Term := .app t116 t119
def t114 : Term := .lam t115
def t171 : Term := .app t176 t176
def t146 : Term := .app t147 t152
def t113 : Term := .lam t114
def t145 : Term := .lam t146
def t111 : Term := .app t179 t113
def t109 : Term := .app t179 t111
def t108 : Term := .lam t109
def t139 : Term := .app t140 t145
def t138 : Term := .lam t139
def t90 : Term := .app t109 t119
def t89 : Term := .lam t90
def t88 : Term := .lam t89
def t132 : Term := .app t147 t138
def t131 : Term := .lam t132
def t125 : Term := .app t147 t131
def t124 : Term := .lam t125
def t74 : Term := .app t108 t88
def t73 : Term := .app t74 t179
def t72 : Term := .app t73 t119
def t71 : Term := .lam t72
def t70 : Term := .lam t71
def t38 : Term := .app t74 t70
def t6 : Term := .app t74 t38
def t5 : Term := .app t6 t108
def t4 : Term := .app t5 t142
def t3 : Term := .app t4 t124
def t2 : Term := .app t3 t171
def t1 : Term := .app t2 t171
def t0 : Term := .app t1 t171
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t6,t74,t108,t109,t179,t111,t179,t113,t88,t89,t90,t109,t179,t111,t179,t113,t114,t115,t116,t120,t179,t119,t120,t119,t120,t38,t74,t108,t109,t179,t111,t179,t113,t114,t115,t116,t120,t179,t119,t120,t88,t89,t90,t109,t179,t111,t119,t120,t70,t71,t72,t73,t74,t108,t109,t179,t111,t179,t113,t114,t115,t116,t120,t179,t119,t120,t88,t89,t90,t109,t179,t111,t119,t120,t179,t119,t108,t109,t179,t111,t142,t124,t171,t171,t171,t176,t177,t179,t179,t176,t177,t179,t179]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n98 : model.term 98 = t179 := model.var_eq 98 0 (by rfl)
theorem n97 : model.term 97 = t179 := model.var_eq 97 0 (by rfl)
theorem n96 : model.term 96 = t177 := by rw [model.app_eq 96 97 98 (by rfl), n97, n98]; rfl
theorem n95 : model.term 95 = t176 := by rw [model.lam_eq 95 96 (by rfl), n96]; rfl
theorem n94 : model.term 94 = t179 := model.var_eq 94 0 (by rfl)
theorem n93 : model.term 93 = t179 := model.var_eq 93 0 (by rfl)
theorem n92 : model.term 92 = t177 := by rw [model.app_eq 92 93 94 (by rfl), n93, n94]; rfl
theorem n91 : model.term 91 = t176 := by rw [model.lam_eq 91 92 (by rfl), n92]; rfl
theorem n90 : model.term 90 = t171 := by rw [model.app_eq 90 91 95 (by rfl), n91, n95]; rfl
theorem n89 : model.term 89 = t171 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 89) (by rfl)).trans (by rfl)
theorem n88 : model.term 88 = t171 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 88) (by rfl)).trans (by rfl)
theorem n87 : model.term 87 = t124 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 87) (by rfl)).trans (by rfl)
theorem n86 : model.term 86 = t142 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 86) (by rfl)).trans (by rfl)
theorem n85 : model.term 85 = t111 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 85) (by rfl)).trans (by rfl)
theorem n84 : model.term 84 = t179 := model.var_eq 84 0 (by rfl)
theorem n83 : model.term 83 = t109 := by rw [model.app_eq 83 84 85 (by rfl), n84, n85]; rfl
theorem n82 : model.term 82 = t108 := by rw [model.lam_eq 82 83 (by rfl), n83]; rfl
theorem n81 : model.term 81 = t119 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 81) (by rfl)).trans (by rfl)
theorem n80 : model.term 80 = t179 := model.var_eq 80 0 (by rfl)
theorem n79 : model.term 79 = t120 := model.var_eq 79 2 (by rfl)
theorem n78 : model.term 78 = t119 := by rw [model.lam_eq 78 79 (by rfl), n79]; rfl
theorem n77 : model.term 77 = t111 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 77) (by rfl)).trans (by rfl)
theorem n76 : model.term 76 = t179 := model.var_eq 76 0 (by rfl)
theorem n75 : model.term 75 = t109 := by rw [model.app_eq 75 76 77 (by rfl), n76, n77]; rfl
theorem n74 : model.term 74 = t90 := by rw [model.app_eq 74 75 78 (by rfl), n75, n78]; rfl
theorem n73 : model.term 73 = t89 := by rw [model.lam_eq 73 74 (by rfl), n74]; rfl
theorem n72 : model.term 72 = t88 := by rw [model.lam_eq 72 73 (by rfl), n73]; rfl
theorem n71 : model.term 71 = t120 := model.var_eq 71 2 (by rfl)
theorem n70 : model.term 70 = t119 := by rw [model.lam_eq 70 71 (by rfl), n71]; rfl
theorem n69 : model.term 69 = t179 := model.var_eq 69 0 (by rfl)
theorem n68 : model.term 68 = t120 := model.var_eq 68 2 (by rfl)
theorem n67 : model.term 67 = t116 := by rw [model.app_eq 67 68 69 (by rfl), n68, n69]; rfl
theorem n66 : model.term 66 = t115 := by rw [model.app_eq 66 67 70 (by rfl), n67, n70]; rfl
theorem n65 : model.term 65 = t114 := by rw [model.lam_eq 65 66 (by rfl), n66]; rfl
theorem n64 : model.term 64 = t113 := by rw [model.lam_eq 64 65 (by rfl), n65]; rfl
theorem n63 : model.term 63 = t179 := model.var_eq 63 0 (by rfl)
theorem n62 : model.term 62 = t111 := by rw [model.app_eq 62 63 64 (by rfl), n63, n64]; rfl
theorem n61 : model.term 61 = t179 := model.var_eq 61 0 (by rfl)
theorem n60 : model.term 60 = t109 := by rw [model.app_eq 60 61 62 (by rfl), n61, n62]; rfl
theorem n59 : model.term 59 = t108 := by rw [model.lam_eq 59 60 (by rfl), n60]; rfl
theorem n58 : model.term 58 = t74 := by rw [model.app_eq 58 59 72 (by rfl), n59, n72]; rfl
theorem n57 : model.term 57 = t73 := by rw [model.app_eq 57 58 80 (by rfl), n58, n80]; rfl
theorem n56 : model.term 56 = t72 := by rw [model.app_eq 56 57 81 (by rfl), n57, n81]; rfl
theorem n55 : model.term 55 = t71 := by rw [model.lam_eq 55 56 (by rfl), n56]; rfl
theorem n54 : model.term 54 = t70 := by rw [model.lam_eq 54 55 (by rfl), n55]; rfl
theorem n53 : model.term 53 = t120 := model.var_eq 53 2 (by rfl)
theorem n52 : model.term 52 = t119 := by rw [model.lam_eq 52 53 (by rfl), n53]; rfl
theorem n51 : model.term 51 = t111 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 51) (by rfl)).trans (by rfl)
theorem n50 : model.term 50 = t179 := model.var_eq 50 0 (by rfl)
theorem n49 : model.term 49 = t109 := by rw [model.app_eq 49 50 51 (by rfl), n50, n51]; rfl
theorem n48 : model.term 48 = t90 := by rw [model.app_eq 48 49 52 (by rfl), n49, n52]; rfl
theorem n47 : model.term 47 = t89 := by rw [model.lam_eq 47 48 (by rfl), n48]; rfl
theorem n46 : model.term 46 = t88 := by rw [model.lam_eq 46 47 (by rfl), n47]; rfl
theorem n45 : model.term 45 = t120 := model.var_eq 45 2 (by rfl)
theorem n44 : model.term 44 = t119 := by rw [model.lam_eq 44 45 (by rfl), n45]; rfl
theorem n43 : model.term 43 = t179 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 43) (by rfl)).trans (by rfl)
theorem n42 : model.term 42 = t120 := model.var_eq 42 2 (by rfl)
theorem n41 : model.term 41 = t116 := by rw [model.app_eq 41 42 43 (by rfl), n42, n43]; rfl
theorem n40 : model.term 40 = t115 := by rw [model.app_eq 40 41 44 (by rfl), n41, n44]; rfl
theorem n39 : model.term 39 = t114 := by rw [model.lam_eq 39 40 (by rfl), n40]; rfl
theorem n38 : model.term 38 = t113 := by rw [model.lam_eq 38 39 (by rfl), n39]; rfl
theorem n37 : model.term 37 = t179 := model.var_eq 37 0 (by rfl)
theorem n36 : model.term 36 = t111 := by rw [model.app_eq 36 37 38 (by rfl), n37, n38]; rfl
theorem n35 : model.term 35 = t179 := model.var_eq 35 0 (by rfl)
theorem n34 : model.term 34 = t109 := by rw [model.app_eq 34 35 36 (by rfl), n35, n36]; rfl
theorem n33 : model.term 33 = t108 := by rw [model.lam_eq 33 34 (by rfl), n34]; rfl
theorem n32 : model.term 32 = t74 := by rw [model.app_eq 32 33 46 (by rfl), n33, n46]; rfl
theorem n31 : model.term 31 = t38 := by rw [model.app_eq 31 32 54 (by rfl), n32, n54]; rfl
theorem n30 : model.term 30 = t120 := model.var_eq 30 2 (by rfl)
theorem n29 : model.term 29 = t119 := by rw [model.lam_eq 29 30 (by rfl), n30]; rfl
theorem n28 : model.term 28 = t120 := model.var_eq 28 2 (by rfl)
theorem n27 : model.term 27 = t119 := by rw [model.lam_eq 27 28 (by rfl), n28]; rfl
theorem n26 : model.term 26 = t179 := model.var_eq 26 0 (by rfl)
theorem n25 : model.term 25 = t120 := model.var_eq 25 2 (by rfl)
theorem n24 : model.term 24 = t116 := by rw [model.app_eq 24 25 26 (by rfl), n25, n26]; rfl
theorem n23 : model.term 23 = t115 := by rw [model.app_eq 23 24 27 (by rfl), n24, n27]; rfl
theorem n22 : model.term 22 = t114 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t113 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t179 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t111 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t179 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t109 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t90 := by rw [model.app_eq 16 17 29 (by rfl), n17, n29]; rfl
theorem n15 : model.term 15 = t89 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t88 := by rw [model.lam_eq 14 15 (by rfl), n15]; rfl
theorem n13 : model.term 13 = t113 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 13) (by rfl)).trans (by rfl)
theorem n12 : model.term 12 = t179 := model.var_eq 12 0 (by rfl)
theorem n11 : model.term 11 = t111 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t179 := model.var_eq 10 0 (by rfl)
theorem n9 : model.term 9 = t109 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t108 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t74 := by rw [model.app_eq 7 8 14 (by rfl), n8, n14]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 31 (by rfl), n7, n31]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.app_eq 5 6 82 (by rfl), n6, n82]; rfl
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 86 (by rfl), n5, n86]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 87 (by rfl), n4, n87]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 88 (by rfl), n3, n88]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 89 (by rfl), n2, n89]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 90 (by rfl), n1, n90]; rfl
def d : Packed.Data := ⟨⟨7,0x3162c58b0e1c383060bf7efdfbd7af5db96ed54a74a84f9f3e7cf9f3e74e9d3a74c993264c972e5cb972a54a952a4c993264c891224488f1e3c68d1a2c58b12244870e1c2850a0c183020407ef9ebc76e9cb870e1bb66ad5a3464c993162c583060c183060bd7af5ebd72e5cb562a52a14284e992a4468912242850a04080f9f3e78e9c3668c982e58a942648911224080f1e3870c16284880e182840608080⟩,⟨6,0x2071862071881c6000000145145140001040335d34d33cb12844cf2ca1133cb2844cf2ca1133cbc2fbadb0c30c30caeaa575955d65575955d6557595a2799451451451430c30c30c9409230d00c24030900c208241042286082000001f38e38e38e78d34d34d34d00000000000001d45c49249249b45145161161161a640009249240000000000000⟩,⟨6,0x2492482481cd34d2481c62481c6345343676e6148f38a0994032a483cefae78df6d74cde65e9e7badb21a31c2faeadf6d7cefa2990b1c2fbadb1e65e4753123ceae1aa8a689d23ce7e2d33e399238a181f9d23ce48f39cd1551375b6a08dd7123ce9f36f469551361759551348f38109067649165edcfd4e34c2de02507210407296695e650282040⟩,⟨⟨8,0x9e99948f8a8784817e7b756f6965615d5c59565554534f4d4a454241403e39342f2c282422201c191816120e0d0c0b0a090503010000⟩,⟨3,0x2db6b6dbdb490b64989d64ab6b9128ca90924c488⟩,⟨6,0x1e7e9bc479faae0de7edc8279faf005e7ecc4079fb5e7ec79fade7ea79fa5e7e08e7a1e7e0926a1e7e08a5a1e7e091e7e08de7e089e5997576dc6175924d45524cb3512cd38f40b34e2ca28c79f8239de7e092679f82295e7e079faf02cd38f2cd59979fa6f49351279f79faae79fb7284920719e7ecc576d8685⟩⟩,⟨7,0x26763468d41a458b1603e9b366ce3674d15263a43467366ce58d95a648ce8ce5d66b529c7ed0b1b8b162bd7e733695ec55⟩,⟨5,0xc62f6ab077b569451273946518819083d6f701cd6898b00000500094a0e62808310001⟩,⟨6,0xaeaa5e74f168714330beed74cedb21c9555588e1167f10c30e08204196db6d85d75d14d34da69a9670a48f79b604a2481c62c048d⟩,⟨6,0xdf6d74cde65e9e796eb6c7997a1a289d23ce95e8607e748f3923ce65c48f3b45544d05544cf48e4592b530b78008d34d34d059040⟩,⟨⟨6,0x35d33cb1c2fbadb29a279a59238a181f79d71b69961759551349140f38d30b2481c61440c2040⟩,⟨2,0x15555755555555555555595555⟩,⟨6,0xd74cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x45890e14180fdf3d78edd3970ddb3568cd9315cb562b54a5425448501d3864c172c54a13244480f1c3460b14244070c142030404000⟩,⟨2,0x15555555555d557d775555555555554⟩,⟨7,0x22c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨8,0xc0bfbebdbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a09f9e9d9c999897969594939291908f8e8d8c8b8a898887868584838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5b5a595857565554535251504f4e4d4c4b4a49464544434241403d3c3b3a39383736333231302f2e2d2c2b2a292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨2,0x959555555555555555d55555555555555555555555555555d555555557555d555d5555555555555555555555555⟩,⟨8,0xb5b4b3a7a6b5b4b2a5b1b0afaeaeadacabaaa9a8a4a3a294a09f505e626160716f709896979c9b9a997473729d51908f8e8d8c8b8a898887868584828381807f7e7d191e17777675931f217c7b7a6e6d6c6b6a69676866656463795f785d5c5b5a59595958575655303252539239544f4e4d4c4b4b4b4a4a4a484746494445434241403f3e913a3d38373737363534333c313b2f2f2f2e2d2c2b2a292728260b2295209e251d1c1b1a241823a1161514131211100f0d0c0e0a090807060504030201⟩⟩⟩
end Certgen.R4786848030350
