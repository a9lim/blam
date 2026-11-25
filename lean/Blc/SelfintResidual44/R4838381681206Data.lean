import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4838381681206
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 7,.lam 2,.app 3 4,.var 0,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 19,.app 14 17,.app 15 16,.var 2,.var 0,.lam 18,.var 1,.var 1]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430567725622 := by decide
def t16 : Term := .var 0
def t19 : Term := .var 1
def t15 : Term := .var 2
def t17 : Term := .lam t19
def t4 : Term := .app t16 t16
def t14 : Term := .app t15 t16
def t2 : Term := .app t16 t4
def t1 : Term := .lam t2
def t13 : Term := .app t14 t17
def t12 : Term := .app t13 t19
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t16 t10
def t7 : Term := .lam t8
def t0 : Term := .app t1 t7
def terms : Array Term := #[t0,t1,t2,t16,t4,t16,t16,t7,t8,t16,t10,t11,t12,t13,t14,t15,t16,t17,t19,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 1 (by rfl)
theorem n18 : model.term 18 = t19 := model.var_eq 18 1 (by rfl)
theorem n17 : model.term 17 = t17 := by rw [model.lam_eq 17 18 (by rfl), n18]; rfl
theorem n16 : model.term 16 = t16 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t15 := model.var_eq 15 2 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 17 (by rfl), n14, n17]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.app_eq 12 13 19 (by rfl), n13, n19]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t16 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t16 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t16 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t4 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t16 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 7 (by rfl), n1, n7]; rfl
def d : Packed.Data := ⟨⟨5,0x4e739ce739ce7294a5294a52946318c6318c63084210842108421084210841ef7bdef7bdef7bdee739ce739ce739ce6b5ad6b5ad6b5ad6b18c6318c6318c6318c5ad6b5ad6b5ad6b5ad4a5294a5294a529294a5294a52842108421084210839ce739ce7398c6318c62908418820⟩,⟨6,0xb2cb2c924c3071ebaa9a279a59238891d13c41030c208828b40c44d34d34f3cf1040c308220a2d024c1d134f10308828b40930744d3c40c220a2d024c1d134f10308828b4093071d134f1030828607de75c6db6da65861859659638e18618604158e5154931850565963945524c61861410000000000000175d75d75d75d75d75d7000⟩,⟨6,0x2b79c35639639638d38e39a6d6596670c6f6ae6ee6ee6f1c2fbeeb2b79c36b79c58e58e58ea279a59238a181f79d71b69961759551349140f38d30b2892071851030882981c50c40806130c510224c5ca548ca581441244fb6489db19ade70d58ecf2c70beeb6caf296001b6995b2960512ceaa689e68e17f3a279a385fab2960a40040⟩,⟨⟨7,0xd3970ddb3568cd93161c17ef5db96ed59b160bd72d58ad4254484f1b305490f182c5070804000⟩,⟨3,0x92492491249249224925b65b6db64b6c8⟩,⟨5,0x1e1a6b63a2982a296222980b2780ae563a2382a2362223e1aa163f4de2e0be2589e1f45e0e020f6f99d786ae89be1a7bd327c15f86df15d80b3c47e02bc5ec7460a8b1116⟩⟩,⟨5,0x46339ce739ccc484210542118a94a54631846318aa709ce718ce138295084147⟩,⟨5,0x41b08b5e418af74296cb45ea4569391d3183c831396d4b0ec5a928398a418820⟩,⟨6,0x238e349d79b706186141a69a689e69572641e242110309f80bc9931a63159551320a4703ce34dbeeb6caeaa80⟩,⟨6,0x3296001b6995b2960512ca58006da6585d65544d24503ce34c2ca2481c61440c220a6071431020184c3144080⟩,⟨⟨6,0x29a279a59238a181f79d71b6995d64d240d30b247185040⟩,⟨3,0x49249249249251653252261⟩,⟨6,0xa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨6,0xe37db5d33c2fbabaa9a279a59238a181f79d71b69961759551349140f38d30b2881c61440c1000⟩,⟨2,0xd55d7555555555555555565564⟩,⟨6,0x3ae78df6d74cf2c70beeb6caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0xedecebeae6e2dedad6d2d0cdcac7c6c3c0bdbab9b8b7b6b5b4b3b2b1b0afaeadaba9a6a5a3a19f9d9b999794918e8b888584838281807f7e7d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5c5b5a595857565554535251504f4e4d4c4b4a4847464544434241403d3c3b3a393837363534333231302f2e2d2c2b2a292827262524232221201f1e1d1c19161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨3,0x493249226d96db2492492492932924926db6c92492492492492492492492492492492492492492492892492592492492492492492492492496c9249249249249249⟩,⟨8,0x3332313083817f2f82807e2e83817f2f82807e2e83817f2f82807e2eab87a9a7a5a9a7a5a9a7a597959391aaa8a6aaa8a6aaa8a634a09f9ba49ea39da29ca1999a988d988d96949235ae8aad89ac88ab87ae8aad89ac88aaa8a6a9a7a5aaa8a6a9a7a5aaa8a6a9a7a50d0c0b05380a370904088536847d7c7b7a797877767574737271706f6e6d6c6b6a696867666564636261605f5e5d5d5c5b5a595857574b4d554a5649484e544c535152504f41403f45433d3e463c3b3a4447420e06908f8e8c398b862d2d2d2c2b2a292827272726251c1b1a24232221201f1e1d19181714131211100f1607070715030201⟩⟩⟩
end Certgen.R4838381681206
