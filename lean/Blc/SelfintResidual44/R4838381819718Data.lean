import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4838381819718
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 7,.lam 2,.app 3 4,.var 0,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 14,.var 2,.app 15 18,.app 16 17,.var 1,.var 0,.lam 19,.var 1]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430567864134 := by decide
def t17 : Term := .var 0
def t19 : Term := .var 1
def t13 : Term := .var 2
def t18 : Term := .lam t19
def t4 : Term := .app t17 t17
def t15 : Term := .app t19 t17
def t2 : Term := .app t17 t4
def t1 : Term := .lam t2
def t14 : Term := .app t15 t18
def t12 : Term := .app t13 t14
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t17 t10
def t7 : Term := .lam t8
def t0 : Term := .app t1 t7
def terms : Array Term := #[t0,t1,t2,t17,t4,t17,t17,t7,t8,t17,t10,t11,t12,t13,t14,t15,t19,t17,t18,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 1 (by rfl)
theorem n18 : model.term 18 = t18 := by rw [model.lam_eq 18 19 (by rfl), n19]; rfl
theorem n17 : model.term 17 = t17 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t19 := model.var_eq 16 1 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 18 (by rfl), n15, n18]; rfl
theorem n13 : model.term 13 = t13 := model.var_eq 13 2 (by rfl)
theorem n12 : model.term 12 = t12 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t17 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t17 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t17 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t17 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 7 (by rfl), n1, n7]; rfl
def d : Packed.Data := ⟨⟨5,0x4e739ce739ce5294a5294a5294a318c610842108420f7bdef7bdef739ce739ce735ad6b5ad6b58c6318c6318c6318b5ad6b5ad6b5ad6a5294a5294a4a5294a10842108421084210841ce739ce739ce6318c6294a52108418820⟩,⟨5,0x6f7ad6738bd8c610863084a5210c2290ca4a0430948652502184a43292810c252194940861290ca529494086129495ad6b49ca518c20739def7b5ad3bdac59ce73bdef7b58c6316b58000000000000e739ce739ce739ce73800⟩,⟨6,0x1141140e3565965d645069969945045061759671b69961759551349140f38d30b8e35966d66e288a2481c61440c201b48d0123636e248d6e42071533cc2db5a389c55498611838d9a59238a42071642071406d23406d23658607de74a2430a52890c28607de9081c5740040⟩,⟨⟨7,0x82f5cb562b55a94e951a1407cf1d3864b13243c6090c0c000⟩,⟨3,0x9249124922492db2db6d8⟩,⟨5,0x1522a571a65633e372ae163221631e1635cb525c751583605693b05d5136a265ec67d8c8b18f522ae55dc69⟩⟩,⟨5,0x4946239ce746319494a5463294a4e739518c632939c7⟩,⟨4,0xafee6a5498398dcba162549837625431210⟩,⟨6,0x92492618618555145144d34e082081f2126991d844615089758f10338d79d75d74c2c228171c6c0⟩,⟨6,0x242071642071406d23406d23642071404d24503ce34c2e38d659b59b8a201b48d0123636e248d6c0⟩,⟨⟨6,0x8a181e71a61655349140f34b289207143040⟩,⟨2,0x56aa655a55a9⟩,⟨6,0x2181f79d71b6996115d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨6,0x31b6ca259238a181f79d71b69961759551349140f38d2481c6144081000⟩,⟨3,0x1218c9249249249249249261249448⟩,⟨6,0x34cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0xa7a6a4a2a1a09f9d9c9b9a999897969594939291908f8e8c8b8a8886848382807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c48454443423e3d3c3b3a39383736343231302f2e2d2c2b2a29282726252423221e1d1c1b1a1918141211100f0e0d0c0b0a09080706050403020100⟩,⟨3,0x4a44944924924924944a48944924924924924924924924924924924924924931926124924a449249249249309249889249249249249⟩,⟨8,0x83827d7b7c7a31308461605e8a8988888e8d8c8b87878686328561605e385f5d817f807e7978777637367574737271706f6e6d6c6b6a6968676665640f0e06053404330d0c5a595959595857565554535352514746454a4948484c4b504f4e4d504f4e403e3d444342413a393f3b3c35100763625c5b2f2f2f2f2e2e2e2e2d2c2c2c2c2b2b2b2a29282726252423221e21201f1e1c1b1d1a14131211191817160b0a090815030201⟩⟩⟩
end Certgen.R4838381819718
