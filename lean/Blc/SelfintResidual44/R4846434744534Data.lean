import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846434744534
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 8,.var 0,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 19,.app 14 18,.app 15 16,.var 2,.lam 17,.var 1,.var 0,.var 1]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438620788950 := by decide
def t18 : Term := .var 0
def t19 : Term := .var 1
def t15 : Term := .var 2
def t16 : Term := .lam t19
def t2 : Term := .app t18 t18
def t1 : Term := .lam t2
def t14 : Term := .app t15 t16
def t13 : Term := .app t14 t18
def t12 : Term := .app t13 t19
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t18 t10
def t6 : Term := .app t18 t8
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t18,t18,t5,t6,t18,t8,t18,t10,t11,t12,t13,t14,t15,t16,t19,t18,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 1 (by rfl)
theorem n18 : model.term 18 = t18 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t19 := model.var_eq 17 1 (by rfl)
theorem n16 : model.term 16 = t16 := by rw [model.lam_eq 16 17 (by rfl), n17]; rfl
theorem n15 : model.term 15 = t15 := model.var_eq 15 2 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 18 (by rfl), n14, n18]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.app_eq 12 13 19 (by rfl), n13, n19]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t18 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t18 := model.var_eq 7 0 (by rfl)
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 8 (by rfl), n7, n8]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t18 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t18 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 5 (by rfl), n1, n5]; rfl
def d : Packed.Data := ⟨⟨5,0x139ce7294a52946318c6318c6108421083def7bdef739ce739cd6b5ad6b58c6318c6316b5ad6b5ad4a529294a529421084210839ce739ce7318c6318c6318c5294a5294a529484210842108418820⟩,⟨5,0x118c66314a426b38bded6ad02e198a7205c3314e40b86629c8170cc53902e198c5392739ce5294510840424421010842442101220d62d49108488358b529200000000000001ef7bdef7bdef7bc00⟩,⟨6,0x630b24c2cc2cc2cf38d30b30b24671b69964d6165544d24503ce34c2ca2481c61440c238028510238a30b2468de4483e591f9648e286030b2463a37917de75c6da6588de44000f38d30b2628607575955134908a181d5955134905c0040⟩,⟨⟨6,0x3ce34c2ca248a079d71961759551340d287103000⟩,⟨3,0x1249244912c92496db658⟩,⟨5,0x9094c9092c9090c90cec90ccc90c8c984ab90e42986409093183dcd9cc2590cf219a4324848a484a⟩⟩,⟨5,0x2529ce739a9048421084108421125221294a7352245⟩,⟨5,0x1c7718a72420f0b866291ac5a923420e62902310820⟩,⟨6,0x30c30cb69a6820822994503ce38d6175955132520613081e01857c479e75c6c0⟩,⟨6,0xc2c918e7a34637910003ce34c2c900f38d30b28920718510308e00a14408e280⟩,⟨⟨5,0x1ace2f6ace4d62d49398a418820⟩,⟨3,0x124928d249449249⟩,⟨5,0x6b38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0xa279a592381f79d71b6585d65544d24503ce34c2ca2481c6103081000⟩,⟨2,0xd55d559555555555954⟩,⟨6,0x2aa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x8786858482807f7e7d7c7b7a79777574737271706f6e6c6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c4b4a49484746454443423f3e3b3a393837363534333231302f2e2d2c2b2a2928272524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨2,0x1569555a5556955555555555555555557755555555559555555555555555555⟩,⟨7,0x60cd931f1dbbf5e9cfdfa7abf278eddfaf4e7e7e72e3c37eedbb356b12203860ab0262c382fdebb72ddab362bd6ab529d2a34684f9d2a4c88d3664b8efa2c4870a0c07ef1dae1a305b972e5c376ad9a3a5a2b4e8cf9b2e356ad5aa52a13a64a95222468501f3c74e1b3464c172c54992224078e280c101⟩⟩⟩
end Certgen.R4846434744534
