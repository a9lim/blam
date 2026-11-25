import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846166069162
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 18,.app 9 10,.var 0,.lam 11,.lam 12,.lam 13,.app 14 15,.var 1,.app 16 17,.var 3,.var 0,.var 0,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))) (.var 0)) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438352113578 := by decide
def t19 : Term := .var 0
def t14 : Term := .var 1
def t16 : Term := .var 3
def t2 : Term := .app t19 t19
def t1 : Term := .lam t2
def t15 : Term := .app t16 t19
def t13 : Term := .app t14 t15
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t19 t10
def t7 : Term := .app t8 t19
def t6 : Term := .app t7 t19
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t19,t19,t5,t6,t7,t8,t19,t10,t11,t12,t13,t14,t15,t16,t19,t19,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t19 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t19 := model.var_eq 17 0 (by rfl)
theorem n16 : model.term 16 = t16 := model.var_eq 16 3 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.app_eq 15 16 17 (by rfl), n16, n17]; rfl
theorem n14 : model.term 14 = t14 := model.var_eq 14 1 (by rfl)
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 15 (by rfl), n14, n15]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t19 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.app_eq 7 8 18 (by rfl), n8, n18]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 19 (by rfl), n7, n19]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t19 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t19 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 5 (by rfl), n1, n5]; rfl
def d : Packed.Data := ⟨⟨5,0x2739ce739ce7394a5294a528c6318c6318c6318c6318c631842107bdef739ce739ad6b5ad6318c6316b5ad6b5294a529294a5284210839ce7398c6318c5294a5294a529484210842108418820⟩,⟨5,0xc6318c5294a521063318a55294a525294a5084210739ce752507525071054941c4152507b56939460f739ad318c52948331584198ac20cc5610662b18000000000000016b5ad6b5ad6b5ac00⟩,⟨5,0x30a40c5852062398e629062c29031614818b0a40c58520625a928bdef7398a418a93002f78c1ef73ad5a4e93d9cda39b7ace2f6ad2728c1ee6d260bdc19c316a4a0a418b385a9282906260020⟩,⟨⟨6,0x35cafb299a48a079d71851030b289204000⟩,⟨3,0xdb6da491324849320⟩,⟨4,0xb25a25b14a14b13a13b2a2b1a190b147a147b136a136badcb258a258⟩⟩,⟨5,0x2a53528918c62f7bdf39ce7294a4a53de5⟩,⟨4,0xccc65ba987a9874365436543210⟩,⟨5,0x20ef6d20e62e58b52718ad272888307b9a0⟩,⟨5,0xb56939460f7369305ee005ef7bd26005ee0⟩,⟨⟨5,0x2f6ac5ab524e628c20⟩,⟨3,0x9322251291⟩,⟨5,0xbdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨5,0xdeb38bdab49ca307b98b525073148310400⟩,⟨2,0x55555559555554⟩,⟨5,0xdeb38bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨8,0x9c9b9a999894908c8884838281807f7e7a767574737271706f6e6d6c6b6a6968676665646362615d5c585756555452504f4e4d4c4b4a494847464544434241403f3e3d3c3b3a3938373635343332312d292827262524232221201f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100⟩,⟨3,0x924c92424926424924924924924930c249489249249249249249249249321249249249249249249249249249249⟩,⟨7,0xc1420284cf8aed8cd86e57cb82dd6c97ed55c77acd464c57ae0e1b25fb5571deb353cf8efdbaf9f1dfb75e9cf971e1d39f2e3c05e6c372b89cb82dd6a74a8d0dfb776cd7ab4e8972a4c88f1a2c4870a0c07ef9ebb78e9cb76ce1ab466c06e7c576c4f9d3662d58ad529509d325488d121407cf9e3a70d9b366cc993468c172a50992224078e2c0c101⟩⟩⟩
end Certgen.R4846166069162
