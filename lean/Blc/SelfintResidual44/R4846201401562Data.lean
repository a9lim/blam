import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846201401562
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 81,.app 2 57,.lam 3,.app 4 37,.lam 5,.lam 6,.app 7 8,.var 1,.app 9 33,.lam 10,.lam 11,.app 12 13,.var 1,.app 14 29,.lam 15,.app 16 28,.app 17 18,.var 0,.lam 19,.lam 20,.app 21 22,.var 1,.app 23 24,.var 2,.lam 25,.app 26 27,.var 0,.var 1,.var 0,.lam 30,.app 31 32,.var 0,.var 1,.lam 34,.app 35 36,.var 0,.opaque,.app 38 53,.lam 39,.app 40 52,.app 41 42,.var 0,.lam 43,.lam 44,.app 45 46,.var 1,.app 47 48,.var 2,.lam 49,.app 50 51,.var 0,.var 1,.var 0,.lam 54,.app 55 56,.var 0,.var 1,.lam 58,.lam 59,.app 60 61,.var 1,.app 62 77,.lam 63,.app 64 76,.app 65 66,.var 0,.lam 67,.lam 68,.app 69 70,.var 1,.app 71 72,.var 2,.lam 73,.app 74 75,.var 0,.var 1,.var 0,.lam 78,.app 79 80,.var 0,.var 1,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1)))))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387445978 := by decide
def t95 : Term := .var 0
def t94 : Term := .var 1
def t90 : Term := .var 2
def t92 : Term := .app t95 t94
def t91 : Term := .lam t92
def t89 : Term := .app t90 t91
def t87 : Term := .app t94 t89
def t86 : Term := .lam t87
def t85 : Term := .lam t86
def t83 : Term := .app t95 t85
def t82 : Term := .app t83 t95
def t81 : Term := .lam t82
def t61 : Term := .app t81 t91
def t59 : Term := .app t94 t61
def t58 : Term := .lam t59
def t57 : Term := .lam t58
def t8 : Term := .app t57 t91
def t6 : Term := .app t94 t8
def t5 : Term := .lam t6
def t4 : Term := .lam t5
def t3 : Term := .app t4 t61
def t2 : Term := .lam t3
def t1 : Term := .app t2 t57
def t0 : Term := .app t1 t81
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t6,t94,t8,t57,t58,t59,t94,t61,t81,t82,t83,t95,t85,t86,t87,t94,t89,t90,t91,t92,t95,t94,t95,t91,t92,t95,t94,t91,t92,t95,t94,t61,t81,t82,t83,t95,t85,t86,t87,t94,t89,t90,t91,t92,t95,t94,t95,t91,t92,t95,t94,t57,t58,t59,t94,t61,t81,t82,t83,t95,t85,t86,t87,t94,t89,t90,t91,t92,t95,t94,t95,t91,t92,t95,t94,t81]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n81 : model.term 81 = t81 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 81) (by rfl)).trans (by rfl)
theorem n80 : model.term 80 = t94 := model.var_eq 80 1 (by rfl)
theorem n79 : model.term 79 = t95 := model.var_eq 79 0 (by rfl)
theorem n78 : model.term 78 = t92 := by rw [model.app_eq 78 79 80 (by rfl), n79, n80]; rfl
theorem n77 : model.term 77 = t91 := by rw [model.lam_eq 77 78 (by rfl), n78]; rfl
theorem n76 : model.term 76 = t95 := model.var_eq 76 0 (by rfl)
theorem n75 : model.term 75 = t94 := model.var_eq 75 1 (by rfl)
theorem n74 : model.term 74 = t95 := model.var_eq 74 0 (by rfl)
theorem n73 : model.term 73 = t92 := by rw [model.app_eq 73 74 75 (by rfl), n74, n75]; rfl
theorem n72 : model.term 72 = t91 := by rw [model.lam_eq 72 73 (by rfl), n73]; rfl
theorem n71 : model.term 71 = t90 := model.var_eq 71 2 (by rfl)
theorem n70 : model.term 70 = t89 := by rw [model.app_eq 70 71 72 (by rfl), n71, n72]; rfl
theorem n69 : model.term 69 = t94 := model.var_eq 69 1 (by rfl)
theorem n68 : model.term 68 = t87 := by rw [model.app_eq 68 69 70 (by rfl), n69, n70]; rfl
theorem n67 : model.term 67 = t86 := by rw [model.lam_eq 67 68 (by rfl), n68]; rfl
theorem n66 : model.term 66 = t85 := by rw [model.lam_eq 66 67 (by rfl), n67]; rfl
theorem n65 : model.term 65 = t95 := model.var_eq 65 0 (by rfl)
theorem n64 : model.term 64 = t83 := by rw [model.app_eq 64 65 66 (by rfl), n65, n66]; rfl
theorem n63 : model.term 63 = t82 := by rw [model.app_eq 63 64 76 (by rfl), n64, n76]; rfl
theorem n62 : model.term 62 = t81 := by rw [model.lam_eq 62 63 (by rfl), n63]; rfl
theorem n61 : model.term 61 = t61 := by rw [model.app_eq 61 62 77 (by rfl), n62, n77]; rfl
theorem n60 : model.term 60 = t94 := model.var_eq 60 1 (by rfl)
theorem n59 : model.term 59 = t59 := by rw [model.app_eq 59 60 61 (by rfl), n60, n61]; rfl
theorem n58 : model.term 58 = t58 := by rw [model.lam_eq 58 59 (by rfl), n59]; rfl
theorem n57 : model.term 57 = t57 := by rw [model.lam_eq 57 58 (by rfl), n58]; rfl
theorem n56 : model.term 56 = t94 := model.var_eq 56 1 (by rfl)
theorem n55 : model.term 55 = t95 := model.var_eq 55 0 (by rfl)
theorem n54 : model.term 54 = t92 := by rw [model.app_eq 54 55 56 (by rfl), n55, n56]; rfl
theorem n53 : model.term 53 = t91 := by rw [model.lam_eq 53 54 (by rfl), n54]; rfl
theorem n52 : model.term 52 = t95 := model.var_eq 52 0 (by rfl)
theorem n51 : model.term 51 = t94 := model.var_eq 51 1 (by rfl)
theorem n50 : model.term 50 = t95 := model.var_eq 50 0 (by rfl)
theorem n49 : model.term 49 = t92 := by rw [model.app_eq 49 50 51 (by rfl), n50, n51]; rfl
theorem n48 : model.term 48 = t91 := by rw [model.lam_eq 48 49 (by rfl), n49]; rfl
theorem n47 : model.term 47 = t90 := model.var_eq 47 2 (by rfl)
theorem n46 : model.term 46 = t89 := by rw [model.app_eq 46 47 48 (by rfl), n47, n48]; rfl
theorem n45 : model.term 45 = t94 := model.var_eq 45 1 (by rfl)
theorem n44 : model.term 44 = t87 := by rw [model.app_eq 44 45 46 (by rfl), n45, n46]; rfl
theorem n43 : model.term 43 = t86 := by rw [model.lam_eq 43 44 (by rfl), n44]; rfl
theorem n42 : model.term 42 = t85 := by rw [model.lam_eq 42 43 (by rfl), n43]; rfl
theorem n41 : model.term 41 = t95 := model.var_eq 41 0 (by rfl)
theorem n40 : model.term 40 = t83 := by rw [model.app_eq 40 41 42 (by rfl), n41, n42]; rfl
theorem n39 : model.term 39 = t82 := by rw [model.app_eq 39 40 52 (by rfl), n40, n52]; rfl
theorem n38 : model.term 38 = t81 := by rw [model.lam_eq 38 39 (by rfl), n39]; rfl
theorem n37 : model.term 37 = t61 := by rw [model.app_eq 37 38 53 (by rfl), n38, n53]; rfl
theorem n36 : model.term 36 = t94 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 36) (by rfl)).trans (by rfl)
theorem n35 : model.term 35 = t95 := model.var_eq 35 0 (by rfl)
theorem n34 : model.term 34 = t92 := by rw [model.app_eq 34 35 36 (by rfl), n35, n36]; rfl
theorem n33 : model.term 33 = t91 := by rw [model.lam_eq 33 34 (by rfl), n34]; rfl
theorem n32 : model.term 32 = t94 := model.var_eq 32 1 (by rfl)
theorem n31 : model.term 31 = t95 := model.var_eq 31 0 (by rfl)
theorem n30 : model.term 30 = t92 := by rw [model.app_eq 30 31 32 (by rfl), n31, n32]; rfl
theorem n29 : model.term 29 = t91 := by rw [model.lam_eq 29 30 (by rfl), n30]; rfl
theorem n28 : model.term 28 = t95 := model.var_eq 28 0 (by rfl)
theorem n27 : model.term 27 = t94 := model.var_eq 27 1 (by rfl)
theorem n26 : model.term 26 = t95 := model.var_eq 26 0 (by rfl)
theorem n25 : model.term 25 = t92 := by rw [model.app_eq 25 26 27 (by rfl), n26, n27]; rfl
theorem n24 : model.term 24 = t91 := by rw [model.lam_eq 24 25 (by rfl), n25]; rfl
theorem n23 : model.term 23 = t90 := model.var_eq 23 2 (by rfl)
theorem n22 : model.term 22 = t89 := by rw [model.app_eq 22 23 24 (by rfl), n23, n24]; rfl
theorem n21 : model.term 21 = t94 := model.var_eq 21 1 (by rfl)
theorem n20 : model.term 20 = t87 := by rw [model.app_eq 20 21 22 (by rfl), n21, n22]; rfl
theorem n19 : model.term 19 = t86 := by rw [model.lam_eq 19 20 (by rfl), n20]; rfl
theorem n18 : model.term 18 = t85 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t95 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t83 := by rw [model.app_eq 16 17 18 (by rfl), n17, n18]; rfl
theorem n15 : model.term 15 = t82 := by rw [model.app_eq 15 16 28 (by rfl), n16, n28]; rfl
theorem n14 : model.term 14 = t81 := by rw [model.lam_eq 14 15 (by rfl), n15]; rfl
theorem n13 : model.term 13 = t61 := by rw [model.app_eq 13 14 29 (by rfl), n14, n29]; rfl
theorem n12 : model.term 12 = t94 := model.var_eq 12 1 (by rfl)
theorem n11 : model.term 11 = t59 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t58 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t57 := by rw [model.lam_eq 9 10 (by rfl), n10]; rfl
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 33 (by rfl), n9, n33]; rfl
theorem n7 : model.term 7 = t94 := model.var_eq 7 1 (by rfl)
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t4 := by rw [model.lam_eq 4 5 (by rfl), n5]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 37 (by rfl), n4, n37]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 57 (by rfl), n2, n57]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 81 (by rfl), n1, n81]; rfl
def d : Packed.Data := ⟨⟨7,0x142850a142850a142850a14284f9f3e7cf9f3e7ce9d3a74e9d3a74e9d3a74e9d3a74e9d3a74e9d366cd9b366cd9b366cd9b366cd9b366cd9b366cd9b3264c993264c993264c992e5cb972e5cb972e5cb972a54993264c993264c993264c891224478f1e3c68d1a3468d1a3468d1a3458b12244891224489122448912244890e1c3870a14285060c080fdfbf7efdfbf7ef9f3e7cf5ebd7af5ebd7af1e3b76e9d3972e1c376eddb366cd5ab568cd93160bd72d58ad529509d325468912244891224489122448912244850a14081020408102040810204081020408102040810204081020408102040810203e7cf9f3e7cf9f3e78f1e3c78f1e3c78f1e3c78f1e3c78f1e3c78e9d3a74e9d3a74e9d3a74e9d3a74e9d3a74e9d3a74e1c3870e1c366cd9b366cd1a3464c993264c983060c183060c182e5cb962c58b162c54a952850a13264c993264c993244891224489122444891204080f1e3c70e1c3468d183060b162c58b162c58b162c58b162c58a142850a1428489122040810204080e182840608080⟩,⟨6,0x279e69a38e28986185d75e79a38985eeb679e79e79e69a69a69a38e28986175eeb6082082082082082081e79e79e79e79e79e7a59659659649249249071c71c71c61861861871871c71c71c6186186185144105144105145145144104104105105145145145144104104104138e37de59649259259259659659659208207a08208208207a07a07b6d4001c6ac71ab1c6996596df7df75d75d7746db6db659aebaebaebaebaebaebaebaebae18610c30c30c30820820820410410414d34d249245144d34d30c30b2cb0c205349134c2c30c20810534d249144d34d30c30b2cb28a28a28a28a2492492492492082082082084103cf38eaaaa69a28aa9a2aaa9a68a16596555554514595516595554516554595533cf3cb2cb1c7141040f3cf38e3903ce40f3903ce28920a24828920a28a28a289249249249248230c30c30c30861861861861861861bd9640000⟩,⟨7,0xf9ebe7ae1bb86e8501f4280fc68b121c28301f972c548901e5cb1522407b466d19c07f01fa244f1dba72d9a972c548901ef1dba72d9a972c548901e5cb1522407972c548901e5cb1522407972c548901ef9e972c548901e5cb1522407c68b1a2bc76e9c972c548901e5cb1522407b86ef9eb86ead0a03ef9eb86ead0a03ed19b467121c486d9ab466f9eb86e8501f56c98b05ef9eb86e8501f56b560000b57284ca132b54a402d48b13a558b142d549d6a65c914a548b91ae4501fbe7ae1bab4280f972c548901e142032e58a91203cb962a4480f2e58a91203cb962a5cb152e58a91203c8901e4480f4280f9e3a70d9a3301fc07f01fc07f01fc07e2c509162848b1426141284c90e1a32141284c90e1a32141284c90e1a32141850614185061418504b962b01fc07f01f9e3a70f1d3878e9c284c9407f01fc07e4480f448910b142458a122c5093668c9b3464d9a323868c16284a244884070c891220a101972c548901ef9eb86ead0a03f01fbe7ae1ba1407e4c88ef9eb86e8501f5c000980208080⟩,⟨⟨8,0xfffbfaf9f6efe8e1dddbd8d5d3cfc6bdb4b1aeaba8a5a29f9d989692908e8c8b88857d756d67615b554f49433d37322d28221c17120c060000⟩,⟨4,0x441137774233249993333333252422213388866666666655566556660⟩,⟨6,0x156196965d969654630e18d4610831063518410c418d46100310635184635561d5977465063512c63518420c414718d4610431051c63518400c41475588165e05586565d95587d65df18d45560630e3d059718c38f19318c19219561e5977863518420c41463518410c41463518400c41463518422463518412463518402463518420c63518410c63518400c635184220635184120635184020635184218d46104635184055865a6dc59765a6dc55865a6d65d969b18d46108a18d46104a18d46100a⟩⟩,⟨7,0x14283848864488508d9b3658b16a14264ca1426cd10f59ae7ac155170d1c256a3468da140c18304891240810393870e204080e9d3b2e5c68c81020⟩,⟨6,0x2eb6cae1144964aa9a165549e69648e281e8607dd79d6c071b69964a2486175955103ce4d244040f38d30b289207185103081⟩,⟨7,0xf9f3e7cf9f3e66cd9b366cd93264c99325ebd72e366cd1a85043060c183060a142850a15ebd7af5ebd78f1e3c78f020408102040810183060c183060ddba62c58b162c58b05ab56ad5ab56ac56a93c046854a6509511f7efdfbf7efdfbf7efdfbf7efdfbf040808100009932448891183060b162c50a1481cb970e1bb73264c182e5db356858a941e38689101cf1e3c78f1e3a74e9d3a74e9d3870824⟩,⟨7,0xf9eb86e8501f2e58a91203cb962a4480f68cda3380fe03f4488b962a4480f2e58a91203cb962a4480f2e58a91203df3d70dd5a1407df3d70dd5a1407da337cf5c374280fab7cf5c374280fab00000005a916ad5c9172e80fdf3d70dd5a1407cb962a4480f80fe03f80fe03f80fe03f162848b142458a120603f80fe03f80fe03f80fd122442c50944891224488b962a4480f7cf5c37568501f80fc080⟩,⟨⟨6,0xfbceb7d32c2eb2baa9a279a59238a181f71a5d445034a1c50c0⟩,⟨2,0x6bea9555555efdfeb⟩,⟨6,0x3ef7cefae78df6d74cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0xb1afaca6a09e9c9a989796908a8784817e766e6d6c656462605d5c5b5a59585756555453525150403e3c3a383634312e2b2a28262422201e1d1c1b1a19181716151413120c0402010000⟩,⟨5,0x42198c210841098c318c6840427088430842108421084210c0421084218c6110842108210842108421084c810420⟩,⟨8,0xb2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a09f9e9d9c9b9a999897969594939291908f8e8d8c8b8a898887868584838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c4b4a494847464544434241403f3e3d3c3b3a393837363534333231302f2e2d2c2b2a292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩⟩,⟨⟨10,0x2edbb2ebbaae9ba2e7b9ae5b92e3b8ae1b82deb72dab62d5b4acfb32cbb2ac9b22c7b1ac5b12c3b0ac1b02bfafabdaf2bbaeab9ae2b7adab3ac2adaaaa9aa2a6a92a2a86a0a7e9ca6696a4e92a468fa368ba2a89a2286a1282a027e9f27a9e2769d2729c26e9b26a9a266992629825e9725a962569525394a519424f93a4d9324b92a49922428f2368c22e8b22a8a22789a258922388a218821f87a1d8721a8621785a158521384a118420f83a0d8320b82a0982201801f97e1f67d1f27c1ee7b1eb7a9e97a1e7799e5791e3789e0779db769d9761d7759d5751d3749d1741cf739cd731cb729c9721c7719c5711c3709c1701bf6f9bd6f1bb6e9b96e1b76d9b56d1b36c9b16c1af6b1ab6a9a96a1a7699a5691a3689a16819f6799d671966398c6298861984609805f97c5e9785d9745c56e5ad68595625815e5715a5615654d505354b52547515435053e4ed384d9344c92f4b129499234811f4791d4711b46919461174591545113449114410f4390d4310b4250741503405003fcfe3f0fa3e0f63d0f33c8f13bced3ace939ce6394e4384de36cd8354d233ccc324c630cc02f4ba2dcb62d4b42ccb22c4af2b4ab2a4a7294a32849f270992589525093248912408d228872188521083208812007f1f87d1f07b1e0751c86f1b069198631805d168571585515053148511404f1384d1304b12849120471184511043108411003f0f83d0f03b0e8390e0320b0240701a060160501203c0e0340c02c0a0240801c060140400c0200400⟩,⟨4,0x11111111111111222233331111111111111111111111333311222111333311222111222222222222222222222222221111111111116666222211111111111122111111111111111171712222221111111111223111111111111111111111111111111111111111111113111111111111111168222222222222233333322222233322222233322233333311111111111111111111122222111222221112222211133333333333333311111122222222233311111133311111111111133333333333311111111111111111111111111111116688222223111111111111111⟩,⟨9,0x1c0d89444180b8843c14090443a1b0ca853a9f4d934924b23399c4de72381b8b0562a15caa53d66b359acd66b357abd5eaf57abd56ab53a9d46a34fa7d369749a3d1687419fd268f45a1d067f3197ca64f2993ca64f2190c867b3b9ccde6b339ecee73379acce5b2b92c8e4b2392c8e3f1f8fc45f30f7bc35eb0b79c25e30777c45f30f7bc35eb0b79c25e30777bb5c2eb6fba5bae76db95b2e36bbb5c2eb6fba5bae76db95b2e36bdd6e373b7af57abd5eaf57abb5daed76bb5dae56eb559ac55eb95bad566b157ab556a953a9546ad55aa54ea551c760b1b81c6603177fa6532994ba5d2e954aa55269349db6d36bb39e4f2793c9e4f2793c9dcee773b9dcee773b9d4e671379acd26736994c6612f96cb2572e954a655299449e5127c55fb137d9148641209048241209047e3d1d8e46e35198c45e2d168ac5629148a44de2f6854260f0883416090385bcddb007fbf9fafc7dbe9ef027abd1f2f280bc1deee7c3b1d6ea748b85a2c73b9dcee773b9dcee773b9dcee773b9dcee76e36db4d96c35dc8e371385c0df6f375cce5b5592d363b458acf61b3582cb5fa450a8f41a35028b3fa24fa873d69b358ed266319a2cb62b4194c467b2586ce6430ad564b4d8ed162a450a8f41a3501a6cd63b4998c668b2d8b67b0d9ac165afd167f449f50e7ad0653119ec961b3990c2d96bf63aed86b4c8612f18cc05d3117cb843200f4843f1e1047c3b57abd5cae56ab558ac55aad54aa54aa552a8542a14ea753a994aa652a813ea04fa813e9a4ca6148a35228d3c9d4f2753c9d4ba592aa250a89429c4da71369c4da51269248a25029044201228940a41108048a25029044200f2773a9e0ec743c9dcea783b1d0f2773a9e0ec7460af976c05eae97ebc5c9b4da6c361acd66a349a8d26a349a0ce68339a0ce6632998ca6632a3d0e7f47218fc8d429f4b65b2d168b2595c2d564b75a2c56cb358148a2502793c9e4e271389a4d26930964a2612c944c259289248239249047249208e46229108c45221188a4446210f88b419ed14823d0e872381b8d86a34198c8623017b59aad4158ac562b158ac542a150a8542a150a852291409c4c251208c502713094482311084401f0f074381b11084401f0f074381b0d06434190d06430170b05428130904422100803c1e0f7401c0c050200c0401⟩⟩⟩
end Certgen.R4846201401562
