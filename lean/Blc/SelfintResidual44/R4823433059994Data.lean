import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4823433059994
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 6,.lam 2,.app 3 4,.var 0,.lam 5,.var 1,.lam 7,.app 8 17,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 14,.var 1,.app 15 16,.var 2,.var 0,.app 18 19,.var 0,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.app (.var 0) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22415619104410 := by decide
def t19 : Term := .var 0
def t13 : Term := .var 1
def t15 : Term := .var 2
def t4 : Term := .lam t13
def t17 : Term := .app t19 t19
def t14 : Term := .app t15 t19
def t2 : Term := .app t19 t4
def t1 : Term := .lam t2
def t12 : Term := .app t13 t14
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t19 t10
def t7 : Term := .app t8 t17
def t6 : Term := .lam t7
def t0 : Term := .app t1 t6
def terms : Array Term := #[t0,t1,t2,t19,t4,t13,t6,t7,t8,t19,t10,t11,t12,t13,t14,t15,t19,t17,t19,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t19 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t19 := model.var_eq 16 0 (by rfl)
theorem n15 : model.term 15 = t15 := model.var_eq 15 2 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := model.var_eq 13 1 (by rfl)
theorem n12 : model.term 12 = t12 := by rw [model.app_eq 12 13 14 (by rfl), n13, n14]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t19 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.app_eq 7 8 17 (by rfl), n8, n17]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.lam_eq 6 7 (by rfl), n7]; rfl
theorem n5 : model.term 5 = t13 := model.var_eq 5 1 (by rfl)
theorem n4 : model.term 4 = t4 := by rw [model.lam_eq 4 5 (by rfl), n5]; rfl
theorem n3 : model.term 3 = t19 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 6 (by rfl), n1, n6]; rfl
def d : Packed.Data := ⟨⟨5,0x9ce739ce52946318c6318c6318c2108421083dee739ce739ce739cd6b5ad6b5ac6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c62d6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5294a529294a10839ce739ce739ce739ce739ce6318c6314a52948418820⟩,⟨5,0x21084085640ad6b590842042108c631884210c4318c63188421084a48d073144a5294a5294a529294a5294a52948c6318c6318c6342108421084210839ce739ce739ce7318c6318c5294a52944210842146318c6318c63184210842108420f7bdef21084085640ac81590842108421084084210842000000039ce7358c63000⟩,⟨5,0xa356a389cd651ab551ab551ab551ab54d8712d49418a41a5062906941cc520c546ad49418a41828d5a928314830522d5a92831483a45ab5250629060a45ab52506290608a506290714a0c520e29418a41d22d5a92831483a45ab52506290748356a9b0e238ab49ca30051ab52506290608a5062907493dab551ab54aae78020⟩,⟨⟨6,0x92281e71b69751138b207101000⟩,⟨2,0xaa97ffdf4⟩,⟨4,0x82328107060982532582432482332388158133⟩⟩,⟨5,0x48cd538c60e739ce7414e74d46⟩,⟨4,0xcbbb4413a987652432110⟩,⟨5,0x2250cdef7bdef7bdef7b9ce739cea4a529421080842135ad6b5a6318c63318c6318c6318c5ad6b5ad6b5ad6421084210842114a5294a5294a529294a5294a5294a5084210841ce739ce718c6318c60⟩,⟨5,0x2518028d5a928314830452831483051ab551ab551ab5250629069418a41d1ab5250629060a356a4a0c520c148b56a4a0c520e916ad49418a4182916ad49418a418229418a41c528314838a50629060⟩,⟨⟨5,0x2d3945a728c20⟩,⟨3,0xb266491⟩,⟨5,0x52136ca307b9ac5a928398a418820⟩⟩,⟨⟨7,0x3efcf7eb7e8cf8efdbab3e2395c88b0f1004000⟩,⟨4,0x1111b7144466bbbcc77710⟩,⟨7,0x3efcf7ebcf8efdbaf4e7cb8f0dfbb6ecd7ab4e8cf9b2e4c78b0e0bf7aedcb76acd8af5aad4a74a8d09f3a6cc972a4c88f1a2c4870a0c07ef9ebc76e9cb86ed9ab466c98b05eb96ac56a94a84e992a446890a03e78e9c3668c982e58a9426488901e3868c16284880e182840608080⟩⟩,⟨⟨9,0xeaf4b9fcce57238fc4e170781bfdf6f779bbdd6e771b7db6cb5daad369345a0cf66f3197cb6572993c9647218fc7637198ac461b0982c05faf97bbd5e6f177bb5d6e973b95c6e16fb75b6d96bb55a6d167b3596c963b1586c15faf576b95bad566b157ab556a953a9546a14fa7536994ba55269147a35168943a1506813f9f4f6793b9d4e671379b4d66933994c6612f974b6451e8c44a0efc78391bad66ab298cc05d2bd489846214fc7d3b1c8d86632984ac4f220f478391b8d86a34198c86230178b85a2c158a85228138984a241188842200f878341407034180b050241004018080200⟩,⟨4,0x3333221321111111111114444222233111111111111222222221111111111111111111111111111111111111111111111111111111111111111111111111111111b466bbcc771b466bbcc771746614b7b7132111111111111111111111111146611111141111⟩,⟨8,0xcbc2b6cac1b5c9c0b4c8bfb3b02daf2c04cac1b5b12ec5c5c5c5c4c4c4c4c3c3c3c3cbbebab6cabdb9b5c9bcb8b4c8bbb7b3b22fb12eb02daf2cc9c0b4c8bfb3aeaeaeaeaeaeadadadadadadaca6aba5c72baaa4a9a3a8a2a7a1c62aa0a0a0a0a0a0a0a0a0a0a09f9f9f9f9f9f9f9f9f9f9f9e9e9e9e9e9e9e9e9e9e9e9d9d9d9d9d9d9d9d9d9d9d9d9c9c9c9c9c9c9c9c9c9c9c9c9b9b9b9b9b9b9b9a9a9a9a9a9a9a999999999999995f9897969594939291908f8e9897969594939291908f5e5d5c5b5a59777574737271706f6e6d6c777574737271706f6e6d6c77767574737271706f6e6d6c77767574737271706f6e6d6c767271706f6e6d767271706f6e6d588d8c8b8a898887868584838d8c8b8a8988878685845756555453526b696867666564636261606b696867666564636261606b6a696867666564636261606b6a696867666564636261606a6665646362616a66656463626151817d7c7b7a797882807f7e7d7c7b7a7978504f4e4d4c4b33343231304a49484746454443424140494544434241403f3e3d3c3b3a39383736353e3a393837363505cbc2b6b22f292827262525252525252525252525242424242424241718232221201f1e1d1c1b1a19161514131211100d0c0b0f060a0908070e030201⟩⟩⟩
end Certgen.R4823433059994
