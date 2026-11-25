import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846201402566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 18,.app 10 11,.var 0,.lam 12,.lam 13,.app 14 15,.var 1,.app 16 17,.var 2,.var 0,.app 19 20,.var 0,.lam 21,.var 1,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.app (.var 0) (.lam (.var 1))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387446982 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t16 : Term := .var 2
def t44 : Term := .lam t49
def t51 : Term := .lam t52
def t4 : Term := .app t49 t49
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t3 : Term := .lam t4
def t15 : Term := .app t16 t49
def t18 : Term := .app t49 t51
def t41 : Term := .app t49 t43
def t48 : Term := .app t49 t50
def t13 : Term := .app t52 t15
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t47 : Term := .app t48 t53
def t9 : Term := .app t49 t11
def t46 : Term := .lam t47
def t8 : Term := .app t9 t18
def t40 : Term := .app t41 t46
def t7 : Term := .lam t8
def t39 : Term := .lam t40
def t2 : Term := .app t3 t7
def t33 : Term := .app t48 t39
def t32 : Term := .lam t33
def t1 : Term := .app t2 t43
def t26 : Term := .app t48 t32
def t25 : Term := .lam t26
def t0 : Term := .app t1 t25
def terms : Array Term := #[t0,t1,t2,t3,t4,t49,t49,t7,t8,t9,t49,t11,t12,t13,t52,t15,t16,t49,t18,t49,t51,t52,t43,t25]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n23 : model.term 23 = t25 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 23) (by rfl)).trans (by rfl)
theorem n22 : model.term 22 = t43 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 22) (by rfl)).trans (by rfl)
theorem n21 : model.term 21 = t52 := model.var_eq 21 1 (by rfl)
theorem n20 : model.term 20 = t51 := by rw [model.lam_eq 20 21 (by rfl), n21]; rfl
theorem n19 : model.term 19 = t49 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t18 := by rw [model.app_eq 18 19 20 (by rfl), n19, n20]; rfl
theorem n17 : model.term 17 = t49 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t16 := model.var_eq 16 2 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t52 := model.var_eq 14 1 (by rfl)
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 15 (by rfl), n14, n15]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t49 := model.var_eq 10 0 (by rfl)
theorem n9 : model.term 9 = t9 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 18 (by rfl), n9, n18]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t49 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t49 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.lam_eq 3 4 (by rfl), n4]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 7 (by rfl), n3, n7]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 22 (by rfl), n2, n22]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 23 (by rfl), n1, n23]; rfl
def d : Packed.Data := ⟨⟨5,0x56b5ad6b5ad6b5ad6b5ad6b5ad6b4a5294a5294a5294a5294a5294a5294a4e739ce739ce739ce739ce739ce7394a5294a5294a5294a5294a5294a528c6318c6318c6318c6108421084210841ef7bdef7bdef7bdef7bdef7bdce739ce739ce739ce739ce6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b58c6318c6318c6318c6318c6318c6318c5ad6b5ad6b5ad6b5ad6b5ad6b5294a5294a4a5294a5294210842108421084210841ce739ce739ce739ce7318c6318c6318c6318a418820⟩,⟨6,0x2fbadb6db6db6db2cb2cb2cb2baa9a68a0a28a28924924f3cf3cf3cf3cf38e38e38e38e38a28924f39659659659659555555555554b28a2493cf38e5965965965955555555552cb1040c32081c71861450811040c32071850820411041040c30c320718508208204104151334c1032071854916da08165851334c1032081c71854924516da0820810416589e69659659249248e38a28607df79e75d75c71c28a2493cf3cf3cf3cf38e38e38e38e2893ce5952d02893ce5952d02893cf39659554b2cb2d04104000000000000000000000005d75d75d75d75d75d75d75d7000000⟩,⟨7,0xf5e477acd01f305e3bd6680f982eedd860a18294262849426284c562c17ae5ab15aa88a54274c9522344ddb3568cd93160bd72d58ad529509d325488d12186861a124449118ef59a03e60bc77acd01f305c30586861a124449112444911850901f3c74e1b3464c172c5470d182c70d182e1428508407080c407080ca13244480f1c3460b14244070c1420376edd3a7ef891124441020c1430574e8911044888202060c01c3460b1c3460b86861a18509fbe7ef89110448882203c80f92edbb6386830590edab4366430593223c68b121c28301fbe7af1dba7ef89110448892223868c1620384071e33d78e59b2407cf1d305cb158f19ebc66c901f3c74c172c55c827008080⟩,⟨⟨7,0xcb8f0dfbb6ecd7ab4e8cf9b2e4c78b0e0bf78e5b3364c582d549d2234484f1b3464c15243c6090c0c000⟩,⟨2,0xaaaaaaaaaaff57fd5f57fffc⟩,⟨5,0x62378e217869f97e9d9760b72e097260771e057168390e01706008b811801ae034ad5c0db71b7034dc699e2f8136e26d359d05790af415642ac15972b3043dc87⟩⟩,⟨5,0x127bdefbad7291a948c6313ad74a3def7ad7294a547bdef7becb5ca948c6317bdef⟩,⟨5,0x10deb3803dd6addee20c4105ab6ad2728ae0a4bdcb6b1073140a4ad4941cc520c41⟩,⟨6,0xc2eeb6285a6585d6595b2caeb28a28ad34d34aa3249208a69a2882082082081f7df7df7df5149e79e79a69a61c614496596592492479d4d20c24514103ce71c6dbcf2041040000c7036f⟩,⟨7,0x10603f7cf5e3b74fdf122208911244470d182c407080c10286861a124449118ef59a03e60bc77acd01f305c3051c3460b1c3460b850a142101c203101c20376edd3a7ef891124441020c1430574e891104488820204080⟩,⟨⟨6,0x2eb6baa9a2692385f75b65759551238d2ca204080⟩,⟨3,0x4a24a45249224a851512⟩,⟨6,0x2eb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨7,0x386fddb766bd5a7467cb93160b962bd6ab529d2a13a6cc8b121c28301fbe6ed9ab466c982e58a94274c952224078e1b3464c172c50911203860b141c2030404000⟩,⟨3,0x9249249452909249489e49249e4925249124a4912492912912d9248⟩,⟨7,0x62c382fdebb72ddab362bd6ab529d2a3427ce9b325ca93223c68b121c28301fbe7ef9ebc76e9cbd78edd3970ddc376cd5a3364d9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨9,0x62b1387c2e0f037fbedeef579bc5deed75ba5cee571b85bedd6db65aad167b3592c561b057eb157ab556a953a9546a149a451e8d45a250e8541a04fa7b3c9dcea73389bcda6b3499cca633097cba5b2b954a6512793496492391486411f8f476391b8d46631178b456291388c3e1b0b8542611078341609037fbedf2f77b3d5e8f3793c5deed763add4e97439dcce57238dc4e17037dbcdd6e36db4d96c35daad367b2d92c762b0d82bf5eaed72b75b2d566b1582bd5cad562ad54a95429d4ca55228d44a15027d3c9d4e26d34994c25d2c9549a45208f46a2d1489442190a8341204fe7e3e1ecf4793c1dcec753a1cce471381b0d66a349a0ca6230974b85b2d164ac53291449e4e269309448239188a442190882401f8f87a3c1d8e872381b8d86a34198c86230178b85a2b148a04c24110803c1c0d0602c14098482210078381a0c058281208038180a04018080200⟩,⟨3,0x8a49248924924924929129127924924f24924928924924924924a24924924924924924949224924991224925224924924924924925291249249225224924924924924924924948948928a25144924924930925b30925b25125224924924924924924924a452492492249249249249249⟩,⟨9,0x6d34c20db6a369a6d969361a2d7683599ed56704c220f068301208291289a4c22912351a8c45e31178cc662d158b456552893ca24f2692c924722934964923914a6432090c823f1e8ec72371f8f476391b2894092486cb481d0b85426110783416090280c01fefe7ebf1f6ca643e9f2f87bbd9ecf57abc9e4f1783bddced753a9d2e873b99cae47238dc2e27038dc2e27037dbcdf6f375b8dd6e2a550a7532a550a753361a2d76802c144f239388cd667b559c07032f57abc5e2ed76ba5d2e570b75b2d56ab45a2cd66b259452211387b1d8ac360b1988c26015caa562a2c55ab0562bd56ae5544a1d1186a9542a45033598a34fa893c9d4e26d34994c25d2e964b255289349a4924914823d1e8f472391c8d4621d0c793c1e4f0773b9d8ea763a9d0e88b3f9f9147d3e2251085422050682401ecf6733d1e8e4613017cbc71379b8da6c33998c6632e970b65d2e16ce06b351a4d06532188c45a2c960b4592c14c96db6a04a190365b257ebe2190882401f8f87a3c1d8e872391c0dc6e361b0d46a351a8d068341a0cc6431180c4602f170b4582b150a45027150a4502713094482313094482311084401f0e870361a0c8602e160a8503c050200c0401⟩⟩⟩
end Certgen.R4846201402566
