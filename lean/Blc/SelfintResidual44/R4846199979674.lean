import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846199979674
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 19,.app 10 11,.var 0,.lam 12,.lam 13,.lam 14,.app 15 16,.var 1,.app 17 18,.var 3,.var 0,.app 20 21,.var 0,.var 0,.opaque,.opaque]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))) (.app (.var 0) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438386024090 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t44 : Term := .lam t49
def t17 : Term := .var 3
def t51 : Term := .lam t52
def t19 : Term := .app t49 t49
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t3 : Term := .lam t19
def t16 : Term := .app t17 t49
def t41 : Term := .app t49 t43
def t48 : Term := .app t49 t50
def t14 : Term := .app t52 t16
def t13 : Term := .lam t14
def t12 : Term := .lam t13
def t47 : Term := .app t48 t53
def t11 : Term := .lam t12
def t46 : Term := .lam t47
def t9 : Term := .app t49 t11
def t8 : Term := .app t9 t19
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
def terms : Array Term := #[t0,t1,t2,t3,t19,t49,t49,t7,t8,t9,t49,t11,t12,t13,t14,t52,t16,t17,t49,t19,t49,t49,t43,t25]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n23 : model.term 23 = t25 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 23) (by rfl)).trans (by rfl)
theorem n22 : model.term 22 = t43 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 22) (by rfl)).trans (by rfl)
theorem n21 : model.term 21 = t49 := model.var_eq 21 0 (by rfl)
theorem n20 : model.term 20 = t49 := model.var_eq 20 0 (by rfl)
theorem n19 : model.term 19 = t19 := by rw [model.app_eq 19 20 21 (by rfl), n20, n21]; rfl
theorem n18 : model.term 18 = t49 := model.var_eq 18 0 (by rfl)
theorem n17 : model.term 17 = t17 := model.var_eq 17 3 (by rfl)
theorem n16 : model.term 16 = t16 := by rw [model.app_eq 16 17 18 (by rfl), n17, n18]; rfl
theorem n15 : model.term 15 = t52 := model.var_eq 15 1 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.lam_eq 13 14 (by rfl), n14]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t11 := by rw [model.lam_eq 11 12 (by rfl), n12]; rfl
theorem n10 : model.term 10 = t49 := model.var_eq 10 0 (by rfl)
theorem n9 : model.term 9 = t9 := by rw [model.app_eq 9 10 11 (by rfl), n10, n11]; rfl
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 19 (by rfl), n9, n19]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.lam_eq 7 8 (by rfl), n8]; rfl
theorem n6 : model.term 6 = t49 := model.var_eq 6 0 (by rfl)
theorem n5 : model.term 5 = t49 := model.var_eq 5 0 (by rfl)
theorem n4 : model.term 4 = t19 := by rw [model.app_eq 4 5 6 (by rfl), n5, n6]; rfl
theorem n3 : model.term 3 = t3 := by rw [model.lam_eq 3 4 (by rfl), n4]; rfl
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 7 (by rfl), n3, n7]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.app_eq 1 2 22 (by rfl), n2, n22]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 23 (by rfl), n1, n23]; rfl
def d : Packed.Data := ⟨⟨5,0xad6b5ad6b5a52939ce72946318c2108421083def7bdee739ce739cd6b5ad6b5ac6318c62d6b5a94a525294a1084210841ce739ce739cc6318c6318a418820⟩,⟨5,0x294a521084094810948310c6210c631884212d431250b50c62125139ca518c20f735ac614a4204a4304a430425218c63000000000000e739ce739ce700000⟩,⟨5,0xbb549bb5497b9a62dad6b316a4a0e41a0e41a0e62907295856104349d27615855a98a62e5f97e717b569395262b20e41e2f17358b527177358b5262280820⟩,⟨⟨6,0xbaba258e17dd65544d30b289141000⟩,⟨3,0x6db492924249908⟩,⟨4,0xa13913a02902a191a090a0269026a024902478a9a1359135b⟩⟩,⟨5,0x4e10842eb59ab5948eb9ced384175⟩,⟨4,0x6ba98054754320654013211⟩,⟨5,0xc1e8210e6b5ad6724006b16b5ad4a52ab418c429c8b1⟩,⟨5,0xad272a4c5641c83108c5b590720d0720e52b0ac208420⟩,⟨⟨4,0xfeca98654210⟩,⟨2,0x9a5965⟩,⟨5,0x107b9ac5a928398a418820⟩⟩,⟨⟨6,0x8e286079d7185d651349038c289206103081000⟩,⟨3,0x925130944a491291248⟩,⟨6,0x8e28607de75c6da6585d65544d24503ce34c2ca2481c61440c2040⟩⟩,⟨⟨8,0x807f7e7d7b7977757372706f6e6d6c6a686766646261605f5e5d5c5b5a5856555452504f4e4d4c4b4a494847464544434241403e3c3a3836343331302e2c2b2927262524232221201f1e1d1c1b1a191817161412100e0d0c0b0a09080706050403020100⟩,⟨2,0x55aa9956969555696955555556aa99a6955555555aa5555555⟩,⟨7,0xc141c363bf8af61bb82e294e2f15eb76ed59ad56b5512230ddc172952a3468509f3e74a9b26c5799225c78d16244870e1417af9dbc80e9fb970ddb3568cda3364c593160b96af58ad5281b8efd4a6992a44689121407cf9f3e78e9c366cd19305cd19305cb1526488901e38a05080c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 100) 96 4 = true := by decide +kernel
theorem allok (i : Nat) (h : i<100) : Packed.valid d P 100 i = true := by
 by_cases h48 : i<48
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
 · by_cases h72 : i<72
   · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
   · by_cases h96 : i<96
     · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok96 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Packed.excludes d model 100 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4846199979674
