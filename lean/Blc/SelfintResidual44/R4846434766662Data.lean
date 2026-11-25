import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434766662
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 15,.lam 2,.app 3 4,.var 0,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 14,.app 10 11,.var 1,.app 12 13,.var 2,.var 0,.opaque,.app 16 28,.lam 17,.app 18 19,.var 0,.app 20 21,.var 0,.lam 22,.lam 23,.app 24 27,.app 25 26,.var 1,.opaque,.opaque,.lam 29,.lam 30,.app 31 49,.app 32 33,.var 1,.app 34 48,.lam 35,.app 36 37,.var 0,.app 38 39,.var 0,.lam 40,.lam 41,.app 42 47,.app 43 44,.var 1,.app 45 46,.var 2,.var 0,.opaque,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620811078 := by decide
def t53 : Term := .var 0
def t55 : Term := .var 1
def t49 : Term := .var 2
def t54 : Term := .lam t55
def t48 : Term := .app t49 t53
def t46 : Term := .app t55 t48
def t45 : Term := .app t46 t54
def t44 : Term := .lam t45
def t43 : Term := .lam t44
def t41 : Term := .app t53 t43
def t39 : Term := .app t53 t41
def t38 : Term := .lam t39
def t37 : Term := .app t38 t53
def t35 : Term := .app t55 t37
def t34 : Term := .app t35 t54
def t33 : Term := .lam t34
def t32 : Term := .lam t33
def t16 : Term := .app t38 t32
def t0 : Term := .app t38 t16
def terms : Array Term := #[t0,t38,t39,t53,t41,t53,t43,t44,t45,t46,t55,t48,t49,t53,t54,t16,t38,t39,t53,t41,t53,t43,t44,t45,t46,t55,t48,t54,t32,t33,t34,t35,t55,t37,t38,t39,t53,t41,t53,t43,t44,t45,t46,t55,t48,t49,t53,t54,t53,t54]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n49 : model.term 49 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 49) (by rfl)).trans (by rfl)
theorem n48 : model.term 48 = t53 := model.var_eq 48 0 (by rfl)
theorem n47 : model.term 47 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 47) (by rfl)).trans (by rfl)
theorem n46 : model.term 46 = t53 := model.var_eq 46 0 (by rfl)
theorem n45 : model.term 45 = t49 := model.var_eq 45 2 (by rfl)
theorem n44 : model.term 44 = t48 := by rw [model.app_eq 44 45 46 (by rfl), n45, n46]; rfl
theorem n43 : model.term 43 = t55 := model.var_eq 43 1 (by rfl)
theorem n42 : model.term 42 = t46 := by rw [model.app_eq 42 43 44 (by rfl), n43, n44]; rfl
theorem n41 : model.term 41 = t45 := by rw [model.app_eq 41 42 47 (by rfl), n42, n47]; rfl
theorem n40 : model.term 40 = t44 := by rw [model.lam_eq 40 41 (by rfl), n41]; rfl
theorem n39 : model.term 39 = t43 := by rw [model.lam_eq 39 40 (by rfl), n40]; rfl
theorem n38 : model.term 38 = t53 := model.var_eq 38 0 (by rfl)
theorem n37 : model.term 37 = t41 := by rw [model.app_eq 37 38 39 (by rfl), n38, n39]; rfl
theorem n36 : model.term 36 = t53 := model.var_eq 36 0 (by rfl)
theorem n35 : model.term 35 = t39 := by rw [model.app_eq 35 36 37 (by rfl), n36, n37]; rfl
theorem n34 : model.term 34 = t38 := by rw [model.lam_eq 34 35 (by rfl), n35]; rfl
theorem n33 : model.term 33 = t37 := by rw [model.app_eq 33 34 48 (by rfl), n34, n48]; rfl
theorem n32 : model.term 32 = t55 := model.var_eq 32 1 (by rfl)
theorem n31 : model.term 31 = t35 := by rw [model.app_eq 31 32 33 (by rfl), n32, n33]; rfl
theorem n30 : model.term 30 = t34 := by rw [model.app_eq 30 31 49 (by rfl), n31, n49]; rfl
theorem n29 : model.term 29 = t33 := by rw [model.lam_eq 29 30 (by rfl), n30]; rfl
theorem n28 : model.term 28 = t32 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 27) (by rfl)).trans (by rfl)
theorem n26 : model.term 26 = t48 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 26) (by rfl)).trans (by rfl)
theorem n25 : model.term 25 = t55 := model.var_eq 25 1 (by rfl)
theorem n24 : model.term 24 = t46 := by rw [model.app_eq 24 25 26 (by rfl), n25, n26]; rfl
theorem n23 : model.term 23 = t45 := by rw [model.app_eq 23 24 27 (by rfl), n24, n27]; rfl
theorem n22 : model.term 22 = t44 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t43 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t53 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t41 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t53 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t39 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t38 := by rw [model.lam_eq 16 17 (by rfl), n17]; rfl
theorem n15 : model.term 15 = t16 := by rw [model.app_eq 15 16 28 (by rfl), n16, n28]; rfl
theorem n14 : model.term 14 = t54 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 14) (by rfl)).trans (by rfl)
theorem n13 : model.term 13 = t53 := model.var_eq 13 0 (by rfl)
theorem n12 : model.term 12 = t49 := model.var_eq 12 2 (by rfl)
theorem n11 : model.term 11 = t48 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t55 := model.var_eq 10 1 (by rfl)
theorem n9 : model.term 9 = t46 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t45 := by rw [model.app_eq 8 9 14 (by rfl), n9, n14]; rfl
theorem n7 : model.term 7 = t44 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t43 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t53 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t41 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t53 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t39 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t38 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 15 (by rfl), n1, n15]; rfl
def d : Packed.Data := ⟨⟨6,0x30c30c30c30c30c30c30c30c30c30c30c30c30c30baebaebaebaebaebaebaebaeb6db6db6db6db6db6db6cb2cb2cb2cb2cb2cb2caebaebaebaaaaaaaaaa69a69a69a69a69a69a69a69a69a68a28a28a28a28a28a28a28a28a28a28a289e79e79e79a69a69a69a69a69659659659659659249248e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e38e28a28a28a28a28a28a28a28a28a286186186186186186186186186186186186186186186186186186186186186186186186186186186186082081f7df7de79e79e79e79e79d75d75d75d75d75d75d75d75d75c71c7196175d75955145134d349145145145145145145145141041041040f3cf3cf3cf3cf3cf3cf3cf34d34d34d34d34d34d34d34d30c30c30c30c30c30c30b2cb2cb2cb2cb2cb2cb28a28a2492492082082082082082082071c71c71c71c71c71c71c71c71c71c71861861440c2040⟩,⟨5,0x294a504210842108421084210842942108842106318c7bdef739ce8421063def7b9ce74210831ef7bdce73ab0651eeac1947bab5ac2108418c652947bdef77bbce737bdef7bdef7bdef7bdef7b8b5ad6ae318b5ad6ad6b8c62d6b5ab5ae2d9ae318c6318c6318c6318c6316ce739ce739ce739ce739ce6b5ad6b5ad6b5ad6b5ad6b5a94a529414a5294a508421085294a5294a5294a5294a528294a5294a5294a5294a5294a1084210842108421084210a0a50a0a50a084294210846b5ace739ce739ce739ce7200001294a52c084210842108421084210842108420000000000000000000000000000c6318a5294842106318cc5294a42108318c66294a52108418c633148331483318c5294a5210841def7b5ad6b5ad6b5ad6b5ad6b58e739ce739c00⟩,⟨7,0x11a2c4777ef5db96ed59b15eb55a94e1c28301d397ef9eb87ef9eb87ef9eb87ef9eb87ef9eb8bf7aedcb76acd8af5aad4a6fdf3d713dfbe7ae1fbe7ae2951a13e74d992e549911f161c13dfbe7ae25c88f2e4477ef9eb8398e5519d36fdebb72ddab362bd6ab529c3850603acefdf3d7142345890e14180fdf3dcd9723f7cf5c519d35dba72e2fdebb72ddab362bd6ab529c3850603a397ef5db96ed59b15eb55a94e1c28301d5fbd76e5bb566c57ad56a53870a0c074ddb3568cd93160bd72d58ad529509d325bf7aedcb76acd8af5aad4a70e14180e8e5fbd76e5bb566c57ad56a53870a0c0757ef5db96ed59b15eb55a94e1c28301d2446890a03e78eb94078e80a4fdf3d7091121785c70d182c509101c305080c11a3260b1c3680f1d3e8cd1930911212cf0b8e1a3058a12203860a101822a5099222407bc2e3868c16284880e182840609fbe7ae1fbe7ae1fbe7ae1fbe7ae070d182c509101c305080c1527ef9eb87ef9eb87ef9eb8cf9b2e4c78b0e0c58704f7ef9eb87ef9eb8399b2e4bf7aedcb76acd8af5aad4a70e14180ea34588ede392e00080⟩,⟨⟨7,0x15e9cf972a4c78b0df396ccd82b4c84f192c509101e304860608000⟩,⟨3,0x12484a4ad6ddb5d6922db650⟩,⟨5,0x112d890ca8150c7950c7148110320c112d8dc86542843ac221912d2a18eb150c74ca863a45430a863ea43288921c860033a062c0c4c18904a8⟩⟩,⟨6,0xe38eb2cbefbefbe5c71c5a6cb2cb9e53aebaebacb2cbe794bb27970c30c0686184434d34d553c6170f⟩,⟨5,0x1483ad2b0a3dd352512914838c4d063dd07b98d6998b5a82941d4941cc520c4208400⟩,⟨6,0x5a6964861876db6db6d75d75d2082081f79e79e75d75dcdc5726dac71c70c30c3065966fbefbaebaeb638e361861851450e8a28a28a28a28a28a28a28a28a25ecb2cb2cb2cb2cb2cb2cb2cb2cb134d34d34d34d34d34d34d34d34d24924924924924924924924924914104104104104104104104104103cf3cf3cf3cf3cf3cf3cf3cf3cf34230bac30c3aa9a69a69a279e714514a1041041041041041041041010410410410410410410412482082071c71c6186180⟩,⟨7,0x31e2c383161c13dfbe7ae1fbe7ae0e3f7cf5c4f7ef9eb87ef9eb8992e549911f161c13dfbe7ae25c88f2e4477ef9eb8399b2e47ef9eb8a33a6b9bf7aedcb76acd8af5aad4a70e14180e8e5fbd76e5bb566c57ad56a53870a0c0757ef5db96ed59b15eb55a94e1c28301d5fb55a1dbbd66ac2bb62a417572bd38072fdaad0eddeb35615db1520bab95e9c0bf6ab43b77acd58576c5482eae57a70101f3c75ca03c740527ef9eb83680f1d4889080785c70d182c509101c305080c10e1a2428c101058706f0506045e93f7cf5c3f7cf5c3f7cf5c00⟩,⟨⟨6,0x248e285d69961759551349140f38b2861440c2040⟩,⟨3,0xc931924924924b309249⟩,⟨6,0x269648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0xf1f0efeeebe6e2e1e0dfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecbc6c3c0bcbbbab9b8b7b6b5b4b3b2b1b09e9d8b797574706c6b676662615d595854504f4b47464241403f3e3d3a393433302f2e2d2c1d1c191613120f0e0d0c0b0a0908070605040302010000⟩,⟨5,0x842119481084210842108421084210842328c6408421084210842190652204840902409081210242048108421184a1184210bc2318c2308421084210842108420⟩,⟨8,0xf1f0efeeedecebeae9e8e7e6e5e4e3e2e1e0dfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecdcccbcac9c8c7c6c5c4c3c2c1c0bfbebdbcbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a09f9e9d9c9b9a999897969594939291908f8e8d8c8b8a898887868584838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c4b4a494847464544434241403f3e3d3c3b3a393837363534333231302f2e2d2c2b2a292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩⟩,⟨⟨10,0x28ca2e8aa2686a0e809f67a9de749c66e9ae689966297e5c9665694e5293a4a91a428fa3a8da328be2c8a6268962488e228862087e1e8761c86e1a8661885e168561484e128461083e0e8360c82e0a8260881e068160480e02806007fdfe7f5fc7edfa7e5f87ddf67d5f47cdf27c5f07bdee7b5ec7adea7a5e879de6795e277dde775dc76dda765d875dd6755d474dd2745d073dce735cc72dca725c871dc66d1b36c9b16c1af6b9ad6b1ab6a9a96a1a7699a5691a3689a16819f6799d6719b66999661976599565193649916418f6398d6318b62989621876198561183609816017f5f97d5f17b5e9795e1775d9755d1735c9715c16f5b96d5b16b5a9695a167599655916057d5b55d56549515354c5214450d3f4ed3a4d9324c52d4b12b4a9294a1274992549123489214811f4791d4711b46919461174591545113449114410f4390d4310b4290942107419054110340901400ff3f8fd3f0fb3e8f93e0f73d8f53d0f33c8f13c0ef3b8ed3b0eb3a8e93a0e7398e5390e3388e1380df378dd370db368d9360d7358d5350d3348d1340cf300bf2f8bd2f0bb2e0b72d8b52d0b32c8b12c0af2b8ad2b0ab2a8a92a0a7298a5290a3288a12809d2689725893248912408f2388d2308b228892208721885210832007d1e8771cc6f1ac671986519063188611805f1785d1705b16859160571585515053148511404f1384d1304b12849120471184511043108411003f0f83d0f03b0e8390e0370d8350d0330c8310c02f0b82d0b02b0a8290a0270982509023088210801f0781d0701b06819060060140400c0200400⟩,⟨5,0x42108c6318c6318c6318c6318c61210842108418c630842108421084210842108421084210842108421084210842108421084210842108421084210842108c61084210842108421084210842108421904210842108421084210842108421084210842108421084210842108421084210842108421084210842108421084210842109024204812048409081210240842108421084210842108421084210842108421084210842108421084210842108421084210842108421084210842108421084210842108421085e10842118421084210842108421084210842108c6308c210842108421084210846318c8421021084210842108421084210842108421084210842108421084210842108421084210842108421084210842108421084210c82108421⟩,⟨9,0x90401c0cef6e329dcdb64bb5b4c8763658eeb6c319d4d762ba5acc47435586e76a309ccd360b95a4c0723457ee3682f9c4cf5eb859cbc7033576df662e9bccb5c810ba592a944b8582a140b6572993cb4562913b6fb3d7eaf6db2d76ab6bb1d6ea769b0d66a33595c8e672990cc64f1f97c963aad55aa54e8943a15079dcde672f95c9e471f8dc5e270f85a7d369749a3d1687419fcf677399b20502a5969fcfb1b8cc5e2b1388c3e1f0f86c361b0d86c2e170b84c26130783c1e0f0581c05feed75ba5e6f177bedf2f77abf5f6f97bbd5f6f97bbd5cee571b85bedd6cb5daad368b3d9acb64b1d8ac360afd7abb5cadd6ab358b6f4ba3d0e0f037fbeddeeb7351a853e9d4da652e9549a473f7bbcdc4f67b3d9ecf67b3d9ecf67b3d9ecf67b3d9ecf67b3c9dcee773b9dcee773b9dcee773b9dcee773b9dcee753a9d4ea753a9d4ea753a9d4ea753a9d4ea753a9ccd2612c9ace2672f95cde652e954a26d3196ca64f2690c76332292c8239189247e37178ac8e3d1a8b4521f0b83c42270e8541a250d84c160711864220902803fdfb0181401fefd81401fefd81401fefd7f3f1f6f97c3d9f4fb7cbe1ecfb7cbe1ecfb7cbe1ecf77abcde4f07a3d5e6f2783d5e6f2783d5e6f2783c50c8a42a1170b75b2d568b359acd64b158ac562b157ab95ab0562ad54a95429d54a95429d54a95429d4ca55228d44a15027d3c9d4e26d34994c25d2c956ea411e8f47a391a8c45a51269244a210e9141a0d068341a0d068341a0d068341a0d06803f9ecee7e3d1d8fa793aa08f8783a204de6d399c8e270371c8e270371c8e270370fc76371f0e86c3d1c8d478381a6df67afd5edb65aed56d763add4ed361acd455aab54a9d128742a09a8d26833998ca6431988c2602f9789a4c259289248239188a44219088357a3d1a8a33190c4602f178bc5c2e170b85c2d168b45a2c158a85227130944828138984a24138984a241188842200f8783a1c0d86832180b8582a14098482210078381a0c05828d8053580c0401⟩⟩⟩
end Certgen.R4846434766662
