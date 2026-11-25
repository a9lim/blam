import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846201401754
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 17,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 13,.var 1,.app 14 15,.var 2,.lam 16,.var 1,.app 18 19,.var 0,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))) (.app (.var 0) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387446170 := by decide
def t19 : Term := .var 0
def t16 : Term := .var 1
def t14 : Term := .var 2
def t15 : Term := .lam t16
def t17 : Term := .app t19 t19
def t1 : Term := .lam t17
def t13 : Term := .app t14 t15
def t11 : Term := .app t16 t13
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t7 : Term := .app t19 t9
def t6 : Term := .app t7 t17
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t17,t19,t19,t5,t6,t7,t19,t9,t10,t11,t16,t13,t14,t15,t16,t17,t19,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t19 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t17 := by rw [model.app_eq 17 18 19 (by rfl), n18, n19]; rfl
theorem n16 : model.term 16 = t16 := model.var_eq 16 1 (by rfl)
theorem n15 : model.term 15 = t15 := by rw [model.lam_eq 15 16 (by rfl), n16]; rfl
theorem n14 : model.term 14 = t14 := model.var_eq 14 2 (by rfl)
theorem n13 : model.term 13 = t13 := by rw [model.app_eq 13 14 15 (by rfl), n14, n15]; rfl
theorem n12 : model.term 12 = t16 := model.var_eq 12 1 (by rfl)
theorem n11 : model.term 11 = t11 := by rw [model.app_eq 11 12 13 (by rfl), n12, n13]; rfl
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t9 := by rw [model.lam_eq 9 10 (by rfl), n10]; rfl
theorem n8 : model.term 8 = t19 := model.var_eq 8 0 (by rfl)
theorem n7 : model.term 7 = t7 := by rw [model.app_eq 7 8 9 (by rfl), n8, n9]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 17 (by rfl), n7, n17]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t19 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t19 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t17 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 5 (by rfl), n1, n5]; rfl
def d : Packed.Data := ⟨⟨5,0x4e739ce739ce739ce7294a518c630842108420f7bdef7bdee739ce739cd6b5ad6b5ad6b5ac6318c6316b5ad6b5ad6b5ad6b5ad4a5294a5294a529294a5294a5294210839ce7318c6318c5294a5294a5294a521084210842108418820⟩,⟨5,0x1ce6318c6314a5294a7314873149bd6717b568b5a9494a10b5a9494a10b5ad4a525294210b525031056b529294a10818c42086728c1ef739cd6b4e7318c6294a5398a4398a439cc5210800000000000000006318c6318c6318c63000⟩,⟨5,0x18bb939aa4ee4e6a9349ca36b5ad6b5ad6b5ada8ea3a8ea307b9ac5a924188831106220c48398a418b17c5c8311062b02c0b0339b5b1720c4418907ed0c5ed0c5ef37ace2f6c5c1620c5cdd67283dcd62d49e6e7283dcd62d49a8020⟩,⟨⟨7,0x8901e3868c16284c911203c70d192c4c80d182c5090c0c000⟩,⟨3,0x9249244924916db2496d8⟩,⟨4,0x7b246b247a246a247b236b237a236a237b6b7a6a89796907b26b27a26a28765892791691⟩⟩,⟨5,0x99b5ad6a5249cdef7bd338c6316b5a5⟩,⟨4,0x77ba9865c65ba984476543210⟩,⟨5,0x1894527398a4212177b90d6b58c62d6b52956b56b4a527398c6210420⟩,⟨5,0x19c5ed8b82c418816b5ac4188831106220c58be2e4188831581605800⟩,⟨⟨5,0xc5e718394941020⟩,⟨3,0x2622a1319⟩,⟨5,0x18bdab49ca307b9ac5a928398a418820⟩⟩,⟨⟨6,0xb2baa99e69628607de75c6995d651344f34a1c50c1000⟩,⟨2,0x5597555999abea4⟩,⟨6,0x2caeaa689e69648e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0xe2e0dfdedddcdbdad8d6d4d2d0cecccbc9c5c4c3c2c1bdb9b5b1ada9a5a1a09f9e9d9c9b9a999897959392918f8d8c8b8a898887868584838281807f7e7d797571706f6e6d6c6b6a6968676665646362615f5d5a57565553514f4d4b4947454443403d3c3b38353332302c2b2a292827262524232221201f1e1d1c1b191816151312100f0e0d0c0b0a09080706050403020100⟩,⟨3,0x912492924922a124c92492124924929129124924924924c9092492492492526c949249225b25b45424924924924928a28a249249249249⟩,⟨8,0x312d302c0e0c09080504908a8f898e888d878c868b85322e0d8f8973716f6d84838281807f7e7d807f7e7d807f7e7d807f7e7d807f7e7d807f7e7d807f7e7d807f7e7d7c787b777a7679750b0a8e888d8707068c868b856c6b6b6a69696867676665653534929164615e5b63605d5a625f5c595858575756565655555554545353525251504f4e4d4c4b4a494846474544454445444342434243423d3c3d3c413f3b3a393b3a39403e383736383736332f0f908a7472706e2b2a29282727262524242423222120201f1e1d1f1e1d1f1e1d1f1e1d1c1b191817161514131211101a030201⟩⟩⟩
end Certgen.R4846201401754
