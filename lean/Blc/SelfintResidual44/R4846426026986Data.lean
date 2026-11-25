import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846426026986
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 16,.lam 2,.app 3 4,.var 0,.app 5 15,.app 6 7,.var 0,.lam 8,.lam 9,.lam 10,.app 11 12,.var 1,.app 13 14,.var 3,.var 0,.var 0,.app 17 44,.app 18 22,.lam 19,.app 20 21,.var 0,.opaque,.lam 23,.lam 24,.lam 25,.app 26 27,.var 1,.app 28 43,.lam 29,.app 30 31,.var 0,.app 32 42,.app 33 34,.var 0,.lam 35,.lam 36,.lam 37,.app 38 39,.var 1,.app 40 41,.var 3,.var 0,.var 0,.var 0,.lam 45,.app 46 47,.var 0,.app 48 56,.app 49 50,.var 0,.lam 51,.lam 52,.lam 53,.app 54 55,.var 1,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438612071402 := by decide
def t69 : Term := .var 0
def t65 : Term := .var 1
def t67 : Term := .var 3
def t66 : Term := .app t67 t69
def t64 : Term := .app t65 t66
def t63 : Term := .lam t64
def t62 : Term := .lam t63
def t61 : Term := .lam t62
def t59 : Term := .app t69 t61
def t58 : Term := .app t59 t69
def t56 : Term := .app t69 t58
def t55 : Term := .lam t56
def t38 : Term := .app t55 t69
def t36 : Term := .app t65 t38
def t35 : Term := .lam t36
def t34 : Term := .lam t35
def t33 : Term := .lam t34
def t17 : Term := .app t55 t33
def t16 : Term := .app t17 t55
def t0 : Term := .app t55 t16
def terms : Array Term := #[t0,t55,t56,t69,t58,t59,t69,t61,t62,t63,t64,t65,t66,t67,t69,t69,t16,t17,t55,t56,t69,t58,t33,t34,t35,t36,t65,t38,t55,t56,t69,t58,t59,t69,t61,t62,t63,t64,t65,t66,t67,t69,t69,t69,t55,t56,t69,t58,t59,t69,t61,t62,t63,t64,t65,t66,t69]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n56 : model.term 56 = t69 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 56) (by rfl)).trans (by rfl)
theorem n55 : model.term 55 = t66 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 55) (by rfl)).trans (by rfl)
theorem n54 : model.term 54 = t65 := model.var_eq 54 1 (by rfl)
theorem n53 : model.term 53 = t64 := by rw [model.app_eq 53 54 55 (by rfl), n54, n55]; rfl
theorem n52 : model.term 52 = t63 := by rw [model.lam_eq 52 53 (by rfl), n53]; rfl
theorem n51 : model.term 51 = t62 := by rw [model.lam_eq 51 52 (by rfl), n52]; rfl
theorem n50 : model.term 50 = t61 := by rw [model.lam_eq 50 51 (by rfl), n51]; rfl
theorem n49 : model.term 49 = t69 := model.var_eq 49 0 (by rfl)
theorem n48 : model.term 48 = t59 := by rw [model.app_eq 48 49 50 (by rfl), n49, n50]; rfl
theorem n47 : model.term 47 = t58 := by rw [model.app_eq 47 48 56 (by rfl), n48, n56]; rfl
theorem n46 : model.term 46 = t69 := model.var_eq 46 0 (by rfl)
theorem n45 : model.term 45 = t56 := by rw [model.app_eq 45 46 47 (by rfl), n46, n47]; rfl
theorem n44 : model.term 44 = t55 := by rw [model.lam_eq 44 45 (by rfl), n45]; rfl
theorem n43 : model.term 43 = t69 := model.var_eq 43 0 (by rfl)
theorem n42 : model.term 42 = t69 := model.var_eq 42 0 (by rfl)
theorem n41 : model.term 41 = t69 := model.var_eq 41 0 (by rfl)
theorem n40 : model.term 40 = t67 := model.var_eq 40 3 (by rfl)
theorem n39 : model.term 39 = t66 := by rw [model.app_eq 39 40 41 (by rfl), n40, n41]; rfl
theorem n38 : model.term 38 = t65 := model.var_eq 38 1 (by rfl)
theorem n37 : model.term 37 = t64 := by rw [model.app_eq 37 38 39 (by rfl), n38, n39]; rfl
theorem n36 : model.term 36 = t63 := by rw [model.lam_eq 36 37 (by rfl), n37]; rfl
theorem n35 : model.term 35 = t62 := by rw [model.lam_eq 35 36 (by rfl), n36]; rfl
theorem n34 : model.term 34 = t61 := by rw [model.lam_eq 34 35 (by rfl), n35]; rfl
theorem n33 : model.term 33 = t69 := model.var_eq 33 0 (by rfl)
theorem n32 : model.term 32 = t59 := by rw [model.app_eq 32 33 34 (by rfl), n33, n34]; rfl
theorem n31 : model.term 31 = t58 := by rw [model.app_eq 31 32 42 (by rfl), n32, n42]; rfl
theorem n30 : model.term 30 = t69 := model.var_eq 30 0 (by rfl)
theorem n29 : model.term 29 = t56 := by rw [model.app_eq 29 30 31 (by rfl), n30, n31]; rfl
theorem n28 : model.term 28 = t55 := by rw [model.lam_eq 28 29 (by rfl), n29]; rfl
theorem n27 : model.term 27 = t38 := by rw [model.app_eq 27 28 43 (by rfl), n28, n43]; rfl
theorem n26 : model.term 26 = t65 := model.var_eq 26 1 (by rfl)
theorem n25 : model.term 25 = t36 := by rw [model.app_eq 25 26 27 (by rfl), n26, n27]; rfl
theorem n24 : model.term 24 = t35 := by rw [model.lam_eq 24 25 (by rfl), n25]; rfl
theorem n23 : model.term 23 = t34 := by rw [model.lam_eq 23 24 (by rfl), n24]; rfl
theorem n22 : model.term 22 = t33 := by rw [model.lam_eq 22 23 (by rfl), n23]; rfl
theorem n21 : model.term 21 = t58 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 21) (by rfl)).trans (by rfl)
theorem n20 : model.term 20 = t69 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t56 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t55 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 22 (by rfl), n18, n22]; rfl
theorem n16 : model.term 16 = t16 := by rw [model.app_eq 16 17 44 (by rfl), n17, n44]; rfl
theorem n15 : model.term 15 = t69 := model.var_eq 15 0 (by rfl)
theorem n14 : model.term 14 = t69 := model.var_eq 14 0 (by rfl)
theorem n13 : model.term 13 = t67 := model.var_eq 13 3 (by rfl)
theorem n12 : model.term 12 = t66 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t65 := model.var_eq 11 1 (by rfl)
theorem n10 : model.term 10 = t64 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t63 := by rw [model.lam_eq 9 10 (by rfl), n10]; rfl
theorem n8 : model.term 8 = t62 := by rw [model.lam_eq 8 9 (by rfl), n9]; rfl
theorem n7 : model.term 7 = t61 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t69 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t59 := by rw [model.app_eq 5 6 7 (by rfl), n6, n7]; rfl
theorem n4 : model.term 4 = t58 := by rw [model.app_eq 4 5 15 (by rfl), n5, n15]; rfl
theorem n3 : model.term 3 = t69 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t56 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t55 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 16 (by rfl), n1, n16]; rfl
def d : Packed.Data := ⟨⟨6,0xdb6d75d34cf3cf2cb2c71c30befbeebaebaebadb6db6db6db6cb2cb2cb2baebaebaebaebaebaebaaaaaaaaaa69a69a69a289e79a69a69659659659249249248e38e38a28618207df79e79e79e75d75d75d75d71c71c71c71c6db6db6db6db69a69a69a6596596596596186186186186175d75d75d65134d34d34d24924924914514514504104104104103cf3cf3cf38e38e38e34c2cb28a2492081c61440c2040⟩,⟨6,0x71b71baeaa69a163cf58f58f58f3da58f6585da58f3d96585c000000000d34d30b2892082082081451441041c71c61861c61c64911c64924511c69e69659248e38a21441441441441553944c415554e3944c434c30b2ca24834c30b2ca24834c2ca24834c2cb28a2488618618618618608208208000410410410400000000000000000000000000000000c30c30c30820820820824024027de75d0c30c30c3000⟩,⟨6,0xfbdd74923b6c083beef3beb90adb38df6d74cfe869a38cc0f585d65544f2ae79a5923cb1aea9e2cab9f2ae7cab9f2ae7cb1fbebeeb6cb6cb6c924e79a68a68ef6ef6965aeaa689249e69648e2e3cdfbdb5d3381f79d71b699e3cdfbdb5d33617595513fa1a68e3303dcb1c2baa789210a2481c615144a2481c61503ce34c2ca2481c6172c70aea9e2484cb1aea9e2cb1aea9e213d0c20a3ea1f379b0863480040⟩,⟨⟨8,0x928f8d8b857f79736e69676663605e5a5655545352514d49453e3733322e2b2825221f1c150e0a0605010000⟩,⟨3,0x6d2db6b516d48492649fc31b6dbfe4308⟩,⟨6,0x1871e65b7587196c20c93d04820c42904820c93d04420c42904420c93d008310a4020c202088082102061c79f65b75f6975956420c83820c63020c52c20c93d049408310a4125008229180831cd0832420c80831c20c60831420c408324f4114c20c429045308324f08310a0008218c1⟩⟩,⟨6,0xdf7befbefe0fcaf7df7e79cc9e731b6db6db6f8aaacaf7ebaebaebae9a478a27df10eb15590⟩,⟨5,0x39bd6717b0ed6ad26730a518358b5250f291ef7358b5250730ca42906200400⟩,⟨6,0x31c2956b618be8514baeb6c30b2a18608248c92175879e74d39a51aa49145040f38d79d71c6db6991420820820810410410430c30c30c30c311f880⟩,⟨6,0x35d3ae42b6cfa1a68e3303dfbe86db2db24929a24938f37ef6d74ce3e3cdf6ef5d33fa1a68e3303d00a2481c614a2481c6172c449ebab0892f428c0⟩,⟨⟨6,0x2baa9a279638a07de75c6da65859551349140f38d2ca2061440c2040⟩,⟨2,0x155a65555955559a555⟩,⟨6,0xaeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x13a6cc972a4478d1214180fdf3d76e5c376cd5a3364c172d58ad529509d325488d1214078e1b3464992224078e1a284870c142030404000⟩,⟨3,0x492512912494892492912492492492912712492ca249248⟩,⟨7,0x13a6cc972a4c88f1a2c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨8,0xf3f2f1f0efeeedecebeae8e6e5e4e3e2e1e0dfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcdcbcac9c7c5c3c2c0bebdbcbbbab9b8b7b6b5b4b3b2b1afadaba9a7a5a4a3a2a1a09f9e9d9c9b9a99989795939291908f8e8c8b89878584838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c4b4a4746444342413b3a393837363534333231302f2e2d2c2b2a292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a090706050403020100⟩,⟨3,0x1124924948924924924924924929129229124924924949248924924924948924a29224924924924924924924924924924924924924924924b289389249249249249249249249249249249249249449249⟩,⟨8,0x939210d5d4d3d2d1d1d0cdcfcecfce5e5cc9c8c7c6c65f5d5b5a5958c2c1c0c0bfbfbebdbcbbbab9b8b7b6b59b989a979996077d7c777604171615141312aeadaca7a5a3a19ea09d9f9ca19ea09d9f9caea69594cbcac4c3919190908f8e8d8c8b8a8989888887858486838281807f7eada47b7a7978acabaaa9a8a275747473737271706f6e6d6b6c6a69686766656364626160b4b3b2b1b0af57565555545453525151504f4e4d4c4b4a494841444645474342403f3e3d3c3b3a3939393939393837363534333231302f2e2d2c2c292a2a2b28272c2625232221201d1c1b1a19181e11ccc50f0e0d0c0b0a09082406051f030201⟩⟩⟩
end Certgen.R4846426026986
