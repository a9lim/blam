import Blc.SelfintResidual44.Packed

set_option Elab.async false
namespace Certgen.R4846169111018
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 12,.app 9 10,.var 0,.lam 11,.var 1,.lam 13,.lam 14,.app 15 16,.var 1,.app 17 18,.var 2,.opaque,.var 0]
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438355155434 := by decide
def t19 : Term := .var 0
def t15 : Term := .var 1
def t17 : Term := .var 2
def t10 : Term := .lam t15
def t2 : Term := .app t19 t19
def t1 : Term := .lam t2
def t16 : Term := .app t17 t19
def t8 : Term := .app t19 t10
def t14 : Term := .app t15 t16
def t13 : Term := .lam t14
def t12 : Term := .lam t13
def t7 : Term := .app t8 t12
def t6 : Term := .app t7 t19
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t19,t19,t5,t6,t7,t8,t19,t10,t15,t12,t13,t14,t15,t16,t17,t19,t19]
theorem ordered_code : ordered code = true := by decide +kernel
def P (i : Nat) := code[i]?.getD .opaque
def model : Model P := codeModel (rankedCode code ordered_code) (regAt terms)
theorem n19 : model.term 19 = t19 := model.var_eq 19 0 (by rfl)
theorem n18 : model.term 18 = t19 := (opaqueTerm (rankedCode code ordered_code) (regAt terms) (p := 18) (by rfl)).trans (by rfl)
theorem n17 : model.term 17 = t17 := model.var_eq 17 2 (by rfl)
theorem n16 : model.term 16 = t16 := by rw [model.app_eq 16 17 18 (by rfl), n17, n18]; rfl
theorem n15 : model.term 15 = t15 := model.var_eq 15 1 (by rfl)
theorem n14 : model.term 14 = t14 := by rw [model.app_eq 14 15 16 (by rfl), n15, n16]; rfl
theorem n13 : model.term 13 = t13 := by rw [model.lam_eq 13 14 (by rfl), n14]; rfl
theorem n12 : model.term 12 = t12 := by rw [model.lam_eq 12 13 (by rfl), n13]; rfl
theorem n11 : model.term 11 = t15 := model.var_eq 11 1 (by rfl)
theorem n10 : model.term 10 = t10 := by rw [model.lam_eq 10 11 (by rfl), n11]; rfl
theorem n9 : model.term 9 = t19 := model.var_eq 9 0 (by rfl)
theorem n8 : model.term 8 = t8 := by rw [model.app_eq 8 9 10 (by rfl), n9, n10]; rfl
theorem n7 : model.term 7 = t7 := by rw [model.app_eq 7 8 12 (by rfl), n8, n12]; rfl
theorem n6 : model.term 6 = t6 := by rw [model.app_eq 6 7 19 (by rfl), n7, n19]; rfl
theorem n5 : model.term 5 = t5 := by rw [model.lam_eq 5 6 (by rfl), n6]; rfl
theorem n4 : model.term 4 = t19 := model.var_eq 4 0 (by rfl)
theorem n3 : model.term 3 = t19 := model.var_eq 3 0 (by rfl)
theorem n2 : model.term 2 = t2 := by rw [model.app_eq 2 3 4 (by rfl), n3, n4]; rfl
theorem n1 : model.term 1 = t1 := by rw [model.lam_eq 1 2 (by rfl), n2]; rfl
theorem n0 : model.term 0 = t0 := by rw [model.app_eq 0 1 5 (by rfl), n1, n5]; rfl
def d : Packed.Data := ⟨⟨5,0x4e318c610841ef7b9ce739ad6b58c62d6b5ad6b5ad4a5294a5294a525294a10841ce7398c6318c5294a52108418820⟩,⟨5,0x146318863188231046310a0f738842358b5ad4a524a739ce7318c6310a7310a7310a731085398c0000004210842000⟩,⟨5,0x9073165118c831316a7ba0d7ba8c1463288e511b09541cc5aa0e62d6939460f7358b53dcd02d53945239ca2348020⟩,⟨⟨5,0x1cd62d4941cd62d4930c00⟩,⟨2,0x2aaa955fc⟩,⟨4,0xc6c5c4a393a292b10a9bcc48c57c68⟩⟩,⟨5,0x4e6a530906319354e0a94a05⟩,⟨4,0x7676483576455243210⟩,⟨5,0x43c1ee5a92841a518b4631882c614a0⟩,⟨5,0x1183dcd62d4f7340b5025118d8b53dc0⟩,⟨⟨4,0xfedc987654210⟩,⟨2,0x2575565⟩,⟨5,0x107b9ac5a928398a418820⟩⟩,⟨⟨5,0x359c5ed5a4e307b58b51cc518400⟩,⟨2,0x555596575a4⟩,⟨5,0x62f6ad2728c1ee6b16a4a128398a418820⟩⟩,⟨⟨7,0x15aa52a13a6cc972a4c88f1a2c4870a0bf7cf5e3b72e1bb66ad19b262c17ae5ab14a84e992a2427cf1d386cd19305cb15284c911203c70d182c5080e182840608080⟩,⟨2,0x1aa5555556559555555d576555555555565555⟩,⟨7,0xcd3a24c852a0487e3c78f194c295060407efdf3b74f5e3970ddb0588182848b121b454c982f60bd72e62b562d58ad5a846d43c53c74e1b3464c172c58a94264c911203c70d182c508120c101⟩⟩⟩
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 75) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 75) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 75) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 75) 72 3 = true := by decide +kernel
theorem allok (i : Nat) (h : i<75) : Packed.valid d P 75 i = true := by
 by_cases h48 : i<48
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
 · by_cases h72 : i<72
   · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
   · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 75 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4846169111018
