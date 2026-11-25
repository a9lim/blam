import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4786842212122
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 35,.app 2 14,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.app 8 9,.var 2,.app 10 13,.app 11 12,.var 1,.opaque,.var 0,.lam 15,.lam 16,.app 17 29,.lam 18,.app 19 20,.var 0,.lam 21,.lam 22,.app 23 24,.var 2,.app 25 28,.app 26 27,.var 1,.opaque,.var 0,.app 30 34,.app 31 32,.var 1,.lam 33,.var 1,.var 0,.lam 36,.app 37 38,.var 0,.lam 39,.lam 40,.app 41 42,.var 2,.app 43 47,.app 44 45,.var 1,.lam 46,.var 1,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22379028256538 := by decide
def t49 : Term := .var 0
def t48 : Term := .var 1
def t43 : Term := .var 2
def t47 : Term := .lam t48
def t45 : Term := .app t48 t47
def t44 : Term := .app t45 t49
def t42 : Term := .app t43 t44
def t41 : Term := .lam t42
def t40 : Term := .lam t41
def t38 : Term := .app t49 t40
def t37 : Term := .lam t38
def t17 : Term := .app t37 t44
def t16 : Term := .lam t17
def t15 : Term := .lam t16
def t1 : Term := .app t37 t15
def t0 : Term := .app t1 t37
def terms : Array Term := #[t0,t1,t37,t38,t49,t40,t41,t42,t43,t44,t45,t48,t47,t49,t15,t16,t17,t37,t38,t49,t40,t41,t42,t43,t44,t45,t48,t47,t49,t44,t45,t48,t47,t48,t49,t37,t38,t49,t40,t41,t42,t43,t44,t45,t48,t47,t48,t49]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n47 : model.term 47 = t49 := model.var_eq 47 0 (by rfl)
theorem n46 : model.term 46 = t48 := model.var_eq 46 1 (by rfl)
theorem n45 : model.term 45 = t47 := by rw [model.lam_eq 45 46 (by rfl), n46]; rfl
theorem n44 : model.term 44 = t48 := model.var_eq 44 1 (by rfl)
theorem n43 : model.term 43 = t45 := by rw [model.app_eq 43 44 45 (by rfl), n44, n45]; rfl
theorem n42 : model.term 42 = t44 := by rw [model.app_eq 42 43 47 (by rfl), n43, n47]; rfl
theorem n41 : model.term 41 = t43 := model.var_eq 41 2 (by rfl)
theorem n40 : model.term 40 = t42 := by rw [model.app_eq 40 41 42 (by rfl), n41, n42]; rfl
theorem n39 : model.term 39 = t41 := by rw [model.lam_eq 39 40 (by rfl), n40]; rfl
theorem n38 : model.term 38 = t40 := by rw [model.lam_eq 38 39 (by rfl), n39]; rfl
theorem n37 : model.term 37 = t49 := model.var_eq 37 0 (by rfl)
theorem n36 : model.term 36 = t38 := by rw [model.app_eq 36 37 38 (by rfl), n37, n38]; rfl
theorem n35 : model.term 35 = t37 := by rw [model.lam_eq 35 36 (by rfl), n36]; rfl
theorem n34 : model.term 34 = t49 := model.var_eq 34 0 (by rfl)
theorem n33 : model.term 33 = t48 := model.var_eq 33 1 (by rfl)
theorem n32 : model.term 32 = t47 := by rw [model.lam_eq 32 33 (by rfl), n33]; rfl
theorem n31 : model.term 31 = t48 := model.var_eq 31 1 (by rfl)
theorem n30 : model.term 30 = t45 := by rw [model.app_eq 30 31 32 (by rfl), n31, n32]; rfl
theorem n29 : model.term 29 = t44 := by rw [model.app_eq 29 30 34 (by rfl), n30, n34]; rfl
theorem n28 : model.term 28 = t49 := model.var_eq 28 0 (by rfl)
theorem n27 : model.term 27 = t47 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 27) (by rfl)).trans (by rfl)
theorem n26 : model.term 26 = t48 := model.var_eq 26 1 (by rfl)
theorem n25 : model.term 25 = t45 := by rw [model.app_eq 25 26 27 (by rfl), n26, n27]; rfl
theorem n24 : model.term 24 = t44 := by rw [model.app_eq 24 25 28 (by rfl), n25, n28]; rfl
theorem n23 : model.term 23 = t43 := model.var_eq 23 2 (by rfl)
theorem n22 : model.term 22 = t42 := by rw [model.app_eq 22 23 24 (by rfl), n23, n24]; rfl
theorem n21 : model.term 21 = t41 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t40 := by rw [model.lam_eq 20 21 (by rfl), n21]; rfl
theorem n19 : model.term 19 = t49 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t38 := by rw [model.app_eq 18 19 20 (by rfl), n19, n20]; rfl
theorem n17 : model.term 17 = t37 := by rw [model.lam_eq 17 18 (by rfl), n18]; rfl
theorem n16 : model.term 16 = t17 := by rw [model.app_eq 16 17 29 (by rfl), n17, n29]; rfl
theorem n15 : model.term 15 = t16 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t15 := by rw [model.lam_eq 14 15 (by rfl), n15]; rfl
theorem n13 : model.term 13 = t49 := model.var_eq 13 0 (by rfl)
theorem n12 : model.term 12 = t47 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 12) (by rfl)).trans (by rfl)
theorem n11 : model.term 11 = t48 := model.var_eq 11 1 (by rfl)
theorem n10 : model.term 10 = t45 := by rw [model.app_eq 10 11 12 (by rfl), n11, n12]; rfl
theorem n9 : model.term 9 = t44 := by rw [model.app_eq 9 10 13 (by rfl), n10, n13]; rfl
theorem n8 : model.term 8 = t43 := model.var_eq 8 2 (by rfl)
theorem n7 : model.term 7 = t42 := by rw [model.app_eq 7 8 9 (by rfl), n8, n9]; rfl
theorem n6 : model.term 6 = t41 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t40 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t49 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t38 := by rw [model.app_eq 3 4 5 (by rfl), n4, n5]; rfl
theorem n2 : model.term 2 = t37 := by rw [model.lam_eq 2 3 (by rfl), n3]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 14 (by rfl), n2, n14]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 35 (by rfl), n1, n35]; rfl
def d : Packed.Data := ⟨⟨6,0xbefbefbefbaebaebaebaebaebaebaebaebaeb6db6db6db6db6db6db2cb2cb2cb2cb2cb2cb2cb2caebaebaebaebaebaebaebaebaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa9a69a69a69a69a28a28a28a28a28a28a28a28a28a289e79e79e79e79e79e79e79e79e79e69a69a69a69a69a69a69a59659659249249249249249249248e38e38e38e38a28a28a28618618618618208208207df7df7de79e79e75d75d75c71c71a6996586186186175d65955555145134d349249245145041040f3cf3ce38d34d34d34b2ca2892481c71c61861451440c2040⟩,⟨6,0x2cb28a249befbaeb6caebaeaaaaa69a689e62cb28a2493cf38e49150c30b2893cf3cf38e38e49150c30b2893cf3cf38e38e49151450c30c2ca24f3cf3ce38e39249245145430b2893ce49151450c30c30b2cb28a28924f3924919659249249249248e38e38a286184d3534d34d041041041040d6174d034d6186186185d74d341000000000000018618618682081f7df79e2081c71862071861881c618620718618514410510510514510410510511d75c0c30d654359654320718820719b6db680002082082082082082082082099659041041040000⟩,⟨7,0x24c893224c86cd5b356ede4c81d2640e932070e1c35b906e41b8f8d163458f1e3c68b121c28301fbe7af1dba9321bb66ad19b262c17ae5ab15aa72e24c81d121c23e7cf29509cea9509cec9903a4c81c9d325488d12152a24c81ca54273ad19b293207162a58ab466c9cb862c17ae5ab15aa52a139d366a2438498e4990386c180fdf3d78edd203e78e9c366a4c868cd90e2c54b15366a64b4a911a242812a446890a0890e144870a64b6cd5b35080cd9a3260b962a50992142460b1126449904078e1b121c2890e10c167cf3466ca24384284883e780000e1829f3c0000c16200ca22952234485004073259b352860b10509923260b910208080⟩,⟨⟨8,0x807c7874706c6864605c5a585654524f4c494541403f3d3c3b383532312e2b2a272423201d1a171513110c0704010000⟩,⟨3,0x9249249124936e42512db2d96cb6da4ad6c8⟩,⟨6,0x4d56a24d56624142a24142624d67614d67214d66e14d67604d67204d66e04183d74d64d54140443810ce0023400852800852410088d244110704319061f41050a41424f4d56935594cf5de4d675359c4d66c11010c008008528c0021492c0085223908⟩⟩,⟨6,0x9a68a25148a0b6dbdb6efbefbeaaaa9a082db6db6a99c70daaaaaaaa6bccbefbedb6d39d75d618523245⟩,⟨5,0xc5d07b54c6a328524a2f74a349a0f28bdcc814825a92f735825a92b52408398a418041⟩,⟨6,0x1860104181fbeeb8c2ca79e79e75d75daaaaa9a69b6db514513ce368a28a279e79e69a592491c71c7175d75965955544d24b7df7df7df6da38db6e2870c30d74c71c40b2b69a699659144cf3c832081c6410242⟩,⟨7,0x6cd0c1621cb86ed9ab466c98b05eb96ac56aa4c81d2640e93207448708f9f3ca54273aa54273ad19b29320729509ceb466ca4c81c58a962a6cd4990d19b21c58a962a6cd162a50992142460b100470d890e1448708f9e3e780003e78000992c080⟩,⟨⟨6,0x31c2eb6ba679648e285f75c6d961655349140e34b2892071840c2040⟩,⟨2,0x166a956966656655655⟩,⟨6,0xc70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x6edbab4e8cf9b2e4c78b0e0bf7aedcb76abd4a33e74d992e549911e345890e0c07ae5b3362c17ad4e951a1407cf1d386cd19305cb15284470d18284880c142030404000⟩,⟨3,0x12c924924924925b68924924925171b44ac922492492492d9289449248⟩,⟨7,0x1bb6ecd7ab4e8cf9b2e4c78b0e0bf7aedcb76acd8af5aad4a74a8d09f3a6cc972a4c88f1a2c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨9,0x2a952a8d429f4ea6d32974aa451e8b43a0d027f3e9ecf277399c4de6933984be592b954a651279349647218fc7a3b1c8dc6a33188bc5a2b14894421f0e86c32170a84c220f0682c12070280c01fefe7ebf1f6fa7cbe1eef67abd1e6f278bc1deee76bb1d6ea74b9dcce57238dc4e16fb75b8db6d365b0d76b355a8d369345a0cf6733598cb653258cc36130580bf5f2f578bb5cae16ab3592c560af572a950a75328d409f4f275389b4d26530974aa5124914823d1c8d4622d14894421d0c854220d04813f1ecf2783b9d4e873391c4e06f369acd26833998ca6431184be5e2e970b65a2c960ae562a950a652289409e4e2692c924823914884321104803f1f0f4783b1d0e470371b0d46833190c4602f170b4582b148a04e26128904622108803e1c0d86832180b8582a14098482210078381a0c058281208038180a04018080200⟩,⟨3,0x1224924945244924a25965924925244924924948924924924924924924924924924928924948924924924924925b24924945a2493112d92492494512492492492496d128924949124945124924924924929128924924924924924924944924924b249249249249249249249⟩,⟨9,0x190c563b11b2d84823cb65a2c9620b0380b218ac76231986d96c35d208f4731986d746c46210f8443a1b0c83c2e15098345e2d158a44e24fb7d3fdfafe7e359aad44622d14894421d0c85231108a437cbe1eef67abd1e6f278bc1deee76bb1d6ea74ba5d2e87439dcce57238dc4e17037dbcdd6e36db6db6d369b4ce6524834190c05c2cd06633d96c26130982c160b0580c0602fd7ebf5f2f97abc5daed74b95c2dd72b85bad96ab459ad96ab459ac962b057ab95aac55aa952a853a99369a4ca612e9652a912a9449a55289351a8942a04fa793a9c0ab4da4d166b2522844220d068341a0d0682412050280401fcfc7b3d1e4fa7c3c1dcec753a1cce46f371b4d86b350f8763d1d0f07231180bce27031988c2602f978ba5c0803c0e0602954a85329144a04f27134991d8dc7235198c4120500211048040200fc7e3f2492070371b0d86a34198c8964a238b85c2d160ac54291409c4e26128904622108803e1e0e9a4d06733194c8572b0502612088701c0e07034180b05024101b0200c0401⟩⟩⟩
end Certgen.R4786842212122
