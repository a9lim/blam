import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4845195965206
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 58,.app 2 49,.app 3 27,.app 4 24,.app 5 9,.lam 6,.app 7 8,.var 0,.var 0,.lam 10,.lam 11,.app 12 13,.var 1,.lam 14,.app 15 23,.app 16 17,.var 2,.app 18 19,.var 0,.app 20 21,.var 0,.lam 22,.var 0,.var 1,.lam 25,.lam 26,.var 0,.lam 28,.app 29 34,.app 30 31,.var 0,.lam 32,.lam 33,.var 1,.lam 35,.app 36 41,.app 37 38,.var 0,.lam 39,.lam 40,.var 1,.lam 42,.app 43 48,.app 44 45,.var 0,.lam 46,.lam 47,.var 0,.opaque,.app 50 54,.lam 51,.app 52 53,.var 0,.var 0,.lam 55,.app 56 57,.var 0,.var 0,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22437382009622 := by decide
def t73 : Term := .var 0
def t54 : Term := .var 1
def t16 : Term := .var 2
def t46 : Term := .lam t73
def t53 : Term := .lam t54
def t71 : Term := .app t73 t73
def t45 : Term := .lam t46
def t55 : Term := .var 4
def t52 : Term := .lam t53
def t70 : Term := .lam t71
def t19 : Term := .app t73 t46
def t43 : Term := .app t73 t45
def t50 : Term := .app t73 t52
def t17 : Term := .app t73 t19
def t15 : Term := .app t16 t17
def t65 : Term := .app t70 t70
def t49 : Term := .app t50 t55
def t48 : Term := .lam t49
def t14 : Term := .app t15 t54
def t13 : Term := .lam t14
def t11 : Term := .app t54 t13
def t10 : Term := .lam t11
def t42 : Term := .app t43 t48
def t9 : Term := .lam t10
def t41 : Term := .lam t42
def t4 : Term := .app t70 t9
def t35 : Term := .app t50 t41
def t34 : Term := .lam t35
def t3 : Term := .app t4 t45
def t28 : Term := .app t50 t34
def t27 : Term := .lam t28
def t2 : Term := .app t3 t27
def t1 : Term := .app t2 t65
def t0 : Term := .app t1 t65
def terms : Array Term := #[t0,t1,t2,t3,t4,t70,t71,t73,t73,t9,t10,t11,t54,t13,t14,t15,t16,t17,t73,t19,t73,t46,t73,t54,t45,t46,t73,t27,t28,t50,t73,t52,t53,t54,t34,t35,t50,t73,t52,t53,t54,t41,t42,t43,t73,t45,t46,t73,t48,t65,t70,t71,t73,t73,t70,t71,t73,t73,t65]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n58 : model.term 58 = t65 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 58) (by rfl)).trans (by rfl)
theorem n57 : model.term 57 = t73 := model.var_eq 57 0 (by rfl)
theorem n56 : model.term 56 = t73 := model.var_eq 56 0 (by rfl)
theorem n55 : model.term 55 = t71 := by rw [model.app_eq 55 56 57 (by rfl), n56, n57]; rfl
theorem n54 : model.term 54 = t70 := by rw [model.lam_eq 54 55 (by rfl), n55]; rfl
theorem n53 : model.term 53 = t73 := model.var_eq 53 0 (by rfl)
theorem n52 : model.term 52 = t73 := model.var_eq 52 0 (by rfl)
theorem n51 : model.term 51 = t71 := by rw [model.app_eq 51 52 53 (by rfl), n52, n53]; rfl
theorem n50 : model.term 50 = t70 := by rw [model.lam_eq 50 51 (by rfl), n51]; rfl
theorem n49 : model.term 49 = t65 := by rw [model.app_eq 49 50 54 (by rfl), n50, n54]; rfl
theorem n48 : model.term 48 = t48 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 48) (by rfl)).trans (by rfl)
theorem n47 : model.term 47 = t73 := model.var_eq 47 0 (by rfl)
theorem n46 : model.term 46 = t46 := by rw [model.lam_eq 46 47 (by rfl), n47]; rfl
theorem n45 : model.term 45 = t45 := by rw [model.lam_eq 45 46 (by rfl), n46]; rfl
theorem n44 : model.term 44 = t73 := model.var_eq 44 0 (by rfl)
theorem n43 : model.term 43 = t43 := by rw [model.app_eq 43 44 45 (by rfl), n44, n45]; rfl
theorem n42 : model.term 42 = t42 := by rw [model.app_eq 42 43 48 (by rfl), n43, n48]; rfl
theorem n41 : model.term 41 = t41 := by rw [model.lam_eq 41 42 (by rfl), n42]; rfl
theorem n40 : model.term 40 = t54 := model.var_eq 40 1 (by rfl)
theorem n39 : model.term 39 = t53 := by rw [model.lam_eq 39 40 (by rfl), n40]; rfl
theorem n38 : model.term 38 = t52 := by rw [model.lam_eq 38 39 (by rfl), n39]; rfl
theorem n37 : model.term 37 = t73 := model.var_eq 37 0 (by rfl)
theorem n36 : model.term 36 = t50 := by rw [model.app_eq 36 37 38 (by rfl), n37, n38]; rfl
theorem n35 : model.term 35 = t35 := by rw [model.app_eq 35 36 41 (by rfl), n36, n41]; rfl
theorem n34 : model.term 34 = t34 := by rw [model.lam_eq 34 35 (by rfl), n35]; rfl
theorem n33 : model.term 33 = t54 := model.var_eq 33 1 (by rfl)
theorem n32 : model.term 32 = t53 := by rw [model.lam_eq 32 33 (by rfl), n33]; rfl
theorem n31 : model.term 31 = t52 := by rw [model.lam_eq 31 32 (by rfl), n32]; rfl
theorem n30 : model.term 30 = t73 := model.var_eq 30 0 (by rfl)
theorem n29 : model.term 29 = t50 := by rw [model.app_eq 29 30 31 (by rfl), n30, n31]; rfl
theorem n28 : model.term 28 = t28 := by rw [model.app_eq 28 29 34 (by rfl), n29, n34]; rfl
theorem n27 : model.term 27 = t27 := by rw [model.lam_eq 27 28 (by rfl), n28]; rfl
theorem n26 : model.term 26 = t73 := model.var_eq 26 0 (by rfl)
theorem n25 : model.term 25 = t46 := by rw [model.lam_eq 25 26 (by rfl), n26]; rfl
theorem n24 : model.term 24 = t45 := by rw [model.lam_eq 24 25 (by rfl), n25]; rfl
theorem n23 : model.term 23 = t54 := model.var_eq 23 1 (by rfl)
theorem n22 : model.term 22 = t73 := model.var_eq 22 0 (by rfl)
theorem n21 : model.term 21 = t46 := by rw [model.lam_eq 21 22 (by rfl), n22]; rfl
theorem n20 : model.term 20 = t73 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t19 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t73 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t16 := model.var_eq 16 2 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 23 (by rfl), n15, n23]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.lam_eq 13 14 (by rfl), n14]; rfl
theorem n12 : model.term 12 = t54 := model.var_eq 12 1 (by rfl)
theorem n11 : model.term 11 = t11 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t9 := by rw [model.lam_eq 9 10 (by rfl), n10]; rfl
theorem n8 : model.term 8 = t73 := model.var_eq 8 0 (by rfl)
theorem n7 : model.term 7 = t73 := model.var_eq 7 0 (by rfl)
theorem n6 : model.term 6 = t71 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t70 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 9 (by rfl), n5, n9]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.app_eq 3 4 24 (by rfl), n4, n24]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 27 (by rfl), n3, n27]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 49 (by rfl), n2, n49]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 58 (by rfl), n1, n58]; rfl
def d : Packed.Data := ⟨⟨6,0xe79e79e38e37df7db6db6d75d74cf2c6fbefbefbefbefbaebaebaebadb6db6cb2cb2baebaeaaaaaaaaaaa69a69a69a68a28a28a28a279e79a69659248e38e28a181f79e75d71c71b6db6da6585d75d75d75965965965965965965965965965965965965955555555555555555555555555545145145145145144d34d34d34d34d34d34d34d34d34924924924924924924924924924914514514514514514514514514514514104104104103cf3cf3cf3cf38e38e38e38e38e38e38e38e38e34d34d34d34d34d34d34c30c30b2cb2cb28a28a2892492492082081c61440c2040⟩,⟨6,0x5d65555d6557595000000514514500039e37df7db6db5d33cf3cf2c4c4d21cc4d21cc4d21cc4d34d348738e38e38e3b0befbefbefbeeb6d3ce3ce3ce3ce38b36cacb2cd2cd2cd34000002aa40446185141a279a59659649248e38e38a28a186081f7de7861861850c30c208228904104104614308a2410410411861861430c308208a2410410414461861851451430c308208a2410511861861451450c30c208228a24904144614308a24144614308a2414461861861450c228a28a28924161860410410410420841810841810821075c71b680000000659659659000000000⟩,⟨7,0x26cd9b326cc96040819b325c99b325c903200c2824480422402408cc4e9c363a2c385054c78d1624385060466274e1b1c099a4468909606ed9a4468909606f048876f9f3d78edd8910d9eb670ddcb86ed9c0910c179a320414080c0d2f33021b76ec901f3c448046480f9e2240209102440d1834632407cf4722402112011cb968a13a64ad19b262c17ae5ab15aa6480f9e8c44804224023870cd22344854a84e992a446890a03e78e9c3668c982f159203e7989d386c890084480412204882c0cb15284c911203c70d182c509101e033488d1212c0c68c66911a242581822a502ae5ab15aa305c68c881828406d410d1809d0b141daca2648786264878694e9fba6a08080⟩,⟨⟨8,0xa19c97928d8985817d7975726f6c6a6867635f5b57534f4b47433f3b3a3938373634333231302d2a27252321201d1c191614110e0b0906030000⟩,⟨3,0x2db6c9248db48c92492490924a2496da48b2da6da6d8⟩,⟨6,0x5da8e7b176a092b5da8a6a976a29a95da865a176a39d76a29976a19576a091769d7d66dc79769d59b7176195d85155320894f40464b40454b50c447208a4350c43f208a3b50c83750c73750c83350c7335d33cadd43c70bee5da8976a1cc02f30166d76965da8d7d011b4045d015da83208ac822720b50c8d431f50c4⟩⟩,⟨6,0xe8845144de79e75d89b6d5535f0c304d54d13695d79a99a27e25554d3c70b5f5554d345136d5534515d73586d75d7⟩,⟨5,0x1918838bdab40027210a2c9ca252c60f525ee735ab5254901d8b30cc352507084c53148000c41⟩,⟨6,0xdf6d7cd33571c0cb2baebaea5b285f92080451d71e7834d34d3a12492befbdb68b2cb2cba514514679e79d0410baeb9965860a2a6248efa3cee6d1c71c71c61820638e38e38a203814d3655fd⟩,⟨7,0x8102e8081870a0c08cc4e9c363813a78edd8910d5bb670244026480f9e8c44804224023870919a344862b2407cf313a70d9120108900824409105818e1a3058a12203c066911a2425818d18cd2234484b0304d410d1808080⟩,⟨⟨6,0xf3ae78db5d33cb1c2fbadb2baa9a279a59228607de75c6985d65544d245038d30b289207185103040⟩,⟨2,0x659555555556555a55559555559⟩,⟨6,0x3cefae78df6d74cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x32e4c78b0e0bf7aedcb75eb55a94e9519f3a6cc97264448701ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e951a24280f9e3a70d9a3260991203c5080e182830404000⟩,⟨3,0x924924930924944928c2d924924924924924929124924926a26a24a248⟩,⟨7,0x32e4c78b0e0bf7aedcb76acd8af5aad4a74a8d09f3a6cc972a4c88f1a2c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨9,0x29b4ca5d2a9147a35168943a1506813f9f4f6793b9d4e671379b4d66933994c6612f974ae55299449e4d2590c823f1e8ec72371a8cc622f168ac52271288c421f0e86c32170a84c220f0682c12070280c01f6f97bbd9eaf479bc9e2f077bb5d8eb753a5cee57238dc4e17037dbcdc6d365b0d76b355a8d369345a0cf6733598cb6532590c76331588c36130580be5e2e970b75b2d568b1582bd5cad562ad52a853a9548a34fa793a9c4da6932984ba592a9449a49229047a391a8c45a29128843a190a8441a0902803f9f8fa7c3d9e8f2783b9d8ea74399c8e270379b8da6c359a8d26833998ca6431988c2602f978ba5c2d968b2582b958aa5429948a24f26930964a249208e46229108642209007e3e1e8f0763a1c8e06e361a8d06632188c05e2e168b0562a148a046211007c3c1c0d86832180b8582a14098482210078381a0c058281208038180a04018080200⟩,⟨3,0x112512492492492492492492c924984924924924924924924924926a44924928925224924a44924924924924924924a49124b24925128984924924924924924924924924924924924924924924924924924924924a44924924924924924924924924926a24a249249249249249249249⟩,⟨9,0x4a651278dc6a5328934664b2491c8a45219047e3d1d8e4622f1681c09389b4d1fcfc7d61c5225118843e1d0d8644e170a84c220f0682a8106620fc01fefe7ebf1f6fb7dbedf4f97c3ddecf57a3cde4df78bc1deee76bb1d6ea74ba1cee672b91c6e170389bcd56eb71b6da6d361aed96b351a6994c1f0f6d16833d9cce66b3598cb6632e2ac662af994c864b1d89046934948a3512853e9e4ea1d0c8542209028029944a45029944a4501088042205b2d568af572b57aac55aa14eaa54a994abc5dae972b85bacd64b15825cf4612eb098028138984a2449249249248a41209047a3d1e8e46a2d188a44a2202964aa5126793c1dcec602f978b85b2d3057e23111d4e873391c4e06f371b4d86b351a4d06733198ca653218c9e2b1502c14592b160aa0926930964a249208e4622910884422110864321104804020100803f1f8f86a34160ec783a1c8e06e36198c86230178b85a3d040a4ae54270783a1c0e06c34180b85832150a04c2411078381a0c0801c0c050200c0401⟩⟩⟩
end Certgen.R4845195965206
